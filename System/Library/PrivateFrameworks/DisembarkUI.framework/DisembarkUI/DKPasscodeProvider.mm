@interface DKPasscodeProvider
- (BOOL)isDevicePasscodeSet;
- (BOOL)verifyPasscode:(id)passcode;
- (int)simplePasscodeType;
- (int)unlockType;
@end

@implementation DKPasscodeProvider

- (BOOL)isDevicePasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (int)unlockType
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  unlockScreenType = [mEMORY[0x277D262A0] unlockScreenType];

  return unlockScreenType;
}

- (int)simplePasscodeType
{
  v4 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unlockScreenTypeWithOutSimplePasscodeType:&v4];

  return v4;
}

- (BOOL)verifyPasscode:(id)passcode
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D262A0];
  passcodeCopy = passcode;
  sharedConnection = [v4 sharedConnection];
  v15 = 0;
  v7 = [sharedConnection unlockDeviceWithPasscode:passcodeCopy outError:&v15];

  v8 = v15;
  if ((v7 & 1) == 0)
  {
    v9 = _DKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (_DKIsInternalInstall())
      {
        v12 = 0;
        v13 = v8;
      }

      else if (v8)
      {
        v14 = MEMORY[0x277CCACA8];
        domain = [v8 domain];
        v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v8, "code")];
        v12 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *buf = 138543362;
      v17 = v13;
      _os_log_error_impl(&dword_248D68000, v9, OS_LOG_TYPE_ERROR, "Failed to verify passcode: %{public}@", buf, 0xCu);
      if (v12)
      {
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end