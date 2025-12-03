@interface IDSPhoneSubscription
+ (id)CTSIMSFromPhoneSubscriptions:(id)subscriptions;
+ (id)phoneSubscriptionWithSIM:(id)m;
+ (id)phoneSubscriptionWithSubscriptionSlot:(int64_t)slot andLabelID:(id)d;
+ (id)phoneSubscriptionsFromCTSIMs:(id)ms;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPhoneSubscription:(id)subscription;
- (IDSPhoneSubscription)initWithCoder:(id)coder;
- (IDSPhoneSubscription)initWithSubscriptionSlot:(int64_t)slot labelID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPhoneSubscription

+ (id)CTSIMSFromPhoneSubscriptions:(id)subscriptions
{
  v19 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  if ([subscriptionsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = subscriptionsCopy;
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

+ (id)phoneSubscriptionsFromCTSIMs:(id)ms
{
  v19 = *MEMORY[0x1E69E9840];
  msCopy = ms;
  if ([msCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = msCopy;
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

+ (id)phoneSubscriptionWithSIM:(id)m
{
  if (m)
  {
    mCopy = m;
    slot = [mCopy slot];
    v6 = 1;
    if (slot == 1)
    {
      v6 = 2;
    }

    if (slot == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    sIMIdentifier = [mCopy SIMIdentifier];

    v9 = [self phoneSubscriptionWithSubscriptionSlot:v7 andLabelID:sIMIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IDSPhoneSubscription)initWithSubscriptionSlot:(int64_t)slot labelID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = IDSPhoneSubscription;
  v8 = [(IDSPhoneSubscription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_subscriptionSlot = slot;
    objc_storeStrong(&v8->_labelID, d);
  }

  return v9;
}

+ (id)phoneSubscriptionWithSubscriptionSlot:(int64_t)slot andLabelID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v8 = [dCopy length] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (slot <= 2 && ((slot - 1) < 2 || v8))
  {
    v9 = [[self alloc] initWithSubscriptionSlot:slot labelID:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPhoneSubscription *)self isEqualToPhoneSubscription:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPhoneSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  if (self->_subscriptionSlot == subscriptionCopy[1])
  {
    labelID = self->_labelID;
    if (labelID == subscriptionCopy[2])
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

- (void)encodeWithCoder:(id)coder
{
  subscriptionSlot = self->_subscriptionSlot;
  coderCopy = coder;
  [coderCopy encodeInteger:subscriptionSlot forKey:@"subSlot"];
  [coderCopy encodeObject:self->_labelID forKey:@"subLableID"];
}

- (IDSPhoneSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"subSlot"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subLableID"];

  v7 = [(IDSPhoneSubscription *)self initWithSubscriptionSlot:v5 labelID:v6];
  return v7;
}

@end