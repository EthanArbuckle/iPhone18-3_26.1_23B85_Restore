@interface CRKIdentityConfiguration
- (CRKIdentityConfiguration)init;
- (CRKIdentityConfiguration)initWithCoder:(id)a3;
- (CRKIdentityConfiguration)initWithCommonName:(id)a3;
- (NSString)emailAddress;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIdentityConfiguration

- (CRKIdentityConfiguration)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [(CRKIdentityConfiguration *)self initWithCommonName:v4];

  return v5;
}

- (CRKIdentityConfiguration)initWithCommonName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKIdentityConfiguration;
  v5 = [(CRKIdentityConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    commonName = v5->_commonName;
    v5->_commonName = v6;

    v5->_keySizeInBits = [objc_opt_class() defaultKeySizeInBits];
    v5->_createsCertificateAuthority = [objc_opt_class() defaultCreatesCertificateAuthority];
    v5->_hashingAlgorithm = [objc_opt_class() defaultHashingAlgorithm];
    v5->_addsClientAuthAndServerAuthEKUs = 1;
  }

  return v5;
}

- (NSString)emailAddress
{
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v3 = emailAddress;
  }

  else
  {
    v3 = [(CRKIdentityConfiguration *)self commonName];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(CRKIdentityConfiguration *)self dataRepresentation];
  v6 = [v4 configurationWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(CRKIdentityConfiguration *)self commonName];
  [v9 encodeObject:v4 forKey:@"commonName"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKIdentityConfiguration keySizeInBits](self, "keySizeInBits")}];
  [v9 encodeObject:v5 forKey:@"keySizeInBits"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIdentityConfiguration createsCertificateAuthority](self, "createsCertificateAuthority")}];
  [v9 encodeObject:v6 forKey:@"createsCertificateAuthority"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CRKIdentityConfiguration hashingAlgorithm](self, "hashingAlgorithm")}];
  [v9 encodeObject:v7 forKey:@"hashingAlgorithm"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIdentityConfiguration addsClientAuthAndServerAuthEKUs](self, "addsClientAuthAndServerAuthEKUs")}];
  [v9 encodeObject:v8 forKey:@"addsClientAuthAndServerAuthEKUs"];

  [v9 encodeObject:self->_emailAddress forKey:@"emailAddress"];
}

- (CRKIdentityConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CRKIdentityConfiguration;
  v5 = [(CRKIdentityConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySizeInBits"];
    v5->_keySizeInBits = [v9 integerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createsCertificateAuthority"];
    v5->_createsCertificateAuthority = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hashingAlgorithm"];
    v5->_hashingAlgorithm = [v11 integerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addsClientAuthAndServerAuthEKUs"];
    v5->_addsClientAuthAndServerAuthEKUs = [v12 BOOLValue];

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v14;
  }

  return v5;
}

@end