@interface CRKIdentityConfiguration
- (CRKIdentityConfiguration)init;
- (CRKIdentityConfiguration)initWithCoder:(id)coder;
- (CRKIdentityConfiguration)initWithCommonName:(id)name;
- (NSString)emailAddress;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIdentityConfiguration

- (CRKIdentityConfiguration)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(CRKIdentityConfiguration *)self initWithCommonName:uUIDString];

  return v5;
}

- (CRKIdentityConfiguration)initWithCommonName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = CRKIdentityConfiguration;
  v5 = [(CRKIdentityConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
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
    commonName = emailAddress;
  }

  else
  {
    commonName = [(CRKIdentityConfiguration *)self commonName];
  }

  return commonName;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  dataRepresentation = [(CRKIdentityConfiguration *)self dataRepresentation];
  v6 = [v4 configurationWithData:dataRepresentation];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  commonName = [(CRKIdentityConfiguration *)self commonName];
  [coderCopy encodeObject:commonName forKey:@"commonName"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKIdentityConfiguration keySizeInBits](self, "keySizeInBits")}];
  [coderCopy encodeObject:v5 forKey:@"keySizeInBits"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIdentityConfiguration createsCertificateAuthority](self, "createsCertificateAuthority")}];
  [coderCopy encodeObject:v6 forKey:@"createsCertificateAuthority"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CRKIdentityConfiguration hashingAlgorithm](self, "hashingAlgorithm")}];
  [coderCopy encodeObject:v7 forKey:@"hashingAlgorithm"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIdentityConfiguration addsClientAuthAndServerAuthEKUs](self, "addsClientAuthAndServerAuthEKUs")}];
  [coderCopy encodeObject:v8 forKey:@"addsClientAuthAndServerAuthEKUs"];

  [coderCopy encodeObject:self->_emailAddress forKey:@"emailAddress"];
}

- (CRKIdentityConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CRKIdentityConfiguration;
  v5 = [(CRKIdentityConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySizeInBits"];
    v5->_keySizeInBits = [v9 integerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createsCertificateAuthority"];
    v5->_createsCertificateAuthority = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashingAlgorithm"];
    v5->_hashingAlgorithm = [v11 integerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addsClientAuthAndServerAuthEKUs"];
    v5->_addsClientAuthAndServerAuthEKUs = [v12 BOOLValue];

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v14;
  }

  return v5;
}

@end