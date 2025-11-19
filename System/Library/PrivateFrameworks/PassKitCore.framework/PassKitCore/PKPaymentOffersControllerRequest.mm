@interface PKPaymentOffersControllerRequest
- (BOOL)coalesceWithRequest:(id)a3;
- (PKPaymentOffersControllerRequest)initWithType:(unint64_t)a3 completion:(id)a4;
- (id)description;
- (id)initCancelRequestWithCriteriaIdentifier:(id)a3 completion:(id)a4;
- (id)initConfirmRequestWithCriteriaIdentifier:(id)a3 rewardsRedemptionIntent:(id)a4 completion:(id)a5;
- (id)initDynamicContentRequestWithCriteriaIdentifier:(id)a3 pageTypes:(id)a4 completion:(id)a5;
- (id)initPaymentOfferCatalogRequestWithCatalogUpdateReason:(unint64_t)a3 completion:(id)a4;
- (id)initPaymentOfferRequestWithCriteriaIdentifierIdentifier:(id)a3 selectedPassDetails:(id)a4 reason:(unint64_t)a5 completion:(id)a6;
- (id)initRewardsBalanceWithCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 completion:(id)a5;
- (id)initSelectRequestWithCriteriaIdentifier:(id)a3 completion:(id)a4;
- (void)addCompletions:(id)a3;
@end

@implementation PKPaymentOffersControllerRequest

- (PKPaymentOffersControllerRequest)initWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentOffersControllerRequest;
  v7 = [(PKPaymentOffersControllerRequest *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    completions = v8->_completions;
    v8->_completions = v9;

    v11 = v8->_completions;
    v12 = _Block_copy(v6);
    [(NSMutableOrderedSet *)v11 pk_safelyAddObject:v12];
  }

  return v8;
}

- (id)initPaymentOfferCatalogRequestWithCatalogUpdateReason:(unint64_t)a3 completion:(id)a4
{
  result = [(PKPaymentOffersControllerRequest *)self initWithType:0 completion:a4];
  if (result)
  {
    *(result + 3) = a3;
  }

  return result;
}

- (id)initPaymentOfferRequestWithCriteriaIdentifierIdentifier:(id)a3 selectedPassDetails:(id)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = [(PKPaymentOffersControllerRequest *)self initWithType:1 completion:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_criteriaIdentifier, a3);
    objc_storeStrong(&v14->_selectedPassDetails, a4);
    v14->_updateReason = a5;
  }

  return v14;
}

- (id)initDynamicContentRequestWithCriteriaIdentifier:(id)a3 pageTypes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:2 completion:a5];
  if (v10)
  {
    v11 = [v8 copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    v13 = [v9 copy];
    dynamicPageTypes = v10->_dynamicPageTypes;
    v10->_dynamicPageTypes = v13;
  }

  return v10;
}

- (id)initConfirmRequestWithCriteriaIdentifier:(id)a3 rewardsRedemptionIntent:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:3 completion:a5];
  if (v10)
  {
    v11 = [v8 copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    objc_storeStrong(&v10->_rewardsRedemptionIntent, a4);
  }

  return v10;
}

- (id)initSelectRequestWithCriteriaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(PKPaymentOffersControllerRequest *)self initWithType:4 completion:a4];
  if (v7)
  {
    v8 = [v6 copy];
    criteriaIdentifier = v7->_criteriaIdentifier;
    v7->_criteriaIdentifier = v8;
  }

  return v7;
}

- (id)initCancelRequestWithCriteriaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(PKPaymentOffersControllerRequest *)self initWithType:5 completion:a4];
  if (v7)
  {
    v8 = [v6 copy];
    criteriaIdentifier = v7->_criteriaIdentifier;
    v7->_criteriaIdentifier = v8;
  }

  return v7;
}

- (id)initRewardsBalanceWithCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:6 completion:a5];
  if (v10)
  {
    v11 = [v8 copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    objc_storeStrong(&v10->_selectedPassDetails, a4);
  }

  return v10;
}

- (BOOL)coalesceWithRequest:(id)a3
{
  v4 = a3;
  if ([v4 type] != self->_type)
  {
    goto LABEL_27;
  }

  v5 = [v4 criteriaIdentifier];
  criteriaIdentifier = self->_criteriaIdentifier;
  v7 = v5;
  v8 = criteriaIdentifier;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  if (v7 && v8)
  {
    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_8:
    v11 = [v4 selectedPassDetails];
    v12 = v11;
    selectedPassDetails = self->_selectedPassDetails;
    if (v11 && selectedPassDetails)
    {
      v14 = [(PKSelectedPaymentOfferPaymentPassDetails *)v11 isEqual:self->_selectedPassDetails];

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    else
    {

      if (v12 != selectedPassDetails)
      {
        goto LABEL_27;
      }
    }

    v16 = [v4 dynamicPageTypes];
    v17 = v16;
    dynamicPageTypes = self->_dynamicPageTypes;
    if (v16 && dynamicPageTypes)
    {
      v19 = [(NSSet *)v16 isEqual:self->_dynamicPageTypes];

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {

      if (v17 != dynamicPageTypes)
      {
        goto LABEL_27;
      }
    }

    v20 = [v4 rewardsRedemptionIntent];
    v21 = v20;
    rewardsRedemptionIntent = self->_rewardsRedemptionIntent;
    if (v20 && rewardsRedemptionIntent)
    {
      v23 = [(PKPaymentOfferRewardsRedemptionIntent *)v20 isEqual:self->_rewardsRedemptionIntent];

      if (!v23)
      {
        goto LABEL_27;
      }
    }

    else
    {

      if (v21 != rewardsRedemptionIntent)
      {
        goto LABEL_27;
      }
    }

    if ([v4 updateReason] == self->_updateReason)
    {
      v7 = [v4 completions];
      [(PKPaymentOffersControllerRequest *)self addCompletions:v7];
      v15 = 1;
      goto LABEL_13;
    }

LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v15 = 0;
LABEL_13:

LABEL_28:
  return v15;
}

- (void)addCompletions:(id)a3
{
  completions = self->_completions;
  v4 = [a3 array];
  [(NSMutableOrderedSet *)completions addObjectsFromArray:v4];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  type = self->_type;
  if (type > 6)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CF7C0[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  updateReason = self->_updateReason;
  if (updateReason)
  {
    v7 = PKPaymentOffersControllerUpdateReasonToString(updateReason);
    [v3 appendFormat:@"updateReason: '%@'; ", v7];
  }

  if (self->_criteriaIdentifier)
  {
    [v3 appendFormat:@"criteriaIdentifier: '%@'; ", self->_criteriaIdentifier];
  }

  selectedPassDetails = self->_selectedPassDetails;
  if (selectedPassDetails)
  {
    v9 = [(PKSelectedPaymentOfferPaymentPassDetails *)selectedPassDetails passUniqueID];
    [v3 appendFormat:@"passUniqueID: '%@'; ", v9];
  }

  if ([(NSSet *)self->_dynamicPageTypes count])
  {
    [v3 appendFormat:@"dynamicPageTypes: '%@'; ", self->_dynamicPageTypes];
  }

  if (self->_rewardsRedemptionIntent)
  {
    [v3 appendFormat:@"rewardsRedemptionIntent: '%@'; ", self->_rewardsRedemptionIntent];
  }

  catalogUpdateReason = self->_catalogUpdateReason;
  if (catalogUpdateReason)
  {
    v11 = PKPaymentOfferCatalogUpdateReasonToString(catalogUpdateReason);
    [v3 appendFormat:@"catalogUpdateReason: '%@'; ", v11];
  }

  [v3 appendFormat:@"completionCount: '%ld'; ", -[NSMutableOrderedSet count](self->_completions, "count")];
  [v3 appendFormat:@">"];

  return v3;
}

@end