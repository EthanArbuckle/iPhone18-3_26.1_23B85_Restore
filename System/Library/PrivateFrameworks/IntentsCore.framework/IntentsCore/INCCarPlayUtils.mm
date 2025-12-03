@interface INCCarPlayUtils
+ (BOOL)appIsSupportedInCarPlayWithBundleId:(id)id hasPayload:(BOOL)payload;
@end

@implementation INCCarPlayUtils

+ (BOOL)appIsSupportedInCarPlayWithBundleId:(id)id hasPayload:(BOOL)payload
{
  payloadCopy = payload;
  idCopy = id;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v6 = getGEOCountryConfigurationClass_softClass;
  v29 = getGEOCountryConfigurationClass_softClass;
  if (!getGEOCountryConfigurationClass_softClass)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getGEOCountryConfigurationClass_block_invoke;
    v24 = &unk_2797E8190;
    v25 = &v26;
    __getGEOCountryConfigurationClass_block_invoke(&v21);
    v6 = v27[3];
  }

  v7 = v6;
  _Block_object_dispose(&v26, 8);
  sharedConfiguration = [v6 sharedConfiguration];
  if (sharedConfiguration)
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:idCopy];
    appState = [v9 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v12 = getCRCarPlayAppPolicyEvaluatorClass_softClass;
      v29 = getCRCarPlayAppPolicyEvaluatorClass_softClass;
      if (!getCRCarPlayAppPolicyEvaluatorClass_softClass)
      {
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __getCRCarPlayAppPolicyEvaluatorClass_block_invoke;
        v24 = &unk_2797E8190;
        v25 = &v26;
        __getCRCarPlayAppPolicyEvaluatorClass_block_invoke(&v21);
        v12 = v27[3];
      }

      v13 = v12;
      _Block_object_dispose(&v26, 8);
      v14 = objc_alloc_init(v12);
      [v14 setGeoSupported:{objc_msgSend(sharedConfiguration, "currentCountrySupportsCarIntegration")}];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v15 = getCRCarPlayAppDeclarationClass_softClass;
      v29 = getCRCarPlayAppDeclarationClass_softClass;
      if (!getCRCarPlayAppDeclarationClass_softClass)
      {
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __getCRCarPlayAppDeclarationClass_block_invoke;
        v24 = &unk_2797E8190;
        v25 = &v26;
        __getCRCarPlayAppDeclarationClass_block_invoke(&v21);
        v15 = v27[3];
      }

      v16 = v15;
      _Block_object_dispose(&v26, 8);
      v17 = [v15 declarationForAppProxy:v9];
      v18 = [v14 effectivePolicyForAppDeclaration:v17];
      isCarPlaySupported = [v18 isCarPlaySupported];
      if (payloadCopy)
      {
        isCarPlaySupported = [v18 canDisplayOnCarScreen];
      }

      LOBYTE(isInstalled) = isCarPlaySupported;
    }
  }

  else
  {
    LOBYTE(isInstalled) = 0;
  }

  return isInstalled;
}

@end