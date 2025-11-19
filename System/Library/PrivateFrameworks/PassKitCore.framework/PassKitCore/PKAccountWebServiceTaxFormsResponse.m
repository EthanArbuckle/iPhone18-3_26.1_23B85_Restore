@interface PKAccountWebServiceTaxFormsResponse
- (PKAccountWebServiceTaxFormsResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceTaxFormsResponse

- (PKAccountWebServiceTaxFormsResponse)initWithData:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKAccountWebServiceTaxFormsResponse;
  v3 = [(PKWebServiceResponse *)&v26 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
LABEL_13:
    v15 = v4;
    goto LABEL_17;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 PKArrayForKey:{@"taxForms", 0}];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[PKAccountTaxForm alloc] initWithDictionary:*(*(&v22 + 1) + 8 * v11)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    taxForms = v4->_taxForms;
    v4->_taxForms = v13;

    goto LABEL_13;
  }

  v16 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v29 = v18;
    v30 = 2114;
    v31 = v20;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

@end