@interface DMCCodeIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCodeIdentity:(id)a3;
- (BOOL)verifyAgainst:(id)a3;
- (DMCCodeIdentity)initWithCodeSigningID:(id)a3 teamID:(id)a4 path:(id)a5;
- (DMCCodeIdentity)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMCCodeIdentity

- (DMCCodeIdentity)initWithCodeSigningID:(id)a3 teamID:(id)a4 path:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DMCCodeIdentity;
  v12 = [(DMCCodeIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codeSigningID, a3);
    objc_storeStrong(&v13->_teamID, a4);
    objc_storeStrong(&v13->_path, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DMCCodeIdentity *)self codeSigningID];
  v5 = [(DMCCodeIdentity *)self teamID];
  v6 = [(DMCCodeIdentity *)self path];
  v7 = [v3 stringWithFormat:@"%@ (%@) '%@'", v4, v5, v6];

  return v7;
}

- (BOOL)verifyAgainst:(id)a3
{
  v4 = a3;
  v5 = [(DMCCodeIdentity *)self codeSigningID];
  v6 = [v4 codeSigningID];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(DMCCodeIdentity *)self teamID];
    v8 = [v4 teamID];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DMCCodeIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code-signing-id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"team-id"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];

  v8 = [(DMCCodeIdentity *)self initWithCodeSigningID:v5 teamID:v6 path:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMCCodeIdentity *)self codeSigningID];
  [v4 encodeObject:v5 forKey:@"code-signing-id"];

  v6 = [(DMCCodeIdentity *)self teamID];
  [v4 encodeObject:v6 forKey:@"team-id"];

  v7 = [(DMCCodeIdentity *)self path];
  [v4 encodeObject:v7 forKey:@"path"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMCCodeIdentity *)self isEqualToCodeIdentity:v4];
  }

  return v5;
}

- (BOOL)isEqualToCodeIdentity:(id)a3
{
  v4 = a3;
  v5 = [(DMCCodeIdentity *)self description];
  v6 = [v4 description];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

@end