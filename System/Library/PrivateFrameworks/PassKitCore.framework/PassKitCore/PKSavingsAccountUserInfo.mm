@interface PKSavingsAccountUserInfo
- (PKSavingsAccountUserInfo)initWithCoder:(id)coder;
- (PKSavingsAccountUserInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountUserInfo

- (PKSavingsAccountUserInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKSavingsAccountUserInfo;
  v5 = [(PKSavingsAccountUserInfo *)&v13 init];
  if (v5)
  {
    v6 = [PKAccountUserInfo primaryUserFromDictionary:dictionaryCopy];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;

    v8 = [PKAccountBeneficiaryInfo alloc];
    v9 = [dictionaryCopy PKDictionaryForKey:@"beneficiaryInfo"];
    v10 = [(PKAccountBeneficiaryInfo *)v8 initWithDictionary:v9];
    beneficiaryInfo = v5->_beneficiaryInfo;
    v5->_beneficiaryInfo = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  primaryUser = self->_primaryUser;
  coderCopy = coder;
  [coderCopy encodeObject:primaryUser forKey:@"primaryUser"];
  [coderCopy encodeObject:self->_beneficiaryInfo forKey:@"beneficiaryInfo"];
}

- (PKSavingsAccountUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKSavingsAccountUserInfo;
  v5 = [(PKSavingsAccountUserInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryUser"];
    primaryUser = v5->_primaryUser;
    v5->_primaryUser = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beneficiaryInfo"];
    beneficiaryInfo = v5->_beneficiaryInfo;
    v5->_beneficiaryInfo = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(CNContact *)self->_primaryUser copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKAccountBeneficiaryInfo *)self->_beneficiaryInfo copyWithZone:zone];
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