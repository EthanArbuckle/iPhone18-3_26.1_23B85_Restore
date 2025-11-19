@interface CPSViewServicePresentationContext
- (CPSViewServicePresentationContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSViewServicePresentationContext

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_delegatePurchaseRequest withName:@"delegatePurchaseRequest" skipIfNil:1];
  v5 = [v3 appendObject:self->_paymentRequest withName:@"paymentRequest" skipIfNil:1];
  v6 = [v3 appendObject:self->_paymentContext withName:@"paymentContext" skipIfNil:1];
  v7 = [v3 appendObject:self->_storeAccount withName:@"storeAccount" skipIfNil:1];
  v8 = [v3 appendObject:self->_systemAuthenticationRequest withName:@"systemAuthenticationRequest"];
  v9 = [v3 appendObject:self->_webAuthenticationRequest withName:@"webAuthenticationRequest" skipIfNil:1];
  v10 = [v3 appendObject:self->_proxiedAppDomains withName:@"proxiedAppDomains" skipIfNil:1];
  v11 = [v3 appendObject:self->_restrictedAccessRequest withName:@"restrictedAccessRequest" skipIfNil:1];
  v12 = [v3 appendObject:self->_storeAuthenticationRequest withName:@"storeAuthenticationRequest" skipIfNil:1];
  v13 = [v3 appendObject:self->_tvProviderRequest withName:@"tvProviderRequest" skipIfNil:1];
  v14 = [v3 appendObject:self->_learnMoreRequest withName:@"learnMoreRequest"];
  v15 = [v3 appendObject:self->_dedicatedCameraRequest withName:@"dedicatedCameraRequest"];
  v16 = [v3 appendObject:self->_unrecognizedUserRequest withName:@"unrecognizedUserRequest"];
  v17 = [v3 appendObject:self->_ambientSetupRequest withName:@"ambientSetupRequest"];
  v18 = [v3 appendObject:self->_incomingCallsRequest withName:@"incomingCallsRequest"];
  v19 = [v3 build];

  return v19;
}

- (CPSViewServicePresentationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = CPSViewServicePresentationContext;
  v5 = [(CPSViewServicePresentationContext *)&v65 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    if ([v4 containsValueForKey:@"delegatePurchaseRequest"])
    {
      v9 = [v4 decodeObjectOfClass:getAMSDelegatePurchaseRequestClass() forKey:@"delegatePurchaseRequest"];
    }

    else
    {
      v9 = 0;
    }

    delegatePurchaseRequest = v5->_delegatePurchaseRequest;
    v5->_delegatePurchaseRequest = v9;

    if ([v4 containsValueForKey:@"paymentRequest"])
    {
      v11 = [v4 decodeObjectOfClass:getPKPaymentRequestClass() forKey:@"paymentRequest"];
    }

    else
    {
      v11 = 0;
    }

    paymentRequest = v5->_paymentRequest;
    v5->_paymentRequest = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"paymentContext"];
    paymentContext = v5->_paymentContext;
    v5->_paymentContext = v20;

    v22 = objc_opt_self();
    v23 = [v4 decodeObjectOfClass:v22 forKey:@"storeAccount"];
    storeAccount = v5->_storeAccount;
    v5->_storeAccount = v23;

    v25 = objc_opt_self();
    v26 = [v4 decodeObjectOfClass:v25 forKey:@"systemAuthenticationRequest"];
    systemAuthenticationRequest = v5->_systemAuthenticationRequest;
    v5->_systemAuthenticationRequest = v26;

    v28 = objc_opt_self();
    v29 = [v4 decodeObjectOfClass:v28 forKey:@"webAuthenticationRequest"];
    webAuthenticationRequest = v5->_webAuthenticationRequest;
    v5->_webAuthenticationRequest = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_self();
    v33 = objc_opt_self();
    v34 = [v31 setWithObjects:{v32, v33, 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"proxiedAppDomains"];
    proxiedAppDomains = v5->_proxiedAppDomains;
    v5->_proxiedAppDomains = v35;

    v37 = objc_opt_self();
    v38 = [v4 decodeObjectOfClass:v37 forKey:@"sharingData"];
    sharingData = v5->_sharingData;
    v5->_sharingData = v38;

    v40 = objc_opt_self();
    v41 = [v4 decodeObjectOfClass:v40 forKey:@"restrictedAccessRequest"];
    restrictedAccessRequest = v5->_restrictedAccessRequest;
    v5->_restrictedAccessRequest = v41;

    v43 = objc_opt_self();
    v44 = [v4 decodeObjectOfClass:v43 forKey:@"storeAuthenticationRequest"];
    storeAuthenticationRequest = v5->_storeAuthenticationRequest;
    v5->_storeAuthenticationRequest = v44;

    v46 = objc_opt_self();
    v47 = [v4 decodeObjectOfClass:v46 forKey:@"tvProviderRequest"];
    tvProviderRequest = v5->_tvProviderRequest;
    v5->_tvProviderRequest = v47;

    v49 = objc_opt_self();
    v50 = [v4 decodeObjectOfClass:v49 forKey:@"learnMoreRequest"];
    learnMoreRequest = v5->_learnMoreRequest;
    v5->_learnMoreRequest = v50;

    v52 = objc_opt_self();
    v53 = [v4 decodeObjectOfClass:v52 forKey:@"dedicatedCameraRequest"];
    dedicatedCameraRequest = v5->_dedicatedCameraRequest;
    v5->_dedicatedCameraRequest = v53;

    v55 = objc_opt_self();
    v56 = [v4 decodeObjectOfClass:v55 forKey:@"unrecognizedUserRequest"];
    unrecognizedUserRequest = v5->_unrecognizedUserRequest;
    v5->_unrecognizedUserRequest = v56;

    v58 = objc_opt_self();
    v59 = [v4 decodeObjectOfClass:v58 forKey:@"ambientSetupRequest"];
    ambientSetupRequest = v5->_ambientSetupRequest;
    v5->_ambientSetupRequest = v59;

    v61 = objc_opt_self();
    v62 = [v4 decodeObjectOfClass:v61 forKey:@"incomingCallsRequest"];
    incomingCallsRequest = v5->_incomingCallsRequest;
    v5->_incomingCallsRequest = v62;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_delegatePurchaseRequest forKey:@"delegatePurchaseRequest"];
  [v5 encodeObject:self->_paymentRequest forKey:@"paymentRequest"];
  [v5 encodeObject:self->_paymentContext forKey:@"paymentContext"];
  [v5 encodeObject:self->_storeAccount forKey:@"storeAccount"];
  [v5 encodeObject:self->_systemAuthenticationRequest forKey:@"systemAuthenticationRequest"];
  [v5 encodeObject:self->_webAuthenticationRequest forKey:@"webAuthenticationRequest"];
  [v5 encodeObject:self->_proxiedAppDomains forKey:@"proxiedAppDomains"];
  [v5 encodeObject:self->_sharingData forKey:@"sharingData"];
  [v5 encodeObject:self->_restrictedAccessRequest forKey:@"restrictedAccessRequest"];
  [v5 encodeObject:self->_storeAuthenticationRequest forKey:@"storeAuthenticationRequest"];
  [v5 encodeObject:self->_tvProviderRequest forKey:@"tvProviderRequest"];
  [v5 encodeObject:self->_learnMoreRequest forKey:@"learnMoreRequest"];
  [v5 encodeObject:self->_dedicatedCameraRequest forKey:@"dedicatedCameraRequest"];
  [v5 encodeObject:self->_unrecognizedUserRequest forKey:@"unrecognizedUserRequest"];
  [v5 encodeObject:self->_ambientSetupRequest forKey:@"ambientSetupRequest"];
  [v5 encodeObject:self->_incomingCallsRequest forKey:@"incomingCallsRequest"];
}

@end