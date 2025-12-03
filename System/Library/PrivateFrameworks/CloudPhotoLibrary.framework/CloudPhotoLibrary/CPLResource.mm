@interface CPLResource
+ (BOOL)cplShouldGenerateDerivatives;
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (BOOL)isDynamicFingerprint:(id)fingerprint;
+ (BOOL)isNonDerivativeResourceType:(unint64_t)type;
+ (BOOL)usesFakeDerivatives;
+ (id)descriptionForResourceType:(unint64_t)type;
+ (id)normalizedResourcesFromResources:(id)resources resourcePerResourceType:(id *)type;
+ (id)predicateMatchingDynamicFingerprintForKey:(id)key;
+ (id)shortDescriptionForResourceType:(unint64_t)type;
+ (unint64_t)maxPixelSizeForResourceType:(unint64_t)type;
+ (unint64_t)resourceTypeFromShortDescription:(id)description;
+ (void)enumerateResourceTypesWithBlock:(id)block;
+ (void)getAllResourceTypesToDownloadPrioritizeNonDerivatives:(const unint64_t *)derivatives;
- (CPLResource)initWithCPLArchiver:(id)archiver;
- (CPLResource)initWithCoder:(id)coder;
- (CPLResource)initWithResourceIdentity:(id)identity itemScopedIdentifier:(id)identifier resourceType:(unint64_t)type;
- (id)bestFileNameForResource;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (unint64_t)estimatedResourceSize;
- (void)setItemIdentifier:(id)identifier;
@end

@implementation CPLResource

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLResource;
  v5 = [(CPLResource *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
    itemScopedIdentifier = [(CPLResource *)v6 itemScopedIdentifier];

    if (!itemScopedIdentifier)
    {
      if (initWithCoder__onceToken_103 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_103, &__block_literal_global_106);
      }

      v8 = [coderCopy decodeObjectOfClass:initWithCoder__stringClass_104 forKey:@"itemIdentifier"];
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

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqualToString:@"itemIdentifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLResource;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (CPLResource)initWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v11.receiver = self;
  v11.super_class = CPLResource;
  v5 = [&v11 initWithCPLArchiver:archiverCopy];
  v6 = v5;
  if (v5)
  {
    itemScopedIdentifier = [(CPLResource *)v5 itemScopedIdentifier];

    if (!itemScopedIdentifier)
    {
      if (initWithCPLArchiver__onceToken_1958 != -1)
      {
        dispatch_once(&initWithCPLArchiver__onceToken_1958, &__block_literal_global_1961);
      }

      v8 = [archiverCopy decodeObjectOfClass:initWithCPLArchiver__stringClass_1959 forKey:@"itemIdentifier"];
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

+ (id)predicateMatchingDynamicFingerprintForKey:(id)key
{
  v12[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", keyCopy, @"#"];
  if ([self usesFakeDerivatives])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K BEGINSWITH %@", keyCopy, @"^"];
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

+ (BOOL)isDynamicFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  v5 = ([fingerprintCopy hasPrefix:@"#"] & 1) != 0 || objc_msgSend(self, "usesFakeDerivatives") && (objc_msgSend(fingerprintCopy, "hasPrefix:", @"^") & 1) != 0;

  return v5;
}

+ (void)getAllResourceTypesToDownloadPrioritizeNonDerivatives:(const unint64_t *)derivatives
{
  if (getAllResourceTypesToDownloadPrioritizeNonDerivatives__onceToken != -1)
  {
    dispatch_once(&getAllResourceTypesToDownloadPrioritizeNonDerivatives__onceToken, &__block_literal_global_322);
  }

  *derivatives = &getAllResourceTypesToDownloadPrioritizeNonDerivatives__allResourceTypes;
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
  identity = [(CPLResource *)self identity];
  fingerPrint = [identity fingerPrint];
  fileUTI = [identity fileUTI];
  v6 = [CPLResourceIdentity storageNameForFingerPrint:fingerPrint fileUTI:fileUTI bucket:0];

  if (v6)
  {
    resourceType = [(CPLResource *)self resourceType];
    v8 = @"Unknown_";
    switch(resourceType)
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
        if (resourceType == 1000)
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
  identity = [(CPLResource *)self identity];
  fileURL = [identity fileURL];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [CPLResource shortDescriptionForResourceType:[(CPLResource *)self resourceType]];
  itemScopedIdentifier = [(CPLResource *)self itemScopedIdentifier];
  fingerPrint = [identity fingerPrint];
  fileUTI = [identity fileUTI];
  isAvailable = [identity isAvailable];
  v11 = " unavailable";
  if (isAvailable)
  {
    v11 = "";
  }

  if (fileURL)
  {
    v12 = @"[%@ for %@ (%@ - %@) file: <redacted>%s]";
  }

  else
  {
    v12 = @"[%@ for %@ (%@ - %@) no file%s]";
  }

  v13 = [v5 stringWithFormat:v12, v6, itemScopedIdentifier, fingerPrint, fileUTI, v11];

  return v13;
}

- (id)description
{
  identity = [(CPLResource *)self identity];
  fileURL = [identity fileURL];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [CPLResource shortDescriptionForResourceType:[(CPLResource *)self resourceType]];
  itemScopedIdentifier = [(CPLResource *)self itemScopedIdentifier];
  fingerPrint = [identity fingerPrint];
  fileUTI = [identity fileUTI];
  if (fileURL)
  {
    path = [fileURL path];
    isAvailable = [identity isAvailable];
    v12 = " unavailable";
    if (isAvailable)
    {
      v12 = "";
    }

    v13 = [v5 stringWithFormat:@"[%@ for %@ (%@ - %@) file: %@%s]", v6, itemScopedIdentifier, fingerPrint, fileUTI, path, v12];
  }

  else
  {
    isAvailable2 = [identity isAvailable];
    v15 = " unavailable";
    if (isAvailable2)
    {
      v15 = "";
    }

    v13 = [v5 stringWithFormat:@"[%@ for %@ (%@ - %@) no file%s]", v6, itemScopedIdentifier, fingerPrint, fileUTI, v15];
  }

  return v13;
}

- (void)setItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    identifierCopy = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:identifierCopy];
  }

  itemScopedIdentifier = self->_itemScopedIdentifier;
  self->_itemScopedIdentifier = identifierCopy;
}

- (CPLResource)initWithResourceIdentity:(id)identity itemScopedIdentifier:(id)identifier resourceType:(unint64_t)type
{
  identityCopy = identity;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CPLResource;
  v11 = [(CPLResource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identity, identity);
    objc_storeStrong(&v12->_itemScopedIdentifier, identifier);
    v12->_resourceType = type;
  }

  return v12;
}

+ (BOOL)isNonDerivativeResourceType:(unint64_t)type
{
  if (type > 0x1C || type <= 0xC && ((1 << type) & 0x1801) != 0)
  {
    return 0;
  }

  else
  {
    return [self isDerivativeResourceType:{v3, v4}] ^ 1;
  }
}

+ (void)enumerateResourceTypesWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    blockCopy[2](blockCopy, v4, &v5);
    if (v5)
    {
      break;
    }

    if (++v4 == 29)
    {
      blockCopy[2](blockCopy, 1000, &v5);
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

+ (unint64_t)maxPixelSizeForResourceType:(unint64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  result = 104857600;
  if (type <= 3)
  {
    if (type == 2)
    {
      goto LABEL_16;
    }

    if (type == 3)
    {
      result = 25165824;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (type == 4)
  {
    result = 3145728;
    goto LABEL_16;
  }

  if (type == 5)
  {
    result = 172800;
    goto LABEL_16;
  }

  if (type != 15)
  {
LABEL_11:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [self descriptionForResourceType:type];
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

+ (id)shortDescriptionForResourceType:(unint64_t)type
{
  type = @"Unknown";
  switch(type)
  {
    case 0xFFFFFFFFFFFFFFFFLL:
      type = @"Any";

      break;
    case 0uLL:
      goto LABEL_101;
    case 1uLL:
      type = @"Original";

      break;
    case 2uLL:
      type = @"JPEGFull";

      break;
    case 3uLL:
      type = @"JPEGLarge";

      break;
    case 4uLL:
      type = @"JPEGMedium";

      break;
    case 5uLL:
      type = @"JPEGThumbnail";

      break;
    case 6uLL:
      type = @"VideoMedium";

      break;
    case 7uLL:
      type = @"VideoSmall";

      break;
    case 8uLL:
      type = @"Audio";

      break;
    case 9uLL:
      type = @"SidecarXMP";

      break;
    case 0xAuLL:
      type = @"MediaMetaData";

      break;
    case 0xBuLL:
      type = @"Unused1";

      break;
    case 0xCuLL:
      type = @"Unused2";

      break;
    case 0xDuLL:
      type = @"AdjustmentData";

      break;
    case 0xEuLL:
      type = @"AdjustmentSecondaryData";

      break;
    case 0xFuLL:
      type = @"AdjustmentBaseFullSize";

      break;
    case 0x10uLL:
      type = @"VideoFull";

      break;
    case 0x11uLL:
      type = @"OriginalAlt";

      break;
    case 0x12uLL:
      type = @"OriginalVidCompl";

      break;
    case 0x13uLL:
      type = @"VideoCompl";

      break;
    case 0x14uLL:
      type = @"AdjustmentBaseVideoCompl";

      break;
    case 0x15uLL:
      type = @"VideoLarge";

      break;
    case 0x16uLL:
      type = @"SidecarOther";

      break;
    case 0x17uLL:
      type = @"OriginalSpatialOverCapture";

      break;
    case 0x18uLL:
      type = @"OriginalSpatialOverCaptureVideoComplement";

      break;
    case 0x19uLL:
      type = @"AdjustmentBaseVideo";

      break;
    case 0x1AuLL:
      type = @"VideoMetaData";

      break;
    case 0x1BuLL:
      type = @"AdjustedMediaMetaData";

      break;
    case 0x1CuLL:
      type = @"VideoHDRMedium";

      break;
    case 0x1DuLL:
      type = @"MaxNormal";

      break;
    default:
      if (type == 1000)
      {
        type = @"AdjustmentOriginalResource";
      }

      else if (type == 1001)
      {
        type = @"Max";
      }

      else
      {
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResourceType-%i", type];
LABEL_101:
      }

      break;
  }

  return type;
}

+ (id)descriptionForResourceType:(unint64_t)type
{
  type = @"CPLResourceTypeUnknown";
  switch(type)
  {
    case 0xFFFFFFFFFFFFFFFFLL:
      type = @"CPLResourceTypeAny";

      break;
    case 0uLL:
      goto LABEL_101;
    case 1uLL:
      type = @"CPLResourceTypeOriginal";

      break;
    case 2uLL:
      type = @"CPLResourceTypeJPEGFullSize";

      break;
    case 3uLL:
      type = @"CPLResourceTypeJPEGLargeSize";

      break;
    case 4uLL:
      type = @"CPLResourceTypeJPEGMediumSize";

      break;
    case 5uLL:
      type = @"CPLResourceTypeJPEGThumbnail";

      break;
    case 6uLL:
      type = @"CPLResourceTypeVideoMediumSize";

      break;
    case 7uLL:
      type = @"CPLResourceTypeVideoSmallSize";

      break;
    case 8uLL:
      type = @"CPLResourceTypeSidecarAudio";

      break;
    case 9uLL:
      type = @"CPLResourceTypeSidecarXMP";

      break;
    case 0xAuLL:
      type = @"CPLResourceTypeMediaMetaData";

      break;
    case 0xBuLL:
      type = @"CPLResourceTypeUnused1";

      break;
    case 0xCuLL:
      type = @"CPLResourceTypeUnused2";

      break;
    case 0xDuLL:
      type = @"CPLResourceTypeAdjustmentData";

      break;
    case 0xEuLL:
      type = @"CPLResourceTypeAdjustmentSecondaryData";

      break;
    case 0xFuLL:
      type = @"CPLResourceTypeAdjustmentBaseJPEGFullSize";

      break;
    case 0x10uLL:
      type = @"CPLResourceTypeVideoFullSize";

      break;
    case 0x11uLL:
      type = @"CPLResourceTypeOriginalAlternate";

      break;
    case 0x12uLL:
      type = @"CPLResourceTypeOriginalVideoComplement";

      break;
    case 0x13uLL:
      type = @"CPLResourceTypeVideoComplement";

      break;
    case 0x14uLL:
      type = @"CPLResourceTypeAdjustmentBaseVideoComplement";

      break;
    case 0x15uLL:
      type = @"CPLResourceTypeVideoLargeSize";

      break;
    case 0x16uLL:
      type = @"CPLResourceTypeSidecarOther";

      break;
    case 0x17uLL:
      type = @"CPLResourceTypeOriginalSpatialOverCapture";

      break;
    case 0x18uLL:
      type = @"CPLResourceTypeOriginalSpatialOverCaptureVideoComplement";

      break;
    case 0x19uLL:
      type = @"CPLResourceTypeAdjustmentBaseVideo";

      break;
    case 0x1AuLL:
      type = @"CPLResourceTypeVideoMetaData";

      break;
    case 0x1BuLL:
      type = @"CPLResourceTypeAdjustedMediaMetaData";

      break;
    case 0x1CuLL:
      type = @"CPLResourceTypeVideoHDRMediumSize";

      break;
    case 0x1DuLL:
      type = @"_CPLResourceTypeMaxNormal";

      break;
    default:
      if (type == 1000)
      {
        type = @"CPLResourceTypeAdjustmentOriginalResource";
      }

      else if (type == 1001)
      {
        type = @"CPLResourceTypeMax";
      }

      else
      {
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown resource type %i", type];
LABEL_101:
      }

      break;
  }

  return type;
}

+ (unint64_t)resourceTypeFromShortDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CPLResource_resourceTypeFromShortDescription___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (resourceTypeFromShortDescription__onceToken != -1)
  {
    dispatch_once(&resourceTypeFromShortDescription__onceToken, block);
  }

  v5 = [resourceTypeFromShortDescription__mapping objectForKeyedSubscript:descriptionCopy];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
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

+ (id)normalizedResourcesFromResources:(id)resources resourcePerResourceType:(id *)type
{
  v34[16] = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  if ([resourcesCopy count])
  {
    typeCopy = type;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = resourcesCopy;
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
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "resourceType", typeCopy)}];
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
      *typeCopy = v15;
      v17 = objc_alloc(MEMORY[0x1E695DEC8]);
      v18 = [v17 initWithObjects:v14 count:v27[3]];
    }

    else
    {
      *typeCopy = MEMORY[0x1E695E0F8];
      v18 = MEMORY[0x1E695E0F0];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    *type = MEMORY[0x1E695E0F8];
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

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqualToString:@"itemIdentifier"] & 1) != 0 || (objc_msgSend(equalityCopy, "isEqualToString:", @"canGenerateDerivative"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLResource;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

@end