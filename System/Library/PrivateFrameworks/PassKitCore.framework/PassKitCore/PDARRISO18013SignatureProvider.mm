@interface PDARRISO18013SignatureProvider
- (PDARRISO18013SignatureProvider)initWithISO18013Manager:(id)a3;
- (id)associatedRequirementsForRequirement:(id)a3 context:(id)a4;
- (void)existingKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5;
- (void)generateKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5;
- (void)isRegisteredForRequirement:(id)a3 context:(id)a4 completion:(id)a5;
@end

@implementation PDARRISO18013SignatureProvider

- (PDARRISO18013SignatureProvider)initWithISO18013Manager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PDARRISO18013SignatureProvider;
  v6 = [(PDARRISO18013SignatureProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_isoManager, a3);
  }

  return v7;
}

- (void)generateKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 pass];
  [v11 devicePaymentApplications];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v33 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      if (PKPaymentCredentialTypeSupportsMdoc([v17 paymentNetworkIdentifier]))
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = [v17 subcredentials];
    v19 = [v18 anyObject];
    v20 = [v19 identifier];

    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
  }

  v20 = [v9 previouslyGeneratedSignatureKeyOfType:12];
  v21 = [v20 contents];
  v22 = [v21 firstObject];
  v23 = [v22 keyReferenceIdentifier];

  if (v23)
  {

    v20 = v23;
LABEL_13:
    v24 = [v11 cardType];
    if (!v24)
    {
      if ([v9 isPerformingInitialRegistration])
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }
    }

    isoManager = self->_isoManager;
    v26 = [v8 numberOfKeys];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001383AC;
    v28[3] = &unk_100848270;
    v29 = v10;
    [(PDISO18013Manager *)isoManager generatePresentmentKeyForCardType:v24 numberOfKeys:v26 subCredentialId:v20 completion:v28];
    v27 = v29;
  }

  else
  {
    v27 = PDBasicError();
    (*(v10 + 2))(v10, 0, 0, v27);
  }
}

- (void)isRegisteredForRequirement:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 pass];
  [v10 devicePaymentApplications];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v30 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      if (PKPaymentCredentialTypeSupportsMdoc([v16 paymentNetworkIdentifier]))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = [v16 subcredentials];
    v18 = [v17 anyObject];
    v19 = [v18 identifier];

    if (!v19)
    {
      goto LABEL_15;
    }

    if ([v10 passActivationState])
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Pass is not in active state, skipping key refresh", buf, 2u);
      }

      v9[2](v9, 1);
    }

    else
    {
      isoManager = self->_isoManager;
      v23 = [v8 numberOfKeys];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100138920;
      v24[3] = &unk_10083C7F8;
      v25 = v9;
      [(PDISO18013Manager *)isoManager needsPresentmentKeyRefreshForPass:v10 numberOfKeys:v23 subCredentialId:v19 completion:v24];
    }
  }

  else
  {
LABEL_9:

LABEL_15:
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Pass does not have subcredential", buf, 2u);
    }

    v9[2](v9, 1);
  }
}

- (void)existingKeyMaterialForRequirement:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isPerformingInitialRegistration])
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100138B00;
    v11[3] = &unk_100848298;
    v12 = v10;
    [(PDARRISO18013SignatureProvider *)self isRegisteredForRequirement:v8 context:v9 completion:v11];
  }
}

- (id)associatedRequirementsForRequirement:(id)a3 context:(id)a4
{
  v4 = [a4 isPerformingInitialRegistration];
  v5 = [PDAuxiliaryRegistrationRequirementReference alloc];
  if (v4)
  {
    v6 = [(PDAuxiliaryRegistrationRequirementReference *)v5 initWithSignatureType:12];
    v11[0] = v6;
    v7 = [[PDAuxiliaryRegistrationRequirementReference alloc] initWithSignatureType:11];
    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
  }

  else
  {
    v6 = [(PDAuxiliaryRegistrationRequirementReference *)v5 initWithDecryptionType:1];
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  return v8;
}

@end