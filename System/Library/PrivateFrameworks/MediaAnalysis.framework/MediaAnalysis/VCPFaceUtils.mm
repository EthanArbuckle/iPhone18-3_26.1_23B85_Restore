@interface VCPFaceUtils
+ (BOOL)isBestResourceForFaceProcessing:(id)processing fromResources:(id)resources;
+ (CGRect)faceRectFromNormalizedCenterX:(double)x normalizedCenterY:(double)y normalizedSize:(double)size sourceWidth:(double)width sourceHeight:(double)height;
+ (id)_firstLocallyAvailableResourceFromResources:(id)resources;
+ (id)_vnFaceAttributeAgeToPHFaceAgeTypeMap;
+ (id)_vnFaceAttributeEthnicityToPHFaceEthnicityType;
+ (id)_vnFaceAttributeEyesToPHEyesStateMap;
+ (id)_vnFaceAttributeFacialHairToPHFaceExpressionType;
+ (id)_vnFaceAttributeFacialHairToPHFacialHairTypeMap;
+ (id)_vnFaceAttributeGlassesToPHFaceGlassesTypeMap;
+ (id)_vnFaceAttributeHairColorToPHFaceHairColorTypeMap;
+ (id)_vnFaceAttributeHairTypeToPHFaceHairType;
+ (id)_vnFaceAttributeHeadGearToPHFaceHeadGearType;
+ (id)_vnFaceAttributePoseToPHFacePoseType;
+ (id)_vnFaceAttributeSexToPHFaceSexTypeMap;
+ (id)_vnFaceAttributeSkintoneToPHFaceSkintoneType;
+ (id)_vnFaceAttributeSmileToPHFaceSmileTypeMap;
+ (id)_vnFaceGazeDirectionToPHFaceGazeType;
+ (id)imageCreationOptions;
+ (id)mad_PHFaceGazeTypeDescription:(unsigned __int16)description;
+ (id)mad_VNFaceGazeDirectionDescription:(int64_t)description;
+ (id)phFaceFromVCPPhotosFace:(id)face withFetchOptions:(id)options;
+ (id)phFacesFromVCPPhotosFaces:(id)faces withFetchOptions:(id)options;
+ (id)preferredResourcesForFaceProcessingWithAsset:(id)asset;
+ (id)resourceForFaceProcessing:(id)processing allowStreaming:(BOOL)streaming;
+ (id)resourceForFaceProcessingWithAsset:(id)asset allowStreaming:(BOOL)streaming;
+ (int)configureVNRequest:(id *)request withClass:(Class)class andProcessingVersion:(int)version;
+ (int)configureVNRequest:(id *)request withClass:(Class)class andVisionRevision:(unint64_t)revision;
+ (unsigned)mad_PHValueFromVNAgeCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNEthnicityCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNExpressionCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNEyesCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNFaceGazeDirection:(int64_t)direction;
+ (unsigned)mad_PHValueFromVNFaceHairCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNFaceHairCategoryV2Label:(id)label;
+ (unsigned)mad_PHValueFromVNGlassesCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNHairColorCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNHeadgearCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNPoseCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNSexCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNSkintoneCategoryLabel:(id)label;
+ (unsigned)mad_PHValueFromVNSmilingCategoryLabel:(id)label;
+ (void)assignPropertiesOfVCPPhotosFace:(id)face toPHFaceChangeRequest:(id)request;
@end

@implementation VCPFaceUtils

+ (id)imageCreationOptions
{
  if (+[VCPFaceUtils imageCreationOptions]::onceToken != -1)
  {
    +[VCPFaceUtils imageCreationOptions];
  }

  v3 = +[VCPFaceUtils imageCreationOptions]::kImageCreationOptions;

  return v3;
}

void __36__VCPFaceUtils_imageCreationOptions__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E138];
  v3[0] = *MEMORY[0x1E696E128];
  v3[1] = v0;
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = *MEMORY[0x1E696E0E8];
  v4[2] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = +[VCPFaceUtils imageCreationOptions]::kImageCreationOptions;
  +[VCPFaceUtils imageCreationOptions]::kImageCreationOptions = v1;
}

+ (id)phFacesFromVCPPhotosFaces:(id)faces withFetchOptions:(id)options
{
  v27 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(facesCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = facesCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        localIdentifier = [v12 localIdentifier];
        v14 = localIdentifier == 0;

        if (!v14)
        {
          localIdentifier2 = [v12 localIdentifier];
          [v7 addObject:localIdentifier2];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v16 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:v7 options:optionsCopy];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__VCPFaceUtils_phFacesFromVCPPhotosFaces_withFetchOptions___block_invoke;
    v20[3] = &unk_1E834D178;
    v18 = v17;
    v21 = v18;
    [v16 enumerateObjectsUsingBlock:v20];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_vnFaceAttributeAgeToPHFaceAgeTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeAgeToPHFaceAgeTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeAgeToPHFaceAgeTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeAgeToPHFaceAgeTypeMap]::categoryMap;

  return v3;
}

void __53__VCPFaceUtils__vnFaceAttributeAgeToPHFaceAgeTypeMap__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69848F0];
  v4[0] = *MEMORY[0x1E69848E8];
  v4[1] = v0;
  v5[0] = &unk_1F49BBA58;
  v5[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E69848E0];
  v4[2] = *MEMORY[0x1E6984900];
  v4[3] = v1;
  v5[2] = &unk_1F49BBA88;
  v5[3] = &unk_1F49BBAA0;
  v4[4] = *MEMORY[0x1E69848F8];
  v5[4] = &unk_1F49BBAB8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = +[VCPFaceUtils _vnFaceAttributeAgeToPHFaceAgeTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeAgeToPHFaceAgeTypeMap]::categoryMap = v2;
}

+ (unsigned)mad_PHValueFromVNAgeCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeAgeToPHFaceAgeTypeMap = [self _vnFaceAttributeAgeToPHFaceAgeTypeMap];
  v6 = [_vnFaceAttributeAgeToPHFaceAgeTypeMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeSexToPHFaceSexTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeSexToPHFaceSexTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeSexToPHFaceSexTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeSexToPHFaceSexTypeMap]::categoryMap;

  return v3;
}

void __53__VCPFaceUtils__vnFaceAttributeSexToPHFaceSexTypeMap__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984808];
  v3[0] = *MEMORY[0x1E69846E8];
  v3[1] = v0;
  v4[0] = &unk_1F49BBA58;
  v4[1] = &unk_1F49BBA70;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = +[VCPFaceUtils _vnFaceAttributeSexToPHFaceSexTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeSexToPHFaceSexTypeMap]::categoryMap = v1;
}

+ (unsigned)mad_PHValueFromVNSexCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeSexToPHFaceSexTypeMap = [self _vnFaceAttributeSexToPHFaceSexTypeMap];
  v6 = [_vnFaceAttributeSexToPHFaceSexTypeMap objectForKeyedSubscript:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeEyesToPHEyesStateMap
{
  if (+[VCPFaceUtils _vnFaceAttributeEyesToPHEyesStateMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeEyesToPHEyesStateMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeEyesToPHEyesStateMap]::categoryMap;

  return v3;
}

void __52__VCPFaceUtils__vnFaceAttributeEyesToPHEyesStateMap__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984908];
  v3[0] = *MEMORY[0x1E6984910];
  v3[1] = v0;
  v4[0] = &unk_1F49BBA70;
  v4[1] = &unk_1F49BBA58;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = +[VCPFaceUtils _vnFaceAttributeEyesToPHEyesStateMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeEyesToPHEyesStateMap]::categoryMap = v1;
}

+ (unsigned)mad_PHValueFromVNEyesCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeEyesToPHEyesStateMap = [self _vnFaceAttributeEyesToPHEyesStateMap];
  v6 = [_vnFaceAttributeEyesToPHEyesStateMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeSmileToPHFaceSmileTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeSmileToPHFaceSmileTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeSmileToPHFaceSmileTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeSmileToPHFaceSmileTypeMap]::categoryMap;

  return v3;
}

void __57__VCPFaceUtils__vnFaceAttributeSmileToPHFaceSmileTypeMap__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984988];
  v3[0] = *MEMORY[0x1E6984990];
  v3[1] = v0;
  v4[0] = &unk_1F49BBA70;
  v4[1] = &unk_1F49BBA58;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = +[VCPFaceUtils _vnFaceAttributeSmileToPHFaceSmileTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeSmileToPHFaceSmileTypeMap]::categoryMap = v1;
}

+ (unsigned)mad_PHValueFromVNSmilingCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeSmileToPHFaceSmileTypeMap = [self _vnFaceAttributeSmileToPHFaceSmileTypeMap];
  v6 = [_vnFaceAttributeSmileToPHFaceSmileTypeMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeFacialHairToPHFacialHairTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeFacialHairToPHFacialHairTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFacialHairTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFacialHairTypeMap]::categoryMap;

  return v3;
}

void __63__VCPFaceUtils__vnFaceAttributeFacialHairToPHFacialHairTypeMap__block_invoke()
{
  v9[12] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984920];
  v8[0] = *MEMORY[0x1E6984918];
  v8[1] = v0;
  v9[0] = &unk_1F49BBA70;
  v9[1] = &unk_1F49BBA88;
  v1 = *MEMORY[0x1E6984930];
  v8[2] = *MEMORY[0x1E6984928];
  v8[3] = v1;
  v9[2] = &unk_1F49BBAB8;
  v9[3] = &unk_1F49BBAA0;
  v2 = *MEMORY[0x1E6984768];
  v8[4] = *MEMORY[0x1E6984938];
  v8[5] = v2;
  v9[4] = &unk_1F49BBA58;
  v9[5] = &unk_1F49BBA70;
  v3 = *MEMORY[0x1E69847C8];
  v8[6] = *MEMORY[0x1E6984858];
  v8[7] = v3;
  v9[6] = &unk_1F49BBA88;
  v9[7] = &unk_1F49BBAD0;
  v4 = *MEMORY[0x1E6984798];
  v8[8] = *MEMORY[0x1E6984758];
  v8[9] = v4;
  v9[8] = &unk_1F49BBAE8;
  v9[9] = &unk_1F49BBAB8;
  v5 = *MEMORY[0x1E69847A8];
  v8[10] = *MEMORY[0x1E6984738];
  v8[11] = v5;
  v9[10] = &unk_1F49BBB00;
  v9[11] = &unk_1F49BBAA0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:12];
  v7 = +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFacialHairTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFacialHairTypeMap]::categoryMap = v6;
}

+ (unsigned)mad_PHValueFromVNFaceHairCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeFacialHairToPHFacialHairTypeMap = [self _vnFaceAttributeFacialHairToPHFacialHairTypeMap];
  v6 = [_vnFaceAttributeFacialHairToPHFacialHairTypeMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeHairColorToPHFaceHairColorTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeHairColorToPHFaceHairColorTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeHairColorToPHFaceHairColorTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeHairColorToPHFaceHairColorTypeMap]::categoryMap;

  return v3;
}

void __65__VCPFaceUtils__vnFaceAttributeHairColorToPHFaceHairColorTypeMap__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984960];
  v5[0] = *MEMORY[0x1E6984958];
  v5[1] = v0;
  v6[0] = &unk_1F49BBA58;
  v6[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E6984970];
  v5[2] = *MEMORY[0x1E6984968];
  v5[3] = v1;
  v6[2] = &unk_1F49BBA88;
  v6[3] = &unk_1F49BBAB8;
  v2 = *MEMORY[0x1E6984980];
  v5[4] = *MEMORY[0x1E6984978];
  v5[5] = v2;
  v6[4] = &unk_1F49BBAA0;
  v6[5] = &unk_1F49BBB00;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v4 = +[VCPFaceUtils _vnFaceAttributeHairColorToPHFaceHairColorTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeHairColorToPHFaceHairColorTypeMap]::categoryMap = v3;
}

+ (unsigned)mad_PHValueFromVNHairColorCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeHairColorToPHFaceHairColorTypeMap = [self _vnFaceAttributeHairColorToPHFaceHairColorTypeMap];
  v6 = [_vnFaceAttributeHairColorToPHFaceHairColorTypeMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeGlassesToPHFaceGlassesTypeMap
{
  if (+[VCPFaceUtils _vnFaceAttributeGlassesToPHFaceGlassesTypeMap]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeGlassesToPHFaceGlassesTypeMap];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeGlassesToPHFaceGlassesTypeMap]::categoryMap;

  return v3;
}

void __61__VCPFaceUtils__vnFaceAttributeGlassesToPHFaceGlassesTypeMap__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984950];
  v3[0] = *MEMORY[0x1E6984948];
  v3[1] = v0;
  v4[0] = &unk_1F49BBA58;
  v4[1] = &unk_1F49BBA70;
  v3[2] = *MEMORY[0x1E6984940];
  v4[2] = &unk_1F49BBA88;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = +[VCPFaceUtils _vnFaceAttributeGlassesToPHFaceGlassesTypeMap]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeGlassesToPHFaceGlassesTypeMap]::categoryMap = v1;
}

+ (unsigned)mad_PHValueFromVNGlassesCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeGlassesToPHFaceGlassesTypeMap = [self _vnFaceAttributeGlassesToPHFaceGlassesTypeMap];
  v6 = [_vnFaceAttributeGlassesToPHFaceGlassesTypeMap valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeFacialHairToPHFaceExpressionType
{
  if (+[VCPFaceUtils _vnFaceAttributeFacialHairToPHFaceExpressionType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFaceExpressionType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFaceExpressionType]::categoryMap;

  return v3;
}

void __64__VCPFaceUtils__vnFaceAttributeFacialHairToPHFaceExpressionType__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69847D0];
  v5[0] = *MEMORY[0x1E6984850];
  v5[1] = v0;
  v6[0] = &unk_1F49BBA58;
  v6[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E69846D8];
  v5[2] = *MEMORY[0x1E6984790];
  v5[3] = v1;
  v6[2] = &unk_1F49BBA88;
  v6[3] = &unk_1F49BBAB8;
  v2 = *MEMORY[0x1E6984810];
  v5[4] = *MEMORY[0x1E6984710];
  v5[5] = v2;
  v6[4] = &unk_1F49BBAA0;
  v6[5] = &unk_1F49BBB00;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v4 = +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFaceExpressionType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeFacialHairToPHFaceExpressionType]::categoryMap = v3;
}

+ (unsigned)mad_PHValueFromVNExpressionCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeFacialHairToPHFaceExpressionType = [self _vnFaceAttributeFacialHairToPHFaceExpressionType];
  v6 = [_vnFaceAttributeFacialHairToPHFaceExpressionType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeHeadGearToPHFaceHeadGearType
{
  if (+[VCPFaceUtils _vnFaceAttributeHeadGearToPHFaceHeadGearType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeHeadGearToPHFaceHeadGearType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeHeadGearToPHFaceHeadGearType]::categoryMap;

  return v3;
}

void __60__VCPFaceUtils__vnFaceAttributeHeadGearToPHFaceHeadGearType__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69849B8];
  v4[0] = *MEMORY[0x1E6984728];
  v4[1] = v0;
  v5[0] = &unk_1F49BBA58;
  v5[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E6984770];
  v4[2] = *MEMORY[0x1E69847A0];
  v4[3] = v1;
  v5[2] = &unk_1F49BBA88;
  v5[3] = &unk_1F49BBAB8;
  v4[4] = *MEMORY[0x1E6984740];
  v5[4] = &unk_1F49BBAA0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = +[VCPFaceUtils _vnFaceAttributeHeadGearToPHFaceHeadGearType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeHeadGearToPHFaceHeadGearType]::categoryMap = v2;
}

+ (unsigned)mad_PHValueFromVNHeadgearCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeHeadGearToPHFaceHeadGearType = [self _vnFaceAttributeHeadGearToPHFaceHeadGearType];
  v6 = [_vnFaceAttributeHeadGearToPHFaceHeadGearType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeHairTypeToPHFaceHairType
{
  if (+[VCPFaceUtils _vnFaceAttributeHairTypeToPHFaceHairType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeHairTypeToPHFaceHairType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeHairTypeToPHFaceHairType]::categoryMap;

  return v3;
}

void __56__VCPFaceUtils__vnFaceAttributeHairTypeToPHFaceHairType__block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984718];
  v5[0] = *MEMORY[0x1E6984818];
  v5[1] = v0;
  v6[0] = &unk_1F49BBA58;
  v6[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E69847B8];
  v5[2] = *MEMORY[0x1E69847B0];
  v5[3] = v1;
  v6[2] = &unk_1F49BBA88;
  v6[3] = &unk_1F49BBAB8;
  v2 = *MEMORY[0x1E6984830];
  v5[4] = *MEMORY[0x1E69846F0];
  v5[5] = v2;
  v6[4] = &unk_1F49BBAA0;
  v6[5] = &unk_1F49BBB00;
  v5[6] = *MEMORY[0x1E69847F0];
  v5[7] = v5[0];
  v6[6] = &unk_1F49BBAD0;
  v6[7] = &unk_1F49BBA58;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:8];
  v4 = +[VCPFaceUtils _vnFaceAttributeHairTypeToPHFaceHairType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeHairTypeToPHFaceHairType]::categoryMap = v3;
}

+ (unsigned)mad_PHValueFromVNFaceHairCategoryV2Label:(id)label
{
  labelCopy = label;
  _vnFaceAttributeHairTypeToPHFaceHairType = [self _vnFaceAttributeHairTypeToPHFaceHairType];
  v6 = [_vnFaceAttributeHairTypeToPHFaceHairType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributePoseToPHFacePoseType
{
  if (+[VCPFaceUtils _vnFaceAttributePoseToPHFacePoseType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributePoseToPHFacePoseType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributePoseToPHFacePoseType]::categoryMap;

  return v3;
}

void __52__VCPFaceUtils__vnFaceAttributePoseToPHFacePoseType__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984838];
  v4[0] = *MEMORY[0x1E69847C0];
  v4[1] = v0;
  v5[0] = &unk_1F49BBA58;
  v5[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E6984840];
  v4[2] = *MEMORY[0x1E6984760];
  v4[3] = v1;
  v5[2] = &unk_1F49BBA88;
  v5[3] = &unk_1F49BBAB8;
  v4[4] = *MEMORY[0x1E69846C8];
  v5[4] = &unk_1F49BBAA0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = +[VCPFaceUtils _vnFaceAttributePoseToPHFacePoseType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributePoseToPHFacePoseType]::categoryMap = v2;
}

+ (unsigned)mad_PHValueFromVNPoseCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributePoseToPHFacePoseType = [self _vnFaceAttributePoseToPHFacePoseType];
  v6 = [_vnFaceAttributePoseToPHFacePoseType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeSkintoneToPHFaceSkintoneType
{
  if (+[VCPFaceUtils _vnFaceAttributeSkintoneToPHFaceSkintoneType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeSkintoneToPHFaceSkintoneType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeSkintoneToPHFaceSkintoneType]::categoryMap;

  return v3;
}

void __60__VCPFaceUtils__vnFaceAttributeSkintoneToPHFaceSkintoneType__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69847E0];
  v5[0] = *MEMORY[0x1E69848D0];
  v5[1] = v0;
  v6[0] = &unk_1F49BBA58;
  v6[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E69846E0];
  v5[2] = *MEMORY[0x1E69846C0];
  v5[3] = v1;
  v6[2] = &unk_1F49BBA88;
  v6[3] = &unk_1F49BBAB8;
  v2 = *MEMORY[0x1E6984788];
  v5[4] = *MEMORY[0x1E69846D0];
  v5[5] = v2;
  v6[4] = &unk_1F49BBAA0;
  v6[5] = &unk_1F49BBB00;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v4 = +[VCPFaceUtils _vnFaceAttributeSkintoneToPHFaceSkintoneType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeSkintoneToPHFaceSkintoneType]::categoryMap = v3;
}

+ (unsigned)mad_PHValueFromVNSkintoneCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeSkintoneToPHFaceSkintoneType = [self _vnFaceAttributeSkintoneToPHFaceSkintoneType];
  v6 = [_vnFaceAttributeSkintoneToPHFaceSkintoneType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceAttributeEthnicityToPHFaceEthnicityType
{
  if (+[VCPFaceUtils _vnFaceAttributeEthnicityToPHFaceEthnicityType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceAttributeEthnicityToPHFaceEthnicityType];
  }

  v3 = +[VCPFaceUtils _vnFaceAttributeEthnicityToPHFaceEthnicityType]::categoryMap;

  return v3;
}

void __62__VCPFaceUtils__vnFaceAttributeEthnicityToPHFaceEthnicityType__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984720];
  v4[0] = *MEMORY[0x1E6984860];
  v4[1] = v0;
  v5[0] = &unk_1F49BBA58;
  v5[1] = &unk_1F49BBA70;
  v1 = *MEMORY[0x1E6984700];
  v4[2] = *MEMORY[0x1E6984800];
  v4[3] = v1;
  v5[2] = &unk_1F49BBA88;
  v5[3] = &unk_1F49BBAB8;
  v4[4] = *MEMORY[0x1E6984820];
  v5[4] = &unk_1F49BBAA0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = +[VCPFaceUtils _vnFaceAttributeEthnicityToPHFaceEthnicityType]::categoryMap;
  +[VCPFaceUtils _vnFaceAttributeEthnicityToPHFaceEthnicityType]::categoryMap = v2;
}

+ (unsigned)mad_PHValueFromVNEthnicityCategoryLabel:(id)label
{
  labelCopy = label;
  _vnFaceAttributeEthnicityToPHFaceEthnicityType = [self _vnFaceAttributeEthnicityToPHFaceEthnicityType];
  v6 = [_vnFaceAttributeEthnicityToPHFaceEthnicityType valueForKey:labelCopy];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_vnFaceGazeDirectionToPHFaceGazeType
{
  if (+[VCPFaceUtils _vnFaceGazeDirectionToPHFaceGazeType]::onceToken != -1)
  {
    +[VCPFaceUtils _vnFaceGazeDirectionToPHFaceGazeType];
  }

  v3 = +[VCPFaceUtils _vnFaceGazeDirectionToPHFaceGazeType]::categoryMap;

  return v3;
}

void __52__VCPFaceUtils__vnFaceGazeDirectionToPHFaceGazeType__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F49BBB18;
  v2[1] = &unk_1F49BBB30;
  v3[0] = &unk_1F49BBAA0;
  v3[1] = &unk_1F49BBA58;
  v2[2] = &unk_1F49BBB48;
  v2[3] = &unk_1F49BBB60;
  v3[2] = &unk_1F49BBA70;
  v3[3] = &unk_1F49BBA88;
  v2[4] = &unk_1F49BBB78;
  v2[5] = &unk_1F49BBB90;
  v3[4] = &unk_1F49BBAB8;
  v3[5] = &unk_1F49BBAA0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = +[VCPFaceUtils _vnFaceGazeDirectionToPHFaceGazeType]::categoryMap;
  +[VCPFaceUtils _vnFaceGazeDirectionToPHFaceGazeType]::categoryMap = v0;
}

+ (id)mad_VNFaceGazeDirectionDescription:(int64_t)description
{
  if (description >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error VNFaceGazeDirection: %lu", description];
  }

  else
  {
    v4 = off_1E834D198[description];
  }

  return v4;
}

+ (id)mad_PHFaceGazeTypeDescription:(unsigned __int16)description
{
  if ((description - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error PHFaceGazeType: %d", description];
  }

  else
  {
    v4 = off_1E834D1C8[(description - 1)];
  }

  return v4;
}

+ (unsigned)mad_PHValueFromVNFaceGazeDirection:(int64_t)direction
{
  _vnFaceGazeDirectionToPHFaceGazeType = [self _vnFaceGazeDirectionToPHFaceGazeType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:direction];
  v6 = [_vnFaceGazeDirectionToPHFaceGazeType objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (void)assignPropertiesOfVCPPhotosFace:(id)face toPHFaceChangeRequest:(id)request
{
  faceCopy = face;
  requestCopy = request;
  [requestCopy setSourceWidth:{objc_msgSend(faceCopy, "sourceWidth")}];
  [requestCopy setSourceHeight:{objc_msgSend(faceCopy, "sourceHeight")}];
  [requestCopy setDetectionType:{objc_msgSend(faceCopy, "detectionType")}];
  [faceCopy centerX];
  [requestCopy setCenterX:?];
  [faceCopy centerY];
  [requestCopy setCenterY:?];
  [faceCopy size];
  [requestCopy setSize:?];
  [faceCopy bodyCenterX];
  [requestCopy setBodyCenterX:?];
  [faceCopy bodyCenterY];
  [requestCopy setBodyCenterY:?];
  [faceCopy bodyWidth];
  [requestCopy setBodyWidth:?];
  [faceCopy bodyHeight];
  [requestCopy setBodyHeight:?];
  [requestCopy setHasSmile:{objc_msgSend(faceCopy, "hasSmile")}];
  [faceCopy blurScore];
  [requestCopy setBlurScore:?];
  [requestCopy setLeftEyeClosed:{objc_msgSend(faceCopy, "isLeftEyeClosed")}];
  [requestCopy setRightEyeClosed:{objc_msgSend(faceCopy, "isRightEyeClosed")}];
  [faceCopy poseYaw];
  [requestCopy setPoseYaw:?];
  [requestCopy setFaceAlgorithmVersion:{objc_msgSend(faceCopy, "algorithmVersion")}];
  [requestCopy setQualityMeasure:{objc_msgSend(faceCopy, "qualityMeasure")}];
  [requestCopy setAgeType:{objc_msgSend(faceCopy, "ageType")}];
  [requestCopy setSexType:{objc_msgSend(faceCopy, "sexType")}];
  [requestCopy setEyesState:{objc_msgSend(faceCopy, "eyesState")}];
  [requestCopy setSmileType:{objc_msgSend(faceCopy, "smileType")}];
  [requestCopy setFacialHairType:{objc_msgSend(faceCopy, "facialHairType")}];
  [requestCopy setHairColorType:{objc_msgSend(faceCopy, "hairColorType")}];
  [requestCopy setGlassesType:{objc_msgSend(faceCopy, "glassesType")}];
  [requestCopy setFaceExpressionType:{objc_msgSend(faceCopy, "expressionType")}];
  [requestCopy setHeadgearType:{objc_msgSend(faceCopy, "headgearType")}];
  [requestCopy setHairType:{objc_msgSend(faceCopy, "hairType")}];
  [requestCopy setPoseType:{objc_msgSend(faceCopy, "poseType")}];
  [requestCopy setSkintoneType:{objc_msgSend(faceCopy, "skintoneType")}];
  [requestCopy setEthnicityType:{objc_msgSend(faceCopy, "ethnicityType")}];
  [faceCopy roll];
  [requestCopy setRoll:?];
  [faceCopy quality];
  [requestCopy setQuality:?];
  [requestCopy setGazeType:{objc_msgSend(faceCopy, "gazeType")}];
  [requestCopy setHasFaceMask:{objc_msgSend(faceCopy, "hasFaceMask")}];
  [faceCopy gazeCenterX];
  [requestCopy setGazeCenterX:?];
  [faceCopy gazeCenterY];
  [requestCopy setGazeCenterY:?];
  [faceCopy gazeRect];
  [requestCopy setGazeRect:?];
  [faceCopy gazeAngle];
  [requestCopy setGazeAngle:?];
  [faceCopy gazeConfidence];
  [requestCopy setGazeConfidence:?];
  [requestCopy setHidden:{objc_msgSend(faceCopy, "hidden")}];
  [requestCopy setInTrash:{objc_msgSend(faceCopy, "isInTrash")}];
  [requestCopy setManual:{objc_msgSend(faceCopy, "manual")}];
  adjustmentVersion = [faceCopy adjustmentVersion];
  [requestCopy setAdjustmentVersion:adjustmentVersion];

  groupingIdentifier = [faceCopy groupingIdentifier];
  [requestCopy setGroupingIdentifier:groupingIdentifier];

  [requestCopy setNameSource:{objc_msgSend(faceCopy, "nameSource")}];
  [requestCopy setVuObservationID:{objc_msgSend(faceCopy, "vuObservationID")}];
  imageprintWrapper = [faceCopy imageprintWrapper];

  if (imageprintWrapper)
  {
    v9 = objc_alloc(MEMORY[0x1E6978818]);
    imageprintWrapper2 = [faceCopy imageprintWrapper];
    data = [imageprintWrapper2 data];
    imageprintWrapper3 = [faceCopy imageprintWrapper];
    v13 = [v9 initWithFaceprintData:data faceprintVersion:{objc_msgSend(imageprintWrapper3, "version")}];

    [requestCopy setFaceprint:v13];
  }
}

+ (id)phFaceFromVCPPhotosFace:(id)face withFetchOptions:(id)options
{
  v14[1] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  optionsCopy = options;
  localIdentifier = [faceCopy localIdentifier];
  v8 = localIdentifier;
  if (localIdentifier)
  {
    v9 = MEMORY[0x1E69787D0];
    v14[0] = localIdentifier;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 fetchFacesWithLocalIdentifiers:v10 options:optionsCopy];

    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)_firstLocallyAvailableResourceFromResources:(id)resources
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  resourcesCopy = resources;
  v4 = [resourcesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 vcp_isLocallyAvailable])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [resourcesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)resourceForFaceProcessing:(id)processing allowStreaming:(BOOL)streaming
{
  streamingCopy = streaming;
  v33 = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  if ([processingCopy count])
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = processingCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Choosing asset resource from preferred list: %@", buf, 0xCu);
    }

    if (streamingCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = processingCopy;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v9)
      {
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            if ([v12 analysisType] == 2 || objc_msgSend(v12, "analysisType") == 1)
            {
              [array addObject:v12];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v9);
      }

      if (![array count])
      {
        firstObject = [v8 firstObject];
        [array addObject:firstObject];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = array;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Network is available, filtering list to remove the CPL Thumb, new list is: %@", buf, 0xCu);
      }

      firstObject2 = [self _firstLocallyAvailableResourceFromResources:array];
      if (!firstObject2)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = array;
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          v17 = *v22;
LABEL_24:
          v18 = 0;
          while (1)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v21 + 1) + 8 * v18);
            if ([v19 analysisType] == 1)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v16)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          firstObject2 = v19;

          if (firstObject2)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_30:
        }

        firstObject2 = [v15 firstObject];
LABEL_35:
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = firstObject2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "No resources locally available, returning a downloadable hi-res resource: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      firstObject2 = [self _firstLocallyAvailableResourceFromResources:processingCopy];
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

+ (id)preferredResourcesForFaceProcessingWithAsset:(id)asset
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v16 = assetCopy;
  if (assetCopy)
  {
    if ([assetCopy hasAdjustments])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      photoLibrary = [v16 photoLibrary];
      v4 = [photoLibrary vcp_isSyndicationLibrary] ^ 1;
    }

    array = [MEMORY[0x1E695DF70] array];
    [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:v16];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 pixelWidth])
          {
            if ([v11 pixelHeight])
            {
              if ([v11 type] != 13 && objc_msgSend(v11, "type") != 8)
              {
                vcp_uniformTypeIdentifier = [v11 vcp_uniformTypeIdentifier];
                v13 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:vcp_uniformTypeIdentifier];

                if (v13)
                {
                  if (([v11 type] != 1) | v4 & 1)
                  {
                    [array addObject:v11];
                  }
                }
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    vcp_descendingSizeComparator = [MEMORY[0x1E69786D0] vcp_descendingSizeComparator];
    [array sortUsingComparator:vcp_descendingSizeComparator];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

+ (id)resourceForFaceProcessingWithAsset:(id)asset allowStreaming:(BOOL)streaming
{
  streamingCopy = streaming;
  v6 = [self preferredResourcesForFaceProcessingWithAsset:asset];
  v7 = [self resourceForFaceProcessing:v6 allowStreaming:streamingCopy];

  return v7;
}

+ (BOOL)isBestResourceForFaceProcessing:(id)processing fromResources:(id)resources
{
  processingCopy = processing;
  resourcesCopy = resources;
  vcp_descendingSizeComparator = [MEMORY[0x1E69786D0] vcp_descendingSizeComparator];
  v8 = [resourcesCopy sortedArrayUsingComparator:vcp_descendingSizeComparator];

  firstObject = [v8 firstObject];
  v10 = firstObject == processingCopy || [processingCopy analysisType] == 2 || objc_msgSend(processingCopy, "analysisType") == 1;

  return v10;
}

+ (int)configureVNRequest:(id *)request withClass:(Class)class andVisionRevision:(unint64_t)revision
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(class);
  *request = v8;
  if (revision < 0xDECAF000)
  {
    [v8 setRevision:revision];
  }

  else
  {
    v14 = 0;
    v9 = [v8 setRevision:revision error:&v14];
    v10 = v14;
    defaultANEDevice = v10;
    if ((v9 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        classCopy = class;
        v17 = 2112;
        v18 = defaultANEDevice;
        v19 = 1024;
        v20 = 15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Face] Failed setting %@ private revision: %@, umbrellaVersion: %d", buf, 0x1Cu);
      }

      v12 = -50;
      goto LABEL_12;
    }
  }

  [*request setMetalContextPriority:1];
  [*request setPreferBackgroundProcessing:1];
  if (DeviceHasANE())
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [*request setProcessingDevice:defaultANEDevice];
    v12 = 0;
LABEL_12:

    return v12;
  }

  return 0;
}

+ (int)configureVNRequest:(id *)request withClass:(Class)class andProcessingVersion:(int)version
{
  v8 = VCPMAGetRevisionForVisionModel(class, *&version);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -23807;
  }

  return [self configureVNRequest:request withClass:class andVisionRevision:v8];
}

+ (CGRect)faceRectFromNormalizedCenterX:(double)x normalizedCenterY:(double)y normalizedSize:(double)size sourceWidth:(double)width sourceHeight:(double)height
{
  if (width >= height)
  {
    heightCopy = width;
  }

  else
  {
    heightCopy = height;
  }

  v8 = heightCopy * size;
  v9 = v8 / width;
  v10 = v8 / height;
  v11 = x - v9 * 0.5;
  v12 = y - v8 / height * 0.5;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end