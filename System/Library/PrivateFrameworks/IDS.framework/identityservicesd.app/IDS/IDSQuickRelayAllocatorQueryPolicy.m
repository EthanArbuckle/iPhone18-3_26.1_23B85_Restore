@interface IDSQuickRelayAllocatorQueryPolicy
- (BOOL)_serverBagBoolForKey:(id)a3 withDefaultValue:(BOOL)a4;
- (BOOL)shouldPreventDuplicateTokensInAllocationForServiceIdentifier:(id)a3;
- (BOOL)shouldQueryOnEveryQRAllocationForServiceIdentifier:(id)a3;
- (IDSQuickRelayAllocatorQueryPolicy)initWithServerBag:(id)a3;
@end

@implementation IDSQuickRelayAllocatorQueryPolicy

- (IDSQuickRelayAllocatorQueryPolicy)initWithServerBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSQuickRelayAllocatorQueryPolicy;
  v6 = [(IDSQuickRelayAllocatorQueryPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverBag, a3);
  }

  return v7;
}

- (BOOL)shouldQueryOnEveryQRAllocationForServiceIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"com.apple.private.alloy.ids.cloudmessaging"])
  {
    if (sub_10043B774(v4))
    {
      v5 = @"ids-query-qr-allocate-groupfacetime";
    }

    else
    {
      v8 = v4;
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

              v15 = [v14 isUserDrivenRealTime];
              v10 = [(IDSQuickRelayAllocatorQueryPolicy *)self _serverBagBoolForKey:v12 withDefaultValue:v15];

              goto LABEL_12;
            }

            v5 = @"ids-query-qr-allocate-terminus";
          }

          goto LABEL_3;
        }
      }

      v5 = @"ids-query-qr-allocate-facetime";
    }

    v6 = self;
    v7 = 1;
    goto LABEL_11;
  }

  v5 = @"ids-query-qr-allocate-cloudmessaging";
LABEL_3:
  v6 = self;
  v7 = 0;
LABEL_11:
  v10 = [(IDSQuickRelayAllocatorQueryPolicy *)v6 _serverBagBoolForKey:v5 withDefaultValue:v7];
LABEL_12:

  return v10;
}

- (BOOL)shouldPreventDuplicateTokensInAllocationForServiceIdentifier:(id)a3
{
  if (!sub_10043B774(a3))
  {
    return 1;
  }

  return [(IDSQuickRelayAllocatorQueryPolicy *)self _serverBagBoolForKey:@"ids-qr-allocate-prevent-duplicate-tokens" withDefaultValue:0];
}

- (BOOL)_serverBagBoolForKey:(id)a3 withDefaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = [(IDSQuickRelayAllocatorQueryPolicy *)self serverBag];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [v8 BOOLValue];
    }
  }

  return a4;
}

@end