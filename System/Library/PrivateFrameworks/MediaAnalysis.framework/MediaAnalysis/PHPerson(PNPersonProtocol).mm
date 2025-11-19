@interface PHPerson(PNPersonProtocol)
- (__CFString)anonymizedName;
- (id)keyFace;
- (id)personLocalIdentifiers;
- (void)pn_addMergeCandidatePersons:()PNPersonProtocol;
- (void)setIsVerified:()PNPersonProtocol;
- (void)setKeyFace:()PNPersonProtocol;
- (void)setManualOrder:()PNPersonProtocol;
@end

@implementation PHPerson(PNPersonProtocol)

- (__CFString)anonymizedName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, &PHPersonPNPersonProtocolAnonymizedNameKey);
  if (!v2)
  {
    v3 = [a1 name];
    if ([v3 length])
    {
      v4 = [v3 dataUsingEncoding:1 allowLossyConversion:1];
      CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
      v2 = [v5 base64EncodedStringWithOptions:0];
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = &stru_1F496CB30;
    }

    objc_setAssociatedObject(a1, &PHPersonPNPersonProtocolAnonymizedNameKey, v6, 1);
  }

  if ([(__CFString *)v2 length])
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)setIsVerified:()PNPersonProtocol
{
  v1 = [MEMORY[0x1E6978988] changeRequestForPerson:a1];
  [v1 setVerifiedType:2];
}

- (void)setManualOrder:()PNPersonProtocol
{
  v4 = [MEMORY[0x1E6978988] changeRequestForPerson:a1];
  [v4 setManualOrder:a3];
}

- (id)keyFace
{
  v1 = [MEMORY[0x1E69787D0] fetchKeyFaceForPerson:a1 options:0];
  v2 = [v1 firstObject];

  return v2;
}

- (void)setKeyFace:()PNPersonProtocol
{
  v9 = a3;
  v4 = [a1 keyFace];
  v5 = [v4 localIdentifier];
  v6 = [v9 localIdentifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E6978988] changeRequestForPerson:a1];
    [v8 setKeyFace:v9 forCluster:0];
  }
}

- (void)pn_addMergeCandidatePersons:()PNPersonProtocol
{
  v4 = MEMORY[0x1E6978988];
  v5 = a3;
  v6 = [v4 changeRequestForPerson:a1];
  [v6 addMergeCandidatePersons:v5];
}

- (id)personLocalIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 localIdentifier];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end