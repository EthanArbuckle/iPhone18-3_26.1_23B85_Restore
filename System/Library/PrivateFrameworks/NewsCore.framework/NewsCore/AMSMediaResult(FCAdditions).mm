@interface AMSMediaResult(FCAdditions)
- (id)fc_appAdamID;
- (id)fc_introductoryOffers;
- (uint64_t)isPeriodValid:()FCAdditions;
- (void)fc_bundleID;
- (void)fc_externalVersionID;
- (void)fc_offerName;
- (void)fc_subscriptionPeriodInISO_8601;
@end

@implementation AMSMediaResult(FCAdditions)

- (id)fc_appAdamID
{
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v3 = [firstObject objectForKey:@"relationships"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [v5 objectForKey:@"app"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 objectForKey:@"data"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  firstObject2 = [v11 firstObject];
  v13 = [firstObject2 objectForKey:@"id"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "intValue")}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)fc_offerName
{
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v3 = [firstObject objectForKey:@"attributes"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [v5 objectForKey:@"offerName"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)fc_externalVersionID
{
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v3 = [firstObject objectForKeyedSubscript:@"attributes"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"platformAttributes"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 objectForKeyedSubscript:@"ios"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"externalVersionId"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)fc_bundleID
{
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v3 = [firstObject objectForKeyedSubscript:@"attributes"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"platformAttributes"];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 objectForKeyedSubscript:@"ios"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [v11 objectForKey:@"bundleId"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)fc_introductoryOffers
{
  array = [MEMORY[0x1E695DF70] array];
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v30 = firstObject;
  v5 = [firstObject objectForKey:@"attributes"];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v29 = v7;
  v8 = [v7 objectForKey:@"offers"];
  firstObject2 = [v8 firstObject];
  objc_opt_class();
  v10 = [firstObject2 objectForKey:@"discounts"];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  firstObject3 = [v12 firstObject];
  objc_opt_class();
  v14 = [firstObject3 objectForKey:@"priceFormatted"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = [firstObject3 objectForKey:@"recurringSubscriptionPeriod"];
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  objc_opt_class();
  v20 = [firstObject3 objectForKey:@"numOfPeriods"];
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  objc_opt_class();
  v23 = [firstObject3 objectForKey:@"modeType"];
  if (v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if ([v25 isEqualToString:@"PayAsYouGo"])
  {
    v26 = 1;
  }

  else if ([v25 isEqualToString:@"PayUpFront"])
  {
    v26 = 2;
  }

  else
  {
    if (![v25 isEqualToString:@"FreeTrial"])
    {
      goto LABEL_38;
    }

    v26 = 3;
  }

  v27 = -[FCIntroductoryOffer initWithOfferType:priceFormatted:recurringSubscriptionPeriod:numOfPeriods:]([FCIntroductoryOffer alloc], "initWithOfferType:priceFormatted:recurringSubscriptionPeriod:numOfPeriods:", v26, v16, v19, [v22 unsignedIntegerValue]);
  [array addObject:v27];

LABEL_38:

  return array;
}

- (void)fc_subscriptionPeriodInISO_8601
{
  responseDataItems = [self responseDataItems];
  firstObject = [responseDataItems firstObject];

  objc_opt_class();
  v4 = [firstObject objectForKey:@"attributes"];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 objectForKey:@"offers"];
  firstObject2 = [v7 firstObject];
  objc_opt_class();
  v9 = [firstObject2 objectForKey:@"recurringSubscriptionPeriod"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    objc_opt_class();
    v12 = [v6 objectForKey:@"recurringSubscriptionPeriod"];
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v11 = v13;
  }

  if ([self isPeriodValid:v11])
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (uint64_t)isPeriodValid:()FCAdditions
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 hasPrefix:@"P"])
  {
    v5 = [v4 substringWithRange:{1, objc_msgSend(v4, "length") - 1}];
    if ([v5 length])
    {
      v6 = 0;
      while (1)
      {
        v7 = [v5 characterAtIndex:v6] - 68;
        if (v7 < 0x16 && ((0x298211u >> v7) & 1) != 0)
        {
          break;
        }

        if ([v5 length] <= ++v6)
        {
          goto LABEL_8;
        }
      }

      v8 = 0x280201u >> v7;
    }

    else
    {
LABEL_8:
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

@end