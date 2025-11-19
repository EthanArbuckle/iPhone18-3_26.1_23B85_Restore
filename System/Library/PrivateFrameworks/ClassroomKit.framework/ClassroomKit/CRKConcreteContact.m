@interface CRKConcreteContact
- (CRKConcreteContact)initWithContact:(id)a3;
- (NSData)thumbnailImageData;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)identifier;
- (NSString)nickname;
- (NSString)phoneticFamilyName;
- (NSString)phoneticGivenName;
@end

@implementation CRKConcreteContact

- (CRKConcreteContact)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteContact;
  v6 = [(CRKConcreteContact *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingContact, a3);
  }

  return v7;
}

- (NSString)identifier
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)nickname
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 nickname];

  return v3;
}

- (NSString)familyName
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 familyName];

  return v3;
}

- (NSString)givenName
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 givenName];

  return v3;
}

- (NSString)phoneticFamilyName
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 phoneticFamilyName];

  return v3;
}

- (NSString)phoneticGivenName
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 phoneticGivenName];

  return v3;
}

- (NSData)thumbnailImageData
{
  v2 = [(CRKConcreteContact *)self underlyingContact];
  v3 = [v2 thumbnailImageData];

  return v3;
}

@end