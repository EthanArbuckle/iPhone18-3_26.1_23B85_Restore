@interface IDSTemporaryPhoneUserExpirationManager
- (IDSTemporaryPhoneUserExpirationManager)initWithUserStore:(id)a3 delegate:(id)a4;
- (IDSTemporaryPhoneUserExpirationManagerDelegate)delegate;
- (void)_attemptToKickoffExpirationTimerForUser:(id)a3;
- (void)_cancelExpirationTimerForUser:(id)a3;
- (void)_expireTimer:(id)a3;
- (void)_kickoffExpirationTimerForInfo:(id)a3;
@end

@implementation IDSTemporaryPhoneUserExpirationManager

- (IDSTemporaryPhoneUserExpirationManager)initWithUserStore:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = IDSTemporaryPhoneUserExpirationManager;
  v8 = [(IDSTemporaryPhoneUserExpirationManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_usersToTimersLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(NSMutableDictionary);
    usersToTimers = v9->_usersToTimers;
    v9->_usersToTimers = v10;

    objc_storeWeak(&v9->_delegate, v7);
    [v6 addActionListener:v9 forRealm:2];
    v12 = [v6 usersWithRealm:2];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(IDSTemporaryPhoneUserExpirationManager *)v9 _attemptToKickoffExpirationTimerForUser:*(*(&v18 + 1) + 8 * v16)];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }
  }

  return v9;
}

- (void)_attemptToKickoffExpirationTimerForUser:(id)a3
{
  v9 = a3;
  v4 = [v9 realm] == 2;
  v5 = v9;
  if (v4)
  {
    v6 = v9;
    v7 = [v6 expirationDate];

    if (v7)
    {
      v8 = [[IDSTemporaryPhoneUserExpirationTimerInfo alloc] initWithUser:v6];
      [(IDSTemporaryPhoneUserExpirationManager *)self _kickoffExpirationTimerForInfo:v8];
    }

    v5 = v9;
  }
}

- (void)_kickoffExpirationTimerForInfo:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 user];
    v25 = 138412546;
    v26 = v6;
    v27 = 2048;
    v28 = [v4 expirationPhase];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting expiration timer for temporary user %@ with phase %ld", &v25, 0x16u);
  }

  v7 = [v4 user];
  os_unfair_lock_lock(&self->_usersToTimersLock);
  v8 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  v9 = [v7 uniqueIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    v12 = [v7 uniqueIdentifier];
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 invalidate];

    v14 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    v15 = [v7 uniqueIdentifier];
    [v14 setObject:0 forKeyedSubscript:v15];
  }

  v16 = [IMTimer alloc];
  [v4 expirationInterval];
  v18 = v17;
  v19 = [v7 uniqueIdentifier];
  v20 = im_primary_queue();
  v21 = [v16 initWithTimeInterval:v19 name:1 shouldWake:self target:"_expireTimer:" selector:v4 userInfo:v20 queue:v18];

  v22 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  v23 = [v7 uniqueIdentifier];
  [v22 setObject:v21 forKeyedSubscript:v23];

  os_unfair_lock_unlock(&self->_usersToTimersLock);
  [v4 expirationInterval];
  if (v24 <= 0.0)
  {
    [(IDSTemporaryPhoneUserExpirationManager *)self _expireTimer:v21];
  }
}

- (void)_cancelExpirationTimerForUser:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing expiration timer for temporary user %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_usersToTimersLock);
  v6 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  v7 = [v4 uniqueIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 invalidate];

  v9 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  v10 = [v4 uniqueIdentifier];
  [v9 setObject:0 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_usersToTimersLock);
}

- (void)_expireTimer:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 user];
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Expiration timer fired for temporary user %@", &v16, 0xCu);
  }

  os_unfair_lock_lock(&self->_usersToTimersLock);
  v8 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  v9 = [v6 uniqueIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    [v4 invalidate];
    v11 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    v12 = [v6 uniqueIdentifier];
    [v11 setObject:0 forKeyedSubscript:v12];

    os_unfair_lock_unlock(&self->_usersToTimersLock);
    v13 = [v5 expirationPhase];
    if (v13 == 1)
    {
      v15 = [(IDSTemporaryPhoneUserExpirationManager *)self delegate];
      [(IDSTemporaryPhoneUserExpirationTimerInfo *)v15 expirationManager:self didExpireUser:v6];
      goto LABEL_9;
    }

    if (!v13)
    {
      v14 = [(IDSTemporaryPhoneUserExpirationManager *)self delegate];
      [v14 expirationManager:self nearingExpirationForUser:v6];

      v15 = [[IDSTemporaryPhoneUserExpirationTimerInfo alloc] initWithUser:v6 expirationPhase:1];
      [(IDSTemporaryPhoneUserExpirationManager *)self _kickoffExpirationTimerForInfo:v15];
LABEL_9:
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_usersToTimersLock);
  }
}

- (IDSTemporaryPhoneUserExpirationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end