@interface FMDActivationLockInfo
- (FMDActivationLockInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDActivationLockInfo

- (FMDActivationLockInfo)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FMDActivationLockInfo;
  v5 = [(FMDActivationLockInfo *)&v15 init];
  if (v5)
  {
    -[FMDActivationLockInfo setIsActivationLocked:](v5, "setIsActivationLocked:", [v4 decodeBoolForKey:@"isActivationLocked"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskedAppleID"];
    [(FMDActivationLockInfo *)v5 setMaskedAppleID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskedOrganizationID"];
    [(FMDActivationLockInfo *)v5 setMaskedOrganizationID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(FMDActivationLockInfo *)v5 setTitle:v8];

    -[FMDActivationLockInfo setIsOfflineFindingEnabled:](v5, "setIsOfflineFindingEnabled:", [v4 decodeBoolForKey:@"isOfflineFindingEnabled"]);
    v9 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"localeStrings"];
    [(FMDActivationLockInfo *)v5 setLocaleStrings:v12];

    -[FMDActivationLockInfo setIsRestrictedSKU:](v5, "setIsRestrictedSKU:", [v4 decodeBoolForKey:@"isRestrictedSKU"]);
    -[FMDActivationLockInfo setIsFindMyLPEMEnabled:](v5, "setIsFindMyLPEMEnabled:", [v4 decodeBoolForKey:@"isFindMyLPEMEnabled"]);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[FMDActivationLockInfo isActivationLocked](self forKey:{"isActivationLocked"), @"isActivationLocked"}];
  v4 = [(FMDActivationLockInfo *)self maskedAppleID];
  [v8 encodeObject:v4 forKey:@"maskedAppleID"];

  v5 = [(FMDActivationLockInfo *)self maskedOrganizationID];
  [v8 encodeObject:v5 forKey:@"maskedOrganizationID"];

  v6 = [(FMDActivationLockInfo *)self title];
  [v8 encodeObject:v6 forKey:@"title"];

  [v8 encodeBool:-[FMDActivationLockInfo isOfflineFindingEnabled](self forKey:{"isOfflineFindingEnabled"), @"isOfflineFindingEnabled"}];
  v7 = [(FMDActivationLockInfo *)self localeStrings];
  [v8 encodeObject:v7 forKey:@"localeStrings"];

  [v8 encodeBool:-[FMDActivationLockInfo isRestrictedSKU](self forKey:{"isRestrictedSKU"), @"isRestrictedSKU"}];
  [v8 encodeBool:-[FMDActivationLockInfo isFindMyLPEMEnabled](self forKey:{"isFindMyLPEMEnabled"), @"isFindMyLPEMEnabled"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FMDActivationLockInfo *)self title];
  v6 = [(FMDActivationLockInfo *)self maskedAppleID];
  v7 = [(FMDActivationLockInfo *)self maskedOrganizationID];
  v8 = [v3 stringWithFormat:@"%@ - [\n\t%@\n\t%@\n\t%@\n\tAL Status %d\n\tofflineFinding %d, \n\trestrictedSKU %d\n\tofflineFindingInLPM %d]", v4, v5, v6, v7, -[FMDActivationLockInfo isActivationLocked](self, "isActivationLocked"), -[FMDActivationLockInfo isOfflineFindingEnabled](self, "isOfflineFindingEnabled"), -[FMDActivationLockInfo isRestrictedSKU](self, "isRestrictedSKU"), -[FMDActivationLockInfo isFindMyLPEMEnabled](self, "isFindMyLPEMEnabled")];

  return v8;
}

@end