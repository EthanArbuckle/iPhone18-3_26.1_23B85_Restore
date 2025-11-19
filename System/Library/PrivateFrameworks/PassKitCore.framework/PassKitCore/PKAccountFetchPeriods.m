@interface PKAccountFetchPeriods
+ (BOOL)isLastUpdatedOutOfDate:(id)a3 fetchPeriod:(double)a4;
- (BOOL)endpointIsBlocked:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountFetchPeriods:(id)a3;
- (PKAccountFetchPeriods)initWithCoder:(id)a3;
- (PKAccountFetchPeriods)initWithDictionary:(id)a3;
- (double)fetchPeriodForEndpoint:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountFetchPeriods

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_blockedEndpoints];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_accountFetchPeriod - v4 + 32 * v4;
  v6 = self->_extendedAccountFetchPeriod - v5 + 32 * v5;
  v7 = self->_usersFetchPeriod - v6 + 32 * v6;
  v8 = self->_sharedCloudStoreModelFetchPeriod - v7 + 32 * v7;
  v9 = self->_financingPlansFetchPeriod - v8 + 32 * v8;
  v10 = self->_fundingSourcesFetchPeriod - v9 + 32 * v9;
  v11 = self->_promotionsFetchPeriod - v10 + 32 * v10;
  v12 = self->_recoveryPaymentPlansFetchPeriod - v11 + 32 * v11;
  v13 = self->_physicalCardsFetchPeriod - v12 + 32 * v12;

  return v13;
}

- (PKAccountFetchPeriods)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKAccountFetchPeriods;
  v5 = [(PKAccountFetchPeriods *)&v10 init];
  if (v5)
  {
    v5->_accountFetchPeriod = [v4 PKIntegerForKey:@"account"];
    v5->_extendedAccountFetchPeriod = [v4 PKIntegerForKey:@"extendedAccount"];
    v5->_usersFetchPeriod = [v4 PKIntegerForKey:@"users"];
    v5->_sharedCloudStoreModelFetchPeriod = [v4 PKIntegerForKey:@"sharedAccountCloudStore"];
    v5->_financingPlansFetchPeriod = [v4 PKIntegerForKey:@"financingPlans"];
    v5->_fundingSourcesFetchPeriod = [v4 PKIntegerForKey:@"fundingSources"];
    v5->_promotionsFetchPeriod = [v4 PKIntegerForKey:@"promotions"];
    v5->_recoveryPaymentPlansFetchPeriod = [v4 PKIntegerForKey:@"recoveryPaymentPlans"];
    v5->_physicalCardsFetchPeriod = [v4 PKIntegerForKey:@"physicalCards"];
    v6 = [v4 PKSetContaining:objc_opt_class() forKey:@"blockedEndpoints"];
    if ([v6 count])
    {
      v7 = [v6 pk_setByApplyingBlock:&__block_literal_global_208];
      blockedEndpoints = v5->_blockedEndpoints;
      v5->_blockedEndpoints = v7;
    }
  }

  return v5;
}

id __44__PKAccountFetchPeriods_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E696AD98];
  v4 = v2;
  v5 = v4;
  if (v4 == @"account")
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

  v6 = [(__CFString *)v4 isEqualToString:@"account"];

  if (v6)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_27;
  }

  v8 = v5;
  if (v8 == @"extendedAccount" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"extendedAccount"], v9, (v10 & 1) != 0))
  {
    v7 = 2;
    goto LABEL_27;
  }

  v11 = v9;
  if (v11 == @"users" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"users"], v12, (v13 & 1) != 0))
  {
    v7 = 3;
    goto LABEL_27;
  }

  v14 = v12;
  if (v14 == @"sharedAccountCloudStore" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"sharedAccountCloudStore"], v15, (v16 & 1) != 0))
  {
    v7 = 4;
    goto LABEL_27;
  }

  v17 = v15;
  if (v17 == @"financingPlans" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"financingPlans"], v18, (v19 & 1) != 0))
  {
    v7 = 5;
    goto LABEL_27;
  }

  v20 = v18;
  if (v20 == @"promotions" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"promotions"], v21, (v22 & 1) != 0))
  {
    v7 = 7;
    goto LABEL_27;
  }

  v23 = v21;
  if (v23 == @"recoveryPaymentPlans" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"recoveryPaymentPlans"], v24, (v25 & 1) != 0))
  {
    v7 = 8;
    goto LABEL_27;
  }

  v26 = v24;
  if (v26 == @"physicalCards" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"physicalCards"], v27, v28))
  {
    v7 = 9;
  }

  else
  {
LABEL_26:
    v7 = 0;
  }

LABEL_27:

  v29 = [v3 numberWithUnsignedInteger:v7];

  return v29;
}

- (double)fetchPeriodForEndpoint:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 1 <= 8)
  {
    result = *(&self->super.isa + a3);
    if (result <= 0.0)
    {
      return 86400.0;
    }
  }

  return result;
}

- (BOOL)endpointIsBlocked:(unint64_t)a3
{
  blockedEndpoints = self->_blockedEndpoints;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  LOBYTE(blockedEndpoints) = [(NSSet *)blockedEndpoints containsObject:v4];

  return blockedEndpoints;
}

+ (BOOL)isLastUpdatedOutOfDate:(id)a3 fetchPeriod:(double)a4
{
  if (!a3)
  {
    return 1;
  }

  if (a4 <= 0.0)
  {
    v4 = 86400.0;
  }

  else
  {
    v4 = a4;
  }

  v5 = MEMORY[0x1E695DF00];
  v6 = a3;
  v7 = [v5 date];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8;

  v10 = v9 >= v4;
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountFetchPeriods *)self isEqualToAccountFetchPeriods:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountFetchPeriods:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_accountFetchPeriod != v4[1])
  {
    goto LABEL_16;
  }

  blockedEndpoints = self->_blockedEndpoints;
  v7 = *(v5 + 10);
  if (blockedEndpoints && v7)
  {
    if (([(NSSet *)blockedEndpoints isEqual:?]& 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (blockedEndpoints != v7)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (self->_usersFetchPeriod != v5[3] || self->_sharedCloudStoreModelFetchPeriod != v5[4] || self->_financingPlansFetchPeriod != v5[5] || self->_extendedAccountFetchPeriod != v5[2] || self->_fundingSourcesFetchPeriod != v5[6] || self->_promotionsFetchPeriod != v5[7] || self->_recoveryPaymentPlansFetchPeriod != v5[8])
  {
    goto LABEL_16;
  }

  v8 = self->_physicalCardsFetchPeriod == v5[9];
LABEL_17:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  if ([(NSSet *)self->_blockedEndpoints count])
  {
    [v3 appendFormat:@"blockedEndpoints: %@; ", self->_blockedEndpoints];
  }

  [v3 appendFormat:@"account: '%ld'; ", self->_accountFetchPeriod];
  [v3 appendFormat:@"extendedAccount: '%ld'; ", self->_extendedAccountFetchPeriod];
  [v3 appendFormat:@"users: '%ld'; ", self->_usersFetchPeriod];
  [v3 appendFormat:@"sharedAccountCloudStore: '%ld'; ", self->_sharedCloudStoreModelFetchPeriod];
  [v3 appendFormat:@"financingPlans: '%ld'; ", self->_financingPlansFetchPeriod];
  [v3 appendFormat:@"fundingSources: '%ld'; ", self->_fundingSourcesFetchPeriod];
  [v3 appendFormat:@"promotions: '%ld'; ", self->_promotionsFetchPeriod];
  [v3 appendFormat:@"creditRecoveryPaymentPlans: '%ld'; ", self->_recoveryPaymentPlansFetchPeriod];
  [v3 appendFormat:@"physicalCards: '%ld'; ", self->_physicalCardsFetchPeriod];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountFetchPeriods allocWithZone:](PKAccountFetchPeriods init];
  v6 = [(NSSet *)self->_blockedEndpoints copyWithZone:a3];
  blockedEndpoints = v5->_blockedEndpoints;
  v5->_blockedEndpoints = v6;

  v5->_accountFetchPeriod = self->_accountFetchPeriod;
  v5->_extendedAccountFetchPeriod = self->_extendedAccountFetchPeriod;
  v5->_usersFetchPeriod = self->_usersFetchPeriod;
  v5->_sharedCloudStoreModelFetchPeriod = self->_sharedCloudStoreModelFetchPeriod;
  v5->_financingPlansFetchPeriod = self->_financingPlansFetchPeriod;
  v5->_fundingSourcesFetchPeriod = self->_fundingSourcesFetchPeriod;
  v5->_promotionsFetchPeriod = self->_promotionsFetchPeriod;
  v5->_recoveryPaymentPlansFetchPeriod = self->_recoveryPaymentPlansFetchPeriod;
  v5->_physicalCardsFetchPeriod = self->_physicalCardsFetchPeriod;
  return v5;
}

- (PKAccountFetchPeriods)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountFetchPeriods;
  v5 = [(PKAccountFetchPeriods *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"blockedEndpoints"];
    blockedEndpoints = v5->_blockedEndpoints;
    v5->_blockedEndpoints = v9;

    v5->_accountFetchPeriod = [v4 decodeIntegerForKey:@"account"];
    v5->_extendedAccountFetchPeriod = [v4 decodeIntegerForKey:@"extendedAccount"];
    v5->_usersFetchPeriod = [v4 decodeIntegerForKey:@"users"];
    v5->_sharedCloudStoreModelFetchPeriod = [v4 decodeIntegerForKey:@"sharedAccountCloudStore"];
    v5->_financingPlansFetchPeriod = [v4 decodeIntegerForKey:@"financingPlans"];
    v5->_fundingSourcesFetchPeriod = [v4 decodeIntegerForKey:@"fundingSources"];
    v5->_promotionsFetchPeriod = [v4 decodeIntegerForKey:@"promotions"];
    v5->_recoveryPaymentPlansFetchPeriod = [v4 decodeIntegerForKey:@"recoveryPaymentPlans"];
    v5->_physicalCardsFetchPeriod = [v4 decodeIntegerForKey:@"physicalCards"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  blockedEndpoints = self->_blockedEndpoints;
  v5 = a3;
  [v5 encodeObject:blockedEndpoints forKey:@"blockedEndpoints"];
  [v5 encodeInteger:self->_accountFetchPeriod forKey:@"account"];
  [v5 encodeInteger:self->_extendedAccountFetchPeriod forKey:@"extendedAccount"];
  [v5 encodeInteger:self->_usersFetchPeriod forKey:@"users"];
  [v5 encodeInteger:self->_sharedCloudStoreModelFetchPeriod forKey:@"sharedAccountCloudStore"];
  [v5 encodeInteger:self->_financingPlansFetchPeriod forKey:@"financingPlans"];
  [v5 encodeInteger:self->_fundingSourcesFetchPeriod forKey:@"fundingSources"];
  [v5 encodeInteger:self->_promotionsFetchPeriod forKey:@"promotions"];
  [v5 encodeInteger:self->_recoveryPaymentPlansFetchPeriod forKey:@"recoveryPaymentPlans"];
  [v5 encodeInteger:self->_physicalCardsFetchPeriod forKey:@"physicalCards"];
}

@end