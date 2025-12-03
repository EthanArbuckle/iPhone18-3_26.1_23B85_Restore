@interface PURemoteDeviceState
- (BOOL)isEqual:(id)equal;
- (PURemoteDeviceState)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PURemoteDeviceState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  hasPasscodeSet = [(PURemoteDeviceState *)self hasPasscodeSet];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __31__PURemoteDeviceState_isEqual___block_invoke;
  v30[3] = &unk_2799FCC38;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendBool:hasPasscodeSet counterpart:v30];
  isUnlockOnly = [(PURemoteDeviceState *)self isUnlockOnly];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __31__PURemoteDeviceState_isEqual___block_invoke_2;
  v28[3] = &unk_2799FCC38;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendBool:isUnlockOnly counterpart:v28];
  isPasscodeLocked = [(PURemoteDeviceState *)self isPasscodeLocked];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __31__PURemoteDeviceState_isEqual___block_invoke_3;
  v26[3] = &unk_2799FCC38;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:isPasscodeLocked counterpart:v26];
  isWristDetectEnabled = [(PURemoteDeviceState *)self isWristDetectEnabled];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __31__PURemoteDeviceState_isEqual___block_invoke_4;
  v24[3] = &unk_2799FCC38;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendBool:isWristDetectEnabled counterpart:v24];
  passcodePolicy = [(PURemoteDeviceState *)self passcodePolicy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __31__PURemoteDeviceState_isEqual___block_invoke_5;
  v22[3] = &unk_2799FCC60;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:passcodePolicy counterpart:v22];

  LOBYTE(passcodePolicy) = [v5 isEqual];
  return passcodePolicy;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendBool:{-[PURemoteDeviceState hasPasscodeSet](self, "hasPasscodeSet")}];
  v5 = [v3 appendBool:{-[PURemoteDeviceState isUnlockOnly](self, "isUnlockOnly")}];
  v6 = [v3 appendBool:{-[PURemoteDeviceState isPasscodeLocked](self, "isPasscodeLocked")}];
  v7 = [v3 appendBool:{-[PURemoteDeviceState isWristDetectEnabled](self, "isWristDetectEnabled")}];
  passcodePolicy = [(PURemoteDeviceState *)self passcodePolicy];
  v9 = [v3 appendObject:passcodePolicy];

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
  build = [v3 build];

  return build;
}

- (PURemoteDeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PURemoteDeviceState;
  v5 = [(PURemoteDeviceState *)&v9 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"kPURemoteDeviceState_Version"];
    v5->_passcodeSet = [coderCopy decodeBoolForKey:@"kPURemoteDeviceState_PasscodeSet"];
    v5->_passcodeLocked = [coderCopy decodeBoolForKey:@"kPURemoteDeviceState_PasscodeLocked"];
    v5->_unlockOnly = [coderCopy decodeBoolForKey:@"kPURemoteDeviceState_UnlockOnly"];
    v5->_wristDetectEnabled = [coderCopy decodeBoolForKey:@"kPURemoteDeviceState_WristDetectEnabled"];
    v6 = [coderCopy decodeObjectForKey:@"kPURemoteDeviceState_PasscodePolicy"];
    passcodePolicy = v5->_passcodePolicy;
    v5->_passcodePolicy = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"kPURemoteDeviceState_Version"];
  [coderCopy encodeBool:self->_passcodeSet forKey:@"kPURemoteDeviceState_PasscodeSet"];
  [coderCopy encodeBool:self->_passcodeLocked forKey:@"kPURemoteDeviceState_PasscodeLocked"];
  [coderCopy encodeBool:self->_unlockOnly forKey:@"kPURemoteDeviceState_UnlockOnly"];
  [coderCopy encodeBool:self->_wristDetectEnabled forKey:@"kPURemoteDeviceState_WristDetectEnabled"];
  [coderCopy encodeObject:self->_passcodePolicy forKey:@"kPURemoteDeviceState_PasscodePolicy"];
}

@end