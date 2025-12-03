@interface PKAccountWebServiceCustomizePhysicalCardResponse
- (PKAccountWebServiceCustomizePhysicalCardResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceCustomizePhysicalCardResponse

- (PKAccountWebServiceCustomizePhysicalCardResponse)initWithData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKAccountWebServiceCustomizePhysicalCardResponse;
  v3 = [(PKWebServiceResponse *)&v20 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKArrayContaining:objc_opt_class() forKey:@"nameOptions"];
      nameOptions = v4->_nameOptions;
      v4->_nameOptions = v7;

      v9 = [v6 PKArrayContaining:objc_opt_class() forKey:@"artworkOptions"];
      v10 = [v9 pk_arrayByApplyingBlock:&__block_literal_global_102];
      artworkOptions = v4->_artworkOptions;
      v4->_artworkOptions = v10;

      v12 = [v6 PKArrayContaining:objc_opt_class() forKey:@"priceOptions"];

      v13 = [v12 pk_arrayByApplyingBlock:&__block_literal_global_371];
      priceOptions = v4->_priceOptions;
      v4->_priceOptions = v13;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v18;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

PKPhysicalCardArtworkOption *__65__PKAccountWebServiceCustomizePhysicalCardResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPhysicalCardArtworkOption alloc] initWithDictionary:v2];

  return v3;
}

PKPhysicalCardPriceOption *__65__PKAccountWebServiceCustomizePhysicalCardResponse_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPhysicalCardPriceOption alloc] initWithDictionary:v2];

  return v3;
}

@end