@interface BWStillImageProcessingSettings
- (BOOL)isEqual:(id)equal;
- (BWStillImageProcessingSettings)initWithCoder:(id)coder;
- (BWStillImageProcessingSettings)initWithPhotoManifest:(id)manifest processIntelligentDistortionCorrection:(BOOL)correction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWStillImageProcessingSettings

- (BWStillImageProcessingSettings)initWithPhotoManifest:(id)manifest processIntelligentDistortionCorrection:(BOOL)correction
{
  v19.receiver = self;
  v19.super_class = BWStillImageProcessingSettings;
  v6 = [(BWStillImageProcessingSettings *)&v19 init];
  if (v6)
  {
    v6->_photoManifest = manifest;
    v6->_processIntelligentDistortionCorrection = correction;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    photoDescriptors = [manifest photoDescriptors];
    v8 = [photoDescriptors countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(photoDescriptors);
        }

        processingFlags = [*(*(&v15 + 1) + 8 * v11) processingFlags];
        v6->_provideDemosaicedRaw = BYTE2(processingFlags) & 1;
        if ((processingFlags & 0x10000) != 0)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [photoDescriptors countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          return v6;
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessingSettings;
  [(BWStillImageProcessingSettings *)&v3 dealloc];
}

- (BWStillImageProcessingSettings)initWithCoder:(id)coder
{
  v4 = -[BWStillImageProcessingSettings initWithPhotoManifest:processIntelligentDistortionCorrection:](self, "initWithPhotoManifest:processIntelligentDistortionCorrection:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"photoManifest"], objc_msgSend(coder, "decodeBoolForKey:", @"processIntelligentDistortionCorrection"));
  if (v4)
  {
    v4->_optimizedProcessingForZoomFOVEnabled = [coder decodeBoolForKey:@"optimizedProcessingForZoomFOVEnabled"];
    v4->_optimizedProcessingWithCropAndDownscaleEnabled = [coder decodeBoolForKey:@"optimizedProcessingWithCropAndDownscaleEnabled"];
    v4->_documentScanning = [coder decodeBoolForKey:@"documentScanning"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_photoManifest forKey:@"photoManifest"];
  [coder encodeBool:self->_processIntelligentDistortionCorrection forKey:@"processIntelligentDistortionCorrection"];
  [coder encodeBool:self->_optimizedProcessingForZoomFOVEnabled forKey:@"optimizedProcessingForZoomFOVEnabled"];
  [coder encodeBool:self->_optimizedProcessingWithCropAndDownscaleEnabled forKey:@"optimizedProcessingWithCropAndDownscaleEnabled"];
  documentScanning = self->_documentScanning;

  [coder encodeBool:documentScanning forKey:@"documentScanning"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_9:
      LOBYTE(v12) = 0;
      return v12;
    }

    photoManifest = [(BWStillImageProcessingSettings *)self photoManifest];
    if (photoManifest == [equal photoManifest] || (v12 = -[BWPhotoManifest isEqual:](-[BWStillImageProcessingSettings photoManifest](self, "photoManifest"), "isEqual:", objc_msgSend(equal, "photoManifest"))) != 0)
    {
      v13 = [(BWStillImageProcessingSettings *)self processIntelligentDistortionCorrection:v6];
      if (v13 != [equal processIntelligentDistortionCorrection])
      {
        goto LABEL_9;
      }

      provideDemosaicedRaw = [(BWStillImageProcessingSettings *)self provideDemosaicedRaw];
      if (provideDemosaicedRaw != [equal provideDemosaicedRaw])
      {
        goto LABEL_9;
      }

      optimizedProcessingForZoomFOVEnabled = [(BWStillImageProcessingSettings *)self optimizedProcessingForZoomFOVEnabled];
      if (optimizedProcessingForZoomFOVEnabled != [equal optimizedProcessingForZoomFOVEnabled])
      {
        goto LABEL_9;
      }

      optimizedProcessingWithCropAndDownscaleEnabled = [(BWStillImageProcessingSettings *)self optimizedProcessingWithCropAndDownscaleEnabled];
      if (optimizedProcessingWithCropAndDownscaleEnabled != [equal optimizedProcessingWithCropAndDownscaleEnabled])
      {
        goto LABEL_9;
      }

      documentScanning = [(BWStillImageProcessingSettings *)self documentScanning];
      LOBYTE(v12) = documentScanning ^ [equal documentScanning] ^ 1;
    }
  }

  return v12;
}

@end