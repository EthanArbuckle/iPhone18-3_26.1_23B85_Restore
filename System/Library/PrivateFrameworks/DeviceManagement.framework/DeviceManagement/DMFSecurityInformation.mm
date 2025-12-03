@interface DMFSecurityInformation
- (BOOL)isEqual:(id)equal;
- (DMFSecurityInformation)initWithCoder:(id)coder;
- (DMFSecurityInformation)initWithSupportsBlockLevelEncryption:(BOOL)encryption supportsFileLevelEncryption:(BOOL)levelEncryption passcodeIsSet:(BOOL)set passcodeIsCompliantWithGlobalRestrictions:(BOOL)restrictions passcodeIsCompliantWithProfileRestrictions:(BOOL)profileRestrictions passcodeLockGracePeriodEnforced:(unint64_t)enforced passcodeLockGracePeriod:(unint64_t)period;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSecurityInformation

- (DMFSecurityInformation)initWithSupportsBlockLevelEncryption:(BOOL)encryption supportsFileLevelEncryption:(BOOL)levelEncryption passcodeIsSet:(BOOL)set passcodeIsCompliantWithGlobalRestrictions:(BOOL)restrictions passcodeIsCompliantWithProfileRestrictions:(BOOL)profileRestrictions passcodeLockGracePeriodEnforced:(unint64_t)enforced passcodeLockGracePeriod:(unint64_t)period
{
  v16.receiver = self;
  v16.super_class = DMFSecurityInformation;
  result = [(DMFSecurityInformation *)&v16 init];
  if (result)
  {
    result->_supportsBlockLevelEncryption = encryption;
    result->_supportsFileLevelEncryption = levelEncryption;
    result->_passcodeIsSet = set;
    result->_passcodeIsCompliantWithGlobalRestrictions = restrictions;
    result->_passcodeIsCompliantWithProfileRestrictions = profileRestrictions;
    result->_passcodeLockGracePeriod = period;
    result->_passcodeLockGracePeriodEnforced = enforced;
  }

  return result;
}

- (DMFSecurityInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFSecurityInformation;
  v5 = [(DMFSecurityInformation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsBlockLevelEncryption"];
    v5->_supportsBlockLevelEncryption = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsFileLevelEncryption"];
    v5->_supportsFileLevelEncryption = [v7 BOOLValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsSet"];
    v5->_passcodeIsSet = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsCompliantWithGlobalRestrictions"];
    v5->_passcodeIsCompliantWithGlobalRestrictions = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsCompliantWithProfileRestrictions"];
    v5->_passcodeIsCompliantWithProfileRestrictions = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeLockGracePeriodEnforced"];
    v5->_passcodeLockGracePeriodEnforced = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcodeLockGracePeriod"];
    v5->_passcodeLockGracePeriod = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[DMFSecurityInformation supportsBlockLevelEncryption](self, "supportsBlockLevelEncryption")}];
  [coderCopy encodeObject:v6 forKey:@"supportsBlockLevelEncryption"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation supportsFileLevelEncryption](self, "supportsFileLevelEncryption")}];
  [coderCopy encodeObject:v7 forKey:@"supportsFileLevelEncryption"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsSet](self, "passcodeIsSet")}];
  [coderCopy encodeObject:v8 forKey:@"passcodeIsSet"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsCompliantWithGlobalRestrictions](self, "passcodeIsCompliantWithGlobalRestrictions")}];
  [coderCopy encodeObject:v9 forKey:@"passcodeIsCompliantWithGlobalRestrictions"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsCompliantWithProfileRestrictions](self, "passcodeIsCompliantWithProfileRestrictions")}];
  [coderCopy encodeObject:v10 forKey:@"passcodeIsCompliantWithProfileRestrictions"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSecurityInformation passcodeLockGracePeriodEnforced](self, "passcodeLockGracePeriodEnforced")}];
  [coderCopy encodeObject:v11 forKey:@"passcodeLockGracePeriodEnforced"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSecurityInformation passcodeLockGracePeriod](self, "passcodeLockGracePeriod")}];
  [coderCopy encodeObject:v12 forKey:@"passcodeLockGracePeriod"];
}

- (unint64_t)hash
{
  supportsBlockLevelEncryption = [(DMFSecurityInformation *)self supportsBlockLevelEncryption];
  v4 = supportsBlockLevelEncryption ^ [(DMFSecurityInformation *)self supportsFileLevelEncryption];
  passcodeIsSet = [(DMFSecurityInformation *)self passcodeIsSet];
  v6 = passcodeIsSet ^ [(DMFSecurityInformation *)self passcodeIsCompliantWithGlobalRestrictions]^ v4;
  v7 = [(DMFSecurityInformation *)self passcodeIsCompliantWithProfileRestrictions]^ v6 ^ 1;
  passcodeLockGracePeriodEnforced = [(DMFSecurityInformation *)self passcodeLockGracePeriodEnforced];
  return passcodeLockGracePeriodEnforced ^ [(DMFSecurityInformation *)self passcodeLockGracePeriod]^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      supportsBlockLevelEncryption = [(DMFSecurityInformation *)self supportsBlockLevelEncryption];
      if (supportsBlockLevelEncryption == [(DMFSecurityInformation *)v5 supportsBlockLevelEncryption]&& (v7 = [(DMFSecurityInformation *)self supportsFileLevelEncryption], v7 == [(DMFSecurityInformation *)v5 supportsFileLevelEncryption]) && (v8 = [(DMFSecurityInformation *)self passcodeIsSet], v8 == [(DMFSecurityInformation *)v5 passcodeIsSet]) && (v9 = [(DMFSecurityInformation *)self passcodeIsCompliantWithGlobalRestrictions], v9 == [(DMFSecurityInformation *)v5 passcodeIsCompliantWithGlobalRestrictions]) && (v10 = [(DMFSecurityInformation *)self passcodeIsCompliantWithProfileRestrictions], v10 == [(DMFSecurityInformation *)v5 passcodeIsCompliantWithProfileRestrictions]) && (v11 = [(DMFSecurityInformation *)self passcodeLockGracePeriodEnforced], v11 == [(DMFSecurityInformation *)v5 passcodeLockGracePeriodEnforced]))
      {
        passcodeLockGracePeriod = [(DMFSecurityInformation *)self passcodeLockGracePeriod];
        v13 = passcodeLockGracePeriod == [(DMFSecurityInformation *)v5 passcodeLockGracePeriod];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__DMFSecurityInformation_description__block_invoke;
  v8[3] = &unk_1E8616CA8;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x1E128DE70](v8);
  (v5)[2](v5, @"Supports Block Level Encryption                ", [(DMFSecurityInformation *)self supportsBlockLevelEncryption]);
  (v5)[2](v5, @"Supports File Level Encryption                 ", [(DMFSecurityInformation *)self supportsFileLevelEncryption]);
  (v5)[2](v5, @"Passcode Is Set                                ", [(DMFSecurityInformation *)self passcodeIsSet]);
  (v5)[2](v5, @"Passcode is Compliant With Global Restrictions ", [(DMFSecurityInformation *)self passcodeIsCompliantWithGlobalRestrictions]);
  (v5)[2](v5, @"Passcode is Compliant With Profile Restrictions", [(DMFSecurityInformation *)self passcodeIsCompliantWithProfileRestrictions]);
  [v4 appendFormat:@"Passcode Lock Grace Period Enforced             : %lu\n", -[DMFSecurityInformation passcodeLockGracePeriodEnforced](self, "passcodeLockGracePeriodEnforced")];
  [v4 appendFormat:@"Passcode Lock Grace Period                      : %lu\n", -[DMFSecurityInformation passcodeLockGracePeriod](self, "passcodeLockGracePeriod")];
  [v4 appendString:@"}>"];
  v6 = [v4 copy];

  return v6;
}

uint64_t __37__DMFSecurityInformation_description__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = @"NO";
  if (a3)
  {
    v4 = @"YES";
  }

  return [v3 appendFormat:@"\t%@ : %@\n", a2, v4];
}

@end