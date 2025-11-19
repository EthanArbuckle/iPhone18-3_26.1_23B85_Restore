@interface PURemotePasscodePolicy
- (BOOL)isEqual:(id)a3;
- (PURemotePasscodePolicy)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PURemotePasscodePolicy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[PURemotePasscodePolicy isModificationAllowed](self, "isModificationAllowed"), v5 == [v4 isModificationAllowed]))
  {
    v8 = [(PURemotePasscodePolicy *)self passcodeMinimumLength];
    v6 = v8 == [v4 passcodeMinimumLength];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[PURemotePasscodePolicy isModificationAllowed](self withName:{"isModificationAllowed"), @"isModificationAllowed"}];
  v5 = [v3 appendUnsignedInteger:-[PURemotePasscodePolicy passcodeMinimumLength](self withName:{"passcodeMinimumLength"), @"passcodeMinimumLength"}];
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendBool:{-[PURemotePasscodePolicy isModificationAllowed](self, "isModificationAllowed")}];
  v5 = [v3 appendUnsignedInteger:{-[PURemotePasscodePolicy passcodeMinimumLength](self, "passcodeMinimumLength")}];
  v6 = [v3 hash];

  return v6;
}

- (PURemotePasscodePolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PURemotePasscodePolicy;
  v5 = [(PURemotePasscodePolicy *)&v7 init];
  if (v5)
  {
    v5->_modificationAllowed = [v4 decodeBoolForKey:@"kPURemotePasscodePolicy_ModificationAllowed"];
    v5->_passcodeMinimumLength = [v4 decodeIntegerForKey:@"kPURemotePasscodePolicy_MinimumLength"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modificationAllowed = self->_modificationAllowed;
  v5 = a3;
  [v5 encodeBool:modificationAllowed forKey:@"kPURemotePasscodePolicy_ModificationAllowed"];
  [v5 encodeInteger:self->_passcodeMinimumLength forKey:@"kPURemotePasscodePolicy_MinimumLength"];
}

@end