@interface IFImage(ISPlaceholderImage)
+ (NSObject)_placeholderImageWithImageDescriptor:()ISPlaceholderImage markAsPlaceholder:fallbackTypeID:referenceIcon:;
+ (id)_applyTreatmentsAndCacheResultForResource:()ISPlaceholderImage fallbackTypeID:descriptor:description:;
+ (id)_debugPlaceholderImageWithImageDescriptor:()ISPlaceholderImage markAsPlaceholder:fallbackTypeID:referenceIcon:;
@end

@implementation IFImage(ISPlaceholderImage)

+ (id)_applyTreatmentsAndCacheResultForResource:()ISPlaceholderImage fallbackTypeID:descriptor:description:
{
  v42[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v10];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 conformsToType:*MEMORY[0x1E6982CA8]];
  v15 = MEMORY[0x1E696AEC0];
  digest = [v11 digest];
  uUIDString = [digest UUIDString];
  [v11 size];
  v19 = v18;
  [v11 size];
  v21 = v20;
  [v11 scale];
  v23 = [v15 stringWithFormat:@"%@_%@, %.1f, %.1f, %.f, %d", v12, uUIDString, v19, v21, v22, v14];

  v24 = +[ISStaticResources sharedInstance];
  v25 = [v24 _findStaticImageWithKey:v23];

  if (!v25)
  {
    v26 = [ISRecipeFactory factoryWithDescriptor:v11];
    genericTaggedRecipe = [v26 genericTaggedRecipe];

    if (objc_opt_respondsToSelector())
    {
      suggestedRecipe = [v9 suggestedRecipe];
      v29 = suggestedRecipe;
      if (suggestedRecipe)
      {
        v30 = suggestedRecipe;

        genericTaggedRecipe = v30;
      }
    }

    v31 = objc_alloc_init(ISCompositor);
    if ([v11 shape] == 5 || objc_msgSend(v11, "shape") == 6)
    {
      [(ISCompositor *)v31 setRenderingMode:2];
    }

    v41 = @"kISPrimaryResourceKey";
    v42[0] = v9;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [(ISCompositor *)v31 addElementWithRecipe:genericTaggedRecipe resources:v32];

    [v11 size];
    v34 = v33;
    v36 = v35;
    [v11 scale];
    v25 = [(ISCompositor *)v31 imageForSize:v34 scale:v36, v37];
    if (v25)
    {
      v38 = +[ISStaticResources sharedInstance];
      [v38 _addStaticImage:v25 withKey:v23];
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (NSObject)_placeholderImageWithImageDescriptor:()ISPlaceholderImage markAsPlaceholder:fallbackTypeID:referenceIcon:
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[ISStaticResources sharedInstance];
  v14 = [v13 fallbackResourceForHint:v11 descriptor:v10 referenceObj:v12];

  if (!v14)
  {
    v16 = _ISDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [IFImage(ISPlaceholderImage) _placeholderImageWithImageDescriptor:v11 markAsPlaceholder:v16 fallbackTypeID:? referenceIcon:?];
    }

    goto LABEL_12;
  }

  v15 = [self _applyTreatmentsAndCacheResultForResource:v14 fallbackTypeID:v11 descriptor:v10 description:@"placeholder"];
  v16 = v15;
  if (!v15 || ![v15 CGImage])
  {
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v21 = 138413058;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      _os_log_fault_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_FAULT, "Failed to create placeholder image. Image: %@. Fallback type: %@. Descriptor: %@. Icon: %@", &v21, 0x2Au);
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    v17 = [objc_alloc(MEMORY[0x1E69A89A0]) initWithImage:v16];

    v16 = v17;
  }

  [v16 setValidationFlags:[v16 validationFlags]| 2];
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_debugPlaceholderImageWithImageDescriptor:()ISPlaceholderImage markAsPlaceholder:fallbackTypeID:referenceIcon:
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[ISStaticResources sharedInstance];
  debugGenericAppIconResource = [v13 debugGenericAppIconResource];

  if (debugGenericAppIconResource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [debugGenericAppIconResource setAppearance:{objc_msgSend(v10, "appearance")}];
    }

    v15 = [self _applyTreatmentsAndCacheResultForResource:debugGenericAppIconResource fallbackTypeID:v11 descriptor:v10 description:@"debug_placeholder"];
    v16 = v15;
    if (v15 && [v15 CGImage])
    {
      if (a4)
      {
        v17 = [objc_alloc(MEMORY[0x1E69A89A0]) initWithImage:v16];

        v16 = v17;
      }

      [v16 setValidationFlags:{objc_msgSend(v16, "validationFlags") | 2}];
      v18 = v16;
    }

    else
    {
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v23 = 138413058;
        v24 = v16;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v12;
        _os_log_fault_impl(&dword_1A77B8000, v19, OS_LOG_TYPE_FAULT, "Failed to create debug placeholder image. Image: %@. Fallback type: %@. Descriptor: %@. Icon: %@", &v23, 0x2Au);
      }

      v18 = [self _placeholderImageWithImageDescriptor:v10 markAsPlaceholder:a4 fallbackTypeID:v11 referenceIcon:v12];
    }
  }

  else
  {
    v20 = _ISDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [IFImage(ISPlaceholderImage) _debugPlaceholderImageWithImageDescriptor:v20 markAsPlaceholder:? fallbackTypeID:? referenceIcon:?];
    }

    v18 = [self _placeholderImageWithImageDescriptor:v10 markAsPlaceholder:a4 fallbackTypeID:v11 referenceIcon:v12];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)_placeholderImageWithImageDescriptor:()ISPlaceholderImage markAsPlaceholder:fallbackTypeID:referenceIcon:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to create placeholder resource. Fallback type: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end