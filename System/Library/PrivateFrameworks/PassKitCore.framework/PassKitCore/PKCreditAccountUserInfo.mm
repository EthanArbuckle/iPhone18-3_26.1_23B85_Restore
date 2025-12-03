@interface PKCreditAccountUserInfo
- (PKCreditAccountUserInfo)initWithCoder:(id)coder;
- (PKCreditAccountUserInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKCreditAccountUserInfo

- (PKCreditAccountUserInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKCreditAccountUserInfo;
  v5 = [(PKCreditAccountUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [PKAccountUserInfo primaryUserFromDictionary:dictionaryCopy];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;
  }

  return v5;
}

- (PKCreditAccountUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCreditAccountUserInfo;
  v5 = [(PKCreditAccountUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryUser"];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(CNContact *)self->_primaryUser copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end