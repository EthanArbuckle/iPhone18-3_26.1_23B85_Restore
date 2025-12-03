@interface PKAccountWebServicePhysicalCardsResponse
- (PKAccountWebServicePhysicalCardsResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServicePhysicalCardsResponse

- (PKAccountWebServicePhysicalCardsResponse)initWithData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKAccountWebServicePhysicalCardsResponse;
  v3 = [(PKWebServiceResponse *)&v19 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject PKSetContaining:objc_opt_class() forKey:@"physicalCards"];
    v7 = [v6 pk_setByApplyingBlock:&__block_literal_global_693];
    physicalCards = v4->_physicalCards;
    v4->_physicalCards = v7;

    v9 = [jSONObject PKSetContaining:objc_opt_class() forKey:@"physicalCardExpirationMessaging"];
    v10 = [v9 pk_setBySafelyApplyingBlock:&__block_literal_global_699];
    expirationMessaging = v4->_expirationMessaging;
    v4->_expirationMessaging = v10;

LABEL_4:
    v12 = v4;
    goto LABEL_8;
  }

  v13 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

PKPhysicalCard *__57__PKAccountWebServicePhysicalCardsResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPhysicalCard alloc] initWithDictionary:v2];

  return v3;
}

PKAccountPhysicalCardExpirationMessagingInfo *__57__PKAccountWebServicePhysicalCardsResponse_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountPhysicalCardExpirationMessagingInfo alloc] initWithDictionary:v2];

  return v3;
}

@end