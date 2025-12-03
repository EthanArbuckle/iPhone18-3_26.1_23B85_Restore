@interface PKAccountWebServiceEnhancedMerchantsResponse
- (PKAccountWebServiceEnhancedMerchantsResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceEnhancedMerchantsResponse

- (PKAccountWebServiceEnhancedMerchantsResponse)initWithData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKAccountWebServiceEnhancedMerchantsResponse;
  v3 = [(PKWebServiceResponse *)&v23 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject objectForKey:@"merchants"];
    v7 = [v6 pk_arrayBySafelyApplyingBlock:&__block_literal_global_775_0];
    merchants = v4->_merchants;
    v4->_merchants = v7;

    v9 = [jSONObject objectForKey:@"orderings"];
    v10 = [v9 pk_arrayBySafelyApplyingBlock:&__block_literal_global_778];
    orderings = v4->_orderings;
    v4->_orderings = v10;

    v12 = [jSONObject PKDateForKey:@"lastAddedDate"];
    lastAddedDate = v4->_lastAddedDate;
    v4->_lastAddedDate = v12;

    v14 = [jSONObject PKNumberForKey:@"minRefreshPeriod"];
    minRefreshPeriod = v4->_minRefreshPeriod;
    v4->_minRefreshPeriod = v14;

LABEL_4:
    v16 = v4;
    goto LABEL_8;
  }

  v17 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138543618;
    v25 = v19;
    v26 = 2114;
    v27 = v21;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

PKAccountEnhancedMerchant *__61__PKAccountWebServiceEnhancedMerchantsResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountEnhancedMerchant alloc] initWithDictionary:v2];

  return v3;
}

PKAccountEntityOrdering *__61__PKAccountWebServiceEnhancedMerchantsResponse_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountEntityOrdering alloc] initWithType:1 dictionary:v2];

  return v3;
}

@end