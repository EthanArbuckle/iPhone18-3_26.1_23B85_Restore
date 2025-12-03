@interface CRKConcreteContact
- (CRKConcreteContact)initWithContact:(id)contact;
- (NSData)thumbnailImageData;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)identifier;
- (NSString)nickname;
- (NSString)phoneticFamilyName;
- (NSString)phoneticGivenName;
@end

@implementation CRKConcreteContact

- (CRKConcreteContact)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = CRKConcreteContact;
  v6 = [(CRKConcreteContact *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingContact, contact);
  }

  return v7;
}

- (NSString)identifier
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  identifier = [underlyingContact identifier];

  return identifier;
}

- (NSString)nickname
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  nickname = [underlyingContact nickname];

  return nickname;
}

- (NSString)familyName
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  familyName = [underlyingContact familyName];

  return familyName;
}

- (NSString)givenName
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  givenName = [underlyingContact givenName];

  return givenName;
}

- (NSString)phoneticFamilyName
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  phoneticFamilyName = [underlyingContact phoneticFamilyName];

  return phoneticFamilyName;
}

- (NSString)phoneticGivenName
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  phoneticGivenName = [underlyingContact phoneticGivenName];

  return phoneticGivenName;
}

- (NSData)thumbnailImageData
{
  underlyingContact = [(CRKConcreteContact *)self underlyingContact];
  thumbnailImageData = [underlyingContact thumbnailImageData];

  return thumbnailImageData;
}

@end