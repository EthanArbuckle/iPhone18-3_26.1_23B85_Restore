@interface PKAccountWebServiceTransferEligibilityResponse
- (PKAccountWebServiceTransferEligibilityResponse)initWithData:(id)data account:(id)account request:(id)request;
@end

@implementation PKAccountWebServiceTransferEligibilityResponse

- (PKAccountWebServiceTransferEligibilityResponse)initWithData:(id)data account:(id)account request:(id)request
{
  v13.receiver = self;
  v13.super_class = PKAccountWebServiceTransferEligibilityResponse;
  request = [(PKWebServiceResponse *)&v13 initWithData:data, account, request];
  v6 = request;
  if (request)
  {
    jSONObject = [(PKWebServiceResponse *)request JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = jSONObject;
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