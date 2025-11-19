@interface ISRecipeInfo
+ (id)appRecipeForPlatform:(unint64_t)a3 descriptor:(id)a4 preferRichRecipe:(BOOL)a5;
+ (id)documentRecipeForPlatform:(unint64_t)a3 descriptor:(id)a4;
+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)a3;
@end

@implementation ISRecipeInfo

+ (id)appRecipeForPlatform:(unint64_t)a3 descriptor:(id)a4 preferRichRecipe:(BOOL)a5
{
  v7 = a4;
  if (!a5)
  {
    v8 = +[ISDefaults sharedInstance];
    v9 = [v8 iconStackAppIconsAllowed];

    if (v9)
    {
      goto LABEL_12;
    }
  }

  if (a3 <= 7)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v12 = ISiOSMacAppRecipe;
        goto LABEL_13;
      }

      if (a3 == 4)
      {
        v10 = objc_opt_new();
        [(ISrOSAppRecipe *)v10 updateRecipeWithImageDescriptor:v7];
        goto LABEL_18;
      }
    }

LABEL_12:
    v12 = ISGenericRecipe;
LABEL_13:
    v10 = objc_alloc_init(v12);
    goto LABEL_18;
  }

  if (a3 == 8)
  {
    v11 = ISwatchOSAppRecipe;
LABEL_15:
    v10 = objc_alloc_init(v11);
    -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [v7 shouldApplyMask]);
    goto LABEL_18;
  }

  if (a3 != 16)
  {
    if (a3 != 32)
    {
      goto LABEL_12;
    }

    v11 = IStvOSAppRecipe;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(ISrOSAppRecipe);
  -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [v7 shouldApplyMask]);
  -[ISrOSAppRecipe setTemplateVariant:](v10, "setTemplateVariant:", [v7 templateVariant]);
LABEL_18:

  return v10;
}

+ (id)documentRecipeForPlatform:(unint64_t)a3 descriptor:(id)a4
{
  v5 = objc_alloc_init(ISDocumentRecipe);
  [(ISDocumentRecipe *)v5 setPlatform:a3];

  return v5;
}

+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)a3
{
  v3 = objc_alloc_init(ISGenericRecipe);

  return v3;
}

+ (void)appRecipeForPlatformStyle:(uint64_t)a1 descriptor:(NSObject *)a2 resourcePlatform:preferRichRecipe:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Unknown platform style: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end