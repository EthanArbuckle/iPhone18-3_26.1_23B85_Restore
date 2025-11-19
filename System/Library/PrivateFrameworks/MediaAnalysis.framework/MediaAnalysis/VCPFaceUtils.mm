@interface VCPFaceUtils
+ (BOOL)isBestResourceForFaceProcessing:(id)a3 fromResources:(id)a4;
+ (CGRect)faceRectFromNormalizedCenterX:(double)a3 normalizedCenterY:(double)a4 normalizedSize:(double)a5 sourceWidth:(double)a6 sourceHeight:(double)a7;
+ (id)_firstLocallyAvailableResourceFromResources:(id)a3;
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
+ (id)mad_PHFaceGazeTypeDescription:(unsigned __int16)a3;
+ (id)mad_VNFaceGazeDirectionDescription:(int64_t)a3;
+ (id)phFaceFromVCPPhotosFace:(id)a3 withFetchOptions:(id)a4;
+ (id)phFacesFromVCPPhotosFaces:(id)a3 withFetchOptions:(id)a4;
+ (id)preferredResourcesForFaceProcessingWithAsset:(id)a3;
+ (id)resourceForFaceProcessing:(id)a3 allowStreaming:(BOOL)a4;
+ (id)resourceForFaceProcessingWithAsset:(id)a3 allowStreaming:(BOOL)a4;
+ (int)configureVNRequest:(id *)a3 withClass:(Class)a4 andProcessingVersion:(int)a5;
+ (int)configureVNRequest:(id *)a3 withClass:(Class)a4 andVisionRevision:(unint64_t)a5;
+ (unsigned)mad_PHValueFromVNAgeCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNEthnicityCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNExpressionCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNEyesCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNFaceGazeDirection:(int64_t)a3;
+ (unsigned)mad_PHValueFromVNFaceHairCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNFaceHairCategoryV2Label:(id)a3;
+ (unsigned)mad_PHValueFromVNGlassesCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNHairColorCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNHeadgearCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNPoseCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNSexCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNSkintoneCategoryLabel:(id)a3;
+ (unsigned)mad_PHValueFromVNSmilingCategoryLabel:(id)a3;
+ (void)assignPropertiesOfVCPPhotosFace:(id)a3 toPHFaceChangeRequest:(id)a4;
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

+ (id)phFacesFromVCPPhotosFaces:(id)a3 withFetchOptions:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
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
        v13 = [v12 localIdentifier];
        v14 = v13 == 0;

        if (!v14)
        {
          v15 = [v12 localIdentifier];
          [v7 addObject:v15];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v16 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:v7 options:v6];
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

+ (unsigned)mad_PHValueFromVNAgeCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeAgeToPHFaceAgeTypeMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNSexCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeSexToPHFaceSexTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNEyesCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeEyesToPHEyesStateMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNSmilingCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeSmileToPHFaceSmileTypeMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNFaceHairCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeFacialHairToPHFacialHairTypeMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNHairColorCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeHairColorToPHFaceHairColorTypeMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNGlassesCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeGlassesToPHFaceGlassesTypeMap];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNExpressionCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeFacialHairToPHFaceExpressionType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNHeadgearCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeHeadGearToPHFaceHeadGearType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNFaceHairCategoryV2Label:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeHairTypeToPHFaceHairType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNPoseCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributePoseToPHFacePoseType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNSkintoneCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeSkintoneToPHFaceSkintoneType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (unsigned)mad_PHValueFromVNEthnicityCategoryLabel:(id)a3
{
  v4 = a3;
  v5 = [a1 _vnFaceAttributeEthnicityToPHFaceEthnicityType];
  v6 = [v5 valueForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (id)mad_VNFaceGazeDirectionDescription:(int64_t)a3
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error VNFaceGazeDirection: %lu", a3];
  }

  else
  {
    v4 = off_1E834D198[a3];
  }

  return v4;
}

+ (id)mad_PHFaceGazeTypeDescription:(unsigned __int16)a3
{
  if ((a3 - 1) >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error PHFaceGazeType: %d", a3];
  }

  else
  {
    v4 = off_1E834D1C8[(a3 - 1)];
  }

  return v4;
}

+ (unsigned)mad_PHValueFromVNFaceGazeDirection:(int64_t)a3
{
  v4 = [a1 _vnFaceGazeDirectionToPHFaceGazeType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)assignPropertiesOfVCPPhotosFace:(id)a3 toPHFaceChangeRequest:(id)a4
{
  v14 = a3;
  v5 = a4;
  [v5 setSourceWidth:{objc_msgSend(v14, "sourceWidth")}];
  [v5 setSourceHeight:{objc_msgSend(v14, "sourceHeight")}];
  [v5 setDetectionType:{objc_msgSend(v14, "detectionType")}];
  [v14 centerX];
  [v5 setCenterX:?];
  [v14 centerY];
  [v5 setCenterY:?];
  [v14 size];
  [v5 setSize:?];
  [v14 bodyCenterX];
  [v5 setBodyCenterX:?];
  [v14 bodyCenterY];
  [v5 setBodyCenterY:?];
  [v14 bodyWidth];
  [v5 setBodyWidth:?];
  [v14 bodyHeight];
  [v5 setBodyHeight:?];
  [v5 setHasSmile:{objc_msgSend(v14, "hasSmile")}];
  [v14 blurScore];
  [v5 setBlurScore:?];
  [v5 setLeftEyeClosed:{objc_msgSend(v14, "isLeftEyeClosed")}];
  [v5 setRightEyeClosed:{objc_msgSend(v14, "isRightEyeClosed")}];
  [v14 poseYaw];
  [v5 setPoseYaw:?];
  [v5 setFaceAlgorithmVersion:{objc_msgSend(v14, "algorithmVersion")}];
  [v5 setQualityMeasure:{objc_msgSend(v14, "qualityMeasure")}];
  [v5 setAgeType:{objc_msgSend(v14, "ageType")}];
  [v5 setSexType:{objc_msgSend(v14, "sexType")}];
  [v5 setEyesState:{objc_msgSend(v14, "eyesState")}];
  [v5 setSmileType:{objc_msgSend(v14, "smileType")}];
  [v5 setFacialHairType:{objc_msgSend(v14, "facialHairType")}];
  [v5 setHairColorType:{objc_msgSend(v14, "hairColorType")}];
  [v5 setGlassesType:{objc_msgSend(v14, "glassesType")}];
  [v5 setFaceExpressionType:{objc_msgSend(v14, "expressionType")}];
  [v5 setHeadgearType:{objc_msgSend(v14, "headgearType")}];
  [v5 setHairType:{objc_msgSend(v14, "hairType")}];
  [v5 setPoseType:{objc_msgSend(v14, "poseType")}];
  [v5 setSkintoneType:{objc_msgSend(v14, "skintoneType")}];
  [v5 setEthnicityType:{objc_msgSend(v14, "ethnicityType")}];
  [v14 roll];
  [v5 setRoll:?];
  [v14 quality];
  [v5 setQuality:?];
  [v5 setGazeType:{objc_msgSend(v14, "gazeType")}];
  [v5 setHasFaceMask:{objc_msgSend(v14, "hasFaceMask")}];
  [v14 gazeCenterX];
  [v5 setGazeCenterX:?];
  [v14 gazeCenterY];
  [v5 setGazeCenterY:?];
  [v14 gazeRect];
  [v5 setGazeRect:?];
  [v14 gazeAngle];
  [v5 setGazeAngle:?];
  [v14 gazeConfidence];
  [v5 setGazeConfidence:?];
  [v5 setHidden:{objc_msgSend(v14, "hidden")}];
  [v5 setInTrash:{objc_msgSend(v14, "isInTrash")}];
  [v5 setManual:{objc_msgSend(v14, "manual")}];
  v6 = [v14 adjustmentVersion];
  [v5 setAdjustmentVersion:v6];

  v7 = [v14 groupingIdentifier];
  [v5 setGroupingIdentifier:v7];

  [v5 setNameSource:{objc_msgSend(v14, "nameSource")}];
  [v5 setVuObservationID:{objc_msgSend(v14, "vuObservationID")}];
  v8 = [v14 imageprintWrapper];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E6978818]);
    v10 = [v14 imageprintWrapper];
    v11 = [v10 data];
    v12 = [v14 imageprintWrapper];
    v13 = [v9 initWithFaceprintData:v11 faceprintVersion:{objc_msgSend(v12, "version")}];

    [v5 setFaceprint:v13];
  }
}

+ (id)phFaceFromVCPPhotosFace:(id)a3 withFetchOptions:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 localIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E69787D0];
    v14[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 fetchFacesWithLocalIdentifiers:v10 options:v6];

    if ([v11 count] == 1)
    {
      v12 = [v11 firstObject];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_firstLocallyAvailableResourceFromResources:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 vcp_isLocallyAvailable])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (id)resourceForFaceProcessing:(id)a3 allowStreaming:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Choosing asset resource from preferred list: %@", buf, 0xCu);
    }

    if (v4)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v6;
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
              [v7 addObject:v12];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v9);
      }

      if (![v7 count])
      {
        v13 = [v8 firstObject];
        [v7 addObject:v13];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Network is available, filtering list to remove the CPL Thumb, new list is: %@", buf, 0xCu);
      }

      v14 = [a1 _firstLocallyAvailableResourceFromResources:v7];
      if (!v14)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = v7;
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

          v14 = v19;

          if (v14)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_30:
        }

        v14 = [v15 firstObject];
LABEL_35:
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v14;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "No resources locally available, returning a downloadable hi-res resource: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = [a1 _firstLocallyAvailableResourceFromResources:v6];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)preferredResourcesForFaceProcessingWithAsset:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = v3;
  if (v3)
  {
    if ([v3 hasAdjustments])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = [v16 photoLibrary];
      v4 = [v6 vcp_isSyndicationLibrary] ^ 1;
    }

    v5 = [MEMORY[0x1E695DF70] array];
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
                v12 = [v11 vcp_uniformTypeIdentifier];
                v13 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:v12];

                if (v13)
                {
                  if (([v11 type] != 1) | v4 & 1)
                  {
                    [v5 addObject:v11];
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

    v14 = [MEMORY[0x1E69786D0] vcp_descendingSizeComparator];
    [v5 sortUsingComparator:v14];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)resourceForFaceProcessingWithAsset:(id)a3 allowStreaming:(BOOL)a4
{
  v4 = a4;
  v6 = [a1 preferredResourcesForFaceProcessingWithAsset:a3];
  v7 = [a1 resourceForFaceProcessing:v6 allowStreaming:v4];

  return v7;
}

+ (BOOL)isBestResourceForFaceProcessing:(id)a3 fromResources:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69786D0] vcp_descendingSizeComparator];
  v8 = [v6 sortedArrayUsingComparator:v7];

  v9 = [v8 firstObject];
  v10 = v9 == v5 || [v5 analysisType] == 2 || objc_msgSend(v5, "analysisType") == 1;

  return v10;
}

+ (int)configureVNRequest:(id *)a3 withClass:(Class)a4 andVisionRevision:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(a4);
  *a3 = v8;
  if (a5 < 0xDECAF000)
  {
    [v8 setRevision:a5];
  }

  else
  {
    v14 = 0;
    v9 = [v8 setRevision:a5 error:&v14];
    v10 = v14;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = a4;
        v17 = 2112;
        v18 = v11;
        v19 = 1024;
        v20 = 15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Face] Failed setting %@ private revision: %@, umbrellaVersion: %d", buf, 0x1Cu);
      }

      v12 = -50;
      goto LABEL_12;
    }
  }

  [*a3 setMetalContextPriority:1];
  [*a3 setPreferBackgroundProcessing:1];
  if (DeviceHasANE())
  {
    v11 = [MEMORY[0x1E6984608] defaultANEDevice];
    [*a3 setProcessingDevice:v11];
    v12 = 0;
LABEL_12:

    return v12;
  }

  return 0;
}

+ (int)configureVNRequest:(id *)a3 withClass:(Class)a4 andProcessingVersion:(int)a5
{
  v8 = VCPMAGetRevisionForVisionModel(a4, *&a5);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -23807;
  }

  return [a1 configureVNRequest:a3 withClass:a4 andVisionRevision:v8];
}

+ (CGRect)faceRectFromNormalizedCenterX:(double)a3 normalizedCenterY:(double)a4 normalizedSize:(double)a5 sourceWidth:(double)a6 sourceHeight:(double)a7
{
  if (a6 >= a7)
  {
    v7 = a6;
  }

  else
  {
    v7 = a7;
  }

  v8 = v7 * a5;
  v9 = v8 / a6;
  v10 = v8 / a7;
  v11 = a3 - v9 * 0.5;
  v12 = a4 - v8 / a7 * 0.5;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end