@interface PKAccountAdditionalPushTopics
- (BOOL)isEqual:(id)equal;
- (PKAccountAdditionalPushTopics)initWithCoder:(id)coder;
- (PKAccountAdditionalPushTopics)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountAdditionalPushTopics

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_account];
  [array safelyAddObject:self->_extendedAccount];
  [array safelyAddObject:self->_payments];
  [array safelyAddObject:self->_users];
  [array safelyAddObject:self->_sharedAccountCloudStore];
  [array safelyAddObject:self->_applications];
  [array safelyAddObject:self->_physicalCards];
  [array safelyAddObject:self->_virtualCards];
  [array safelyAddObject:self->_servicingToken];
  [array safelyAddObject:self->_fundingSources];
  [array safelyAddObject:self->_creditRecoveryPaymentPlans];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKAccountAdditionalPushTopics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKAccountAdditionalPushTopics;
  v5 = [(PKAccountAdditionalPushTopics *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [dictionaryCopy PKStringForKey:@"extendedAccount"];
    extendedAccount = v5->_extendedAccount;
    v5->_extendedAccount = v8;

    v10 = [dictionaryCopy PKStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v10;

    v12 = [dictionaryCopy PKStringForKey:@"users"];
    users = v5->_users;
    v5->_users = v12;

    v14 = [dictionaryCopy PKStringForKey:@"sharedAccountCloudStore"];
    sharedAccountCloudStore = v5->_sharedAccountCloudStore;
    v5->_sharedAccountCloudStore = v14;

    v16 = [dictionaryCopy PKStringForKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v16;

    v18 = [dictionaryCopy PKStringForKey:@"physicalCards"];
    physicalCards = v5->_physicalCards;
    v5->_physicalCards = v18;

    v20 = [dictionaryCopy PKStringForKey:@"virtualCards"];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v20;

    v22 = [dictionaryCopy PKStringForKey:@"servicingToken"];
    servicingToken = v5->_servicingToken;
    v5->_servicingToken = v22;

    v24 = [dictionaryCopy PKStringForKey:@"fundingSources"];
    fundingSources = v5->_fundingSources;
    v5->_fundingSources = v24;

    v26 = [dictionaryCopy PKStringForKey:@"recoveryPaymentPlans"];
    creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
    v5->_creditRecoveryPaymentPlans = v26;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_54;
  }

  account = self->_account;
  v6 = equalCopy[1];
  if (account && v6)
  {
    if (([(NSString *)account isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (account != v6)
  {
    goto LABEL_54;
  }

  extendedAccount = self->_extendedAccount;
  v8 = equalCopy[2];
  if (extendedAccount && v8)
  {
    if (([(NSString *)extendedAccount isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (extendedAccount != v8)
  {
    goto LABEL_54;
  }

  users = self->_users;
  v10 = equalCopy[4];
  if (users && v10)
  {
    if (([(NSString *)users isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (users != v10)
  {
    goto LABEL_54;
  }

  payments = self->_payments;
  v12 = equalCopy[3];
  if (payments && v12)
  {
    if (([(NSString *)payments isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (payments != v12)
  {
    goto LABEL_54;
  }

  sharedAccountCloudStore = self->_sharedAccountCloudStore;
  v14 = equalCopy[5];
  if (sharedAccountCloudStore && v14)
  {
    if (([(NSString *)sharedAccountCloudStore isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (sharedAccountCloudStore != v14)
  {
    goto LABEL_54;
  }

  applications = self->_applications;
  v16 = equalCopy[6];
  if (applications && v16)
  {
    if (([(NSString *)applications isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (applications != v16)
  {
    goto LABEL_54;
  }

  physicalCards = self->_physicalCards;
  v18 = equalCopy[7];
  if (physicalCards && v18)
  {
    if (([(NSString *)physicalCards isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (physicalCards != v18)
  {
    goto LABEL_54;
  }

  virtualCards = self->_virtualCards;
  v20 = equalCopy[8];
  if (virtualCards && v20)
  {
    if (([(NSString *)virtualCards isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (virtualCards != v20)
  {
    goto LABEL_54;
  }

  servicingToken = self->_servicingToken;
  v22 = equalCopy[9];
  if (servicingToken && v22)
  {
    if (([(NSString *)servicingToken isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (servicingToken != v22)
  {
    goto LABEL_54;
  }

  fundingSources = self->_fundingSources;
  v24 = equalCopy[10];
  if (!fundingSources || !v24)
  {
    if (fundingSources == v24)
    {
      goto LABEL_50;
    }

LABEL_54:
    v27 = 0;
    goto LABEL_55;
  }

  if (([(NSString *)fundingSources isEqual:?]& 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_50:
  creditRecoveryPaymentPlans = self->_creditRecoveryPaymentPlans;
  v26 = equalCopy[11];
  if (creditRecoveryPaymentPlans && v26)
  {
    v27 = [(NSString *)creditRecoveryPaymentPlans isEqual:?];
  }

  else
  {
    v27 = creditRecoveryPaymentPlans == v26;
  }

LABEL_55:

  return v27;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"account: '%@'; ", self->_account];
  [v3 appendFormat:@"extendedAccount: '%@'; ", self->_extendedAccount];
  [v3 appendFormat:@"payments: '%@'; ", self->_payments];
  [v3 appendFormat:@"users: '%@'; ", self->_users];
  [v3 appendFormat:@"sharedAccountCloudStore: '%@'; ", self->_sharedAccountCloudStore];
  [v3 appendFormat:@"applications: '%@'; ", self->_applications];
  [v3 appendFormat:@"physicalCards: '%@'; ", self->_physicalCards];
  [v3 appendFormat:@"virtualCards: '%@'; ", self->_virtualCards];
  [v3 appendFormat:@"serivicingToken: '%@'; ", self->_servicingToken];
  [v3 appendFormat:@"fundingSources: '%@'; ", self->_fundingSources];
  [v3 appendFormat:@"creditRecoveryPaymentPlans: '%@'; ", self->_creditRecoveryPaymentPlans];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAccountAdditionalPushTopics allocWithZone:](PKAccountAdditionalPushTopics init];
  v6 = [(NSString *)self->_account copyWithZone:zone];
  account = v5->_account;
  v5->_account = v6;

  v8 = [(NSString *)self->_extendedAccount copyWithZone:zone];
  extendedAccount = v5->_extendedAccount;
  v5->_extendedAccount = v8;

  v10 = [(NSString *)self->_payments copyWithZone:zone];
  payments = v5->_payments;
  v5->_payments = v10;

  v12 = [(NSString *)self->_users copyWithZone:zone];
  users = v5->_users;
  v5->_users = v12;

  v14 = [(NSString *)self->_sharedAccountCloudStore copyWithZone:zone];
  sharedAccountCloudStore = v5->_sharedAccountCloudStore;
  v5->_sharedAccountCloudStore = v14;

  v16 = [(NSString *)self->_applications copyWithZone:zone];
  applications = v5->_applications;
  v5->_applications = v16;

  v18 = [(NSString *)self->_physicalCards copyWithZone:zone];
  physicalCards = v5->_physicalCards;
  v5->_physicalCards = v18;

  v20 = [(NSString *)self->_virtualCards copyWithZone:zone];
  virtualCards = v5->_virtualCards;
  v5->_virtualCards = v20;

  v22 = [(NSString *)self->_servicingToken copyWithZone:zone];
  servicingToken = v5->_servicingToken;
  v5->_servicingToken = v22;

  v24 = [(NSString *)self->_fundingSources copyWithZone:zone];
  fundingSources = v5->_fundingSources;
  v5->_fundingSources = v24;

  v26 = [(NSString *)self->_creditRecoveryPaymentPlans copyWithZone:zone];
  creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
  v5->_creditRecoveryPaymentPlans = v26;

  return v5;
}

- (PKAccountAdditionalPushTopics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKAccountAdditionalPushTopics;
  v5 = [(PKAccountAdditionalPushTopics *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedAccount"];
    extendedAccount = v5->_extendedAccount;
    v5->_extendedAccount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"users"];
    users = v5->_users;
    v5->_users = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedAccountCloudStore"];
    sharedAccountCloudStore = v5->_sharedAccountCloudStore;
    v5->_sharedAccountCloudStore = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalCards"];
    physicalCards = v5->_physicalCards;
    v5->_physicalCards = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"virtualCards"];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"servicingToken"];
    servicingToken = v5->_servicingToken;
    v5->_servicingToken = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSources"];
    fundingSources = v5->_fundingSources;
    v5->_fundingSources = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryPaymentPlans"];
    creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
    v5->_creditRecoveryPaymentPlans = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  account = self->_account;
  coderCopy = coder;
  [coderCopy encodeObject:account forKey:@"account"];
  [coderCopy encodeObject:self->_extendedAccount forKey:@"extendedAccount"];
  [coderCopy encodeObject:self->_payments forKey:@"payments"];
  [coderCopy encodeObject:self->_users forKey:@"users"];
  [coderCopy encodeObject:self->_sharedAccountCloudStore forKey:@"sharedAccountCloudStore"];
  [coderCopy encodeObject:self->_applications forKey:@"applications"];
  [coderCopy encodeObject:self->_physicalCards forKey:@"physicalCards"];
  [coderCopy encodeObject:self->_virtualCards forKey:@"virtualCards"];
  [coderCopy encodeObject:self->_servicingToken forKey:@"servicingToken"];
  [coderCopy encodeObject:self->_fundingSources forKey:@"fundingSources"];
  [coderCopy encodeObject:self->_creditRecoveryPaymentPlans forKey:@"recoveryPaymentPlans"];
}

@end