@interface FMDActivationLockAuthInfo
- (FMDActivationLockAuthInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDActivationLockAuthInfo

- (FMDActivationLockAuthInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FMDActivationLockAuthInfo;
  v5 = [(FMDActivationLockAuthInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    [(FMDActivationLockAuthInfo *)v5 setUsername:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pet"];
    [(FMDActivationLockAuthInfo *)v5 setPet:v7];

    -[FMDActivationLockAuthInfo setIsAccountHSA2:](v5, "setIsAccountHSA2:", [v4 decodeBoolForKey:@"isAccountHSA2"]);
    -[FMDActivationLockAuthInfo setIsSignedIntoICloud:](v5, "setIsSignedIntoICloud:", [v4 decodeBoolForKey:@"isSignedIntoICloud"]);
    -[FMDActivationLockAuthInfo setIsFindMyON:](v5, "setIsFindMyON:", [v4 decodeBoolForKey:@"isFindMyON"]);
    -[FMDActivationLockAuthInfo setIsActivationLockEnabled:](v5, "setIsActivationLockEnabled:", [v4 decodeBoolForKey:@"isActivationLockEnabled"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    [(FMDActivationLockAuthInfo *)v5 setDsid:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDsid"];
    [(FMDActivationLockAuthInfo *)v5 setAltDsid:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDActivationLockAuthInfo *)self username];
  [v4 encodeObject:v5 forKey:@"username"];

  v6 = [(FMDActivationLockAuthInfo *)self pet];
  [v4 encodeObject:v6 forKey:@"pet"];

  [v4 encodeBool:-[FMDActivationLockAuthInfo isAccountHSA2](self forKey:{"isAccountHSA2"), @"isAccountHSA2"}];
  [v4 encodeBool:-[FMDActivationLockAuthInfo isSignedIntoICloud](self forKey:{"isSignedIntoICloud"), @"isSignedIntoICloud"}];
  [v4 encodeBool:-[FMDActivationLockAuthInfo isFindMyON](self forKey:{"isFindMyON"), @"isFindMyON"}];
  [v4 encodeBool:-[FMDActivationLockAuthInfo isActivationLockEnabled](self forKey:{"isActivationLockEnabled"), @"isActivationLockEnabled"}];
  v7 = [(FMDActivationLockAuthInfo *)self dsid];
  [v4 encodeObject:v7 forKey:@"dsid"];

  v8 = [(FMDActivationLockAuthInfo *)self altDsid];
  [v4 encodeObject:v8 forKey:@"altDsid"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FMDActivationLockAuthInfo *)self username];
  v5 = [(FMDActivationLockAuthInfo *)self pet];
  v6 = [(FMDActivationLockAuthInfo *)self isFindMyON];
  v7 = [(FMDActivationLockAuthInfo *)self isSignedIntoICloud];
  v8 = [(FMDActivationLockAuthInfo *)self isAccountHSA2];
  v9 = [(FMDActivationLockAuthInfo *)self isActivationLockEnabled];
  v10 = [(FMDActivationLockAuthInfo *)self dsid];
  v11 = [(FMDActivationLockAuthInfo *)self altDsid];
  v12 = [v3 stringWithFormat:@"username = %@, pet = %@, isFindMyON = %d, isSignedIntoICloud %d, isAccountHSA2 = %d isActivationLockEnabled = %d dsid = %@, altDsid = %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end