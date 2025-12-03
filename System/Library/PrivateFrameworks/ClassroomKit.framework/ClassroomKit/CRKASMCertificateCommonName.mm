@interface CRKASMCertificateCommonName
+ (id)commonNameWithString:(id)string;
- (CRKASMCertificateCommonName)initWithPrefix:(id)prefix userIdentifier:(id)identifier;
- (CRKASMCertificateCommonName)initWithPrefix:(id)prefix userIdentifier:(id)identifier UUID:(id)d;
- (NSString)stringValue;
@end

@implementation CRKASMCertificateCommonName

+ (id)commonNameWithString:(id)string
{
  if (string)
  {
    v4 = [string componentsSeparatedByString:@" "];
    if ([v4 count] >= 4)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [v4 objectAtIndexedSubscript:0];
      v8 = [v4 objectAtIndexedSubscript:1];
      v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];

      v5 = 0;
      if ([v9 hasSuffix:@": ASM"])
      {
        v10 = [v4 subarrayWithRange:{2, objc_msgSend(v4, "count") - 3}];
        v11 = [v10 componentsJoinedByString:@" "];
        if ([v11 length])
        {
          lastObject = [v4 lastObject];
          v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:lastObject];
          if (v13)
          {
            v5 = [[self alloc] initWithPrefix:v9 userIdentifier:v11 UUID:v13];
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CRKASMCertificateCommonName)initWithPrefix:(id)prefix userIdentifier:(id)identifier
{
  v6 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  prefixCopy = prefix;
  uUID = [v6 UUID];
  v10 = [(CRKASMCertificateCommonName *)self initWithPrefix:prefixCopy userIdentifier:identifierCopy UUID:uUID];

  return v10;
}

- (CRKASMCertificateCommonName)initWithPrefix:(id)prefix userIdentifier:(id)identifier UUID:(id)d
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = CRKASMCertificateCommonName;
  v11 = [(CRKASMCertificateCommonName *)&v17 init];
  if (v11)
  {
    v12 = [prefixCopy copy];
    prefix = v11->_prefix;
    v11->_prefix = v12;

    v14 = [identifierCopy copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v14;

    objc_storeStrong(&v11->_UUID, d);
  }

  return v11;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  prefix = [(CRKASMCertificateCommonName *)self prefix];
  userIdentifier = [(CRKASMCertificateCommonName *)self userIdentifier];
  uUID = [(CRKASMCertificateCommonName *)self UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@ %@", prefix, userIdentifier, uUIDString];

  return v8;
}

@end