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
  v3 = [a1 faceImage];
  v4 = [v3 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-faceImage"];
  [a1 setFaceImage:v4];

  v5 = [a1 faceShadowImage];
  v6 = [v5 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-faceShadowImage"];
  [a1 setFaceShadowImage:v6];

  v7 = [a1 footerImage];
  v8 = [v7 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-footerImage"];
  [a1 setFooterImage:v8];

  v9 = [a1 dynamicLayerStaticFallbackImage];
  v10 = [v9 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-dynamicLayerStaticFallbackImage"];
  [a1 setDynamicLayerStaticFallbackImage:v10];

  v11 = [a1 backgroundParallaxEmitterImage];
  v12 = [v11 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxEmitterImage"];
  [a1 setBackgroundParallaxEmitterImage:v12];

  v13 = [a1 backgroundParallaxImage];
  v14 = [v13 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxImage"];
  [a1 setBackgroundParallaxImage:v14];

  v15 = [a1 backgroundParallaxCrossDissolveImage];
  v16 = [v15 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-backgroundParallaxCrossDissolveImage"];
  [a1 setBackgroundParallaxCrossDissolveImage:v16];

  v17 = [a1 neutralEmitterImage];
  v18 = [v17 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-neutralEmitterImage"];
  [a1 setNeutralEmitterImage:v18];

  v19 = [a1 neutralImage];
  v20 = [v19 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-neutralImage"];
  [a1 setNeutralImage:v20];

  v21 = [a1 foregroundParallaxEmitterImage];
  v22 = [v21 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxEmitterImage"];
  [a1 setForegroundParallaxEmitterImage:v22];

  v23 = [a1 foregroundParallaxImage];
  v24 = [v23 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxImage"];
  [a1 setForegroundParallaxImage:v24];

  v25 = [a1 foregroundParallaxCrossDissolveImage];
  v26 = [v25 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-foregroundParallaxCrossDissolveImage"];
  [a1 setForegroundParallaxCrossDissolveImage:v26];

  v27 = [a1 staticOverlayEmitterImage];
  v28 = [v27 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-staticOverlayEmitterImage"];
  [a1 setStaticOverlayEmitterImage:v28];

  v29 = [a1 staticOverlayImage];
  v30 = [v29 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-staticOverlayImage"];
  [a1 setStaticOverlayImage:v30];

  v31 = [a1 transactionEffectEmitterImage];
  v32 = [v31 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkFrontFaceImage-transactionEffectEmitterImage"];
  [a1 setTransactionEffectEmitterImage:v32];

  objc_autoreleasePoolPop(v2);
}

+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit forPass:
{
  v6 = [a1 _bundleForPass:a4];
  v7 = [a1 isDrawnUsingAssetOptions:a3 fromBundle:v6];

  return v7;
}

+ (uint64_t)isDrawnUsingAssetOptions:()NanoPassKit fromBundle:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a1 _assetNamesForAssetOption:a3];
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

        if (![a1 _containsAssetForImageName:*(*(&v15 + 1) + 8 * v11) fromBundle:{v6, v15}])
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