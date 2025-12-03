@interface IDSRealTimeEncryptionIdentity
- (BOOL)isExpired;
- (IDSRealTimeEncryptionIdentity)init;
- (NSData)publicKeyData;
- (void)dealloc;
- (void)setFullIdentity:(__SecKey *)identity;
- (void)setPublicIdentity:(__SecKey *)identity;
@end

@implementation IDSRealTimeEncryptionIdentity

- (IDSRealTimeEncryptionIdentity)init
{
  v3.receiver = self;
  v3.super_class = IDSRealTimeEncryptionIdentity;
  result = [(IDSRealTimeEncryptionIdentity *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  fullIdentity = self->_fullIdentity;
  if (fullIdentity)
  {
    CFRelease(fullIdentity);
    self->_fullIdentity = 0;
  }

  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    CFRelease(publicIdentity);
    self->_publicIdentity = 0;
  }

  v5.receiver = self;
  v5.super_class = IDSRealTimeEncryptionIdentity;
  [(IDSRealTimeEncryptionIdentity *)&v5 dealloc];
}

- (void)setFullIdentity:(__SecKey *)identity
{
  os_unfair_lock_lock(&self->_lock);
  fullIdentity = self->_fullIdentity;
  if (fullIdentity)
  {
    CFRelease(fullIdentity);
    self->_fullIdentity = 0;
  }

  self->_fullIdentity = CFRetain(identity);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPublicIdentity:(__SecKey *)identity
{
  os_unfair_lock_lock(&self->_lock);
  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    CFRelease(publicIdentity);
    self->_publicIdentity = 0;
  }

  self->_publicIdentity = CFRetain(identity);

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)publicKeyData
{
  os_unfair_lock_lock(&self->_lock);
  if ([(IDSRealTimeEncryptionIdentity *)self isTestRunning])
  {
    if (!self->_publicIdentityData)
    {
      v3 = [NSData __imDataWithRandomBytes:100];
      publicIdentityData = self->_publicIdentityData;
      self->_publicIdentityData = v3;

      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_publicIdentityData;
        *buf = 134218242;
        selfCopy2 = self;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%p: Returned the random publicKeyData %@ for the simulator", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

LABEL_16:
    v10 = self->_publicIdentityData;
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_26;
  }

  cf = 0;
  if (qword_100CBF520 != -1)
  {
    sub_100931C20();
  }

  if (off_100CBF518)
  {
    v7 = off_100CBF518(self->_publicIdentity, &cf);
    if (v7)
    {
      if (!cf)
      {
        Copy = CFDataCreateCopy(0, v7);
        v9 = self->_publicIdentityData;
        self->_publicIdentityData = Copy;

        CFRelease(v7);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_16;
      }
    }
  }

  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    groupID = self->_groupID;
    *buf = 134218499;
    selfCopy2 = self;
    v17 = 2113;
    v18 = groupID;
    v19 = 2112;
    v20 = cf;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p: Couldn't the public key data for the group %{private}@ (error: %@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = 0;
LABEL_26:

  return v10;
}

- (BOOL)isExpired
{
  v3 = +[NSDate date];
  expirationDate = [(IDSRealTimeEncryptionIdentity *)self expirationDate];
  v5 = [v3 compare:expirationDate];

  if (v5 != -1)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      expirationDate2 = [(IDSRealTimeEncryptionIdentity *)self expirationDate];
      *buf = 134218498;
      selfCopy = self;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = expirationDate2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p: This IDSRealTimeEncryptionIdentity is expired. (now: %@, expirationDate: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        expirationDate3 = [(IDSRealTimeEncryptionIdentity *)self expirationDate];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v10 = [(IDSRealTimeEncryptionIdentity *)self expirationDate:self];
          _IDSLogV();
        }
      }
    }
  }

  return v5 != -1;
}

@end