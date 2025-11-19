@interface PURemoteDeviceState
- (BOOL)isEqual:(id)a3;
- (PURemoteDeviceState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PURemoteDeviceState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(PURemoteDeviceState *)self hasPasscodeSet];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __31__PURemoteDeviceState_isEqual___block_invoke;
  v30[3] = &unk_2799FCC38;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendBool:v6 counterpart:v30];
  v9 = [(PURemoteDeviceState *)self isUnlockOnly];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __31__PURemoteDeviceState_isEqual___block_invoke_2;
  v28[3] = &unk_2799FCC38;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendBool:v9 counterpart:v28];
  v12 = [(PURemoteDeviceState *)self isPasscodeLocked];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __31__PURemoteDeviceState_isEqual___block_invoke_3;
  v26[3] = &unk_2799FCC38;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:v12 counterpart:v26];
  v15 = [(PURemoteDeviceState *)self isWristDetectEnabled];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __31__PURemoteDeviceState_isEqual___block_invoke_4;
  v24[3] = &unk_2799FCC38;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendBool:v15 counterpart:v24];
  v18 = [(PURemoteDeviceState *)self passcodePolicy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __31__PURemoteDeviceState_isEqual___block_invoke_5;
  v22[3] = &unk_2799FCC60;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:v18 counterpart:v22];

  LOBYTE(v18) = [v5 isEqual];
  return v18;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendBool:{-[PURemoteDeviceState hasPasscodeSet](self, "hasPasscodeSet")}];
  v5 = [v3 appendBool:{-[PURemoteDeviceState isUnlockOnly](self, "isUnlockOnly")}];
  v6 = [v3 appendBool:{-[PURemoteDeviceState isPasscodeLocked](self, "isPasscodeLocked")}];
  v7 = [v3 appendBool:{-[PURemoteDeviceState isWristDetectEnabled](self, "isWristDetectEnabled")}];
  v8 = [(PURemoteDeviceState *)self passcodePolicy];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_version withName:@"version"];
  v5 = [v3 appendBool:self->_passcodeSet withName:@"passcodeSet"];
  v6 = [v3 appendBool:self->_unlockOnly withName:@"isUnlockOnly" ifEqualTo:1];
  v7 = [v3 appendBool:self->_passcodeLocked withName:@"isPasscodeLocked"];
  v8 = [v3 appendBool:self->_wristDetectEnabled withName:@"wristDetectEnabled"];
  v9 = [v3 appendObject:self->_passcodePolicy withName:@"policy"];
  v10 = [v3 build];

  return v10;
}

- (PURemoteDeviceState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PURemoteDeviceState;
  v5 = [(PURemoteDeviceState *)&v9 init];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"kPURemoteDeviceState_Version"];
    v5->_passcodeSet = [v4 decodeBoolForKey:@"kPURemoteDeviceState_PasscodeSet"];
    v5->_passcodeLocked = [v4 decodeBoolForKey:@"kPURemoteDeviceState_PasscodeLocked"];
    v5->_unlockOnly = [v4 decodeBoolForKey:@"kPURemoteDeviceState_UnlockOnly"];
    v5->_wristDetectEnabled = [v4 decodeBoolForKey:@"kPURemoteDeviceState_WristDetectEnabled"];
    v6 = [v4 decodeObjectForKey:@"kPURemoteDeviceState_PasscodePolicy"];
    passcodePolicy = v5->_passcodePolicy;
    v5->_passcodePolicy = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"kPURemoteDeviceState_Version"];
  [v5 encodeBool:self->_passcodeSet forKey:@"kPURemoteDeviceState_PasscodeSet"];
  [v5 encodeBool:self->_passcodeLocked forKey:@"kPURemoteDeviceState_PasscodeLocked"];
  [v5 encodeBool:self->_unlockOnly forKey:@"kPURemoteDeviceState_UnlockOnly"];
  [v5 encodeBool:self->_wristDetectEnabled forKey:@"kPURemoteDeviceState_WristDetectEnabled"];
  [v5 encodeObject:self->_passcodePolicy forKey:@"kPURemoteDeviceState_PasscodePolicy"];
}

@end