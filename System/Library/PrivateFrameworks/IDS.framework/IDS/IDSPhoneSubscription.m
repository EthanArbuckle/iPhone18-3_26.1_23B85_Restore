@interface IDSPhoneSubscription
+ (id)CTSIMSFromPhoneSubscriptions:(id)a3;
+ (id)phoneSubscriptionWithSIM:(id)a3;
+ (id)phoneSubscriptionWithSubscriptionSlot:(int64_t)a3 andLabelID:(id)a4;
+ (id)phoneSubscriptionsFromCTSIMs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPhoneSubscription:(id)a3;
- (IDSPhoneSubscription)initWithCoder:(id)a3;
- (IDSPhoneSubscription)initWithSubscriptionSlot:(int64_t)a3 labelID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPhoneSubscription

+ (id)CTSIMSFromPhoneSubscriptions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = sub_195A4A460(*(*(&v14 + 1) + 8 * i));
          if (v10)
          {
            [v4 addObject:{v10, v14}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)phoneSubscriptionsFromCTSIMs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [IDSPhoneSubscription phoneSubscriptionWithSIM:*(*(&v14 + 1) + 8 * i), v14];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)phoneSubscriptionWithSIM:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 slot];
    v6 = 1;
    if (v5 == 1)
    {
      v6 = 2;
    }

    if (v5 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v4 SIMIdentifier];

    v9 = [a1 phoneSubscriptionWithSubscriptionSlot:v7 andLabelID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IDSPhoneSubscription)initWithSubscriptionSlot:(int64_t)a3 labelID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSPhoneSubscription;
  v8 = [(IDSPhoneSubscription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_subscriptionSlot = a3;
    objc_storeStrong(&v8->_labelID, a4);
  }

  return v9;
}

+ (id)phoneSubscriptionWithSubscriptionSlot:(int64_t)a3 andLabelID:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (a3 <= 2 && ((a3 - 1) < 2 || v8))
  {
    v9 = [[a1 alloc] initWithSubscriptionSlot:a3 labelID:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPhoneSubscription *)self isEqualToPhoneSubscription:v4];
  }

  return v5;
}

- (BOOL)isEqualToPhoneSubscription:(id)a3
{
  v4 = a3;
  if (self->_subscriptionSlot == v4[1])
  {
    labelID = self->_labelID;
    if (labelID == v4[2])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)labelID isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  subscriptionSlot = self->_subscriptionSlot;
  v5 = a3;
  [v5 encodeInteger:subscriptionSlot forKey:@"subSlot"];
  [v5 encodeObject:self->_labelID forKey:@"subLableID"];
}

- (IDSPhoneSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"subSlot"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subLableID"];

  v7 = [(IDSPhoneSubscription *)self initWithSubscriptionSlot:v5 labelID:v6];
  return v7;
}

@end