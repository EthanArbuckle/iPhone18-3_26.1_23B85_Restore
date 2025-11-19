@interface CPLResource
+ (BOOL)cplShouldGenerateDerivatives;
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (BOOL)isDynamicFingerprint:(id)a3;
+ (BOOL)isNonDerivativeResourceType:(unint64_t)a3;
+ (BOOL)usesFakeDerivatives;
+ (id)descriptionForResourceType:(unint64_t)a3;
+ (id)normalizedResourcesFromResources:(id)a3 resourcePerResourceType:(id *)a4;
+ (id)predicateMatchingDynamicFingerprintForKey:(id)a3;
+ (id)shortDescriptionForResourceType:(unint64_t)a3;
+ (unint64_t)maxPixelSizeForResourceType:(unint64_t)a3;
+ (unint64_t)resourceTypeFromShortDescription:(id)a3;
+ (void)enumerateResourceTypesWithBlock:(id)a3;
+ (void)getAllResourceTypesToDownloadPrioritizeNonDerivatives:(const unint64_t *)a3;
- (CPLResource)initWithCPLArchiver:(id)a3;
- (CPLResource)initWithCoder:(id)a3;
- (CPLResource)initWithResourceIdentity:(id)a3 itemScopedIdentifier:(id)a4 resourceType:(unint64_t)a5;
- (id)bestFileNameForResource;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (unint64_t)estimatedResourceSize;
- (void)setItemIdentifier:(id)a3;
@end

@implementation CPLResource

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLResource)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLResource;
  v5 = [(CPLResource *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
    v7 = [(CPLResource *)v6 itemScopedIdentifier];

    if (!v7)
    {
      if (initWithCoder__onceToken_103 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_103, &__block_literal_global_106);
      }

      v8 = [v4 decodeObjectOfClass:initWithCoder__stringClass_104 forKey:@"itemIdentifier"];
      if (v8)
      {
        v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v8];
        [(CPLResource *)v6 setItemScopedIdentifier:v9];
      }
    }
  }

  return v6;
}

uint64_t __42__CPLResource_CPLNSCoding__initWithCoder___block_invoke()
{
  result = objc_opt_class();
  initWithCoder__stringClass_104 = result;
  return result;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"itemIdentifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLResource;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (CPLResource)initWithCPLArchiver:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLResource;
  v5 = [&v11 initWithCPLArchiver:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLResource *)v5 itemScopedIdentifier];

    if (!v7)
    {
      if (initWithCPLArchiver__onceToken_1958 != -1)
      {
        dispatch_once(&initWithCPLArchiver__onceToken_1958, &__block_literal_global_1961);
      }

      v8 = [v4 decodeObjectOfClass:initWithCPLArchiver__stringClass_1959 forKey:@"itemIdentifier"];
      if (v8)
      {
        v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v8];
        [(CPLResource *)v6 setItemScopedIdentifier:v9];
      }
    }
  }

  return v6;
}

uint64_t __48__CPLResource_CPLArchiver__initWithCPLArchiver___block_invoke()
{
  result = objc_opt_class();
  initWithCPLArchiver__stringClass_1959 = result;
  return result;
}

+ (BOOL)usesFakeDerivatives
{
  if (usesFakeDerivatives_onceToken != -1)
  {
    dispatch_once(&usesFakeDerivatives_onceToken, &__block_literal_global_335);
  }

  return usesFakeDerivatives_usesFakeDerivatives;
}

void __34__CPLResource_usesFakeDerivatives__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v0 = [v1 stringForKey:@"CPLFakeDynamicDerivatives"];
    usesFakeDerivatives_usesFakeDerivatives = v0 != 0;
  }
}

+ (id)predicateMatchingDynamicFingerprintForKey:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", v4, @"#"];
  if ([a1 usesFakeDerivatives])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", v4, @"^"];
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v5;
    v12[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 orPredicateWithSubpredicates:v8];

    v5 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)isDynamicFingerprint:(id)a3
{
  v4 = a3;
  v5 = ([v4 hasPrefix:@"#"] & 1) != 0 || objc_msgSend(a1, "usesFakeDerivatives") && (objc_msgSend(v4, "hasPrefix:", @"^") & 1) != 0;

  return v5;
}

+ (void)getAllResourceTypesToDownloadPrioritizeNonDerivatives:(const unint64_t *)a3
{
  if (getAllResourceTypesToDownloadPrioritizeNonDerivatives__onceToken != -1)
  {
    dispatch_once(&getAllResourceTypesToDownloadPrioritizeNonDerivatives__onceToken, &__block_literal_global_322);
  }

  *a3 = &getAllResourceTypesToDownloadPrioritizeNonDerivatives__allResourceTypes;
}

double __69__CPLResource_getAllResourceTypesToDownloadPrioritizeNonDerivatives___block_invoke()
{
  v0 = 0;
  v1 = &getAllResourceTypesToDownloadPrioritizeNonDerivatives__allResourceTypes;
  do
  {
    if ([CPLResource isNonDerivativeResourceType:v0])
    {
      *v1 = v0;
      v1 = (v1 + 8);
    }

    ++v0;
  }

  while (v0 != 29);
  *&result = 5;
  *v1 = xmmword_1DC208A70;
  return result;
}

- (unint64_t)estimatedResourceSize
{
  result = [(CPLResourceIdentity *)self->_identity fileSize];
  if (!result)
  {
    resourceType = self->_resourceType;
    result = 104857600;
    switch(resourceType)
    {
      case 1uLL:
      case 0x10uLL:
      case 0x17uLL:
      case 0x19uLL:
        goto LABEL_9;
      case 2uLL:
      case 6uLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x11uLL:
      case 0x1CuLL:
        result = 0x200000;
        break;
      case 3uLL:
      case 7uLL:
      case 9uLL:
      case 0x16uLL:
        result = 0x100000;
        break;
      case 4uLL:
        result = 614400;
        break;
      case 5uLL:
        result = 51200;
        break;
      case 8uLL:
        result = 3145728;
        break;
      case 0xAuLL:
      case 0xDuLL:
      case 0x1AuLL:
      case 0x1BuLL:
        result = 102400;
        break;
      case 0xBuLL:
      case 0xCuLL:
        return result;
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x18uLL:
        result = 0x400000;
        break;
      default:
        if (resourceType == 1000)
        {
LABEL_9:
          result = 10485760;
        }

        break;
    }
  }

  return result;
}

- (id)bestFileNameForResource
{
  v3 = [(CPLResource *)self identity];
  v4 = [v3 fingerPrint];
  v5 = [v3 fileUTI];
  v6 = [CPLResourceIdentity storageNameForFingerPrint:v4 fileUTI:v5 bucket:0];

  if (v6)
  {
    v7 = [(CPLResource *)self resourceType];
    v8 = @"Unknown_";
    switch(v7)
    {
      case 0uLL:
        break;
      case 1uLL:
        v8 = @"Original_";
        break;
      case 2uLL:
        v8 = @"FullSize_";
        break;
      case 3uLL:
        v8 = @"LargeSize_";
        break;
      case 4uLL:
        v8 = @"MediumSize_";
        break;
      case 5uLL:
        v8 = @"Thumb_";
        break;
      case 6uLL:
        v8 = @"VideoMedium_";
        break;
      case 7uLL:
        v8 = @"Small_";
        break;
      case 8uLL:
        v8 = @"Audio_";
        break;
      case 9uLL:
        v8 = @"SidecarXMP_";
        break;
      case 0xAuLL:
        v8 = @"MediaMetaData_";
        break;
      case 0xBuLL:
      case 0xCuLL:
        goto LABEL_7;
      case 0xDuLL:
        v8 = @"AdjustmentData_";
        break;
      case 0xEuLL:
        v8 = @"AdjustmentSecondaryData_";
        break;
      case 0xFuLL:
        v8 = @"AdjustmentBaseFullSize_";
        break;
      case 0x10uLL:
        v8 = @"VideoFull_";
        break;
      case 0x11uLL:
        v8 = @"OriginalAlt_";
        break;
      case 0x12uLL:
        v8 = @"OriginalVidCompl_";
        break;
      case 0x13uLL:
        v8 = @"VideoCompl_";
        break;
      case 0x14uLL:
        v8 = @"AdjustmentBaseVideoCompl_";
        break;
      case 0x15uLL:
        v8 = @"VideoLargeSize_";
        break;
      case 0x16uLL:
        v8 = @"SidecarOther_";
        break;
      case 0x17uLL:
        v8 = @"OriginalSpatialOverCapture_";
        break;
      case 0x18uLL:
        v8 = @"OriginalSpatialOverCaptureVidCompl_";
        break;
      case 0x19uLL:
        v8 = @"AdjustmentBaseVideo_";
        break;
      case 0x1AuLL:
        v8 = @"VideoMetaData_";
        break;
      case 0x1BuLL:
        v8 = @"AdjustedMediaMetaData_";
        break;
      case 0x1CuLL:
        v8 = @"VideoHDRMedium_";
        break;
      default:
        if (v7 == 1000)
        {
          v8 = @"AdjustmentOriginalResource_";
        }

        else
        {
LABEL_7:
          v8 = @"Unsupported_";
        }

        break;
    }

    v9 = [(__CFString *)v8 stringByAppendingString:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)redactedDescription
{
  v3 = [(CPLResource *)self identity];
  v4 = [v3 fileURL];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [CPLResource shortDescriptionForResourceType:[(CPLResource *)self resourceType]];
  v7 = [(CPLResource *)self itemScopedIdentifier];
  v8 = [v3 fingerPrint];
  v9 = [v3 fileUTI];
  v10 = [v3 isAvailable];
  v11 = " unavailable";
  if (v10)
  {
    v11 = "";
  }

  if (v4)
  {
    v12 = @"[%@ for %@ (%@ - %@) file: <redacted>%s]";
  }

  else
  {
    v12 = @"[%@ for %@ (%@ - %@) no file%s]";
  }

  v13 = [v5 stringWithFormat:v12, v6, v7, v8, v9, v11];

  return v13;
}

- (id)description
{
  v3 = [(CPLResource *)self identity];
  v4 = [v3 fileURL];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [CPLResource shortDescriptionForResourceType:[(CPLResource *)self resourceType]];
  v7 = [(CPLResource *)self itemScopedIdentifier];
  v8 = [v3 fingerPrint];
  v9 = [v3 fileUTI];
  if (v4)
  {
    v10 = [v4 path];
    v11 = [v3 isAvailable];
    v12 = " unavailable";
    if (v11)
    {
      v12 = "";
    }

    v13 = [v5 stringWithFormat:@"[%@ for %@ (%@ - %@) file: %@%s]", v6, v7, v8, v9, v10, v12];
  }

  else
  {
    v14 = [v3 isAvailable];
    v15 = " unavailable";
    if (v14)
    {
      v15 = "";
    }

    v13 = [v5 stringWithFormat:@"[%@ for %@ (%@ - %@) no file%s]", v6, v7, v8, v9, v15];
  }

  return v13;
}

- (void)setItemIdentifier:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v4];
  }

  itemScopedIdentifier = self->_itemScopedIdentifier;
  self->_itemScopedIdentifier = v4;
}

- (CPLResource)initWithResourceIdentity:(id)a3 itemScopedIdentifier:(id)a4 resourceType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CPLResource;
  v11 = [(CPLResource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identity, a3);
    objc_storeStrong(&v12->_itemScopedIdentifier, a4);
    v12->_resourceType = a5;
  }

  return v12;
}

+ (BOOL)isNonDerivativeResourceType:(unint64_t)a3
{
  if (a3 > 0x1C || a3 <= 0xC && ((1 << a3) & 0x1801) != 0)
  {
    return 0;
  }

  else
  {
    return [a1 isDerivativeResourceType:{v3, v4}] ^ 1;
  }
}

+ (void)enumerateResourceTypesWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v3[2](v3, v4, &v5);
    if (v5)
    {
      break;
    }

    if (++v4 == 29)
    {
      v3[2](v3, 1000, &v5);
      break;
    }
  }
}

+ (BOOL)cplShouldGenerateDerivatives
{
  if (cplShouldGenerateDerivatives_onceToken != -1)
  {
    dispatch_once(&cplShouldGenerateDerivatives_onceToken, &__block_literal_global_12702);
  }

  return cplShouldGenerateDerivatives_cplShouldGenerateDerivatives;
}

uint64_t __43__CPLResource_cplShouldGenerateDerivatives__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v0 objectForKey:@"CPLShouldGenerateDerivatives"];

  v1 = v4;
  if (v4)
  {
    v2 = [v4 BOOLValue];
    v1 = v4;
  }

  else
  {
    v2 = 1;
  }

  cplShouldGenerateDerivatives_cplShouldGenerateDerivatives = v2;

  return MEMORY[0x1EEE66BB8](v2, v1);
}

+ (unint64_t)maxPixelSizeForResourceType:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  result = 104857600;
  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      goto LABEL_16;
    }

    if (a3 == 3)
    {
      result = 25165824;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (a3 == 4)
  {
    result = 3145728;
    goto LABEL_16;
  }

  if (a3 == 5)
  {
    result = 172800;
    goto LABEL_16;
  }

  if (a3 != 15)
  {
LABEL_11:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [a1 descriptionForResourceType:a3];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Unsupported resource type %@ for maxPixels", &v9, 0xCu);
      }
    }

    result = 0;
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)shortDescriptionForResourceType:(unint64_t)a3
{
  v4 = @"Unknown";
  switch(a3)
  {
    case 0xFFFFFFFFFFFFFFFFLL:
      v4 = @"Any";

      break;
    case 0uLL:
      goto LABEL_101;
    case 1uLL:
      v4 = @"Original";

      break;
    case 2uLL:
      v4 = @"JPEGFull";

      break;
    case 3uLL:
      v4 = @"JPEGLarge";

      break;
    case 4uLL:
      v4 = @"JPEGMedium";

      break;
    case 5uLL:
      v4 = @"JPEGThumbnail";

      break;
    case 6uLL:
      v4 = @"VideoMedium";

      break;
    case 7uLL:
      v4 = @"VideoSmall";

      break;
    case 8uLL:
      v4 = @"Audio";

      break;
    case 9uLL:
      v4 = @"SidecarXMP";

      break;
    case 0xAuLL:
      v4 = @"MediaMetaData";

      break;
    case 0xBuLL:
      v4 = @"Unused1";

      break;
    case 0xCuLL:
      v4 = @"Unused2";

      break;
    case 0xDuLL:
      v4 = @"AdjustmentData";

      break;
    case 0xEuLL:
      v4 = @"AdjustmentSecondaryData";

      break;
    case 0xFuLL:
      v4 = @"AdjustmentBaseFullSize";

      break;
    case 0x10uLL:
      v4 = @"VideoFull";

      break;
    case 0x11uLL:
      v4 = @"OriginalAlt";

      break;
    case 0x12uLL:
      v4 = @"OriginalVidCompl";

      break;
    case 0x13uLL:
      v4 = @"VideoCompl";

      break;
    case 0x14uLL:
      v4 = @"AdjustmentBaseVideoCompl";

      break;
    case 0x15uLL:
      v4 = @"VideoLarge";

      break;
    case 0x16uLL:
      v4 = @"SidecarOther";

      break;
    case 0x17uLL:
      v4 = @"OriginalSpatialOverCapture";

      break;
    case 0x18uLL:
      v4 = @"OriginalSpatialOverCaptureVideoComplement";

      break;
    case 0x19uLL:
      v4 = @"AdjustmentBaseVideo";

      break;
    case 0x1AuLL:
      v4 = @"VideoMetaData";

      break;
    case 0x1BuLL:
      v4 = @"AdjustedMediaMetaData";

      break;
    case 0x1CuLL:
      v4 = @"VideoHDRMedium";

      break;
    case 0x1DuLL:
      v4 = @"MaxNormal";

      break;
    default:
      if (a3 == 1000)
      {
        v4 = @"AdjustmentOriginalResource";
      }

      else if (a3 == 1001)
      {
        v4 = @"Max";
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceType-%i", a3];
LABEL_101:
      }

      break;
  }

  return v4;
}

+ (id)descriptionForResourceType:(unint64_t)a3
{
  v4 = @"CPLResourceTypeUnknown";
  switch(a3)
  {
    case 0xFFFFFFFFFFFFFFFFLL:
      v4 = @"CPLResourceTypeAny";

      break;
    case 0uLL:
      goto LABEL_101;
    case 1uLL:
      v4 = @"CPLResourceTypeOriginal";

      break;
    case 2uLL:
      v4 = @"CPLResourceTypeJPEGFullSize";

      break;
    case 3uLL:
      v4 = @"CPLResourceTypeJPEGLargeSize";

      break;
    case 4uLL:
      v4 = @"CPLResourceTypeJPEGMediumSize";

      break;
    case 5uLL:
      v4 = @"CPLResourceTypeJPEGThumbnail";

      break;
    case 6uLL:
      v4 = @"CPLResourceTypeVideoMediumSize";

      break;
    case 7uLL:
      v4 = @"CPLResourceTypeVideoSmallSize";

      break;
    case 8uLL:
      v4 = @"CPLResourceTypeSidecarAudio";

      break;
    case 9uLL:
      v4 = @"CPLResourceTypeSidecarXMP";

      break;
    case 0xAuLL:
      v4 = @"CPLResourceTypeMediaMetaData";

      break;
    case 0xBuLL:
      v4 = @"CPLResourceTypeUnused1";

      break;
    case 0xCuLL:
      v4 = @"CPLResourceTypeUnused2";

      break;
    case 0xDuLL:
      v4 = @"CPLResourceTypeAdjustmentData";

      break;
    case 0xEuLL:
      v4 = @"CPLResourceTypeAdjustmentSecondaryData";

      break;
    case 0xFuLL:
      v4 = @"CPLResourceTypeAdjustmentBaseJPEGFullSize";

      break;
    case 0x10uLL:
      v4 = @"CPLResourceTypeVideoFullSize";

      break;
    case 0x11uLL:
      v4 = @"CPLResourceTypeOriginalAlternate";

      break;
    case 0x12uLL:
      v4 = @"CPLResourceTypeOriginalVideoComplement";

      break;
    case 0x13uLL:
      v4 = @"CPLResourceTypeVideoComplement";

      break;
    case 0x14uLL:
      v4 = @"CPLResourceTypeAdjustmentBaseVideoComplement";

      break;
    case 0x15uLL:
      v4 = @"CPLResourceTypeVideoLargeSize";

      break;
    case 0x16uLL:
      v4 = @"CPLResourceTypeSidecarOther";

      break;
    case 0x17uLL:
      v4 = @"CPLResourceTypeOriginalSpatialOverCapture";

      break;
    case 0x18uLL:
      v4 = @"CPLResourceTypeOriginalSpatialOverCaptureVideoComplement";

      break;
    case 0x19uLL:
      v4 = @"CPLResourceTypeAdjustmentBaseVideo";

      break;
    case 0x1AuLL:
      v4 = @"CPLResourceTypeVideoMetaData";

      break;
    case 0x1BuLL:
      v4 = @"CPLResourceTypeAdjustedMediaMetaData";

      break;
    case 0x1CuLL:
      v4 = @"CPLResourceTypeVideoHDRMediumSize";

      break;
    case 0x1DuLL:
      v4 = @"_CPLResourceTypeMaxNormal";

      break;
    default:
      if (a3 == 1000)
      {
        v4 = @"CPLResourceTypeAdjustmentOriginalResource";
      }

      else if (a3 == 1001)
      {
        v4 = @"CPLResourceTypeMax";
      }

      else
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown resource type %i", a3];
LABEL_101:
      }

      break;
  }

  return v4;
}

+ (unint64_t)resourceTypeFromShortDescription:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CPLResource_resourceTypeFromShortDescription___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (resourceTypeFromShortDescription__onceToken != -1)
  {
    dispatch_once(&resourceTypeFromShortDescription__onceToken, block);
  }

  v5 = [resourceTypeFromShortDescription__mapping objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __48__CPLResource_resourceTypeFromShortDescription___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CPLResource_resourceTypeFromShortDescription___block_invoke_2;
  v8[3] = &unk_1E861DA08;
  v4 = v2;
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  [v3 enumerateResourceTypesWithBlock:v8];
  v6 = resourceTypeFromShortDescription__mapping;
  resourceTypeFromShortDescription__mapping = v4;
  v7 = v4;
}

void __48__CPLResource_resourceTypeFromShortDescription___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) shortDescriptionForResourceType:a2];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }
}

+ (id)normalizedResourcesFromResources:(id)a3 resourcePerResourceType:(id *)a4
{
  v34[16] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v21 = a4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "resourceType", v21)}];
          [v6 setObject:v11 forKey:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    v13 = +[CPLResource countOfResourceTypes];
    v14 = &v22[-1] - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, 8 * v13);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__CPLResource_normalizedResourcesFromResources_resourcePerResourceType___block_invoke;
    v22[3] = &unk_1E861D9E0;
    v15 = v6;
    v24 = &v26;
    v25 = v14;
    v23 = v15;
    [CPLResource enumerateResourceTypesWithBlock:v22];
    if (v27[3])
    {
      v16 = v15;
      *v21 = v15;
      v17 = objc_alloc(MEMORY[0x1E695DEC8]);
      v18 = [v17 initWithObjects:v14 count:v27[3]];
    }

    else
    {
      *v21 = MEMORY[0x1E695E0F8];
      v18 = MEMORY[0x1E695E0F0];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    *a4 = MEMORY[0x1E695E0F8];
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __72__CPLResource_normalizedResourcesFromResources_resourcePerResourceType___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    *(a1[6] + 8 * (*(*(a1[5] + 8) + 24))++) = v5;
  }
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"itemIdentifier"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"canGenerateDerivative"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLResource;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

@end