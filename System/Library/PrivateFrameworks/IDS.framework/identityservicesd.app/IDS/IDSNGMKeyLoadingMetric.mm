@interface IDSNGMKeyLoadingMetric
- (IDSNGMKeyLoadingMetric)initWithErrorContainer:(id)container missingIdentity:(BOOL)identity missingPrekey:(BOOL)prekey;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSNGMKeyLoadingMetric

- (IDSNGMKeyLoadingMetric)initWithErrorContainer:(id)container missingIdentity:(BOOL)identity missingPrekey:(BOOL)prekey
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = IDSNGMKeyLoadingMetric;
  v10 = [(IDSNGMKeyLoadingMetric *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_errorContainer, container);
    v11->_missingIdentity = identity;
    v11->_missingPrekey = prekey;
  }

  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  errorContainer = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  registeredKeychainError = [errorContainer registeredKeychainError];
  if (!registeredKeychainError)
  {
LABEL_14:

    goto LABEL_15;
  }

  v6 = registeredKeychainError;
  errorContainer2 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveRegisteredIdentity = [errorContainer2 shouldHaveRegisteredIdentity];
  if (!shouldHaveRegisteredIdentity)
  {

LABEL_6:
    errorContainer3 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    registeredKeychainError2 = [errorContainer3 registeredKeychainError];
    errorContainer = [registeredKeychainError2 domain];

    errorContainer4 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    registeredKeychainError3 = [errorContainer4 registeredKeychainError];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [registeredKeychainError3 code]);

    errorContainer5 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    registeredKeychainError4 = [errorContainer5 registeredKeychainError];
    userInfo = [registeredKeychainError4 userInfo];

    v21 = [userInfo objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
    if ([errorContainer isEqualToString:@"IDSKeychainWrapperErrorDomain"] && v21)
    {
      v22 = v21;

      v17 = v22;
    }

    if (errorContainer)
    {
      CFDictionarySetValue(v3, @"RegisteredKeychainErrorDomain", errorContainer);
    }

    if (v17)
    {
      CFDictionarySetValue(v3, @"RegisteredKeychainErrorCode", v17);
    }

    goto LABEL_14;
  }

  v9 = shouldHaveRegisteredIdentity;
  errorContainer6 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveRegisteredIdentity2 = [errorContainer6 shouldHaveRegisteredIdentity];
  bOOLValue = [shouldHaveRegisteredIdentity2 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_6;
  }

LABEL_15:
  errorContainer7 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  unregisteredKeychainError = [errorContainer7 unregisteredKeychainError];
  if (!unregisteredKeychainError)
  {
LABEL_28:

    goto LABEL_29;
  }

  v25 = unregisteredKeychainError;
  errorContainer8 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveUnregisteredIdentity = [errorContainer8 shouldHaveUnregisteredIdentity];
  if (!shouldHaveUnregisteredIdentity)
  {

LABEL_20:
    errorContainer9 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    unregisteredKeychainError2 = [errorContainer9 unregisteredKeychainError];
    errorContainer7 = [unregisteredKeychainError2 domain];

    errorContainer10 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    unregisteredKeychainError3 = [errorContainer10 unregisteredKeychainError];
    v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [unregisteredKeychainError3 code]);

    errorContainer11 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    unregisteredKeychainError4 = [errorContainer11 unregisteredKeychainError];
    userInfo2 = [unregisteredKeychainError4 userInfo];

    v40 = [userInfo2 objectForKey:@"IDSKeychainWrapperErrorOSStatus"];
    if ([errorContainer7 isEqualToString:@"IDSKeychainWrapperErrorDomain"] && v40)
    {
      v41 = v40;

      v36 = v41;
    }

    if (errorContainer7)
    {
      CFDictionarySetValue(v3, @"UnregisteredKeychainErrorDomain", errorContainer7);
    }

    if (v36)
    {
      CFDictionarySetValue(v3, @"UnregisteredKeychainErrorCode", v36);
    }

    goto LABEL_28;
  }

  v28 = shouldHaveUnregisteredIdentity;
  errorContainer12 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveUnregisteredIdentity2 = [errorContainer12 shouldHaveUnregisteredIdentity];
  bOOLValue2 = [shouldHaveUnregisteredIdentity2 BOOLValue];

  if (bOOLValue2)
  {
    goto LABEL_20;
  }

LABEL_29:
  errorContainer13 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  registeredDeserializationError = [errorContainer13 registeredDeserializationError];

  if (registeredDeserializationError)
  {
    errorContainer14 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    registeredDeserializationError2 = [errorContainer14 registeredDeserializationError];
    domain = [registeredDeserializationError2 domain];

    if (domain)
    {
      CFDictionarySetValue(v3, @"RegisteredDeserializationErrorDomain", domain);
    }

    errorContainer15 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    registeredDeserializationError3 = [errorContainer15 registeredDeserializationError];
    v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [registeredDeserializationError3 code]);

    if (v49)
    {
      CFDictionarySetValue(v3, @"RegisteredDeserializationErrorCode", v49);
    }
  }

  errorContainer16 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  unregisteredDeserializationError = [errorContainer16 unregisteredDeserializationError];

  if (unregisteredDeserializationError)
  {
    errorContainer17 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    unregisteredDeserializationError2 = [errorContainer17 unregisteredDeserializationError];
    domain2 = [unregisteredDeserializationError2 domain];

    if (domain2)
    {
      CFDictionarySetValue(v3, @"UnregisteredDeserializationErrorDomain", domain2);
    }

    errorContainer18 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    unregisteredDeserializationError3 = [errorContainer18 unregisteredDeserializationError];
    v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [unregisteredDeserializationError3 code]);

    if (v57)
    {
      CFDictionarySetValue(v3, @"UnregisteredDeserializationErrorCode", v57);
    }
  }

  errorContainer19 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  generationError = [errorContainer19 generationError];

  if (generationError)
  {
    errorContainer20 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    generationError2 = [errorContainer20 generationError];
    domain3 = [generationError2 domain];

    if (domain3)
    {
      CFDictionarySetValue(v3, @"GenerationErrorDomain", domain3);
    }

    errorContainer21 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    generationError3 = [errorContainer21 generationError];
    v65 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [generationError3 code]);

    if (v65)
    {
      CFDictionarySetValue(v3, @"GenerationErrorCode", v65);
    }
  }

  errorContainer22 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  rollingError = [errorContainer22 rollingError];

  if (rollingError)
  {
    errorContainer23 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    rollingError2 = [errorContainer23 rollingError];
    domain4 = [rollingError2 domain];

    if (domain4)
    {
      CFDictionarySetValue(v3, @"RollingErrorDomain", domain4);
    }

    errorContainer24 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    rollingError3 = [errorContainer24 rollingError];
    v73 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rollingError3 code]);

    if (v73)
    {
      CFDictionarySetValue(v3, @"RollingErrorCode", v73);
    }
  }

  errorContainer25 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  identityToRegisterError = [errorContainer25 identityToRegisterError];

  if (identityToRegisterError)
  {
    errorContainer26 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    identityToRegisterError2 = [errorContainer26 identityToRegisterError];
    domain5 = [identityToRegisterError2 domain];

    if (domain5)
    {
      CFDictionarySetValue(v3, @"IdentityToRegisterErrorDomain", domain5);
    }

    errorContainer27 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
    identityToRegisterError3 = [errorContainer27 identityToRegisterError];
    v81 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identityToRegisterError3 code]);

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

  errorContainer28 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveRegisteredIdentity3 = [errorContainer28 shouldHaveRegisteredIdentity];

  if (shouldHaveRegisteredIdentity3)
  {
    CFDictionarySetValue(v3, @"ShouldHaveRegisteredIdentity", shouldHaveRegisteredIdentity3);
  }

  errorContainer29 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  shouldHaveUnregisteredIdentity3 = [errorContainer29 shouldHaveUnregisteredIdentity];

  if (shouldHaveUnregisteredIdentity3)
  {
    CFDictionarySetValue(v3, @"ShouldHaveUnregisteredIdentity", shouldHaveUnregisteredIdentity3);
  }

  errorContainer30 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v89 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [errorContainer30 hasRegisteredContainer]);

  if (v89)
  {
    CFDictionarySetValue(v3, @"HasRegisteredIdentity", v89);
  }

  errorContainer31 = [(IDSNGMKeyLoadingMetric *)self errorContainer];
  v91 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [errorContainer31 hasUnregisteredContainer]);

  if (v91)
  {
    CFDictionarySetValue(v3, @"HasUnregisteredIdentity", v91);
  }

  return v3;
}

@end