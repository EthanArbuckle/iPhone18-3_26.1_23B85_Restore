@interface PBUIMaterialCompositor
- (PBUIMaterialCompositor)init;
- (id)applyEffect:(id)effect toImage:(id)image error:(id *)error;
@end

@implementation PBUIMaterialCompositor

- (PBUIMaterialCompositor)init
{
  v7.receiver = self;
  v7.super_class = PBUIMaterialCompositor;
  v2 = [(PBUIMaterialCompositor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_downsampleFactor = 8.0;
    remoteRendererIfPossible = [getPUICARemoteRendererClass() remoteRendererIfPossible];
    renderer = v3->_renderer;
    v3->_renderer = remoteRendererIfPossible;
  }

  return v3;
}

- (id)applyEffect:(id)effect toImage:(id)image error:(id *)error
{
  effectCopy = effect;
  imageCopy = image;
  if (!effectCopy)
  {
    goto LABEL_10;
  }

  v10 = 0;
  downsampleFactor = self->_downsampleFactor;
  v12 = effectCopy[11];
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v13 = @"homeScreenLegibility";
        v10 = PBUIHomeScreenLegibilityMaterialRecipeBundle();
        v23 = MEMORY[0x223D62EE0](PBUIHomeScreenLegibilityMaterialRecipeScaleAdjustment);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_10:
    v13 = soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle(1);
    v10 = 0;
    downsampleFactor = 1.0;
    goto LABEL_11;
  }

  if (v12 == 1)
  {
LABEL_9:
    v13 = soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle(effectCopy[3]);
    v10 = 0;
LABEL_11:
    v23 = &__block_literal_global_12;
    goto LABEL_13;
  }

LABEL_12:
  v13 = 0;
  v23 = &__block_literal_global_12;
LABEL_13:
  v14 = [objc_alloc(getPUIMaterialTreatmentClass()) initWithRecipeName:v13 fromBundle:v10];
  v15 = [objc_alloc(getPUICodableImageClass()) initWithUIImage:imageCopy error:0];
  v16 = [objc_alloc(getPUITreatImageRequestClass()) initWithImage:v15 downscaleFactor:v14 treatment:downsampleFactor];
  v17 = [(PUIRenderer *)self->_renderer renderRequest:v16 error:error];
  v18 = MEMORY[0x277D755B8];
  [imageCopy scale];
  v20 = [v18 pbui_imageWithIOSurface:v17 scale:objc_msgSend(imageCopy orientation:{"imageOrientation"), v19}];
  v21 = [v20 pbui_CGImageBackedImageWithMaximumBitsPerComponent:8 skipCIF10FitsInSRGBCheck:1];

  return v21;
}

@end