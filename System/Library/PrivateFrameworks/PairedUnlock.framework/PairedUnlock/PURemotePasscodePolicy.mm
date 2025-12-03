@interface PURemotePasscodePolicy
- (BOOL)isEqual:(id)equal;
- (PURemotePasscodePolicy)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PURemotePasscodePolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[PURemotePasscodePolicy isModificationAllowed](self, "isModificationAllowed"), v5 == [equalCopy isModificationAllowed]))
  {
    passcodeMinimumLength = [(PURemotePasscodePolicy *)self passcodeMinimumLength];
    v6 = passcodeMinimumLength == [equalCopy passcodeMinimumLength];
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
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendBool:{-[PURemotePasscodePolicy isModificationAllowed](self, "isModificationAllowed")}];
  v5 = [v3 appendUnsignedInteger:{-[PURemotePasscodePolicy passcodeMinimumLength](self, "passcodeMinimumLength")}];
  v6 = [v3 hash];

  return v6;
}

- (PURemotePasscodePolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PURemotePasscodePolicy;
  v5 = [(PURemotePasscodePolicy *)&v7 init];
  if (v5)
  {
    v5->_modificationAllowed = [coderCopy decodeBoolForKey:@"kPURemotePasscodePolicy_ModificationAllowed"];
    v5->_passcodeMinimumLength = [coderCopy decodeIntegerForKey:@"kPURemotePasscodePolicy_MinimumLength"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modificationAllowed = self->_modificationAllowed;
  coderCopy = coder;
  [coderCopy encodeBool:modificationAllowed forKey:@"kPURemotePasscodePolicy_ModificationAllowed"];
  [coderCopy encodeInteger:self->_passcodeMinimumLength forKey:@"kPURemotePasscodePolicy_MinimumLength"];
}

@end