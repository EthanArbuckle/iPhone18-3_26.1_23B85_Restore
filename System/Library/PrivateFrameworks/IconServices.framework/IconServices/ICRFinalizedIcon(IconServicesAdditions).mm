@interface ICRFinalizedIcon(IconServicesAdditions)
- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions;
@end

@implementation ICRFinalizedIcon(IconServicesAdditions)

- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  if ([v4 appearanceVariant] == 4)
  {
    cUINamedImageDeviceClass = [v4 CUINamedImageDeviceClass];
    v6 = objc_opt_new();
    v7 = [self renderedLegacyCompatibleIconWithConfiguration:v6 forDeviceClass:cUINamedImageDeviceClass maskToIconShape:1];
  }

  else if ([v4 background] == 1)
  {
    v6 = objc_opt_new();
    v7 = [self renderedSystemGlassCompatibleIconWithConfiguration:v6];
  }

  else if ([v4 shouldApplyMask])
  {
    v6 = objc_opt_new();
    encapsulationShape = [v4 encapsulationShape];

    if (encapsulationShape)
    {
      encapsulationShape2 = [v4 encapsulationShape];
      [v6 setEncapsulationShape:encapsulationShape2];
    }

    v7 = [self renderedIconWithConfiguration:v6];
  }

  else
  {
    v10 = [v4 background] != 2;
    v6 = objc_opt_new();
    v7 = [self renderedFullBleedIconWithConfiguration:v6 excludeChicletSpecularHighlights:v10];
  }

  v11 = v7;

  if (v11)
  {
    cacheFinalizedIconOnGeneratedImage = [v4 cacheFinalizedIconOnGeneratedImage];
    v13 = objc_alloc(MEMORY[0x1E69A8988]);
    [v4 scale];
    if (cacheFinalizedIconOnGeneratedImage)
    {
      v14 = [v13 initWithCGImage:v11 scale:self finalizedIcon:?];
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