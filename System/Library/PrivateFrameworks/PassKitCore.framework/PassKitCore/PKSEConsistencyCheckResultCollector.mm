@interface PKSEConsistencyCheckResultCollector
- (NSArray)requestedActions;
- (NSDictionary)resultsSummary;
- (PKSEConsistencyCheckResultCollector)init;
- (void)addCleanupActions:(int64_t)a3;
- (void)addCleanupActions:(int64_t)a3 cleanupReason:(id)a4 forDeviceCredential:(id)a5 passCredential:(id)a6;
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

- (void)addCleanupActions:(int64_t)a3 cleanupReason:(id)a4 forDeviceCredential:(id)a5 passCredential:(id)a6
{
  v75 = a4;
  v10 = a5;
  v11 = a6;
  [(PKSEConsistencyCheckResultCollector *)self addCleanupActions:a3];
  if (a3 && v10)
  {
    v12 = [PKSEConsistencyCheckRequestedAction alloc];
    v13 = [v11 address];
    v14 = [(PKSEConsistencyCheckRequestedAction *)v12 initWithActions:a3 deviceCredential:v10 address:v13];

    [(NSMutableArray *)self->_requestedActions addObject:v14];
  }

  if (self->_addCleanupActionsToResultsSummary)
  {
    if (v11)
    {
      v15 = [v11 type];
      if (!v10 || !v15)
      {
        if (!v15)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    else if (!v10)
    {
      goto LABEL_12;
    }

    if (![v10 type])
    {
LABEL_14:
      v24 = v10;
      v17 = v75;
      v18 = [v11 paymentApplication];
      v25 = [v18 applicationIdentifier];
      if (v25)
      {
        v19 = v25;
      }

      else
      {
        v44 = [v24 address];
        v19 = [v44 appletIdentifier];

        if (!v19)
        {
LABEL_71:

          goto LABEL_72;
        }
      }

      v20 = [(NSMutableDictionary *)self->_resultSummary objectForKey:v19];
      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(NSMutableDictionary *)self->_resultSummary setObject:v20 forKey:v19];
      }

      if (a3)
      {
        [v20 objectForKeyedSubscript:@"cleanupAction"];
        v45 = v73 = v19;
        v46 = v20;
        v47 = [v45 integerValue];

        v48 = v47 | a3;
        v20 = v46;
        v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
        [v46 setObject:v49 forKeyedSubscript:@"cleanupAction"];

        v19 = v73;
      }

      if (v18)
      {
        v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "state")}];
        [v20 setObject:v50 forKeyedSubscript:@"passState"];
      }

      if (v24 && ![v24 type])
      {
        v51 = [v24 underlyingCredentialState];
        [v20 setObject:v51 forKeyedSubscript:@"appletState"];
      }

      if (a3 && self->_sendCleanupReasons)
      {
        [v20 setObject:v17 forKeyedSubscript:@"appletCleanupReason"];
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_12:
    v16 = [v11 address];
    v17 = v11;
    v18 = v10;
    v19 = v75;
    v20 = v16;
    v74 = [v17 subcredential];
    v21 = [v18 address];
    v22 = [v21 appletIdentifier];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = [v20 appletIdentifier];

      if (!v23)
      {
LABEL_69:

        v24 = v20;
        goto LABEL_70;
      }
    }

    v26 = [(NSMutableDictionary *)self->_resultSummary objectForKey:v23];
    if (!v26)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_resultSummary setObject:v26 forKey:v23];
    }

    v68 = v23;
    v72 = v19;
    v27 = [v26 objectForKey:@"subkeys"];
    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v26 setObject:v27 forKey:@"subkeys"];
    }

    v67 = v26;
    v28 = [v18 address];
    v29 = [v28 subcredentialIdentifier];
    v30 = v29;
    v69 = v20;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [v20 subcredentialIdentifier];
    }

    v32 = v31;

    v70 = v32;
    v33 = [v27 objectForKey:v32];
    if (!v33)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v27 setObject:v33 forKey:v70];
    }

    v71 = v17;
    if (a3)
    {
      v34 = [v33 objectForKeyedSubscript:@"cleanupAction"];
      v35 = [v34 integerValue];

      v36 = v35 | a3;
      v17 = v71;
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
      [v33 setObject:v37 forKeyedSubscript:@"cleanupAction"];
    }

    v38 = v74;
    if (v74)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v74, "state")}];
      [v33 setObject:v39 forKeyedSubscript:@"passState"];
    }

    if (!v18)
    {
LABEL_63:
      v62 = [v38 credentialType];
      if (v62)
      {
        v63 = v62;
        v19 = v72;
        v64 = 0x1E696A000;
      }

      else
      {
        v65 = [v18 credentialType];
        v19 = v72;
        v64 = 0x1E696A000uLL;
        if (!v65)
        {
LABEL_68:

          v20 = v69;
          goto LABEL_69;
        }

        v63 = v65;
      }

      v66 = [*(v64 + 3480) numberWithInteger:v63];
      [v33 setObject:v66 forKeyedSubscript:@"credentialType"];

      goto LABEL_68;
    }

    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = [v18 underlyingCredentialState];
    [v40 setObject:v41 forKeyedSubscript:@"keyState"];

    v42 = [v18 type];
    v43 = v42;
    if (v42 == 2)
    {
      v54 = [v18 underlyingCredentialState];
      [v33 setObject:v54 forKeyedSubscript:@"isoKeyState"];

      if (!a3 || !self->_sendCleanupReasons)
      {
        goto LABEL_55;
      }

      v53 = @"isoCleanupReason";
    }

    else
    {
      if (v42 != 1)
      {
        if (!v42)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKSecureElementConsistencyChecker: tried to add an applet device credential to a subcredential state. Credential: %@", v18}];
        }

        goto LABEL_55;
      }

      v52 = [v18 underlyingCredentialState];
      [v33 setObject:v52 forKeyedSubscript:@"keyState"];

      if (!a3 || !self->_sendCleanupReasons)
      {
LABEL_55:
        if (a3 && self->_sendCleanupReasons)
        {
          [v40 setObject:v72 forKeyedSubscript:@"cleanupReason"];
        }

        v55 = [v71 keyMaterialHashForDeviceCredentialType];
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
        v57 = [v55 objectForKeyedSubscript:v56];

        v58 = [v18 keyMaterialHash];
        if (v57 | v58)
        {
          v59 = [v57 base64EncodedStringWithOptions:0];
          [v40 setObject:v59 forKeyedSubscript:@"passPayloadMaterialHash"];

          v60 = [v58 base64EncodedStringWithOptions:0];
          [v40 setObject:v60 forKeyedSubscript:@"devicePayloadMaterialHash"];
        }

        if ([v40 count])
        {
          v61 = PKSEConsistencyCheckDeviceCredentialTypeToString(v43);
          [v33 setObject:v40 forKeyedSubscript:v61];
        }

        v17 = v71;
        v38 = v74;
        goto LABEL_63;
      }

      v53 = @"subcredentialCleanupReason";
    }

    [v33 setObject:v72 forKeyedSubscript:v53];
    goto LABEL_55;
  }

LABEL_72:
}

- (void)addCleanupActions:(int64_t)a3
{
  if (self->_addCleanupActionsToResultsSummary)
  {
    v3 = a3;
  }

  else
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFFELL;
  }

  self->_cleanupActions |= v3;
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