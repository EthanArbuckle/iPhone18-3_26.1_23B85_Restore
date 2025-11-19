@interface INCCarPlayUtils
+ (BOOL)appIsSupportedInCarPlayWithBundleId:(id)a3 hasPayload:(BOOL)a4;
@end

@implementation INCCarPlayUtils

+ (BOOL)appIsSupportedInCarPlayWithBundleId:(id)a3 hasPayload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
  v8 = [v6 sharedConfiguration];
  if (v8)
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5];
    v10 = [v9 appState];
    v11 = [v10 isInstalled];

    if (v11)
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
      [v14 setGeoSupported:{objc_msgSend(v8, "currentCountrySupportsCarIntegration")}];
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
      v19 = [v18 isCarPlaySupported];
      if (v4)
      {
        v19 = [v18 canDisplayOnCarScreen];
      }

      LOBYTE(v11) = v19;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end