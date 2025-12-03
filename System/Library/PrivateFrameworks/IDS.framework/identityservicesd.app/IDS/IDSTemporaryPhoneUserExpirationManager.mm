@interface IDSTemporaryPhoneUserExpirationManager
- (IDSTemporaryPhoneUserExpirationManager)initWithUserStore:(id)store delegate:(id)delegate;
- (IDSTemporaryPhoneUserExpirationManagerDelegate)delegate;
- (void)_attemptToKickoffExpirationTimerForUser:(id)user;
- (void)_cancelExpirationTimerForUser:(id)user;
- (void)_expireTimer:(id)timer;
- (void)_kickoffExpirationTimerForInfo:(id)info;
@end

@implementation IDSTemporaryPhoneUserExpirationManager

- (IDSTemporaryPhoneUserExpirationManager)initWithUserStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  delegateCopy = delegate;
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

    objc_storeWeak(&v9->_delegate, delegateCopy);
    [storeCopy addActionListener:v9 forRealm:2];
    v12 = [storeCopy usersWithRealm:2];
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

- (void)_attemptToKickoffExpirationTimerForUser:(id)user
{
  userCopy = user;
  v4 = [userCopy realm] == 2;
  v5 = userCopy;
  if (v4)
  {
    v6 = userCopy;
    expirationDate = [v6 expirationDate];

    if (expirationDate)
    {
      v8 = [[IDSTemporaryPhoneUserExpirationTimerInfo alloc] initWithUser:v6];
      [(IDSTemporaryPhoneUserExpirationManager *)self _kickoffExpirationTimerForInfo:v8];
    }

    v5 = userCopy;
  }
}

- (void)_kickoffExpirationTimerForInfo:(id)info
{
  infoCopy = info;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    user = [infoCopy user];
    v25 = 138412546;
    v26 = user;
    v27 = 2048;
    expirationPhase = [infoCopy expirationPhase];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting expiration timer for temporary user %@ with phase %ld", &v25, 0x16u);
  }

  user2 = [infoCopy user];
  os_unfair_lock_lock(&self->_usersToTimersLock);
  usersToTimers = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  uniqueIdentifier = [user2 uniqueIdentifier];
  v10 = [usersToTimers objectForKeyedSubscript:uniqueIdentifier];

  if (v10)
  {
    usersToTimers2 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    uniqueIdentifier2 = [user2 uniqueIdentifier];
    v13 = [usersToTimers2 objectForKeyedSubscript:uniqueIdentifier2];
    [v13 invalidate];

    usersToTimers3 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    uniqueIdentifier3 = [user2 uniqueIdentifier];
    [usersToTimers3 setObject:0 forKeyedSubscript:uniqueIdentifier3];
  }

  v16 = [IMTimer alloc];
  [infoCopy expirationInterval];
  v18 = v17;
  uniqueIdentifier4 = [user2 uniqueIdentifier];
  v20 = im_primary_queue();
  v21 = [v16 initWithTimeInterval:uniqueIdentifier4 name:1 shouldWake:self target:"_expireTimer:" selector:infoCopy userInfo:v20 queue:v18];

  usersToTimers4 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  uniqueIdentifier5 = [user2 uniqueIdentifier];
  [usersToTimers4 setObject:v21 forKeyedSubscript:uniqueIdentifier5];

  os_unfair_lock_unlock(&self->_usersToTimersLock);
  [infoCopy expirationInterval];
  if (v24 <= 0.0)
  {
    [(IDSTemporaryPhoneUserExpirationManager *)self _expireTimer:v21];
  }
}

- (void)_cancelExpirationTimerForUser:(id)user
{
  userCopy = user;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = userCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing expiration timer for temporary user %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_usersToTimersLock);
  usersToTimers = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  uniqueIdentifier = [userCopy uniqueIdentifier];
  v8 = [usersToTimers objectForKeyedSubscript:uniqueIdentifier];
  [v8 invalidate];

  usersToTimers2 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  uniqueIdentifier2 = [userCopy uniqueIdentifier];
  [usersToTimers2 setObject:0 forKeyedSubscript:uniqueIdentifier2];

  os_unfair_lock_unlock(&self->_usersToTimersLock);
}

- (void)_expireTimer:(id)timer
{
  timerCopy = timer;
  userInfo = [timerCopy userInfo];
  user = [userInfo user];
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = user;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Expiration timer fired for temporary user %@", &v16, 0xCu);
  }

  os_unfair_lock_lock(&self->_usersToTimersLock);
  usersToTimers = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
  uniqueIdentifier = [user uniqueIdentifier];
  v10 = [usersToTimers objectForKeyedSubscript:uniqueIdentifier];

  if (v10)
  {
    [timerCopy invalidate];
    usersToTimers2 = [(IDSTemporaryPhoneUserExpirationManager *)self usersToTimers];
    uniqueIdentifier2 = [user uniqueIdentifier];
    [usersToTimers2 setObject:0 forKeyedSubscript:uniqueIdentifier2];

    os_unfair_lock_unlock(&self->_usersToTimersLock);
    expirationPhase = [userInfo expirationPhase];
    if (expirationPhase == 1)
    {
      delegate = [(IDSTemporaryPhoneUserExpirationManager *)self delegate];
      [(IDSTemporaryPhoneUserExpirationTimerInfo *)delegate expirationManager:self didExpireUser:user];
      goto LABEL_9;
    }

    if (!expirationPhase)
    {
      delegate2 = [(IDSTemporaryPhoneUserExpirationManager *)self delegate];
      [delegate2 expirationManager:self nearingExpirationForUser:user];

      delegate = [[IDSTemporaryPhoneUserExpirationTimerInfo alloc] initWithUser:user expirationPhase:1];
      [(IDSTemporaryPhoneUserExpirationManager *)self _kickoffExpirationTimerForInfo:delegate];
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