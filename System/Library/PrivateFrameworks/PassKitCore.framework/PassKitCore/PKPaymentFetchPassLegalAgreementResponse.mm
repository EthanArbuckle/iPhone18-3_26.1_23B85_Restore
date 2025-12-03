@interface PKPaymentFetchPassLegalAgreementResponse
- (PKPaymentFetchPassLegalAgreementResponse)initWithData:(id)data;
@end

@implementation PKPaymentFetchPassLegalAgreementResponse

- (PKPaymentFetchPassLegalAgreementResponse)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentFetchPassLegalAgreementResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject PKURLForKey:@"agreementUrl"];
      agreementUrl = v4->_agreementUrl;
      v4->_agreementUrl = v6;

      if (v4->_agreementUrl)
      {
LABEL_10:

        return v4;
      }

      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138412290;
        v17 = v9;
        v10 = v9;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed response: missing required fields inside %@", buf, 0xCu);
LABEL_8:
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v10 = NSStringFromClass(v11);
        v12 = objc_opt_class();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v12;
        v13 = v12;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);

        goto LABEL_8;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  return v4;
}

@end