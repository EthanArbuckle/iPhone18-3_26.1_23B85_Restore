@interface PKPassLiveRenderedImageSet(NanoPassKit)
- (void)memoryMapImageData;
@end

@implementation PKPassLiveRenderedImageSet(NanoPassKit)

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  diffuseMaterialPropertyImage = [self diffuseMaterialPropertyImage];
  v4 = [diffuseMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-diffuseMaterialPropertyImage"];
  [self setDiffuseMaterialPropertyImage:v4];

  ambientMaterialPropertyImage = [self ambientMaterialPropertyImage];
  v6 = [ambientMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-ambientMaterialPropertyImage"];
  [self setAmbientMaterialPropertyImage:v6];

  specularMaterialPropertyImage = [self specularMaterialPropertyImage];
  v8 = [specularMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-specularMaterialPropertyImage"];
  [self setSpecularMaterialPropertyImage:v8];

  normalMaterialPropertyImage = [self normalMaterialPropertyImage];
  v10 = [normalMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-normalMaterialPropertyImage"];
  [self setNormalMaterialPropertyImage:v10];

  reflectiveMaterialPropertyImage = [self reflectiveMaterialPropertyImage];
  v12 = [reflectiveMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-reflectiveMaterialPropertyImage"];
  [self setReflectiveMaterialPropertyImage:v12];

  emissionMaterialPropertyImage = [self emissionMaterialPropertyImage];
  v14 = [emissionMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-emissionMaterialPropertyImage"];
  [self setEmissionMaterialPropertyImage:v14];

  transparentMaterialPropertyImage = [self transparentMaterialPropertyImage];
  v16 = [transparentMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-transparentMaterialPropertyImage"];
  [self setTransparentMaterialPropertyImage:v16];

  multiplyMaterialPropertyImage = [self multiplyMaterialPropertyImage];
  v18 = [multiplyMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-multiplyMaterialPropertyImage"];
  [self setMultiplyMaterialPropertyImage:v18];

  displacementMaterialPropertyImage = [self displacementMaterialPropertyImage];
  v20 = [displacementMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-displacementMaterialPropertyImage"];
  [self setDisplacementMaterialPropertyImage:v20];

  ambientOcclusionMaterialPropertyImage = [self ambientOcclusionMaterialPropertyImage];
  v22 = [ambientOcclusionMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-ambientOcclusionMaterialPropertyImage"];
  [self setAmbientOcclusionMaterialPropertyImage:v22];

  selfIlluminationMaterialPropertyImage = [self selfIlluminationMaterialPropertyImage];
  v24 = [selfIlluminationMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-selfIlluminationMaterialPropertyImage"];
  [self setSelfIlluminationMaterialPropertyImage:v24];

  metalnessMaterialPropertyImage = [self metalnessMaterialPropertyImage];
  v26 = [metalnessMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-metalnessMaterialPropertyImage"];
  [self setMetalnessMaterialPropertyImage:v26];

  roughnessMaterialPropertyImage = [self roughnessMaterialPropertyImage];
  v28 = [roughnessMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-roughnessMaterialPropertyImage"];
  [self setRoughnessMaterialPropertyImage:v28];

  overlayMaterialPropertyImage = [self overlayMaterialPropertyImage];
  v30 = [overlayMaterialPropertyImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkLiveRenderedImage-overlayMaterialPropertyImage"];
  [self setOverlayMaterialPropertyImage:v30];

  objc_autoreleasePoolPop(v2);
}

@end