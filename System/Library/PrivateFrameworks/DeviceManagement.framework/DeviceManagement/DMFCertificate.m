@interface DMFCertificate
- (BOOL)isEqual:(id)a3;
- (DMFCertificate)initWithCoder:(id)a3;
- (DMFCertificate)initWithCommonName:(id)a3 data:(id)a4 isIdentity:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFCertificate

- (DMFCertificate)initWithCommonName:(id)a3 data:(id)a4 isIdentity:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = DMFCertificate;
  v10 = [(DMFCertificate *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    commonName = v10->_commonName;
    v10->_commonName = v11;

    v13 = [v9 copy];
    data = v10->_data;
    v10->_data = v13;

    v10->_isIdentity = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFCertificate *)self commonName];
  v6 = [(DMFCertificate *)self data];
  v7 = [v4 initWithCommonName:v5 data:v6 isIdentity:{-[DMFCertificate isIdentity](self, "isIdentity")}];

  return v7;
}

- (DMFCertificate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFCertificate;
  v5 = [(DMFCertificate *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isIdentity"];
    v5->_isIdentity = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFCertificate *)self commonName];
  [v4 encodeObject:v5 forKey:@"commonName"];

  v6 = [(DMFCertificate *)self data];
  [v4 encodeObject:v6 forKey:@"data"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFCertificate isIdentity](self, "isIdentity")}];
  [v4 encodeObject:v7 forKey:@"isIdentity"];
}

- (unint64_t)hash
{
  v3 = [(DMFCertificate *)self commonName];
  v4 = [v3 hash];
  v5 = [(DMFCertificate *)self data];
  v6 = [v5 hash] ^ v4;
  v7 = [(DMFCertificate *)self isIdentity];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFCertificate *)self commonName];
      v7 = [(DMFCertificate *)v5 commonName];
      v8 = v6;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        v11 = [(DMFCertificate *)self data];
        v12 = [(DMFCertificate *)v5 data];
        v13 = v11;
        v14 = v12;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          LOBYTE(v17) = 0;
        }

        else
        {
          v16 = [(DMFCertificate *)self isIdentity];
          v17 = v16 ^ [(DMFCertificate *)v5 isIdentity]^ 1;
        }
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFCertificate *)self commonName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(DMFCertificate *)self commonName];
    [v3 appendFormat:@"\tCommon Name     : “%@”\n", v6];
  }

  v7 = [(DMFCertificate *)self data];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(DMFCertificate *)self data];
    [v3 appendFormat:@"\tData            : %@\n", v9];
  }

  v10 = [(DMFCertificate *)self isIdentity];
  v11 = @"NO";
  if (v10)
  {
    v11 = @"YES";
  }

  [v3 appendFormat:@"\tIs Identity     : %@\n", v11];
  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end