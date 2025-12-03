@interface BKMatchResultInfo
- (BKMatchResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device;
@end

@implementation BKMatchResultInfo

- (BKMatchResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device
{
  v34 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  detailsCopy = details;
  deviceCopy = device;
  v11 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = identityCopy;
    v30 = 2112;
    v31 = detailsCopy;
    v32 = 2112;
    v33 = deviceCopy;
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKMatchResultInfo::initWithServerIdentity:details:device: %@, %@, %@\n", buf, 0x20u);
  }

  v27.receiver = self;
  v27.super_class = BKMatchResultInfo;
  v13 = [(BKMatchResultInfo *)&v27 init];
  if (v13)
  {
    if (identityCopy)
    {
      v14 = [[BKIdentity alloc] initWithServerIdentity:identityCopy device:deviceCopy];
      identity = v13->_identity;
      v13->_identity = v14;
    }

    if (detailsCopy)
    {
      v16 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailLockoutState"];
      v17 = v16;
      if (v16)
      {
        +[BKDevice lockoutState:fromDeviceLockoutState:error:](BKDevice, "lockoutState:fromDeviceLockoutState:error:", &v13->_lockoutState, [v16 integerValue], 0);
      }

      v18 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailUnlocked"];

      if (v18)
      {
        v13->_unlocked = [v18 BOOLValue];
      }

      v19 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailCredentialAdded"];

      if (v19)
      {
        v13->_credentialAdded = [v19 BOOLValue];
      }

      v20 = [detailsCopy objectForKeyedSubscript:@"BKMatchDetailResultIgnored"];

      if (v20)
      {
        v13->_resultIgnored = [v20 BOOLValue];
      }
    }

    if (__osLogTrace)
    {
      v21 = __osLogTrace;
    }

    else
    {
      v21 = v11;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      v22 = v21;
      v23 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
      _os_log_impl(&dword_1C82AD000, v22, v23, "BKMatchResultInfo::initWithServerIdentity:details: -> %@\n", buf, 0xCu);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v24 = __osLogTrace;
    }

    else
    {
      v24 = v11;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = 0;
      v22 = v24;
      v23 = OS_LOG_TYPE_ERROR;
      goto LABEL_29;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

@end