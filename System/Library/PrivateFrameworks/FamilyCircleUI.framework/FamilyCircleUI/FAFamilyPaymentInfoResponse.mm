@interface FAFamilyPaymentInfoResponse
- (FAFamilyPaymentInfoResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation FAFamilyPaymentInfoResponse

- (FAFamilyPaymentInfoResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v24.receiver = self;
  v24.super_class = FAFamilyPaymentInfoResponse;
  v4 = [(AAResponse *)&v24 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277CEC888];
    v7 = [*(&v4->super.super.isa + v6) objectForKeyedSubscript:@"payment-type"];
    if ([v7 isEqualToString:@"credit-card"])
    {
      v8 = objc_alloc_init(FAFamilyCreditCard);
      creditCard = v5->_creditCard;
      v5->_creditCard = v8;

      v10 = v5->_creditCard;
      v11 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"card-details"];
      [(FAFamilyCreditCard *)v10 setDetails:v11];

      v12 = v5->_creditCard;
      v13 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"card-footer"];
      [(FAFamilyCreditCard *)v12 setFooter:v13];

      v14 = v5->_creditCard;
      v15 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"payment-sub-label"];
      [(FAFamilyCreditCard *)v14 setProviderDescription:v15];

      v16 = v5->_creditCard;
      v17 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"credit-card-type"];
      [(FAFamilyCreditCard *)v16 setType:v17];

      v18 = v5->_creditCard;
      v19 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"payment-description"];
      [(FAFamilyCreditCard *)v18 setUsageNotice:v19];

      v20 = [*(&v5->super.super.isa + v6) objectForKeyedSubscript:@"credit-card-image-url"];
      if (v20)
      {
        v21 = v5->_creditCard;
        v22 = [MEMORY[0x277CBEBC0] URLWithString:v20];
        [(FAFamilyCreditCard *)v21 setImageURL:v22];
      }
    }
  }

  return v5;
}

@end