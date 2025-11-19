@interface PKCreditAccountUserInfo
- (PKCreditAccountUserInfo)initWithCoder:(id)a3;
- (PKCreditAccountUserInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKCreditAccountUserInfo

- (PKCreditAccountUserInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCreditAccountUserInfo;
  v5 = [(PKCreditAccountUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [PKAccountUserInfo primaryUserFromDictionary:v4];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;
  }

  return v5;
}

- (PKCreditAccountUserInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCreditAccountUserInfo;
  v5 = [(PKCreditAccountUserInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryUser"];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CNContact *)self->_primaryUser copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end