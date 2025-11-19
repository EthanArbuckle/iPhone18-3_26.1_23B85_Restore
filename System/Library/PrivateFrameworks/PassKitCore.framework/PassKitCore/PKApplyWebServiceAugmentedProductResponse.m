@interface PKApplyWebServiceAugmentedProductResponse
- (PKApplyWebServiceAugmentedProductResponse)initWithData:(id)a3;
- (PKPaymentSetupProduct)product;
- (id)_generateProduct;
@end

@implementation PKApplyWebServiceAugmentedProductResponse

- (PKApplyWebServiceAugmentedProductResponse)initWithData:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKApplyWebServiceAugmentedProductResponse;
  v3 = [(PKWebServiceResponse *)&v7 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKApplyWebServiceAugmentedProductResponse *)v3 _generateProduct];
  }

  return v4;
}

- (PKPaymentSetupProduct)product
{
  product = self->_product;
  if (!product)
  {
    v4 = [(PKApplyWebServiceAugmentedProductResponse *)self _generateProduct];
    v5 = self->_product;
    self->_product = v4;

    product = self->_product;
  }

  return product;
}

- (id)_generateProduct
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(PKWebServiceResponse *)self JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"product"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_alloc_init(PKPaymentSetupProduct);
      [(PKPaymentSetupProduct *)v4 updateWithProductDictionary:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Malformed PKApplyWebServiceAugmentedProductResponse: expected dictionary and received %{public}@", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end