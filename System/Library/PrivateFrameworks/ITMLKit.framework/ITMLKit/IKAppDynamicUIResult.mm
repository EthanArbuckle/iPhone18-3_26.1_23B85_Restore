@interface IKAppDynamicUIResult
+ (id)_rawResultWithDynamicUIResult:(id)result;
+ (id)_responseDictionaryWithCarrierLinkResult:(id)result;
- (IKAppDynamicUIResult)initWithCarrierLinkResult:(id)result;
- (IKAppDynamicUIResult)initWithPurchaseResult:(id)result;
- (id)rawResponse;
@end

@implementation IKAppDynamicUIResult

- (IKAppDynamicUIResult)initWithPurchaseResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = IKAppDynamicUIResult;
  v6 = [(IKAppDynamicUIResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseResult, result);
  }

  return v7;
}

- (IKAppDynamicUIResult)initWithCarrierLinkResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = IKAppDynamicUIResult;
  v6 = [(IKAppDynamicUIResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_carrierLinkResult, result);
  }

  return v7;
}

- (id)rawResponse
{
  v3 = objc_opt_class();

  return [v3 _rawResultWithDynamicUIResult:self];
}

+ (id)_responseDictionaryWithCarrierLinkResult:(id)result
{
  resultCopy = result;
  response = [resultCopy response];
  if (response)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:response];
    linkParams = [resultCopy linkParams];
    dictionary = [linkParams dictionary];
    [v5 setObject:dictionary forKeyedSubscript:@"linkParams"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_rawResultWithDynamicUIResult:(id)result
{
  resultCopy = result;
  purchaseResult = [resultCopy purchaseResult];
  responseDictionary = [purchaseResult responseDictionary];
  v6 = responseDictionary;
  if (responseDictionary)
  {
    v7 = responseDictionary;
  }

  else
  {
    v8 = objc_opt_class();
    carrierLinkResult = [resultCopy carrierLinkResult];
    v7 = [v8 _responseDictionaryWithCarrierLinkResult:carrierLinkResult];
  }

  return v7;
}

@end