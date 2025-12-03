@interface NTKPhoto
+ (id)decodeFromDictionary:(id)dictionary forResourceDirectory:(id)directory;
- (BOOL)isEqualToAsset:(id)asset;
- (BOOL)isEqualToPhoto:(id)photo;
- (BOOL)isMissingAnalysis;
- (CGRect)crop;
- (CGRect)originalCrop;
- (NSString)uuidFromLocalIdentifierAndModificationDate;
- (NTKPhoto)initWithLegacySidecar:(id)sidecar;
- (id)analysisForAlignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsDictionary;
- (void)setAnalysis:(id)analysis alignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class;
@end

@implementation NTKPhoto

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_localIdentifier copyWithZone:zone];
  [v5 setLocalIdentifier:v6];

  v7 = [(NSDate *)self->_modificationDate copyWithZone:zone];
  [v5 setModificationDate:v7];

  [v5 setOriginalCrop:{self->_originalCrop.origin.x, self->_originalCrop.origin.y, self->_originalCrop.size.width, self->_originalCrop.size.height}];
  v8 = [(NSURL *)self->_imageURL copyWithZone:zone];
  [v5 setImageURL:v8];

  [v5 setCrop:{self->_crop.origin.x, self->_crop.origin.y, self->_crop.size.width, self->_crop.size.height}];
  for (i = 8; i != 104; i += 8)
  {
    v10 = [*(&self->super.isa + i) copyWithZone:zone];
    v11 = *&v5[i];
    *&v5[i] = v10;
  }

  [v5 setIsIris:self->_isIris];
  v12 = [(NSURL *)self->_irisVideoURL copyWithZone:zone];
  [v5 setIrisVideoURL:v12];

  [v5 setIrisDuration:self->_irisDuration];
  [v5 setIrisStillDisplayTime:self->_irisStillDisplayTime];
  return v5;
}

+ (id)decodeFromDictionary:(id)dictionary forResourceDirectory:(id)directory
{
  dictionaryCopy = dictionary;
  directoryCopy = directory;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"localIdentifier"];
  if (v7)
  {
    v8 = v7;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"imageURL"];
    if (v9)
    {
      v10 = v9;
      v11 = [dictionaryCopy objectForKeyedSubscript:@"isIris"];

      if (v11)
      {
        v12 = objc_opt_new();
        v13 = [dictionaryCopy objectForKeyedSubscript:@"localIdentifier"];
        [v12 setLocalIdentifier:v13];

        v14 = [dictionaryCopy objectForKeyedSubscript:@"modificationDate"];
        [v12 setModificationDate:v14];

        v15 = [dictionaryCopy objectForKeyedSubscript:@"originalCropX"];
        [v15 doubleValue];
        v17 = v16;

        v18 = [dictionaryCopy objectForKeyedSubscript:@"originalCropY"];
        [v18 doubleValue];
        v20 = v19;

        v21 = [dictionaryCopy objectForKeyedSubscript:@"originalCropW"];
        [v21 doubleValue];
        v23 = v22;

        v24 = [dictionaryCopy objectForKeyedSubscript:@"originalCropH"];
        [v24 doubleValue];
        v26 = v25;

        [v12 setOriginalCrop:{v17, v20, v23, v26}];
        v27 = [dictionaryCopy objectForKeyedSubscript:@"imageURL"];
        v28 = [directoryCopy stringByAppendingPathComponent:v27];

        v29 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v28 isDirectory:0];
        [v12 setImageURL:v29];

        v30 = [dictionaryCopy objectForKeyedSubscript:@"cropX"];
        [v30 doubleValue];
        v32 = v31;

        v33 = [dictionaryCopy objectForKeyedSubscript:@"cropY"];
        [v33 doubleValue];
        v35 = v34;

        v36 = [dictionaryCopy objectForKeyedSubscript:@"cropW"];
        [v36 doubleValue];
        v38 = v37;

        v39 = [dictionaryCopy objectForKeyedSubscript:@"cropH"];
        [v39 doubleValue];
        v41 = v40;

        [v12 setCrop:{v32, v35, v38, v41}];
        v42 = [dictionaryCopy objectForKeyedSubscript:@"topAnalysis"];

        if (v42)
        {
          v43 = [NTKPhotoAnalysis alloc];
          v44 = [dictionaryCopy objectForKeyedSubscript:@"topAnalysis"];
          v45 = [(NTKPhotoAnalysis *)v43 initFromDictionary:v44];
          v46 = v12[1];
          v12[1] = v45;
        }

        v47 = [dictionaryCopy objectForKeyedSubscript:@"bottomAnalysis"];

        if (v47)
        {
          v48 = [NTKPhotoAnalysis alloc];
          v49 = [dictionaryCopy objectForKeyedSubscript:@"bottomAnalysis"];
          v50 = [(NTKPhotoAnalysis *)v48 initFromDictionary:v49];
          v51 = v12[2];
          v12[2] = v50;
        }

        v52 = [dictionaryCopy objectForKeyedSubscript:@"leftAnalysis"];

        if (v52)
        {
          v53 = [NTKPhotoAnalysis alloc];
          v54 = [dictionaryCopy objectForKeyedSubscript:@"leftAnalysis"];
          v55 = [(NTKPhotoAnalysis *)v53 initFromDictionary:v54];
          v56 = v12[3];
          v12[3] = v55;
        }

        v57 = [dictionaryCopy objectForKeyedSubscript:@"rightAnalysis"];

        if (v57)
        {
          v58 = [NTKPhotoAnalysis alloc];
          v59 = [dictionaryCopy objectForKeyedSubscript:@"rightAnalysis"];
          v60 = [(NTKPhotoAnalysis *)v58 initFromDictionary:v59];
          v61 = v12[4];
          v12[4] = v60;
        }

        v62 = [dictionaryCopy objectForKeyedSubscript:@"fastAnalysis"];

        if (v62)
        {
          v63 = [NTKPhotoAnalysis alloc];
          v64 = [dictionaryCopy objectForKeyedSubscript:@"fastAnalysis"];
          v65 = [(NTKPhotoAnalysis *)v63 initFromDictionary:v64];
          v66 = v12[5];
          v12[5] = v65;
        }

        v67 = [dictionaryCopy objectForKeyedSubscript:@"slowAnalysis"];

        if (v67)
        {
          v68 = [NTKPhotoAnalysis alloc];
          v69 = [dictionaryCopy objectForKeyedSubscript:@"slowAnalysis"];
          v70 = [(NTKPhotoAnalysis *)v68 initFromDictionary:v69];
          v71 = v12[6];
          v12[6] = v70;
        }

        v72 = [dictionaryCopy objectForKeyedSubscript:@"insideAnalysis"];

        if (v72)
        {
          v73 = [NTKPhotoAnalysis alloc];
          v74 = [dictionaryCopy objectForKeyedSubscript:@"insideAnalysis"];
          v75 = [(NTKPhotoAnalysis *)v73 initFromDictionary:v74];
          v76 = v12[7];
          v12[7] = v75;
        }

        v77 = [dictionaryCopy objectForKeyedSubscript:@"outsideAnalysis"];

        if (v77)
        {
          v78 = [NTKPhotoAnalysis alloc];
          v79 = [dictionaryCopy objectForKeyedSubscript:@"outsideAnalysis"];
          v80 = [(NTKPhotoAnalysis *)v78 initFromDictionary:v79];
          v81 = v12[8];
          v12[8] = v80;
        }

        v82 = [dictionaryCopy objectForKeyedSubscript:@"upAnalysis"];

        if (v82)
        {
          v83 = [NTKPhotoAnalysis alloc];
          v84 = [dictionaryCopy objectForKeyedSubscript:@"upAnalysis"];
          v85 = [(NTKPhotoAnalysis *)v83 initFromDictionary:v84];
          v86 = v12[9];
          v12[9] = v85;
        }

        v87 = [dictionaryCopy objectForKeyedSubscript:@"downAnalysis"];

        if (v87)
        {
          v88 = [NTKPhotoAnalysis alloc];
          v89 = [dictionaryCopy objectForKeyedSubscript:@"downAnalysis"];
          v90 = [(NTKPhotoAnalysis *)v88 initFromDictionary:v89];
          v91 = v12[10];
          v12[10] = v90;
        }

        v92 = [dictionaryCopy objectForKeyedSubscript:@"northAnalysis"];

        if (v92)
        {
          v93 = [NTKPhotoAnalysis alloc];
          v94 = [dictionaryCopy objectForKeyedSubscript:@"northAnalysis"];
          v95 = [(NTKPhotoAnalysis *)v93 initFromDictionary:v94];
          v96 = v12[11];
          v12[11] = v95;
        }

        v97 = [dictionaryCopy objectForKeyedSubscript:@"southAnalysis"];

        if (v97)
        {
          v98 = [NTKPhotoAnalysis alloc];
          v99 = [dictionaryCopy objectForKeyedSubscript:@"southAnalysis"];
          v100 = [(NTKPhotoAnalysis *)v98 initFromDictionary:v99];
          v101 = v12[12];
          v12[12] = v100;
        }

        v102 = [dictionaryCopy objectForKeyedSubscript:@"isIris"];
        [v12 setIsIris:{objc_msgSend(v102, "BOOLValue")}];

        if ([v12 isIris])
        {
          v103 = [dictionaryCopy objectForKeyedSubscript:@"irisVideoURL"];
          v104 = [directoryCopy stringByAppendingPathComponent:v103];

          v105 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v104 isDirectory:0];
          [v12 setIrisVideoURL:v105];

          v106 = [dictionaryCopy objectForKeyedSubscript:@"irisDuration"];
          [v106 doubleValue];
          [v12 setIrisDuration:?];

          v107 = [dictionaryCopy objectForKeyedSubscript:@"irisStillDisplayTime"];
          [v107 doubleValue];
          [v12 setIrisStillDisplayTime:?];
        }

        else
        {
          [v12 setIrisVideoURL:0];
          [v12 setIrisDuration:0.0];
          [v12 setIrisStillDisplayTime:0.0];
        }

        goto LABEL_36;
      }
    }

    else
    {
    }
  }

  v108 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
  {
    +[NTKPhoto decodeFromDictionary:forResourceDirectory:];
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (id)encodeAsDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:self->_localIdentifier forKeyedSubscript:@"localIdentifier"];
  [v3 setObject:self->_modificationDate forKeyedSubscript:@"modificationDate"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_originalCrop.origin.x];
  [v3 setObject:v4 forKeyedSubscript:@"originalCropX"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_originalCrop.origin.y];
  [v3 setObject:v5 forKeyedSubscript:@"originalCropY"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_originalCrop.size.width];
  [v3 setObject:v6 forKeyedSubscript:@"originalCropW"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_originalCrop.size.height];
  [v3 setObject:v7 forKeyedSubscript:@"originalCropH"];

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{-[NSURL fileSystemRepresentation](self->_imageURL, "fileSystemRepresentation")}];
  lastPathComponent = [v8 lastPathComponent];
  [v3 setObject:lastPathComponent forKeyedSubscript:@"imageURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_crop.origin.x];
  [v3 setObject:v10 forKeyedSubscript:@"cropX"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_crop.origin.y];
  [v3 setObject:v11 forKeyedSubscript:@"cropY"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_crop.size.width];
  [v3 setObject:v12 forKeyedSubscript:@"cropW"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_crop.size.height];
  [v3 setObject:v13 forKeyedSubscript:@"cropH"];

  v14 = self->_analyses[0];
  if (v14)
  {
    encodeAsDictionary = [(NTKPhotoAnalysis *)v14 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary forKeyedSubscript:@"topAnalysis"];
  }

  v16 = self->_analyses[1];
  if (v16)
  {
    encodeAsDictionary2 = [(NTKPhotoAnalysis *)v16 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary2 forKeyedSubscript:@"bottomAnalysis"];
  }

  v18 = self->_analyses[2];
  if (v18)
  {
    encodeAsDictionary3 = [(NTKPhotoAnalysis *)v18 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary3 forKeyedSubscript:@"leftAnalysis"];
  }

  v20 = self->_analyses[3];
  if (v20)
  {
    encodeAsDictionary4 = [(NTKPhotoAnalysis *)v20 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary4 forKeyedSubscript:@"rightAnalysis"];
  }

  v22 = self->_analyses[4];
  if (v22)
  {
    encodeAsDictionary5 = [(NTKPhotoAnalysis *)v22 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary5 forKeyedSubscript:@"fastAnalysis"];
  }

  v24 = self->_analyses[5];
  if (v24)
  {
    encodeAsDictionary6 = [(NTKPhotoAnalysis *)v24 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary6 forKeyedSubscript:@"slowAnalysis"];
  }

  v26 = self->_analyses[6];
  if (v26)
  {
    encodeAsDictionary7 = [(NTKPhotoAnalysis *)v26 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary7 forKeyedSubscript:@"insideAnalysis"];
  }

  v28 = self->_analyses[7];
  if (v28)
  {
    encodeAsDictionary8 = [(NTKPhotoAnalysis *)v28 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary8 forKeyedSubscript:@"outsideAnalysis"];
  }

  v30 = self->_analyses[8];
  if (v30)
  {
    encodeAsDictionary9 = [(NTKPhotoAnalysis *)v30 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary9 forKeyedSubscript:@"upAnalysis"];
  }

  v32 = self->_analyses[9];
  if (v32)
  {
    encodeAsDictionary10 = [(NTKPhotoAnalysis *)v32 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary10 forKeyedSubscript:@"downAnalysis"];
  }

  v34 = self->_analyses[10];
  if (v34)
  {
    encodeAsDictionary11 = [(NTKPhotoAnalysis *)v34 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary11 forKeyedSubscript:@"northAnalysis"];
  }

  v36 = self->_analyses[11];
  if (v36)
  {
    encodeAsDictionary12 = [(NTKPhotoAnalysis *)v36 encodeAsDictionary];
    [v3 setObject:encodeAsDictionary12 forKeyedSubscript:@"southAnalysis"];
  }

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIris];
  [v3 setObject:v38 forKeyedSubscript:@"isIris"];

  if (self->_isIris)
  {
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{-[NSURL fileSystemRepresentation](self->_irisVideoURL, "fileSystemRepresentation")}];
    lastPathComponent2 = [v39 lastPathComponent];
    [v3 setObject:lastPathComponent2 forKeyedSubscript:@"irisVideoURL"];

    v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_irisDuration];
    [v3 setObject:v41 forKeyedSubscript:@"irisDuration"];

    v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_irisStillDisplayTime];
    [v3 setObject:v42 forKeyedSubscript:@"irisStillDisplayTime"];
  }

  else
  {
    [v3 setObject:&stru_284110E98 forKeyedSubscript:@"irisVideoURL"];
    [v3 setObject:&unk_284181EA0 forKeyedSubscript:@"irisDuration"];
    [v3 setObject:&unk_284181EA0 forKeyedSubscript:@"irisStillDisplayTime"];
  }

  return v3;
}

- (BOOL)isEqualToPhoto:(id)photo
{
  photoCopy = photo;
  v5 = photoCopy;
  if (self == photoCopy)
  {
    v22 = 1;
  }

  else if (photoCopy)
  {
    localIdentifier = [(NTKPhoto *)self localIdentifier];
    localIdentifier2 = [(NTKPhoto *)v5 localIdentifier];
    if ([localIdentifier isEqualToString:localIdentifier2])
    {
      modificationDate = [(NTKPhoto *)self modificationDate];
      modificationDate2 = [(NTKPhoto *)v5 modificationDate];
      if ([modificationDate isEqualToDate:modificationDate2])
      {
        [(NTKPhoto *)self crop];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [(NTKPhoto *)v5 crop];
        v25.origin.x = v18;
        v25.origin.y = v19;
        v25.size.width = v20;
        v25.size.height = v21;
        v24.origin.x = v11;
        v24.origin.y = v13;
        v24.size.width = v15;
        v24.size.height = v17;
        v22 = CGRectEqualToRect(v24, v25);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  localIdentifier = [(NTKPhoto *)self localIdentifier];
  if (!localIdentifier)
  {
    goto LABEL_8;
  }

  v6 = localIdentifier;
  localIdentifier2 = [assetCopy localIdentifier];
  localIdentifier3 = [(NTKPhoto *)self localIdentifier];
  v9 = [localIdentifier2 isEqualToString:localIdentifier3];

  if (!v9)
  {
    goto LABEL_8;
  }

  modificationDate = [(NTKPhoto *)self modificationDate];
  if (!modificationDate)
  {
    goto LABEL_8;
  }

  v11 = modificationDate;
  modificationDate2 = [assetCopy modificationDate];
  if (!modificationDate2)
  {

    goto LABEL_8;
  }

  v13 = modificationDate2;
  modificationDate3 = [assetCopy modificationDate];
  modificationDate4 = [(NTKPhoto *)self modificationDate];
  [modificationDate3 timeIntervalSinceDate:modificationDate4];
  v17 = v16;

  if (v17 > 1.0)
  {
LABEL_8:
    LOBYTE(v19) = 0;
    goto LABEL_9;
  }

  isIris = [(NTKPhoto *)self isIris];
  v19 = isIris ^ [assetCopy isPhotoIris] ^ 1;
LABEL_9:

  return v19;
}

- (NSString)uuidFromLocalIdentifierAndModificationDate
{
  v3 = MEMORY[0x277CD9918];
  localIdentifier = [(NTKPhoto *)self localIdentifier];
  v5 = [v3 uuidFromLocalIdentifier:localIdentifier];
  modificationDate = [(NTKPhoto *)self modificationDate];
  [modificationDate timeIntervalSince1970];
  v8 = [v5 stringByAppendingFormat:@"~%ld", v7];

  return v8;
}

- (BOOL)isMissingAnalysis
{
  if (!self->_analyses[0])
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 11)
    {
      break;
    }
  }

  while (self->_analyses[++v2]);
  return v3 < 0xB;
}

- (id)analysisForAlignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class
{
  v5 = _NTKPhotoAnalysisIndex(alignment);
  if (v5 > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_analyses[v5];
  }

  return v6;
}

- (void)setAnalysis:(id)analysis alignment:(unint64_t)alignment deviceSizeClass:(unint64_t)class
{
  analysisCopy = analysis;
  v8 = _NTKPhotoAnalysisIndex(alignment);
  if (v8 <= 0xB)
  {
    objc_storeStrong(&self->_analyses[v8], analysis);
  }
}

- (CGRect)originalCrop
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)crop
{
  x = self->_crop.origin.x;
  y = self->_crop.origin.y;
  width = self->_crop.size.width;
  height = self->_crop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NTKPhoto)initWithLegacySidecar:(id)sidecar
{
  v97 = *MEMORY[0x277D85DE8];
  sidecarCopy = sidecar;
  v86.receiver = self;
  v86.super_class = NTKPhoto;
  v5 = [(NTKPhoto *)&v86 init];
  if (v5)
  {
    v6 = [sidecarCopy stringByAppendingPathComponent:@"Info.plist"];
    v7 = 0x277CBE000uLL;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v9 = v8;
    if (!v8)
    {
      v30 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(NTKPhoto(Legacy) *)v5 initWithLegacySidecar:v6, v30];
      }

      goto LABEL_39;
    }

    v10 = [v8 objectForKeyedSubscript:@"identifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v10;

    v12 = [v9 objectForKeyedSubscript:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v12;

    v14 = *(MEMORY[0x277CBF398] + 16);
    v5->_originalCrop.origin = *MEMORY[0x277CBF398];
    v5->_originalCrop.size = v14;
    v15 = MEMORY[0x277CBEBC0];
    v16 = [sidecarCopy stringByAppendingPathComponent:@"Image.jpg"];
    v17 = [v15 fileURLWithPath:v16 isDirectory:0];
    imageURL = v5->_imageURL;
    v5->_imageURL = v17;

    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    [currentDevice screenScale];
    v21 = v20;

    v22 = v5->_imageURL;
    *v88 = *MEMORY[0x277CBF3A8];
    v23 = CGImageSourceCreateWithURL(v22, 0);
    if (v23)
    {
      v24 = v23;
      v25 = CGImageSourceCopyPropertiesAtIndex(v23, 0, 0);
      CFRelease(v24);
      if (v25)
      {
        Value = CFDictionaryGetValue(v25, *MEMORY[0x277CD3450]);
        v27 = CFDictionaryGetValue(v25, *MEMORY[0x277CD3448]);
        v28 = CFDictionaryGetValue(v25, *MEMORY[0x277CD3410]);
        valuePtr = 1;
        if (v28)
        {
          CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
          if ((valuePtr - 5) >= 4)
          {
            v29 = v27;
          }

          else
          {
            v29 = Value;
          }

          if ((valuePtr - 5) < 4)
          {
            Value = v27;
          }

          v27 = v29;
        }

        if (Value && v27)
        {
          CFNumberGetValue(Value, kCFNumberCGFloatType, v88);
          v7 = 0x277CBE000;
          CFNumberGetValue(v27, kCFNumberCGFloatType, &v88[8]);
        }

        CFRelease(v25);
LABEL_23:

        v32 = *v88;
        v33 = *&v88[8];
        v34 = [v9 objectForKeyedSubscript:@"contentOffsetX"];
        [v34 floatValue];
        v36 = v21 * v35;
        v37 = [v9 objectForKeyedSubscript:@"contentOffsetY"];
        [v37 floatValue];
        v39 = v21 * v38;
        v40 = [v9 objectForKeyedSubscript:@"zoomScale"];
        [v40 floatValue];
        v42 = v41;
        currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
        [currentDevice2 screenBounds];
        v45 = v44;
        v47 = v46;

        currentDevice3 = [MEMORY[0x277CBBAE8] currentDevice];
        [currentDevice3 screenScale];
        v50 = v49;

        CGAffineTransformMakeScale(v88, v50, v50);
        v51 = v47 * *&v88[16] + *v88 * v45;
        v52 = v47 * *&v88[24] + *&v88[8] * v45;
        v53 = v51 / v32;
        if (v51 / v32 < v52 / v33)
        {
          v53 = v52 / v33;
        }

        v85 = v42;
        v54 = v53 * v42;
        v55 = v36;
        v56 = v51 / v54;
        v57 = v52 / v54;
        v58 = v32 - v51 / v54;
        if (v36 / v54 < v58)
        {
          v58 = v36 / v54;
        }

        v59 = fmax(v58, 0.0);
        v60 = v33 - v57;
        if (v39 / v54 < v33 - v57)
        {
          v60 = v39 / v54;
        }

        v61 = fmax(v60, 0.0);
        v62 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *v88 = 134220032;
          *&v88[4] = v32;
          *&v88[12] = 2048;
          *&v88[14] = v33;
          *&v88[22] = 2048;
          *&v88[24] = v55;
          *&v88[32] = 2048;
          *&v88[34] = v39;
          *&v88[42] = 2048;
          *&v88[44] = v85;
          v89 = 2048;
          v90 = v59;
          v91 = 2048;
          v92 = v61;
          v93 = 2048;
          v94 = v56;
          v95 = 2048;
          v96 = v57;
          _os_log_impl(&dword_22D9C5000, v62, OS_LOG_TYPE_DEFAULT, "_findCropOfLegacyImage: { sz: (%.2f, %.2f), off: (%.2f %.2f), scale: %.2f } ==> (%.2f, %.2f, %.2f, %.2f)", v88, 0x5Cu);
        }

        v5->_crop.origin.x = v59;
        v5->_crop.origin.y = v61;
        v5->_crop.size.width = v56;
        v5->_crop.size.height = v57;

        v30 = [sidecarCopy stringByAppendingPathComponent:@"Supplement.plist"];
        v63 = [*(v7 + 2752) dictionaryWithContentsOfFile:v30];
        if (v63)
        {
          v64 = [NTKPhotoAnalysis alloc];
          v65 = [v63 objectForKeyedSubscript:@"analysis-top"];
          v66 = [(NTKPhotoAnalysis *)v64 initFromDictionary:v65];
          v67 = v5->_analyses[0];
          v5->_analyses[0] = v66;

          v68 = [NTKPhotoAnalysis alloc];
          v69 = [v63 objectForKeyedSubscript:@"analysis-bottom"];
          v70 = [(NTKPhotoAnalysis *)v68 initFromDictionary:v69];
          v71 = v5->_analyses[1];
          v5->_analyses[1] = v70;
        }

        v72 = [v9 objectForKeyedSubscript:@"iris"];
        if ([v72 BOOLValue])
        {
          v73 = [v9 objectForKeyedSubscript:@"irisVideoHidden"];
          bOOLValue = [v73 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            v5->_isIris = 1;
            v75 = MEMORY[0x277CBEBC0];
            v76 = [sidecarCopy stringByAppendingPathComponent:@"Iris.mov"];
            v77 = [v75 fileURLWithPath:v76 isDirectory:0];
            irisVideoURL = v5->_irisVideoURL;
            v5->_irisVideoURL = v77;

            v79 = [v9 objectForKeyedSubscript:@"irisDuration"];
            [v79 floatValue];
            v5->_irisDuration = v80;

            v81 = [v9 objectForKeyedSubscript:@"irisStillDisplayTime"];
            [v81 floatValue];
            v5->_irisStillDisplayTime = v82;

LABEL_38:
LABEL_39:

            goto LABEL_40;
          }
        }

        else
        {
        }

        v5->_isIris = 0;
        v83 = v5->_irisVideoURL;
        v5->_irisVideoURL = 0;

        v5->_irisDuration = 0.0;
        v5->_irisStillDisplayTime = 0.0;
        goto LABEL_38;
      }

      v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [NTKPhoto(Legacy) initWithLegacySidecar:];
      }
    }

    else
    {
      v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [NTKPhoto(Legacy) initWithLegacySidecar:];
      }
    }

    goto LABEL_23;
  }

LABEL_40:

  return v5;
}

@end