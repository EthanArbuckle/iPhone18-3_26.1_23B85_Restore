@interface ICRFinalizedIcon(IconServicesAdditions)
- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions;
@end

@implementation ICRFinalizedIcon(IconServicesAdditions)

- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  if ([v4 appearanceVariant] == 4)
  {
    v5 = [v4 CUINamedImageDeviceClass];
    v6 = objc_opt_new();
    v7 = [a1 renderedLegacyCompatibleIconWithConfiguration:v6 forDeviceClass:v5 maskToIconShape:1];
  }

  else if ([v4 background] == 1)
  {
    v6 = objc_opt_new();
    v7 = [a1 renderedSystemGlassCompatibleIconWithConfiguration:v6];
  }

  else if ([v4 shouldApplyMask])
  {
    v6 = objc_opt_new();
    v8 = [v4 encapsulationShape];

    if (v8)
    {
      v9 = [v4 encapsulationShape];
      [v6 setEncapsulationShape:v9];
    }

    v7 = [a1 renderedIconWithConfiguration:v6];
  }

  else
  {
    v10 = [v4 background] != 2;
    v6 = objc_opt_new();
    v7 = [a1 renderedFullBleedIconWithConfiguration:v6 excludeChicletSpecularHighlights:v10];
  }

  v11 = v7;

  if (v11)
  {
    v12 = [v4 cacheFinalizedIconOnGeneratedImage];
    v13 = objc_alloc(MEMORY[0x1E69A8988]);
    [v4 scale];
    if (v12)
    {
      v14 = [v13 initWithCGImage:v11 scale:a1 finalizedIcon:?];
    }

    else
    {
      v14 = [v13 initWithCGImage:v11 scale:?];
    }

    v16 = v14;
  }

  else
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICRFinalizedIcon(IconServicesAdditions) _IS_imageWithCompositingDescriptor:v15];
    }

    v16 = 0;
  }

  return v16;
}

@end