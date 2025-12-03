@interface PKSEConsistencyCheckResultCollector
- (NSArray)requestedActions;
- (NSDictionary)resultsSummary;
- (PKSEConsistencyCheckResultCollector)init;
- (void)addCleanupActions:(int64_t)actions;
- (void)addCleanupActions:(int64_t)actions cleanupReason:(id)reason forDeviceCredential:(id)credential passCredential:(id)passCredential;
@end

@implementation PKSEConsistencyCheckResultCollector

- (PKSEConsistencyCheckResultCollector)init
{
  v8.receiver = self;
  v8.super_class = PKSEConsistencyCheckResultCollector;
  v2 = [(PKSEConsistencyCheckResultCollector *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestedActions = v2->_requestedActions;
    v2->_requestedActions = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultSummary = v2->_resultSummary;
    v2->_resultSummary = v5;

    v2->_addCleanupActionsToResultsSummary = 1;
    v2->_sendCleanupReasons = os_variant_has_internal_ui();
  }

  return v2;
}

- (void)addCleanupActions:(int64_t)actions cleanupReason:(id)reason forDeviceCredential:(id)credential passCredential:(id)passCredential
{
  reasonCopy = reason;
  credentialCopy = credential;
  passCredentialCopy = passCredential;
  [(PKSEConsistencyCheckResultCollector *)self addCleanupActions:actions];
  if (actions && credentialCopy)
  {
    v12 = [PKSEConsistencyCheckRequestedAction alloc];
    address = [passCredentialCopy address];
    v14 = [(PKSEConsistencyCheckRequestedAction *)v12 initWithActions:actions deviceCredential:credentialCopy address:address];

    [(NSMutableArray *)self->_requestedActions addObject:v14];
  }

  if (self->_addCleanupActionsToResultsSummary)
  {
    if (passCredentialCopy)
    {
      type = [passCredentialCopy type];
      if (!credentialCopy || !type)
      {
        if (!type)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    else if (!credentialCopy)
    {
      goto LABEL_12;
    }

    if (![credentialCopy type])
    {
LABEL_14:
      v24 = credentialCopy;
      v17 = reasonCopy;
      paymentApplication = [passCredentialCopy paymentApplication];
      applicationIdentifier = [paymentApplication applicationIdentifier];
      if (applicationIdentifier)
      {
        appletIdentifier = applicationIdentifier;
      }

      else
      {
        address2 = [v24 address];
        appletIdentifier = [address2 appletIdentifier];

        if (!appletIdentifier)
        {
LABEL_71:

          goto LABEL_72;
        }
      }

      v20 = [(NSMutableDictionary *)self->_resultSummary objectForKey:appletIdentifier];
      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(NSMutableDictionary *)self->_resultSummary setObject:v20 forKey:appletIdentifier];
      }

      if (actions)
      {
        [v20 objectForKeyedSubscript:@"cleanupAction"];
        v45 = v73 = appletIdentifier;
        v46 = v20;
        integerValue = [v45 integerValue];

        v48 = integerValue | actions;
        v20 = v46;
        v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
        [v46 setObject:v49 forKeyedSubscript:@"cleanupAction"];

        appletIdentifier = v73;
      }

      if (paymentApplication)
      {
        v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(paymentApplication, "state")}];
        [v20 setObject:v50 forKeyedSubscript:@"passState"];
      }

      if (v24 && ![v24 type])
      {
        underlyingCredentialState = [v24 underlyingCredentialState];
        [v20 setObject:underlyingCredentialState forKeyedSubscript:@"appletState"];
      }

      if (actions && self->_sendCleanupReasons)
      {
        [v20 setObject:v17 forKeyedSubscript:@"appletCleanupReason"];
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_12:
    address3 = [passCredentialCopy address];
    v17 = passCredentialCopy;
    paymentApplication = credentialCopy;
    appletIdentifier = reasonCopy;
    v20 = address3;
    subcredential = [v17 subcredential];
    address4 = [paymentApplication address];
    appletIdentifier2 = [address4 appletIdentifier];
    if (appletIdentifier2)
    {
      appletIdentifier3 = appletIdentifier2;
    }

    else
    {
      appletIdentifier3 = [v20 appletIdentifier];

      if (!appletIdentifier3)
      {
LABEL_69:

        v24 = v20;
        goto LABEL_70;
      }
    }

    v26 = [(NSMutableDictionary *)self->_resultSummary objectForKey:appletIdentifier3];
    if (!v26)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_resultSummary setObject:v26 forKey:appletIdentifier3];
    }

    v68 = appletIdentifier3;
    v72 = appletIdentifier;
    v27 = [v26 objectForKey:@"subkeys"];
    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v26 setObject:v27 forKey:@"subkeys"];
    }

    v67 = v26;
    address5 = [paymentApplication address];
    subcredentialIdentifier = [address5 subcredentialIdentifier];
    v30 = subcredentialIdentifier;
    v69 = v20;
    if (subcredentialIdentifier)
    {
      subcredentialIdentifier2 = subcredentialIdentifier;
    }

    else
    {
      subcredentialIdentifier2 = [v20 subcredentialIdentifier];
    }

    v32 = subcredentialIdentifier2;

    v70 = v32;
    v33 = [v27 objectForKey:v32];
    if (!v33)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v27 setObject:v33 forKey:v70];
    }

    v71 = v17;
    if (actions)
    {
      v34 = [v33 objectForKeyedSubscript:@"cleanupAction"];
      integerValue2 = [v34 integerValue];

      v36 = integerValue2 | actions;
      v17 = v71;
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
      [v33 setObject:v37 forKeyedSubscript:@"cleanupAction"];
    }

    v38 = subcredential;
    if (subcredential)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(subcredential, "state")}];
      [v33 setObject:v39 forKeyedSubscript:@"passState"];
    }

    if (!paymentApplication)
    {
LABEL_63:
      credentialType = [v38 credentialType];
      if (credentialType)
      {
        v63 = credentialType;
        appletIdentifier = v72;
        v64 = 0x1E696A000;
      }

      else
      {
        credentialType2 = [paymentApplication credentialType];
        appletIdentifier = v72;
        v64 = 0x1E696A000uLL;
        if (!credentialType2)
        {
LABEL_68:

          v20 = v69;
          goto LABEL_69;
        }

        v63 = credentialType2;
      }

      v66 = [*(v64 + 3480) numberWithInteger:v63];
      [v33 setObject:v66 forKeyedSubscript:@"credentialType"];

      goto LABEL_68;
    }

    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    underlyingCredentialState2 = [paymentApplication underlyingCredentialState];
    [v40 setObject:underlyingCredentialState2 forKeyedSubscript:@"keyState"];

    type2 = [paymentApplication type];
    v43 = type2;
    if (type2 == 2)
    {
      underlyingCredentialState3 = [paymentApplication underlyingCredentialState];
      [v33 setObject:underlyingCredentialState3 forKeyedSubscript:@"isoKeyState"];

      if (!actions || !self->_sendCleanupReasons)
      {
        goto LABEL_55;
      }

      v53 = @"isoCleanupReason";
    }

    else
    {
      if (type2 != 1)
      {
        if (!type2)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKSecureElementConsistencyChecker: tried to add an applet device credential to a subcredential state. Credential: %@", paymentApplication}];
        }

        goto LABEL_55;
      }

      underlyingCredentialState4 = [paymentApplication underlyingCredentialState];
      [v33 setObject:underlyingCredentialState4 forKeyedSubscript:@"keyState"];

      if (!actions || !self->_sendCleanupReasons)
      {
LABEL_55:
        if (actions && self->_sendCleanupReasons)
        {
          [v40 setObject:v72 forKeyedSubscript:@"cleanupReason"];
        }

        keyMaterialHashForDeviceCredentialType = [v71 keyMaterialHashForDeviceCredentialType];
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
        v57 = [keyMaterialHashForDeviceCredentialType objectForKeyedSubscript:v56];

        keyMaterialHash = [paymentApplication keyMaterialHash];
        if (v57 | keyMaterialHash)
        {
          v59 = [v57 base64EncodedStringWithOptions:0];
          [v40 setObject:v59 forKeyedSubscript:@"passPayloadMaterialHash"];

          v60 = [keyMaterialHash base64EncodedStringWithOptions:0];
          [v40 setObject:v60 forKeyedSubscript:@"devicePayloadMaterialHash"];
        }

        if ([v40 count])
        {
          v61 = PKSEConsistencyCheckDeviceCredentialTypeToString(v43);
          [v33 setObject:v40 forKeyedSubscript:v61];
        }

        v17 = v71;
        v38 = subcredential;
        goto LABEL_63;
      }

      v53 = @"subcredentialCleanupReason";
    }

    [v33 setObject:v72 forKeyedSubscript:v53];
    goto LABEL_55;
  }

LABEL_72:
}

- (void)addCleanupActions:(int64_t)actions
{
  if (self->_addCleanupActionsToResultsSummary)
  {
    actionsCopy = actions;
  }

  else
  {
    actionsCopy = actions & 0xFFFFFFFFFFFFFFFELL;
  }

  self->_cleanupActions |= actionsCopy;
}

- (NSDictionary)resultsSummary
{
  v2 = [(NSMutableDictionary *)self->_resultSummary copy];

  return v2;
}

- (NSArray)requestedActions
{
  v2 = [(NSMutableArray *)self->_requestedActions copy];

  return v2;
}

@end