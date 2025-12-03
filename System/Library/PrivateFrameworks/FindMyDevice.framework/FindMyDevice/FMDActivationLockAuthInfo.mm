@interface FMDActivationLockAuthInfo
- (FMDActivationLockAuthInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDActivationLockAuthInfo

- (FMDActivationLockAuthInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FMDActivationLockAuthInfo;
  v5 = [(FMDActivationLockAuthInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    [(FMDActivationLockAuthInfo *)v5 setUsername:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pet"];
    [(FMDActivationLockAuthInfo *)v5 setPet:v7];

    -[FMDActivationLockAuthInfo setIsAccountHSA2:](v5, "setIsAccountHSA2:", [coderCopy decodeBoolForKey:@"isAccountHSA2"]);
    -[FMDActivationLockAuthInfo setIsSignedIntoICloud:](v5, "setIsSignedIntoICloud:", [coderCopy decodeBoolForKey:@"isSignedIntoICloud"]);
    -[FMDActivationLockAuthInfo setIsFindMyON:](v5, "setIsFindMyON:", [coderCopy decodeBoolForKey:@"isFindMyON"]);
    -[FMDActivationLockAuthInfo setIsActivationLockEnabled:](v5, "setIsActivationLockEnabled:", [coderCopy decodeBoolForKey:@"isActivationLockEnabled"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    [(FMDActivationLockAuthInfo *)v5 setDsid:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDsid"];
    [(FMDActivationLockAuthInfo *)v5 setAltDsid:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  username = [(FMDActivationLockAuthInfo *)self username];
  [coderCopy encodeObject:username forKey:@"username"];

  v6 = [(FMDActivationLockAuthInfo *)self pet];
  [coderCopy encodeObject:v6 forKey:@"pet"];

  [coderCopy encodeBool:-[FMDActivationLockAuthInfo isAccountHSA2](self forKey:{"isAccountHSA2"), @"isAccountHSA2"}];
  [coderCopy encodeBool:-[FMDActivationLockAuthInfo isSignedIntoICloud](self forKey:{"isSignedIntoICloud"), @"isSignedIntoICloud"}];
  [coderCopy encodeBool:-[FMDActivationLockAuthInfo isFindMyON](self forKey:{"isFindMyON"), @"isFindMyON"}];
  [coderCopy encodeBool:-[FMDActivationLockAuthInfo isActivationLockEnabled](self forKey:{"isActivationLockEnabled"), @"isActivationLockEnabled"}];
  dsid = [(FMDActivationLockAuthInfo *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"dsid"];

  altDsid = [(FMDActivationLockAuthInfo *)self altDsid];
  [coderCopy encodeObject:altDsid forKey:@"altDsid"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  username = [(FMDActivationLockAuthInfo *)self username];
  v5 = [(FMDActivationLockAuthInfo *)self pet];
  isFindMyON = [(FMDActivationLockAuthInfo *)self isFindMyON];
  isSignedIntoICloud = [(FMDActivationLockAuthInfo *)self isSignedIntoICloud];
  isAccountHSA2 = [(FMDActivationLockAuthInfo *)self isAccountHSA2];
  isActivationLockEnabled = [(FMDActivationLockAuthInfo *)self isActivationLockEnabled];
  dsid = [(FMDActivationLockAuthInfo *)self dsid];
  altDsid = [(FMDActivationLockAuthInfo *)self altDsid];
  v12 = [v3 stringWithFormat:@"username = %@, pet = %@, isFindMyON = %d, isSignedIntoICloud %d, isAccountHSA2 = %d isActivationLockEnabled = %d dsid = %@, altDsid = %@", username, v5, isFindMyON, isSignedIntoICloud, isAccountHSA2, isActivationLockEnabled, dsid, altDsid];

  return v12;
}

@end