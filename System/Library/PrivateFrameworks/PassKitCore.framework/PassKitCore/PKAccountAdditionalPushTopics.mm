@interface PKAccountAdditionalPushTopics
- (BOOL)isEqual:(id)a3;
- (PKAccountAdditionalPushTopics)initWithCoder:(id)a3;
- (PKAccountAdditionalPushTopics)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountAdditionalPushTopics

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_account];
  [v3 safelyAddObject:self->_extendedAccount];
  [v3 safelyAddObject:self->_payments];
  [v3 safelyAddObject:self->_users];
  [v3 safelyAddObject:self->_sharedAccountCloudStore];
  [v3 safelyAddObject:self->_applications];
  [v3 safelyAddObject:self->_physicalCards];
  [v3 safelyAddObject:self->_virtualCards];
  [v3 safelyAddObject:self->_servicingToken];
  [v3 safelyAddObject:self->_fundingSources];
  [v3 safelyAddObject:self->_creditRecoveryPaymentPlans];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKAccountAdditionalPushTopics)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKAccountAdditionalPushTopics;
  v5 = [(PKAccountAdditionalPushTopics *)&v29 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 PKStringForKey:@"extendedAccount"];
    extendedAccount = v5->_extendedAccount;
    v5->_extendedAccount = v8;

    v10 = [v4 PKStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v10;

    v12 = [v4 PKStringForKey:@"users"];
    users = v5->_users;
    v5->_users = v12;

    v14 = [v4 PKStringForKey:@"sharedAccountCloudStore"];
    sharedAccountCloudStore = v5->_sharedAccountCloudStore;
    v5->_sharedAccountCloudStore = v14;

    v16 = [v4 PKStringForKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v16;

    v18 = [v4 PKStringForKey:@"physicalCards"];
    physicalCards = v5->_physicalCards;
    v5->_physicalCards = v18;

    v20 = [v4 PKStringForKey:@"virtualCards"];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v20;

    v22 = [v4 PKStringForKey:@"servicingToken"];
    servicingToken = v5->_servicingToken;
    v5->_servicingToken = v22;

    v24 = [v4 PKStringForKey:@"fundingSources"];
    fundingSources = v5->_fundingSources;
    v5->_fundingSources = v24;

    v26 = [v4 PKStringForKey:@"recoveryPaymentPlans"];
    creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
    v5->_creditRecoveryPaymentPlans = v26;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_54;
  }

  account = self->_account;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[4];
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
  v12 = v4[3];
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
  v14 = v4[5];
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
  v16 = v4[6];
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
  v18 = v4[7];
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
  v20 = v4[8];
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
  v22 = v4[9];
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
  v24 = v4[10];
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
  v26 = v4[11];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountAdditionalPushTopics allocWithZone:](PKAccountAdditionalPushTopics init];
  v6 = [(NSString *)self->_account copyWithZone:a3];
  account = v5->_account;
  v5->_account = v6;

  v8 = [(NSString *)self->_extendedAccount copyWithZone:a3];
  extendedAccount = v5->_extendedAccount;
  v5->_extendedAccount = v8;

  v10 = [(NSString *)self->_payments copyWithZone:a3];
  payments = v5->_payments;
  v5->_payments = v10;

  v12 = [(NSString *)self->_users copyWithZone:a3];
  users = v5->_users;
  v5->_users = v12;

  v14 = [(NSString *)self->_sharedAccountCloudStore copyWithZone:a3];
  sharedAccountCloudStore = v5->_sharedAccountCloudStore;
  v5->_sharedAccountCloudStore = v14;

  v16 = [(NSString *)self->_applications copyWithZone:a3];
  applications = v5->_applications;
  v5->_applications = v16;

  v18 = [(NSString *)self->_physicalCards copyWithZone:a3];
  physicalCards = v5->_physicalCards;
  v5->_physicalCards = v18;

  v20 = [(NSString *)self->_virtualCards copyWithZone:a3];
  virtualCards = v5->_virtualCards;
  v5->_virtualCards = v20;

  v22 = [(NSString *)self->_servicingToken copyWithZone:a3];
  servicingToken = v5->_servicingToken;
  v5->_servicingToken = v22;

  v24 = [(NSString *)self->_fundingSources copyWithZone:a3];
  fundingSources = v5->_fundingSources;
  v5->_fundingSources = v24;

  v26 = [(NSString *)self->_creditRecoveryPaymentPlans copyWithZone:a3];
  creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
  v5->_creditRecoveryPaymentPlans = v26;

  return v5;
}

- (PKAccountAdditionalPushTopics)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKAccountAdditionalPushTopics;
  v5 = [(PKAccountAdditionalPushTopics *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendedAccount"];
    extendedAccount = v5->_extendedAccount;
    v5->_extendedAccount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"users"];
    users = v5->_users;
    v5->_users = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedAccountCloudStore"];
    sharedAccountCloudStore = v5->_sharedAccountCloudStore;
    v5->_sharedAccountCloudStore = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"physicalCards"];
    physicalCards = v5->_physicalCards;
    v5->_physicalCards = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"virtualCards"];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"servicingToken"];
    servicingToken = v5->_servicingToken;
    v5->_servicingToken = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fundingSources"];
    fundingSources = v5->_fundingSources;
    v5->_fundingSources = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryPaymentPlans"];
    creditRecoveryPaymentPlans = v5->_creditRecoveryPaymentPlans;
    v5->_creditRecoveryPaymentPlans = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  account = self->_account;
  v5 = a3;
  [v5 encodeObject:account forKey:@"account"];
  [v5 encodeObject:self->_extendedAccount forKey:@"extendedAccount"];
  [v5 encodeObject:self->_payments forKey:@"payments"];
  [v5 encodeObject:self->_users forKey:@"users"];
  [v5 encodeObject:self->_sharedAccountCloudStore forKey:@"sharedAccountCloudStore"];
  [v5 encodeObject:self->_applications forKey:@"applications"];
  [v5 encodeObject:self->_physicalCards forKey:@"physicalCards"];
  [v5 encodeObject:self->_virtualCards forKey:@"virtualCards"];
  [v5 encodeObject:self->_servicingToken forKey:@"servicingToken"];
  [v5 encodeObject:self->_fundingSources forKey:@"fundingSources"];
  [v5 encodeObject:self->_creditRecoveryPaymentPlans forKey:@"recoveryPaymentPlans"];
}

@end