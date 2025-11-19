@interface IKAppDynamicUIResult
+ (id)_rawResultWithDynamicUIResult:(id)a3;
+ (id)_responseDictionaryWithCarrierLinkResult:(id)a3;
- (IKAppDynamicUIResult)initWithCarrierLinkResult:(id)a3;
- (IKAppDynamicUIResult)initWithPurchaseResult:(id)a3;
- (id)rawResponse;
@end

@implementation IKAppDynamicUIResult

- (IKAppDynamicUIResult)initWithPurchaseResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IKAppDynamicUIResult;
  v6 = [(IKAppDynamicUIResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseResult, a3);
  }

  return v7;
}

- (IKAppDynamicUIResult)initWithCarrierLinkResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IKAppDynamicUIResult;
  v6 = [(IKAppDynamicUIResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_carrierLinkResult, a3);
  }

  return v7;
}

- (id)rawResponse
{
  v3 = objc_opt_class();

  return [v3 _rawResultWithDynamicUIResult:self];
}

+ (id)_responseDictionaryWithCarrierLinkResult:(id)a3
{
  v3 = a3;
  v4 = [v3 response];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    v6 = [v3 linkParams];
    v7 = [v6 dictionary];
    [v5 setObject:v7 forKeyedSubscript:@"linkParams"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_rawResultWithDynamicUIResult:(id)a3
{
  v3 = a3;
  v4 = [v3 purchaseResult];
  v5 = [v4 responseDictionary];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [v3 carrierLinkResult];
    v7 = [v8 _responseDictionaryWithCarrierLinkResult:v9];
  }

  return v7;
}

@end