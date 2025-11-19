@interface PKPassLiveRenderedImageSet(NanoPassKit)
- (void)memoryMapImageData;
@end

@implementation PKPassLiveRenderedImageSet(NanoPassKit)

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 diffuseMaterialPropertyImage];
  v4 = [v3 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-diffuseMaterialPropertyImage"];
  [a1 setDiffuseMaterialPropertyImage:v4];

  v5 = [a1 ambientMaterialPropertyImage];
  v6 = [v5 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-ambientMaterialPropertyImage"];
  [a1 setAmbientMaterialPropertyImage:v6];

  v7 = [a1 specularMaterialPropertyImage];
  v8 = [v7 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-specularMaterialPropertyImage"];
  [a1 setSpecularMaterialPropertyImage:v8];

  v9 = [a1 normalMaterialPropertyImage];
  v10 = [v9 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-normalMaterialPropertyImage"];
  [a1 setNormalMaterialPropertyImage:v10];

  v11 = [a1 reflectiveMaterialPropertyImage];
  v12 = [v11 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-reflectiveMaterialPropertyImage"];
  [a1 setReflectiveMaterialPropertyImage:v12];

  v13 = [a1 emissionMaterialPropertyImage];
  v14 = [v13 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-emissionMaterialPropertyImage"];
  [a1 setEmissionMaterialPropertyImage:v14];

  v15 = [a1 transparentMaterialPropertyImage];
  v16 = [v15 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-transparentMaterialPropertyImage"];
  [a1 setTransparentMaterialPropertyImage:v16];

  v17 = [a1 multiplyMaterialPropertyImage];
  v18 = [v17 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-multiplyMaterialPropertyImage"];
  [a1 setMultiplyMaterialPropertyImage:v18];

  v19 = [a1 displacementMaterialPropertyImage];
  v20 = [v19 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-displacementMaterialPropertyImage"];
  [a1 setDisplacementMaterialPropertyImage:v20];

  v21 = [a1 ambientOcclusionMaterialPropertyImage];
  v22 = [v21 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-ambientOcclusionMaterialPropertyImage"];
  [a1 setAmbientOcclusionMaterialPropertyImage:v22];

  v23 = [a1 selfIlluminationMaterialPropertyImage];
  v24 = [v23 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-selfIlluminationMaterialPropertyImage"];
  [a1 setSelfIlluminationMaterialPropertyImage:v24];

  v25 = [a1 metalnessMaterialPropertyImage];
  v26 = [v25 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-metalnessMaterialPropertyImage"];
  [a1 setMetalnessMaterialPropertyImage:v26];

  v27 = [a1 roughnessMaterialPropertyImage];
  v28 = [v27 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-roughnessMaterialPropertyImage"];
  [a1 setRoughnessMaterialPropertyImage:v28];

  v29 = [a1 overlayMaterialPropertyImage];
  v30 = [v29 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-overlayMaterialPropertyImage"];
  [a1 setOverlayMaterialPropertyImage:v30];

  objc_autoreleasePoolPop(v2);
}

@end