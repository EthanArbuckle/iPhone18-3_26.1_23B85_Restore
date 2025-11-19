@interface PKAuxiliaryCapabilityFetchBarcodeResponse
- (PKAuxiliaryCapabilityFetchBarcodeResponse)initWithData:(id)a3;
@end

@implementation PKAuxiliaryCapabilityFetchBarcodeResponse

- (PKAuxiliaryCapabilityFetchBarcodeResponse)initWithData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKAuxiliaryCapabilityFetchBarcodeResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"barcodes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__PKAuxiliaryCapabilityFetchBarcodeResponse_initWithData___block_invoke;
        v16[3] = &unk_1E79CC100;
        v17 = v7;
        p_super = v7;
        [v6 enumerateObjectsUsingBlock:v16];
        v9 = [p_super copy];
        barcodes = v4->_barcodes;
        v4->_barcodes = v9;

LABEL_10:
        return v4;
      }

      p_super = &v4->super.super.super.super;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0x1DuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v20 = v12;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }

      v6 = v4;
    }

    v4 = 0;
    goto LABEL_10;
  }

  return v4;
}

void __58__PKAuxiliaryCapabilityFetchBarcodeResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[PKBarcodeCredential alloc] initWithDictionary:v5];
    [v3 safelyAddObject:v4];
  }
}

@end