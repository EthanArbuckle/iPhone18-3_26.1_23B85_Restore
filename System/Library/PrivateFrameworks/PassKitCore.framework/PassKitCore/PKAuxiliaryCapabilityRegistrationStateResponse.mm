@interface PKAuxiliaryCapabilityRegistrationStateResponse
- (PKAuxiliaryCapabilityRegistrationStateResponse)initWithData:(id)data;
@end

@implementation PKAuxiliaryCapabilityRegistrationStateResponse

- (PKAuxiliaryCapabilityRegistrationStateResponse)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKAuxiliaryCapabilityRegistrationStateResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKArrayContaining:objc_opt_class() forKey:@"unregisteredRequirements"];

      v8 = [v7 pk_arrayBySafelyApplyingBlock:&__block_literal_global_37];
      p_super = &v4->_unregisteredRequirements->super;
      v4->_unregisteredRequirements = v8;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0x1DuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }

      v7 = v4;
      v4 = 0;
    }
  }

  return v4;
}

PKAuxiliaryCapabilityUnregisteredRequirements *__63__PKAuxiliaryCapabilityRegistrationStateResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAuxiliaryCapabilityUnregisteredRequirements alloc] initWithDictionary:v2];

  return v3;
}

@end