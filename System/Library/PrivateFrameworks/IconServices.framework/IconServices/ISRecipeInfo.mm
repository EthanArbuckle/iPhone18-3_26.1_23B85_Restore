@interface ISRecipeInfo
+ (id)appRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor preferRichRecipe:(BOOL)recipe;
+ (id)documentRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor;
+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)attributes;
@end

@implementation ISRecipeInfo

+ (id)appRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor preferRichRecipe:(BOOL)recipe
{
  descriptorCopy = descriptor;
  if (!recipe)
  {
    v8 = +[ISDefaults sharedInstance];
    iconStackAppIconsAllowed = [v8 iconStackAppIconsAllowed];

    if (iconStackAppIconsAllowed)
    {
      goto LABEL_12;
    }
  }

  if (platform <= 7)
  {
    if (platform != 1)
    {
      if (platform == 2)
      {
        v12 = ISiOSMacAppRecipe;
        goto LABEL_13;
      }

      if (platform == 4)
      {
        v10 = objc_opt_new();
        [(ISrOSAppRecipe *)v10 updateRecipeWithImageDescriptor:descriptorCopy];
        goto LABEL_18;
      }
    }

LABEL_12:
    v12 = ISGenericRecipe;
LABEL_13:
    v10 = objc_alloc_init(v12);
    goto LABEL_18;
  }

  if (platform == 8)
  {
    v11 = ISwatchOSAppRecipe;
LABEL_15:
    v10 = objc_alloc_init(v11);
    -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [descriptorCopy shouldApplyMask]);
    goto LABEL_18;
  }

  if (platform != 16)
  {
    if (platform != 32)
    {
      goto LABEL_12;
    }

    v11 = IStvOSAppRecipe;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(ISrOSAppRecipe);
  -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [descriptorCopy shouldApplyMask]);
  -[ISrOSAppRecipe setTemplateVariant:](v10, "setTemplateVariant:", [descriptorCopy templateVariant]);
LABEL_18:

  return v10;
}

+ (id)documentRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor
{
  v5 = objc_alloc_init(ISDocumentRecipe);
  [(ISDocumentRecipe *)v5 setPlatform:platform];

  return v5;
}

+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)attributes
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