@interface CRKASMCertificateCommonName
+ (id)commonNameWithString:(id)a3;
- (CRKASMCertificateCommonName)initWithPrefix:(id)a3 userIdentifier:(id)a4;
- (CRKASMCertificateCommonName)initWithPrefix:(id)a3 userIdentifier:(id)a4 UUID:(id)a5;
- (NSString)stringValue;
@end

@implementation CRKASMCertificateCommonName

+ (id)commonNameWithString:(id)a3
{
  if (a3)
  {
    v4 = [a3 componentsSeparatedByString:@" "];
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
          v12 = [v4 lastObject];
          v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
          if (v13)
          {
            v5 = [[a1 alloc] initWithPrefix:v9 userIdentifier:v11 UUID:v13];
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

- (CRKASMCertificateCommonName)initWithPrefix:(id)a3 userIdentifier:(id)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(CRKASMCertificateCommonName *)self initWithPrefix:v8 userIdentifier:v7 UUID:v9];

  return v10;
}

- (CRKASMCertificateCommonName)initWithPrefix:(id)a3 userIdentifier:(id)a4 UUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CRKASMCertificateCommonName;
  v11 = [(CRKASMCertificateCommonName *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    prefix = v11->_prefix;
    v11->_prefix = v12;

    v14 = [v9 copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v14;

    objc_storeStrong(&v11->_UUID, a5);
  }

  return v11;
}

- (NSString)stringValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CRKASMCertificateCommonName *)self prefix];
  v5 = [(CRKASMCertificateCommonName *)self userIdentifier];
  v6 = [(CRKASMCertificateCommonName *)self UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@ %@", v4, v5, v7];

  return v8;
}

@end