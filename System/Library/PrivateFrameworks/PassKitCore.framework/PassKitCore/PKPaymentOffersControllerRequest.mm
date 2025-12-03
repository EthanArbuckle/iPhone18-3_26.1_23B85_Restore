@interface PKPaymentOffersControllerRequest
- (BOOL)coalesceWithRequest:(id)request;
- (PKPaymentOffersControllerRequest)initWithType:(unint64_t)type completion:(id)completion;
- (id)description;
- (id)initCancelRequestWithCriteriaIdentifier:(id)identifier completion:(id)completion;
- (id)initConfirmRequestWithCriteriaIdentifier:(id)identifier rewardsRedemptionIntent:(id)intent completion:(id)completion;
- (id)initDynamicContentRequestWithCriteriaIdentifier:(id)identifier pageTypes:(id)types completion:(id)completion;
- (id)initPaymentOfferCatalogRequestWithCatalogUpdateReason:(unint64_t)reason completion:(id)completion;
- (id)initPaymentOfferRequestWithCriteriaIdentifierIdentifier:(id)identifier selectedPassDetails:(id)details reason:(unint64_t)reason completion:(id)completion;
- (id)initRewardsBalanceWithCriteriaIdentifier:(id)identifier selectedPassDetails:(id)details completion:(id)completion;
- (id)initSelectRequestWithCriteriaIdentifier:(id)identifier completion:(id)completion;
- (void)addCompletions:(id)completions;
@end

@implementation PKPaymentOffersControllerRequest

- (PKPaymentOffersControllerRequest)initWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = PKPaymentOffersControllerRequest;
  v7 = [(PKPaymentOffersControllerRequest *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    completions = v8->_completions;
    v8->_completions = v9;

    v11 = v8->_completions;
    v12 = _Block_copy(completionCopy);
    [(NSMutableOrderedSet *)v11 pk_safelyAddObject:v12];
  }

  return v8;
}

- (id)initPaymentOfferCatalogRequestWithCatalogUpdateReason:(unint64_t)reason completion:(id)completion
{
  result = [(PKPaymentOffersControllerRequest *)self initWithType:0 completion:completion];
  if (result)
  {
    *(result + 3) = reason;
  }

  return result;
}

- (id)initPaymentOfferRequestWithCriteriaIdentifierIdentifier:(id)identifier selectedPassDetails:(id)details reason:(unint64_t)reason completion:(id)completion
{
  identifierCopy = identifier;
  detailsCopy = details;
  v13 = [(PKPaymentOffersControllerRequest *)self initWithType:1 completion:completion];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_criteriaIdentifier, identifier);
    objc_storeStrong(&v14->_selectedPassDetails, details);
    v14->_updateReason = reason;
  }

  return v14;
}

- (id)initDynamicContentRequestWithCriteriaIdentifier:(id)identifier pageTypes:(id)types completion:(id)completion
{
  identifierCopy = identifier;
  typesCopy = types;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:2 completion:completion];
  if (v10)
  {
    v11 = [identifierCopy copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    v13 = [typesCopy copy];
    dynamicPageTypes = v10->_dynamicPageTypes;
    v10->_dynamicPageTypes = v13;
  }

  return v10;
}

- (id)initConfirmRequestWithCriteriaIdentifier:(id)identifier rewardsRedemptionIntent:(id)intent completion:(id)completion
{
  identifierCopy = identifier;
  intentCopy = intent;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:3 completion:completion];
  if (v10)
  {
    v11 = [identifierCopy copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    objc_storeStrong(&v10->_rewardsRedemptionIntent, intent);
  }

  return v10;
}

- (id)initSelectRequestWithCriteriaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(PKPaymentOffersControllerRequest *)self initWithType:4 completion:completion];
  if (v7)
  {
    v8 = [identifierCopy copy];
    criteriaIdentifier = v7->_criteriaIdentifier;
    v7->_criteriaIdentifier = v8;
  }

  return v7;
}

- (id)initCancelRequestWithCriteriaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(PKPaymentOffersControllerRequest *)self initWithType:5 completion:completion];
  if (v7)
  {
    v8 = [identifierCopy copy];
    criteriaIdentifier = v7->_criteriaIdentifier;
    v7->_criteriaIdentifier = v8;
  }

  return v7;
}

- (id)initRewardsBalanceWithCriteriaIdentifier:(id)identifier selectedPassDetails:(id)details completion:(id)completion
{
  identifierCopy = identifier;
  detailsCopy = details;
  v10 = [(PKPaymentOffersControllerRequest *)self initWithType:6 completion:completion];
  if (v10)
  {
    v11 = [identifierCopy copy];
    criteriaIdentifier = v10->_criteriaIdentifier;
    v10->_criteriaIdentifier = v11;

    objc_storeStrong(&v10->_selectedPassDetails, details);
  }

  return v10;
}

- (BOOL)coalesceWithRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy type] != self->_type)
  {
    goto LABEL_27;
  }

  criteriaIdentifier = [requestCopy criteriaIdentifier];
  criteriaIdentifier = self->_criteriaIdentifier;
  completions = criteriaIdentifier;
  v8 = criteriaIdentifier;
  v9 = v8;
  if (completions == v8)
  {

    goto LABEL_8;
  }

  if (completions && v8)
  {
    v10 = [(NSString *)completions isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_8:
    selectedPassDetails = [requestCopy selectedPassDetails];
    v12 = selectedPassDetails;
    selectedPassDetails = self->_selectedPassDetails;
    if (selectedPassDetails && selectedPassDetails)
    {
      v14 = [(PKSelectedPaymentOfferPaymentPassDetails *)selectedPassDetails isEqual:self->_selectedPassDetails];

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

    dynamicPageTypes = [requestCopy dynamicPageTypes];
    v17 = dynamicPageTypes;
    dynamicPageTypes = self->_dynamicPageTypes;
    if (dynamicPageTypes && dynamicPageTypes)
    {
      v19 = [(NSSet *)dynamicPageTypes isEqual:self->_dynamicPageTypes];

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

    rewardsRedemptionIntent = [requestCopy rewardsRedemptionIntent];
    v21 = rewardsRedemptionIntent;
    rewardsRedemptionIntent = self->_rewardsRedemptionIntent;
    if (rewardsRedemptionIntent && rewardsRedemptionIntent)
    {
      v23 = [(PKPaymentOfferRewardsRedemptionIntent *)rewardsRedemptionIntent isEqual:self->_rewardsRedemptionIntent];

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

    if ([requestCopy updateReason] == self->_updateReason)
    {
      completions = [requestCopy completions];
      [(PKPaymentOffersControllerRequest *)self addCompletions:completions];
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

- (void)addCompletions:(id)completions
{
  completions = self->_completions;
  array = [completions array];
  [(NSMutableOrderedSet *)completions addObjectsFromArray:array];
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
    passUniqueID = [(PKSelectedPaymentOfferPaymentPassDetails *)selectedPassDetails passUniqueID];
    [v3 appendFormat:@"passUniqueID: '%@'; ", passUniqueID];
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