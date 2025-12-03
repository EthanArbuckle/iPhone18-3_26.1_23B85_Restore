@interface PKAccountWebServiceExportTransactionDataResponse
- (PKAccountWebServiceExportTransactionDataResponse)initWithData:(id)data account:(id)account request:(id)request;
@end

@implementation PKAccountWebServiceExportTransactionDataResponse

- (PKAccountWebServiceExportTransactionDataResponse)initWithData:(id)data account:(id)account request:(id)request
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v43.receiver = self;
  v43.super_class = PKAccountWebServiceExportTransactionDataResponse;
  v8 = [(PKWebServiceResponse *)&v43 initWithData:data];
  p_isa = &v8->super.super.super.super.isa;
  if (!v8)
  {
    goto LABEL_26;
  }

  jSONObject = [(PKWebServiceResponse *)v8 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = requestCopy;
      v12 = objc_alloc_init(PKAccountExportedTransactionInfo);
      v13 = p_isa[4];
      p_isa[4] = v12;

      type = [v11 type];
      if (type == 1)
      {
        v32 = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"transactionMetadata"];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"metadata"];
        }

        v20 = v34;

        v36 = p_isa[4];
        v37 = [PKAccountStatementMetadata alloc];
        accountIdentifier = [v11 accountIdentifier];
        statementIdentifier = [v11 statementIdentifier];
        v39 = [(PKAccountStatementMetadata *)v37 initWithArray:v20 accountIdentifier:accountIdentifier statementIdentifier:statementIdentifier];
        [v36 setStatementMetadata:v39];

        goto LABEL_24;
      }

      if (type)
      {
LABEL_25:

LABEL_26:
        v31 = p_isa;
        goto LABEL_27;
      }

      v15 = p_isa[4];
      v16 = [jSONObject PKStringForKey:@"transactionDataFilename"];
      [v15 setTransactionDataFilename:v16];

      v17 = p_isa[4];
      v18 = [jSONObject PKStringForKey:@"transactionDataHash"];
      [v17 setTransactionDataHash:v18];

      v19 = [jSONObject PKStringForKey:@"transactionData"];
      if (v19)
      {
        v20 = v19;
        v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v19 options:0];
        if (v21)
        {
          accountIdentifier = v21;
          [p_isa[4] setTransactionData:v21];
LABEL_24:

          goto LABEL_25;
        }

        v25 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543362;
          v45 = v42;
          _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected transactionData", buf, 0xCu);
        }

        goto LABEL_15;
      }

      v20 = PKLogFacilityTypeGetObject(0xFuLL);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v35 = objc_opt_class();
      v25 = NSStringFromClass(v35);
      *buf = 138543362;
      v45 = v25;
      v26 = "Malformed %{public}@: expected transactionData";
      v29 = v20;
      v30 = 12;
LABEL_14:
      _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, v26, buf, v30);
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v20 = NSStringFromClass(v27);
      v28 = objc_opt_class();
      v25 = NSStringFromClass(v28);
      *buf = 138543618;
      v45 = v20;
      v46 = 2114;
      v47 = v25;
      v26 = "Malformed %{public}@: request is of wrong class type, received %{public}@";
      goto LABEL_13;
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v20 = NSStringFromClass(v23);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      v45 = v20;
      v46 = 2114;
      v47 = v25;
      v26 = "Malformed %{public}@: expected dictionary and received %{public}@";
LABEL_13:
      v29 = v11;
      v30 = 22;
      goto LABEL_14;
    }
  }

LABEL_17:

  v31 = 0;
LABEL_27:

  return v31;
}

@end