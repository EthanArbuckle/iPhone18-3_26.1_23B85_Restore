@interface CUINamedIconLayerStack(IconServicesAdditions)
- (id)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions;
- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions;
- (id)_IS_imageWithSize:()IconServicesAdditions scale:platform:appearance:appearanceVariant:tintColor:isLegacy:background:;
@end

@implementation CUINamedIconLayerStack(IconServicesAdditions)

- (id)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  cUINamedImageDeviceClass = [v4 CUINamedImageDeviceClass];
  iCRAppearance = [v4 ICRAppearance];
  iCRRenderingMode = [v4 ICRRenderingMode];
  [v4 scale];
  *&v8 = v8;
  v9 = llroundf(*&v8);
  v10 = _ISDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CUINamedIconLayerStack(IconServicesAdditions) *)self _IS_finalizedIconWithCompositingDescriptor:v4, v10];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 size];
    v13 = [self finalizedIconWithSize:v9 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:objc_msgSend(v4 layoutDirection:"languageDirection") isLegacyContent:{objc_msgSend(v4, "useLegacyCompatibilityMode"), v11, v12}];
  }

  else
  {
    useLegacyCompatibilityMode = [v4 useLegacyCompatibilityMode];
    [v4 size];
    if (useLegacyCompatibilityMode)
    {
      [self legacyFinalizedIconWithSize:v9 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:?];
    }

    else
    {
      [self finalizedIconWithSize:v9 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:?];
    }
    v13 = ;
  }

  v15 = v13;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v17 = _ISDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CUINamedIconLayerStack(IconServicesAdditions) _IS_finalizedIconWithCompositingDescriptor:v17];
    }
  }

  return v15;
}

- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  v5 = [self _IS_finalizedIconWithCompositingDescriptor:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _IS_imageWithCompositingDescriptor:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_IS_imageWithSize:()IconServicesAdditions scale:platform:appearance:appearanceVariant:tintColor:isLegacy:background:
{
  v19 = a9;
  v20 = objc_alloc_init(ISCompositingDescriptor);
  [(ISCompositingDescriptor *)v20 setSize:a2, a3];
  [(ISCompositingDescriptor *)v20 setScale:a5];
  [(ISCompositingDescriptor *)v20 setPlatform:a6];
  [(ISCompositingDescriptor *)v20 setAppearance:a7];
  [(ISCompositingDescriptor *)v20 setAppearanceVariant:a8];
  [(ISCompositingDescriptor *)v20 setTintColor:v19];

  [(ISCompositingDescriptor *)v20 setUseLegacyCompatibilityMode:a10];
  [(ISCompositingDescriptor *)v20 setBackground:a11];
  v21 = [self _IS_imageWithCompositingDescriptor:v20];

  return v21;
}

- (void)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions .cold.1(void *a1, void *a2, NSObject *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v20 = [a1 layers];
  [a2 size];
  v6 = v5;
  [a2 size];
  v8 = v7;
  [a2 scale];
  v10 = v9;
  v11 = [a2 platform];
  v12 = [a2 appearance];
  v13 = [a2 appearanceVariant];
  v14 = [a2 tintColor];
  v15 = [v14 ciColor];
  v16 = [v15 stringRepresentation];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"no_colour";
  }

  *buf = 138414594;
  v23 = a1;
  v24 = 2112;
  v25 = v20;
  v26 = 2048;
  v27 = v6;
  v28 = 2048;
  v29 = v8;
  v30 = 2048;
  v31 = v10;
  v32 = 2048;
  v33 = v11;
  v34 = 2048;
  v35 = v12;
  v36 = 2048;
  v37 = v13;
  v38 = 2112;
  v39 = v18;
  v40 = 1024;
  v41 = [a2 useLegacyCompatibilityMode];

  v19 = *MEMORY[0x1E69E9840];
}

@end