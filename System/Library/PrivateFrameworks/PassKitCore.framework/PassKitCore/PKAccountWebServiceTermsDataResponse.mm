@interface PKAccountWebServiceTermsDataResponse
- (PKAccountWebServiceTermsDataResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceTermsDataResponse

- (PKAccountWebServiceTermsDataResponse)initWithData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKAccountWebServiceTermsDataResponse;
  v3 = [(PKWebServiceResponse *)&v32 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v34 = v19;
      v35 = 2114;
      v36 = v21;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);

LABEL_13:
    }

LABEL_14:

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  v6 = [jSONObject PKStringForKey:@"dataHash"];
  if (!v6)
  {
    v17 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v19 = NSStringFromClass(v22);
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dataHash", buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = [jSONObject PKStringForKey:@"data"];
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
  termsData = v4->_termsData;
  v4->_termsData = v9;

  v11 = v4->_termsData;
  if (!v11)
  {
    v23 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543362;
      v34 = v25;
      v26 = "Malformed %{public}@: expected terms data";
LABEL_23:
      _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    }

LABEL_24:

    goto LABEL_25;
  }

  sHA256Hash = [(NSData *)v11 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];
  v14 = v7;
  v15 = v14;
  if (hexEncoding == v14)
  {
  }

  else
  {
    if (!hexEncoding)
    {

      goto LABEL_21;
    }

    v16 = [hexEncoding isEqualToString:v14];

    if ((v16 & 1) == 0)
    {
LABEL_21:
      v23 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v25 = NSStringFromClass(v30);
        *buf = 138543362;
        v34 = v25;
        v26 = "Malformed %{public}@: dataHash does not match terms data";
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  v27 = [jSONObject PKStringForKey:@"dataFilename"];
  termsDataFileName = v4->_termsDataFileName;
  v4->_termsDataFileName = v27;

LABEL_19:
  v29 = v4;
LABEL_26:

  return v29;
}

@end