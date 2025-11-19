@interface DMFSecurityInformation
- (BOOL)isEqual:(id)a3;
- (DMFSecurityInformation)initWithCoder:(id)a3;
- (DMFSecurityInformation)initWithSupportsBlockLevelEncryption:(BOOL)a3 supportsFileLevelEncryption:(BOOL)a4 passcodeIsSet:(BOOL)a5 passcodeIsCompliantWithGlobalRestrictions:(BOOL)a6 passcodeIsCompliantWithProfileRestrictions:(BOOL)a7 passcodeLockGracePeriodEnforced:(unint64_t)a8 passcodeLockGracePeriod:(unint64_t)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSecurityInformation

- (DMFSecurityInformation)initWithSupportsBlockLevelEncryption:(BOOL)a3 supportsFileLevelEncryption:(BOOL)a4 passcodeIsSet:(BOOL)a5 passcodeIsCompliantWithGlobalRestrictions:(BOOL)a6 passcodeIsCompliantWithProfileRestrictions:(BOOL)a7 passcodeLockGracePeriodEnforced:(unint64_t)a8 passcodeLockGracePeriod:(unint64_t)a9
{
  v16.receiver = self;
  v16.super_class = DMFSecurityInformation;
  result = [(DMFSecurityInformation *)&v16 init];
  if (result)
  {
    result->_supportsBlockLevelEncryption = a3;
    result->_supportsFileLevelEncryption = a4;
    result->_passcodeIsSet = a5;
    result->_passcodeIsCompliantWithGlobalRestrictions = a6;
    result->_passcodeIsCompliantWithProfileRestrictions = a7;
    result->_passcodeLockGracePeriod = a9;
    result->_passcodeLockGracePeriodEnforced = a8;
  }

  return result;
}

- (DMFSecurityInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFSecurityInformation;
  v5 = [(DMFSecurityInformation *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsBlockLevelEncryption"];
    v5->_supportsBlockLevelEncryption = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsFileLevelEncryption"];
    v5->_supportsFileLevelEncryption = [v7 BOOLValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsSet"];
    v5->_passcodeIsSet = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsCompliantWithGlobalRestrictions"];
    v5->_passcodeIsCompliantWithGlobalRestrictions = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeIsCompliantWithProfileRestrictions"];
    v5->_passcodeIsCompliantWithProfileRestrictions = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeLockGracePeriodEnforced"];
    v5->_passcodeLockGracePeriodEnforced = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcodeLockGracePeriod"];
    v5->_passcodeLockGracePeriod = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[DMFSecurityInformation supportsBlockLevelEncryption](self, "supportsBlockLevelEncryption")}];
  [v5 encodeObject:v6 forKey:@"supportsBlockLevelEncryption"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation supportsFileLevelEncryption](self, "supportsFileLevelEncryption")}];
  [v5 encodeObject:v7 forKey:@"supportsFileLevelEncryption"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsSet](self, "passcodeIsSet")}];
  [v5 encodeObject:v8 forKey:@"passcodeIsSet"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsCompliantWithGlobalRestrictions](self, "passcodeIsCompliantWithGlobalRestrictions")}];
  [v5 encodeObject:v9 forKey:@"passcodeIsCompliantWithGlobalRestrictions"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSecurityInformation passcodeIsCompliantWithProfileRestrictions](self, "passcodeIsCompliantWithProfileRestrictions")}];
  [v5 encodeObject:v10 forKey:@"passcodeIsCompliantWithProfileRestrictions"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSecurityInformation passcodeLockGracePeriodEnforced](self, "passcodeLockGracePeriodEnforced")}];
  [v5 encodeObject:v11 forKey:@"passcodeLockGracePeriodEnforced"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSecurityInformation passcodeLockGracePeriod](self, "passcodeLockGracePeriod")}];
  [v5 encodeObject:v12 forKey:@"passcodeLockGracePeriod"];
}

- (unint64_t)hash
{
  v3 = [(DMFSecurityInformation *)self supportsBlockLevelEncryption];
  v4 = v3 ^ [(DMFSecurityInformation *)self supportsFileLevelEncryption];
  v5 = [(DMFSecurityInformation *)self passcodeIsSet];
  v6 = v5 ^ [(DMFSecurityInformation *)self passcodeIsCompliantWithGlobalRestrictions]^ v4;
  v7 = [(DMFSecurityInformation *)self passcodeIsCompliantWithProfileRestrictions]^ v6 ^ 1;
  v8 = [(DMFSecurityInformation *)self passcodeLockGracePeriodEnforced];
  return v8 ^ [(DMFSecurityInformation *)self passcodeLockGracePeriod]^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFSecurityInformation *)self supportsBlockLevelEncryption];
      if (v6 == [(DMFSecurityInformation *)v5 supportsBlockLevelEncryption]&& (v7 = [(DMFSecurityInformation *)self supportsFileLevelEncryption], v7 == [(DMFSecurityInformation *)v5 supportsFileLevelEncryption]) && (v8 = [(DMFSecurityInformation *)self passcodeIsSet], v8 == [(DMFSecurityInformation *)v5 passcodeIsSet]) && (v9 = [(DMFSecurityInformation *)self passcodeIsCompliantWithGlobalRestrictions], v9 == [(DMFSecurityInformation *)v5 passcodeIsCompliantWithGlobalRestrictions]) && (v10 = [(DMFSecurityInformation *)self passcodeIsCompliantWithProfileRestrictions], v10 == [(DMFSecurityInformation *)v5 passcodeIsCompliantWithProfileRestrictions]) && (v11 = [(DMFSecurityInformation *)self passcodeLockGracePeriodEnforced], v11 == [(DMFSecurityInformation *)v5 passcodeLockGracePeriodEnforced]))
      {
        v12 = [(DMFSecurityInformation *)self passcodeLockGracePeriod];
        v13 = v12 == [(DMFSecurityInformation *)v5 passcodeLockGracePeriod];
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