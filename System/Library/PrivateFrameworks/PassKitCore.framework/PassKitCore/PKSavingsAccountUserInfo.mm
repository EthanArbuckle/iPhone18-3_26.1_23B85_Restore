@interface PKSavingsAccountUserInfo
- (PKSavingsAccountUserInfo)initWithCoder:(id)a3;
- (PKSavingsAccountUserInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSavingsAccountUserInfo

- (PKSavingsAccountUserInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSavingsAccountUserInfo;
  v5 = [(PKSavingsAccountUserInfo *)&v13 init];
  if (v5)
  {
    v6 = [PKAccountUserInfo primaryUserFromDictionary:v4];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;

    v8 = [PKAccountBeneficiaryInfo alloc];
    v9 = [v4 PKDictionaryForKey:@"beneficiaryInfo"];
    v10 = [(PKAccountBeneficiaryInfo *)v8 initWithDictionary:v9];
    beneficiaryInfo = v5->_beneficiaryInfo;
    v5->_beneficiaryInfo = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  primaryUser = self->_primaryUser;
  v5 = a3;
  [v5 encodeObject:primaryUser forKey:@"primaryUser"];
  [v5 encodeObject:self->_beneficiaryInfo forKey:@"beneficiaryInfo"];
}

- (PKSavingsAccountUserInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKSavingsAccountUserInfo;
  v5 = [(PKSavingsAccountUserInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryUser"];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beneficiaryInfo"];
    beneficiaryInfo = v5->_beneficiaryInfo;
    v5->_beneficiaryInfo = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CNContact *)self->_primaryUser copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKAccountBeneficiaryInfo *)self->_beneficiaryInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"primaryUser", self->_primaryUser];
  [v3 appendFormat:@"%@: '%@'; ", @"beneficiaryInfo", self->_beneficiaryInfo];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end