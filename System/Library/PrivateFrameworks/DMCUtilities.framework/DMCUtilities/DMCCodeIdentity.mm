@interface DMCCodeIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCodeIdentity:(id)identity;
- (BOOL)verifyAgainst:(id)against;
- (DMCCodeIdentity)initWithCodeSigningID:(id)d teamID:(id)iD path:(id)path;
- (DMCCodeIdentity)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMCCodeIdentity

- (DMCCodeIdentity)initWithCodeSigningID:(id)d teamID:(id)iD path:(id)path
{
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = DMCCodeIdentity;
  v12 = [(DMCCodeIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codeSigningID, d);
    objc_storeStrong(&v13->_teamID, iD);
    objc_storeStrong(&v13->_path, path);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  codeSigningID = [(DMCCodeIdentity *)self codeSigningID];
  teamID = [(DMCCodeIdentity *)self teamID];
  path = [(DMCCodeIdentity *)self path];
  v7 = [v3 stringWithFormat:@"%@ (%@) '%@'", codeSigningID, teamID, path];

  return v7;
}

- (BOOL)verifyAgainst:(id)against
{
  againstCopy = against;
  codeSigningID = [(DMCCodeIdentity *)self codeSigningID];
  codeSigningID2 = [againstCopy codeSigningID];
  if ([codeSigningID isEqualToString:codeSigningID2])
  {
    teamID = [(DMCCodeIdentity *)self teamID];
    teamID2 = [againstCopy teamID];
    v9 = [teamID isEqualToString:teamID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DMCCodeIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code-signing-id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"team-id"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];

  v8 = [(DMCCodeIdentity *)self initWithCodeSigningID:v5 teamID:v6 path:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codeSigningID = [(DMCCodeIdentity *)self codeSigningID];
  [coderCopy encodeObject:codeSigningID forKey:@"code-signing-id"];

  teamID = [(DMCCodeIdentity *)self teamID];
  [coderCopy encodeObject:teamID forKey:@"team-id"];

  path = [(DMCCodeIdentity *)self path];
  [coderCopy encodeObject:path forKey:@"path"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMCCodeIdentity *)self isEqualToCodeIdentity:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCodeIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(DMCCodeIdentity *)self description];
  v6 = [identityCopy description];

  LOBYTE(identityCopy) = [v5 isEqualToString:v6];
  return identityCopy;
}

@end