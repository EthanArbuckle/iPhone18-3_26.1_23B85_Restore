@interface PDARRISO18013SignatureProvider
- (PDARRISO18013SignatureProvider)initWithISO18013Manager:(id)manager;
- (id)associatedRequirementsForRequirement:(id)requirement context:(id)context;
- (void)existingKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion;
- (void)generateKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion;
- (void)isRegisteredForRequirement:(id)requirement context:(id)context completion:(id)completion;
@end

@implementation PDARRISO18013SignatureProvider

- (PDARRISO18013SignatureProvider)initWithISO18013Manager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PDARRISO18013SignatureProvider;
  v6 = [(PDARRISO18013SignatureProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_isoManager, manager);
  }

  return v7;
}

- (void)generateKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion
{
  requirementCopy = requirement;
  contextCopy = context;
  completionCopy = completion;
  pass = [contextCopy pass];
  [pass devicePaymentApplications];
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

    subcredentials = [v17 subcredentials];
    anyObject = [subcredentials anyObject];
    identifier = [anyObject identifier];

    if (identifier)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
  }

  identifier = [contextCopy previouslyGeneratedSignatureKeyOfType:12];
  contents = [identifier contents];
  firstObject = [contents firstObject];
  keyReferenceIdentifier = [firstObject keyReferenceIdentifier];

  if (keyReferenceIdentifier)
  {

    identifier = keyReferenceIdentifier;
LABEL_13:
    cardType = [pass cardType];
    if (!cardType)
    {
      if ([contextCopy isPerformingInitialRegistration])
      {
        cardType = 4;
      }

      else
      {
        cardType = 0;
      }
    }

    isoManager = self->_isoManager;
    numberOfKeys = [requirementCopy numberOfKeys];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001383AC;
    v28[3] = &unk_100848270;
    v29 = completionCopy;
    [(PDISO18013Manager *)isoManager generatePresentmentKeyForCardType:cardType numberOfKeys:numberOfKeys subCredentialId:identifier completion:v28];
    v27 = v29;
  }

  else
  {
    v27 = PDBasicError();
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
  }
}

- (void)isRegisteredForRequirement:(id)requirement context:(id)context completion:(id)completion
{
  requirementCopy = requirement;
  completionCopy = completion;
  pass = [context pass];
  [pass devicePaymentApplications];
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

    subcredentials = [v16 subcredentials];
    anyObject = [subcredentials anyObject];
    identifier = [anyObject identifier];

    if (!identifier)
    {
      goto LABEL_15;
    }

    if ([pass passActivationState])
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Pass is not in active state, skipping key refresh", buf, 2u);
      }

      completionCopy[2](completionCopy, 1);
    }

    else
    {
      isoManager = self->_isoManager;
      numberOfKeys = [requirementCopy numberOfKeys];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100138920;
      v24[3] = &unk_10083C7F8;
      v25 = completionCopy;
      [(PDISO18013Manager *)isoManager needsPresentmentKeyRefreshForPass:pass numberOfKeys:numberOfKeys subCredentialId:identifier completion:v24];
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

    completionCopy[2](completionCopy, 1);
  }
}

- (void)existingKeyMaterialForRequirement:(id)requirement context:(id)context completion:(id)completion
{
  requirementCopy = requirement;
  contextCopy = context;
  completionCopy = completion;
  if ([contextCopy isPerformingInitialRegistration])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100138B00;
    v11[3] = &unk_100848298;
    v12 = completionCopy;
    [(PDARRISO18013SignatureProvider *)self isRegisteredForRequirement:requirementCopy context:contextCopy completion:v11];
  }
}

- (id)associatedRequirementsForRequirement:(id)requirement context:(id)context
{
  isPerformingInitialRegistration = [context isPerformingInitialRegistration];
  v5 = [PDAuxiliaryRegistrationRequirementReference alloc];
  if (isPerformingInitialRegistration)
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