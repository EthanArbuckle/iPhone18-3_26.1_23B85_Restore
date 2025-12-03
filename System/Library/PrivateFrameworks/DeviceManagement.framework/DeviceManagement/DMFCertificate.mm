@interface DMFCertificate
- (BOOL)isEqual:(id)equal;
- (DMFCertificate)initWithCoder:(id)coder;
- (DMFCertificate)initWithCommonName:(id)name data:(id)data isIdentity:(BOOL)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFCertificate

- (DMFCertificate)initWithCommonName:(id)name data:(id)data isIdentity:(BOOL)identity
{
  nameCopy = name;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = DMFCertificate;
  v10 = [(DMFCertificate *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    commonName = v10->_commonName;
    v10->_commonName = v11;

    v13 = [dataCopy copy];
    data = v10->_data;
    v10->_data = v13;

    v10->_isIdentity = identity;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  commonName = [(DMFCertificate *)self commonName];
  data = [(DMFCertificate *)self data];
  v7 = [v4 initWithCommonName:commonName data:data isIdentity:{-[DMFCertificate isIdentity](self, "isIdentity")}];

  return v7;
}

- (DMFCertificate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFCertificate;
  v5 = [(DMFCertificate *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isIdentity"];
    v5->_isIdentity = [v12 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  commonName = [(DMFCertificate *)self commonName];
  [coderCopy encodeObject:commonName forKey:@"commonName"];

  data = [(DMFCertificate *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFCertificate isIdentity](self, "isIdentity")}];
  [coderCopy encodeObject:v7 forKey:@"isIdentity"];
}

- (unint64_t)hash
{
  commonName = [(DMFCertificate *)self commonName];
  v4 = [commonName hash];
  data = [(DMFCertificate *)self data];
  v6 = [data hash] ^ v4;
  isIdentity = [(DMFCertificate *)self isIdentity];

  return v6 ^ isIdentity;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      commonName = [(DMFCertificate *)self commonName];
      commonName2 = [(DMFCertificate *)v5 commonName];
      v8 = commonName;
      v9 = commonName2;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        data = [(DMFCertificate *)self data];
        data2 = [(DMFCertificate *)v5 data];
        v13 = data;
        v14 = data2;
        if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
        {
          LOBYTE(v17) = 0;
        }

        else
        {
          isIdentity = [(DMFCertificate *)self isIdentity];
          v17 = isIdentity ^ [(DMFCertificate *)v5 isIdentity]^ 1;
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
  commonName = [(DMFCertificate *)self commonName];
  v5 = [commonName length];

  if (v5)
  {
    commonName2 = [(DMFCertificate *)self commonName];
    [v3 appendFormat:@"\tCommon Name     : “%@”\n", commonName2];
  }

  data = [(DMFCertificate *)self data];
  v8 = [data length];

  if (v8)
  {
    data2 = [(DMFCertificate *)self data];
    [v3 appendFormat:@"\tData            : %@\n", data2];
  }

  isIdentity = [(DMFCertificate *)self isIdentity];
  v11 = @"NO";
  if (isIdentity)
  {
    v11 = @"YES";
  }

  [v3 appendFormat:@"\tIs Identity     : %@\n", v11];
  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end