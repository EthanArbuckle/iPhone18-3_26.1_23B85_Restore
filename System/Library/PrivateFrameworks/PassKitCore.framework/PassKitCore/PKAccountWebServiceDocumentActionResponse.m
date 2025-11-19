@interface PKAccountWebServiceDocumentActionResponse
- (PKAccountWebServiceDocumentActionResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceDocumentActionResponse

- (PKAccountWebServiceDocumentActionResponse)initWithData:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKAccountWebServiceDocumentActionResponse;
  v3 = [(PKWebServiceResponse *)&v21 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
LABEL_15:
    v14 = v4;
    goto LABEL_19;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKStringForKey:@"statementDataFilename"];
    v7 = v6;
    if (!v6)
    {
      v7 = [v5 PKStringForKey:@"dataFilename"];
    }

    objc_storeStrong(&v4->_documentDataFilename, v7);
    if (!v6)
    {
    }

    v8 = [v5 PKStringForKey:@"statementDataHash"];
    v9 = v8;
    if (!v8)
    {
      v9 = [v5 PKStringForKey:@"dataHash"];
    }

    objc_storeStrong(&v4->_documentDataHash, v9);
    if (!v8)
    {
    }

    v10 = [v5 PKStringForKey:@"statementPDFData"];
    if (v10 || ([v5 PKStringForKey:@"pdfData"], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      documentPDFData = v4->_documentPDFData;
      v4->_documentPDFData = v12;
    }

    goto LABEL_15;
  }

  v15 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543618;
    v23 = v17;
    v24 = 2114;
    v25 = v19;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v14 = 0;
LABEL_19:

  return v14;
}

@end