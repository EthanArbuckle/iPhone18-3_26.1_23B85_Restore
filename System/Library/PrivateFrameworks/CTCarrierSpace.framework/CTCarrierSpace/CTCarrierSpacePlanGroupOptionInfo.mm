@interface CTCarrierSpacePlanGroupOptionInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpacePlanGroupOptionInfo)init;
- (CTCarrierSpacePlanGroupOptionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)planStatus;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpacePlanGroupOptionInfo

- (CTCarrierSpacePlanGroupOptionInfo)init
{
  v11.receiver = self;
  v11.super_class = CTCarrierSpacePlanGroupOptionInfo;
  v2 = [(CTCarrierSpacePlanGroupOptionInfo *)&v11 init];
  v3 = v2;
  if (v2)
  {
    planId = v2->_planId;
    v2->_planId = 0;

    planLabel = v3->_planLabel;
    v3->_planLabel = 0;

    planValue = v3->_planValue;
    v3->_planValue = 0;

    *&v3->_planPurchasable = 769;
    planDetailsURL = v3->_planDetailsURL;
    v3->_planDetailsURL = 0;

    planTermsURL = v3->_planTermsURL;
    v3->_planTermsURL = 0;

    planPurchaseURL = v3->_planPurchaseURL;
    v3->_planPurchaseURL = 0;

    v3->_planType = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  planId = [(CTCarrierSpacePlanGroupOptionInfo *)self planId];
  [v3 appendFormat:@", planId=%@", planId];

  planLabel = [(CTCarrierSpacePlanGroupOptionInfo *)self planLabel];
  [v3 appendFormat:@", planLabel=%@", planLabel];

  planValue = [(CTCarrierSpacePlanGroupOptionInfo *)self planValue];
  [v3 appendFormat:@", planValue=%@", planValue];

  [v3 appendFormat:@", planStatus=%s", CTCarrierSpacePlanStatusAsString(-[CTCarrierSpacePlanGroupOptionInfo planStatus](self, "planStatus"))];
  [v3 appendFormat:@", planPurchasable=%d", -[CTCarrierSpacePlanGroupOptionInfo planPurchasable](self, "planPurchasable")];
  planDetailsURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planDetailsURL];
  [v3 appendFormat:@", planDetailsURL=%@", planDetailsURL];

  planTermsURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planTermsURL];
  [v3 appendFormat:@", planTermsURL=%@", planTermsURL];

  planPurchaseURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planPurchaseURL];
  [v3 appendFormat:@", planPurchaseURL=%@", planPurchaseURL];

  [v3 appendFormat:@", planType=%ld", -[CTCarrierSpacePlanGroupOptionInfo planType](self, "planType")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      planId = [(CTCarrierSpacePlanGroupOptionInfo *)self planId];
      planId2 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planId];
      if (planId != planId2)
      {
        planId3 = [(CTCarrierSpacePlanGroupOptionInfo *)self planId];
        planId4 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planId];
        if (![planId3 isEqualToString:planId4])
        {
          v8 = 0;
          goto LABEL_21;
        }
      }

      planLabel = [(CTCarrierSpacePlanGroupOptionInfo *)self planLabel];
      planLabel2 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planLabel];
      if (planLabel != planLabel2)
      {
        planLabel3 = [(CTCarrierSpacePlanGroupOptionInfo *)self planLabel];
        planLabel4 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planLabel];
        if (![planLabel3 isEqualToString:?])
        {
          v8 = 0;
LABEL_19:

LABEL_20:
          if (planId == planId2)
          {
LABEL_22:

            goto LABEL_23;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      planValue = [(CTCarrierSpacePlanGroupOptionInfo *)self planValue];
      planValue2 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planValue];
      if (planValue != planValue2)
      {
        planValue3 = [(CTCarrierSpacePlanGroupOptionInfo *)self planValue];
        planValue4 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planValue];
        if (![planValue3 isEqualToString:?])
        {
          v8 = 0;
          goto LABEL_17;
        }
      }

      planSubscriptionStatus = [(CTCarrierSpacePlanGroupOptionInfo *)self planSubscriptionStatus];
      if (planSubscriptionStatus != [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planSubscriptionStatus]|| (v14 = [(CTCarrierSpacePlanGroupOptionInfo *)self planPurchasable], v14 != [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planPurchasable]))
      {
        v8 = 0;
        if (planValue == planValue2)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      planDetailsURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planDetailsURL];
      [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planDetailsURL];
      v33 = v32 = planId4;
      if (planDetailsURL != v33)
      {
        planDetailsURL2 = [(CTCarrierSpacePlanGroupOptionInfo *)self planDetailsURL];
        planDetailsURL3 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planDetailsURL];
        if (![planDetailsURL2 isEqualToString:?])
        {
          v8 = 0;
          v17 = planDetailsURL;
          v18 = v33;
LABEL_36:

LABEL_37:
          planId4 = v32;
          if (planValue == planValue2)
          {
LABEL_18:

            if (planLabel == planLabel2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      v30 = planDetailsURL;
      planTermsURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planTermsURL];
      planTermsURL2 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planTermsURL];
      if (planTermsURL == planTermsURL2 || (-[CTCarrierSpacePlanGroupOptionInfo planTermsURL](self, "planTermsURL"), v28 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpacePlanGroupOptionInfo planTermsURL](equalCopy, "planTermsURL"), v25 = objc_claimAutoreleasedReturnValue(), [v28 isEqualToString:?]))
      {
        planPurchaseURL = [(CTCarrierSpacePlanGroupOptionInfo *)self planPurchaseURL];
        planPurchaseURL2 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planPurchaseURL];
        if (planPurchaseURL == planPurchaseURL2)
        {

          v8 = 1;
        }

        else
        {
          v24 = planPurchaseURL2;
          planPurchaseURL3 = [(CTCarrierSpacePlanGroupOptionInfo *)self planPurchaseURL];
          planPurchaseURL4 = [(CTCarrierSpacePlanGroupOptionInfo *)equalCopy planPurchaseURL];
          v8 = [planPurchaseURL3 isEqualToString:planPurchaseURL4];
        }

        v19 = planTermsURL;
        v20 = planTermsURL2;
        if (planTermsURL == planTermsURL2)
        {
LABEL_35:

          v18 = v33;
          v17 = v30;
          if (v30 == v33)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v8 = 0;
        v19 = planTermsURL;
        v20 = planTermsURL2;
      }

      goto LABEL_35;
    }

    v8 = 0;
  }

LABEL_23:

  return v8;
}

- (int64_t)planStatus
{
  planSubscriptionStatus = self->_planSubscriptionStatus;
  if (planSubscriptionStatus > 2)
  {
    return 0;
  }

  else
  {
    return qword_2426E6F88[planSubscriptionStatus];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_planId copyWithZone:zone];
  [v5 setPlanId:v6];

  v7 = [(NSString *)self->_planLabel copyWithZone:zone];
  [v5 setPlanLabel:v7];

  v8 = [(NSString *)self->_planValue copyWithZone:zone];
  [v5 setPlanValue:v8];

  [v5 setPlanSubscriptionStatus:self->_planSubscriptionStatus];
  [v5 setPlanPurchasable:self->_planPurchasable];
  v9 = [(NSString *)self->_planDetailsURL copyWithZone:zone];
  [v5 setPlanDetailsURL:v9];

  v10 = [(NSString *)self->_planTermsURL copyWithZone:zone];
  [v5 setPlanTermsURL:v10];

  v11 = [(NSString *)self->_planPurchaseURL copyWithZone:zone];
  [v5 setPlanPurchaseURL:v11];

  [v5 setPlanType:{-[CTCarrierSpacePlanGroupOptionInfo planType](self, "planType")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_planId forKey:@"planId"];
  [coderCopy encodeObject:self->_planLabel forKey:@"planLabel"];
  [coderCopy encodeObject:self->_planValue forKey:@"planValue"];
  [coderCopy encodeInt:self->_planSubscriptionStatus forKey:@"planSubscriptionStatus"];
  [coderCopy encodeBool:self->_planPurchasable forKey:@"planPurchasable"];
  [coderCopy encodeObject:self->_planDetailsURL forKey:@"planDetailsURL"];
  [coderCopy encodeObject:self->_planTermsURL forKey:@"planTermsURL"];
  [coderCopy encodeObject:self->_planPurchaseURL forKey:@"planPurchaseURL"];
  [coderCopy encodeInteger:self->_planType forKey:@"planType"];
}

- (CTCarrierSpacePlanGroupOptionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTCarrierSpacePlanGroupOptionInfo;
  v5 = [(CTCarrierSpacePlanGroupOptionInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planId"];
    planId = v5->_planId;
    v5->_planId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planLabel"];
    planLabel = v5->_planLabel;
    v5->_planLabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planValue"];
    planValue = v5->_planValue;
    v5->_planValue = v10;

    v5->_planSubscriptionStatus = [coderCopy decodeIntForKey:@"planSubscriptionStatus"];
    v5->_planPurchasable = [coderCopy decodeBoolForKey:@"planPurchasable"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planDetailsURL"];
    planDetailsURL = v5->_planDetailsURL;
    v5->_planDetailsURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planTermsURL"];
    planTermsURL = v5->_planTermsURL;
    v5->_planTermsURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planPurchaseURL"];
    planPurchaseURL = v5->_planPurchaseURL;
    v5->_planPurchaseURL = v16;

    v5->_planType = [coderCopy decodeIntegerForKey:@"planType"];
  }

  return v5;
}

@end