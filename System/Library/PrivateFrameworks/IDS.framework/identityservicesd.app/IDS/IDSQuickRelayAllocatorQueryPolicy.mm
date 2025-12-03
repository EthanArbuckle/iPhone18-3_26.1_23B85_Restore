@interface IDSQuickRelayAllocatorQueryPolicy
- (BOOL)_serverBagBoolForKey:(id)key withDefaultValue:(BOOL)value;
- (BOOL)shouldPreventDuplicateTokensInAllocationForServiceIdentifier:(id)identifier;
- (BOOL)shouldQueryOnEveryQRAllocationForServiceIdentifier:(id)identifier;
- (IDSQuickRelayAllocatorQueryPolicy)initWithServerBag:(id)bag;
@end

@implementation IDSQuickRelayAllocatorQueryPolicy

- (IDSQuickRelayAllocatorQueryPolicy)initWithServerBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = IDSQuickRelayAllocatorQueryPolicy;
  v6 = [(IDSQuickRelayAllocatorQueryPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverBag, bag);
  }

  return v7;
}

- (BOOL)shouldQueryOnEveryQRAllocationForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:@"com.apple.private.alloy.ids.cloudmessaging"])
  {
    if (sub_10043B774(identifierCopy))
    {
      v5 = @"ids-query-qr-allocate-groupfacetime";
    }

    else
    {
      v8 = identifierCopy;
      if ([v8 isEqualToString:@"com.apple.private.alloy.facetime.video"])
      {
      }

      else
      {
        v9 = [v8 isEqualToString:@"com.apple.private.alloy.facetime.audio"];

        if (!v9)
        {
          if ([v8 isEqualToString:@"com.apple.private.alloy.willow.stream"])
          {
            v5 = @"ids-query-qr-allocate-homekit";
          }

          else
          {
            if (![v8 isEqualToString:@"com.apple.private.alloy.terminus"])
            {
              v12 = [NSString stringWithFormat:@"ids-query-qr-allocate-%@", v8];
              v13 = v8;
              v14 = [[IDSServiceProperties alloc] initWithServiceIdentifier:v13];

              isUserDrivenRealTime = [v14 isUserDrivenRealTime];
              v10 = [(IDSQuickRelayAllocatorQueryPolicy *)self _serverBagBoolForKey:v12 withDefaultValue:isUserDrivenRealTime];

              goto LABEL_12;
            }

            v5 = @"ids-query-qr-allocate-terminus";
          }

          goto LABEL_3;
        }
      }

      v5 = @"ids-query-qr-allocate-facetime";
    }

    selfCopy2 = self;
    v7 = 1;
    goto LABEL_11;
  }

  v5 = @"ids-query-qr-allocate-cloudmessaging";
LABEL_3:
  selfCopy2 = self;
  v7 = 0;
LABEL_11:
  v10 = [(IDSQuickRelayAllocatorQueryPolicy *)selfCopy2 _serverBagBoolForKey:v5 withDefaultValue:v7];
LABEL_12:

  return v10;
}

- (BOOL)shouldPreventDuplicateTokensInAllocationForServiceIdentifier:(id)identifier
{
  if (!sub_10043B774(identifier))
  {
    return 1;
  }

  return [(IDSQuickRelayAllocatorQueryPolicy *)self _serverBagBoolForKey:@"ids-qr-allocate-prevent-duplicate-tokens" withDefaultValue:0];
}

- (BOOL)_serverBagBoolForKey:(id)key withDefaultValue:(BOOL)value
{
  keyCopy = key;
  serverBag = [(IDSQuickRelayAllocatorQueryPolicy *)self serverBag];
  v8 = [serverBag objectForKey:keyCopy];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [v8 BOOLValue];
    }
  }

  return value;
}

@end