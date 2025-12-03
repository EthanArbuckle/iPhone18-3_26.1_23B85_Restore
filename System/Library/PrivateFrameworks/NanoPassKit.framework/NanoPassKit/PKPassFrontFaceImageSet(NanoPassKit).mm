@interface PKPassFrontFaceImageSet(NanoPassKit)
+ (BOOL)_containsAssetForImageName:()NanoPassKit fromBundle:;
+ (id)_assetNamesForAssetOption:()NanoPassKit;
+ (id)_bundleForPass:()NanoPassKit;
+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit forPass:;
+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit fromBundle:;
- (void)memoryMapImageData;
@end

@implementation PKPassFrontFaceImageSet(NanoPassKit)

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  faceImage = [self faceImage];
  v4 = [faceImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-faceImage"];
  [self setFaceImage:v4];

  faceShadowImage = [self faceShadowImage];
  v6 = [faceShadowImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-faceShadowImage"];
  [self setFaceShadowImage:v6];

  footerImage = [self footerImage];
  v8 = [footerImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-footerImage"];
  [self setFooterImage:v8];

  dynamicLayerStaticFallbackImage = [self dynamicLayerStaticFallbackImage];
  v10 = [dynamicLayerStaticFallbackImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-dynamicLayerStaticFallbackImage"];
  [self setDynamicLayerStaticFallbackImage:v10];

  backgroundParallaxEmitterImage = [self backgroundParallaxEmitterImage];
  v12 = [backgroundParallaxEmitterImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxEmitterImage"];
  [self setBackgroundParallaxEmitterImage:v12];

  backgroundParallaxImage = [self backgroundParallaxImage];
  v14 = [backgroundParallaxImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxImage"];
  [self setBackgroundParallaxImage:v14];

  backgroundParallaxCrossDissolveImage = [self backgroundParallaxCrossDissolveImage];
  v16 = [backgroundParallaxCrossDissolveImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxCrossDissolveImage"];
  [self setBackgroundParallaxCrossDissolveImage:v16];

  neutralEmitterImage = [self neutralEmitterImage];
  v18 = [neutralEmitterImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-neutralEmitterImage"];
  [self setNeutralEmitterImage:v18];

  neutralImage = [self neutralImage];
  v20 = [neutralImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-neutralImage"];
  [self setNeutralImage:v20];

  foregroundParallaxEmitterImage = [self foregroundParallaxEmitterImage];
  v22 = [foregroundParallaxEmitterImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxEmitterImage"];
  [self setForegroundParallaxEmitterImage:v22];

  foregroundParallaxImage = [self foregroundParallaxImage];
  v24 = [foregroundParallaxImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxImage"];
  [self setForegroundParallaxImage:v24];

  foregroundParallaxCrossDissolveImage = [self foregroundParallaxCrossDissolveImage];
  v26 = [foregroundParallaxCrossDissolveImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxCrossDissolveImage"];
  [self setForegroundParallaxCrossDissolveImage:v26];

  staticOverlayEmitterImage = [self staticOverlayEmitterImage];
  v28 = [staticOverlayEmitterImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-staticOverlayEmitterImage"];
  [self setStaticOverlayEmitterImage:v28];

  staticOverlayImage = [self staticOverlayImage];
  v30 = [staticOverlayImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-staticOverlayImage"];
  [self setStaticOverlayImage:v30];

  transactionEffectEmitterImage = [self transactionEffectEmitterImage];
  v32 = [transactionEffectEmitterImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-transactionEffectEmitterImage"];
  [self setTransactionEffectEmitterImage:v32];

  objc_autoreleasePoolPop(v2);
}

+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit forPass:
{
  v6 = [self _bundleForPass:a4];
  v7 = [self isDrawnUsingAssetOptions:a3 fromBundle:v6];

  return v7;
}

+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit fromBundle:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [self _assetNamesForAssetOption:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![self _containsAssetForImageName:*(*(&v15 + 1) + 8 * v11) fromBundle:{v6, v15}])
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_bundleForPass:()NanoPassKit
{
  if (a3)
  {
    v3 = NPKURLForPass(a3);
    v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_containsAssetForImageName:()NanoPassKit fromBundle:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 URLForResource:v5 withExtension:@"pdf"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277D37F10] URLForImageNamed:v5 inBundle:v6 scale:0];
  }

  v10 = v9;

  return v10 != 0;
}

+ (id)_assetNamesForAssetOption:()NanoPassKit
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (a3)
  {
    [v4 addObject:*MEMORY[0x277D38670]];
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:*MEMORY[0x277D38680]];
  if ((a3 & 4) != 0)
  {
LABEL_4:
    [v5 addObject:*MEMORY[0x277D38668]];
  }

LABEL_5:
  v6 = [v5 copy];

  return v6;
}

@end