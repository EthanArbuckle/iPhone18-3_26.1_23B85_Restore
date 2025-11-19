@interface PKAccountWebServicePromotionsResponse
- (PKAccountWebServicePromotionsResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServicePromotionsResponse

- (PKAccountWebServicePromotionsResponse)initWithData:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PKAccountWebServicePromotionsResponse;
  v3 = [(PKWebServiceResponse *)&v27 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"promotions"];
    v7 = [v6 pk_arrayBySafelyApplyingBlock:&__block_literal_global_720_0];
    promotions = v4->_promotions;
    v4->_promotions = v7;

    v9 = [v5 objectForKey:@"orderings"];
    v10 = [v9 pk_arrayBySafelyApplyingBlock:&__block_literal_global_726];
    orderings = v4->_orderings;
    v4->_orderings = v10;

    v12 = [v5 PKDateForKey:@"lastAddedDate"];
    lastAddedDate = v4->_lastAddedDate;
    v4->_lastAddedDate = v12;

    v14 = [v5 PKNumberForKey:@"minRefreshPeriod"];
    minRefreshPeriod = v4->_minRefreshPeriod;
    v4->_minRefreshPeriod = v14;

    v16 = [v5 PKNumberForKey:@"maxImpressionCount"];
    maxImpressionCount = v4->_maxImpressionCount;
    v4->_maxImpressionCount = v16;

    v18 = [v5 PKNumberForKey:@"timeVisibleAfterCompleted"];
    timeVisibleAfterCompleted = v4->_timeVisibleAfterCompleted;
    v4->_timeVisibleAfterCompleted = v18;

LABEL_4:
    v20 = v4;
    goto LABEL_8;
  }

  v21 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543618;
    v29 = v23;
    v30 = 2114;
    v31 = v25;
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_8:

  return v20;
}

PKAccountPromotion *__54__PKAccountWebServicePromotionsResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountPromotion alloc] initWithDictionary:v2];

  return v3;
}

PKAccountEntityOrdering *__54__PKAccountWebServicePromotionsResponse_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountEntityOrdering alloc] initWithType:2 dictionary:v2];

  return v3;
}

@end