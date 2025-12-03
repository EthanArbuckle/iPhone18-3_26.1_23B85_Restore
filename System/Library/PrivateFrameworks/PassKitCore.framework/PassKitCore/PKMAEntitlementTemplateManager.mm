@interface PKMAEntitlementTemplateManager
- (PKMAEntitlementTemplateManager)init;
- (id)_templatesFromAssetBundle:(id)bundle;
- (id)cachedEntitlementTemplates;
- (void)entitlementTemplates:(id)templates;
@end

@implementation PKMAEntitlementTemplateManager

- (PKMAEntitlementTemplateManager)init
{
  v6.receiver = self;
  v6.super_class = PKMAEntitlementTemplateManager;
  v2 = [(PKMAEntitlementTemplateManager *)&v6 init];
  if (v2)
  {
    v3 = +[PKMobileAssetManager sharedInstance];
    mobileAssetManager = v2->_mobileAssetManager;
    v2->_mobileAssetManager = v3;
  }

  return v2;
}

- (id)cachedEntitlementTemplates
{
  v3 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedDynamicAssetWithIdentifier:@"EntitlementTemplates.General" parameters:0];
  v4 = [(PKMAEntitlementTemplateManager *)self _templatesFromAssetBundle:v3];

  return v4;
}

- (void)entitlementTemplates:(id)templates
{
  templatesCopy = templates;
  mobileAssetManager = self->_mobileAssetManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKMAEntitlementTemplateManager_entitlementTemplates___block_invoke;
  v7[3] = &unk_1E79C84E0;
  v7[4] = self;
  v8 = templatesCopy;
  v6 = templatesCopy;
  [(PKMobileAssetManager *)mobileAssetManager dynamicAssetWithIdentifier:@"EntitlementTemplates.General" parameters:0 timeout:20 completion:v7];
}

void __55__PKMAEntitlementTemplateManager_entitlementTemplates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get entitlement templates: %@", &v11, 0xCu);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v7);
    }
  }

  else if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) _templatesFromAssetBundle:v5];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_templatesFromAssetBundle:(id)bundle
{
  v57 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v4 = bundleCopy;
  if (bundleCopy)
  {
    v5 = [bundleCopy URLsForResourcesWithExtension:@"json" subdirectory:0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v8)
    {
      goto LABEL_33;
    }

    v9 = v8;
    v10 = *v48;
    v11 = 0x1E695D000uLL;
    v12 = 0x1E695D000uLL;
    v34 = *v48;
    v35 = v7;
    while (1)
    {
      v13 = 0;
      v36 = v9;
      do
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v40 = v13;
        v14 = [objc_alloc(*(v11 + 3824)) initWithContentsOfURL:*(*(&v47 + 1) + 8 * v13)];
        if (v14)
        {
          v46 = 0;
          v39 = v14;
          v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v46];
          v16 = v46;
          v38 = v16;
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v37 = v15;
            v18 = v15;
            v20 = [v18 countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v43;
              do
              {
                v23 = 0;
                v41 = v21;
                do
                {
                  if (*v43 != v22)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v24 = *(*(&v42 + 1) + 8 * v23);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v25 = v18;
                    v26 = v24;
                    v27 = [v26 PKStringForKey:@"entitlementTemplateType"];
                    v28 = [v6 objectForKeyedSubscript:v27];

                    if (v28)
                    {
                      v29 = PKLogFacilityTypeGetObject(0x22uLL);
                      if (os_log_type_enabled(&v29->super, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v52 = v27;
                        v53 = 2112;
                        v54 = v26;
                        _os_log_impl(&dword_1AD337000, &v29->super, OS_LOG_TYPE_DEFAULT, "PKMAEntitlementTemplateManager: Warning: Template with type %@ already exists. Skipping: %@", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v29 = [[PKPassEntitlementTemplate alloc] initWithDictionary:v26 bundle:v4];
                      [v26 objectForKeyedSubscript:@"entitlementTemplateType"];
                      v30 = v12;
                      v32 = v31 = v4;
                      [v6 setValue:v29 forKey:v32];

                      v4 = v31;
                      v12 = v30;
                    }

                    v18 = v25;
                    v21 = v41;
                  }

                  ++v23;
                }

                while (v21 != v23);
                v21 = [v18 countByEnumeratingWithState:&v42 objects:v55 count:16];
              }

              while (v21);
              v10 = v34;
              v7 = v35;
              v11 = 0x1E695D000;
            }

            v9 = v36;
            v15 = v37;
          }

          else
          {
            v18 = PKLogFacilityTypeGetObject(0x22uLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v19 = v38;
              v52 = v38;
              _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKMAEntitlementTemplateManager: Failed to serialize template. %@", buf, 0xCu);
LABEL_30:

              v14 = v39;
              goto LABEL_31;
            }
          }

          v19 = v38;
          goto LABEL_30;
        }

LABEL_31:

        v13 = v40 + 1;
      }

      while (v40 + 1 != v9);
      v9 = [v7 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (!v9)
      {
LABEL_33:

        goto LABEL_35;
      }
    }
  }

  v6 = 0;
LABEL_35:

  return v6;
}

@end