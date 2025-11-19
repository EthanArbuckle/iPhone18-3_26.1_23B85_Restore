@interface IDSNGMKeyLoadingMetric
- (IDSNGMKeyLoadingMetric)initWithErrorContainer:(id)a3 missingIdentity:(BOOL)a4 missingPrekey:(BOOL)a5;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSNGMKeyLoadingMetric

- (IDSNGMKeyLoadingMetric)initWithErrorContainer:(id)a3 missingIdentity:(BOOL)a4 missingPrekey:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = IDSNGMKeyLoadingMetric;
  v10 = [(IDSNGMKeyLoadingMetric *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_errorContainer, a3);
    v11->_missingIdentity = a4;
    v11->_missingPrekey = a5;
  }

  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v5 = [v4 registeredKeychainError];
  if (!v5)
  {
LABEL_14:

    goto LABEL_15;
  }

  v6 = v5;
  v7 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v8 = [v7 shouldHaveRegisteredIdentity];
  if (!v8)
  {

LABEL_6:
    v13 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v14 = [v13 registeredKeychainError];
    v4 = [v14 domain];

    v15 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v16 = [v15 registeredKeychainError];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 code]);

    v18 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v19 = [v18 registeredKeychainError];
    v20 = [v19 userInfo];

    v21 = [v20 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
    if ([v4 isEqualToString:@"IDSKeychainWrapperErrorDomain"] && v21)
    {
      v22 = v21;

      v17 = v22;
    }

    if (v4)
    {
      CFDictionarySetValue(v3, @"RegisteredKeychainErrorDomain", v4);
    }

    if (v17)
    {
      CFDictionarySetValue(v3, @"RegisteredKeychainErrorCode", v17);
    }

    goto LABEL_14;
  }

  v9 = v8;
  v10 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v11 = [v10 shouldHaveRegisteredIdentity];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    goto LABEL_6;
  }

LABEL_15:
  v23 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v24 = [v23 unregisteredKeychainError];
  if (!v24)
  {
LABEL_28:

    goto LABEL_29;
  }

  v25 = v24;
  v26 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v27 = [v26 shouldHaveUnregisteredIdentity];
  if (!v27)
  {

LABEL_20:
    v32 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v33 = [v32 unregisteredKeychainError];
    v23 = [v33 domain];

    v34 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v35 = [v34 unregisteredKeychainError];
    v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v35 code]);

    v37 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v38 = [v37 unregisteredKeychainError];
    v39 = [v38 userInfo];

    v40 = [v39 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
    if ([v23 isEqualToString:@"IDSKeychainWrapperErrorDomain"] && v40)
    {
      v41 = v40;

      v36 = v41;
    }

    if (v23)
    {
      CFDictionarySetValue(v3, @"UnregisteredKeychainErrorDomain", v23);
    }

    if (v36)
    {
      CFDictionarySetValue(v3, @"UnregisteredKeychainErrorCode", v36);
    }

    goto LABEL_28;
  }

  v28 = v27;
  v29 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v30 = [v29 shouldHaveUnregisteredIdentity];
  v31 = [v30 BOOLValue];

  if (v31)
  {
    goto LABEL_20;
  }

LABEL_29:
  v42 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v43 = [v42 registeredDeserializationError];

  if (v43)
  {
    v44 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v45 = [v44 registeredDeserializationError];
    v46 = [v45 domain];

    if (v46)
    {
      CFDictionarySetValue(v3, @"RegisteredDeserializationErrorDomain", v46);
    }

    v47 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v48 = [v47 registeredDeserializationError];
    v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v48 code]);

    if (v49)
    {
      CFDictionarySetValue(v3, @"RegisteredDeserializationErrorCode", v49);
    }
  }

  v50 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v51 = [v50 unregisteredDeserializationError];

  if (v51)
  {
    v52 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v53 = [v52 unregisteredDeserializationError];
    v54 = [v53 domain];

    if (v54)
    {
      CFDictionarySetValue(v3, @"UnregisteredDeserializationErrorDomain", v54);
    }

    v55 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v56 = [v55 unregisteredDeserializationError];
    v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v56 code]);

    if (v57)
    {
      CFDictionarySetValue(v3, @"UnregisteredDeserializationErrorCode", v57);
    }
  }

  v58 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v59 = [v58 generationError];

  if (v59)
  {
    v60 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v61 = [v60 generationError];
    v62 = [v61 domain];

    if (v62)
    {
      CFDictionarySetValue(v3, @"GenerationErrorDomain", v62);
    }

    v63 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v64 = [v63 generationError];
    v65 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v64 code]);

    if (v65)
    {
      CFDictionarySetValue(v3, @"GenerationErrorCode", v65);
    }
  }

  v66 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v67 = [v66 rollingError];

  if (v67)
  {
    v68 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v69 = [v68 rollingError];
    v70 = [v69 domain];

    if (v70)
    {
      CFDictionarySetValue(v3, @"RollingErrorDomain", v70);
    }

    v71 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v72 = [v71 rollingError];
    v73 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v72 code]);

    if (v73)
    {
      CFDictionarySetValue(v3, @"RollingErrorCode", v73);
    }
  }

  v74 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v75 = [v74 identityToRegisterError];

  if (v75)
  {
    v76 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v77 = [v76 identityToRegisterError];
    v78 = [v77 domain];

    if (v78)
    {
      CFDictionarySetValue(v3, @"IdentityToRegisterErrorDomain", v78);
    }

    v79 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    v80 = [v79 identityToRegisterError];
    v81 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v80 code]);

    if (v81)
    {
      CFDictionarySetValue(v3, @"IdentityToRegisterErrorCode", v81);
    }
  }

  v82 = [NSNumber numberWithBool:[(IDSNGMKeyLoadingMetric *)self missingPrekey]];
  if (v82)
  {
    CFDictionarySetValue(v3, @"NGMMissingPrekey", v82);
  }

  v83 = [NSNumber numberWithBool:[(IDSNGMKeyLoadingMetric *)self missingIdentity]];
  if (v83)
  {
    CFDictionarySetValue(v3, @"NGMMissingIdentity", v83);
  }

  v84 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v85 = [v84 shouldHaveRegisteredIdentity];

  if (v85)
  {
    CFDictionarySetValue(v3, @"ShouldHaveRegisteredIdentity", v85);
  }

  v86 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v87 = [v86 shouldHaveUnregisteredIdentity];

  if (v87)
  {
    CFDictionarySetValue(v3, @"ShouldHaveUnregisteredIdentity", v87);
  }

  v88 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v89 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v88 hasRegisteredContainer]);

  if (v89)
  {
    CFDictionarySetValue(v3, @"HasRegisteredIdentity", v89);
  }

  v90 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v91 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v90 hasUnregisteredContainer]);

  if (v91)
  {
    CFDictionarySetValue(v3, @"HasUnregisteredIdentity", v91);
  }

  return v3;
}

@end