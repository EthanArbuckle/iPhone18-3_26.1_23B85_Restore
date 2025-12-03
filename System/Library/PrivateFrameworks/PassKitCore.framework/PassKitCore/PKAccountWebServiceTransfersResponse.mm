@interface PKAccountWebServiceTransfersResponse
- (PKAccountWebServiceTransfersResponse)initWithData:(id)data account:(id)account request:(id)request;
@end

@implementation PKAccountWebServiceTransfersResponse

- (PKAccountWebServiceTransfersResponse)initWithData:(id)data account:(id)account request:(id)request
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v37.receiver = self;
  v37.super_class = PKAccountWebServiceTransfersResponse;
  v8 = [(PKWebServiceResponse *)&v37 initWithData:data];
  v9 = v8;
  if (!v8)
  {
LABEL_19:
    v20 = v9;
    goto LABEL_20;
  }

  jSONObject = [(PKWebServiceResponse *)v8 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [jSONObject PKArrayForKey:@"transfers"];
    array = [MEMORY[0x1E695DF70] array];
    v31 = v9;
    v32 = accountCopy;
    if ([accountCopy type] == 4)
    {
      savingsDetails = [accountCopy savingsDetails];
      productTimeZone = [savingsDetails productTimeZone];
    }

    else
    {
      productTimeZone = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
            v28 = [[PKAccountTransfer alloc] initWithDictionary:v27 productTimeZone:productTimeZone];
            [(NSArray *)array safelyAddObject:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v23);
    }

    v9 = v31;
    transfers = v31->_transfers;
    v31->_transfers = array;

    accountCopy = v32;
    goto LABEL_19;
  }

  v15 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543618;
    v40 = v17;
    v41 = 2114;
    v42 = v19;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_20:

  return v20;
}

@end