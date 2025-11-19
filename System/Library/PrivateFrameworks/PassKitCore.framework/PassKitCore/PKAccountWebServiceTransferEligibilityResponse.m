@interface PKAccountWebServiceTransferEligibilityResponse
- (PKAccountWebServiceTransferEligibilityResponse)initWithData:(id)a3 account:(id)a4 request:(id)a5;
@end

@implementation PKAccountWebServiceTransferEligibilityResponse

- (PKAccountWebServiceTransferEligibilityResponse)initWithData:(id)a3 account:(id)a4 request:(id)a5
{
  v13.receiver = self;
  v13.super_class = PKAccountWebServiceTransferEligibilityResponse;
  v5 = [(PKWebServiceResponse *)&v13 initWithData:a3, a4, a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKWebServiceResponse *)v5 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 PKStringForKey:@"eligibility"];
      v6->_eligibility = PKAccountTransferEligibilityFromString(v9);

      v10 = [v8 PKDecimalNumberForKey:@"overflowAmount"];

      overflowAmount = v6->_overflowAmount;
      v6->_overflowAmount = v10;
    }
  }

  return v6;
}

@end