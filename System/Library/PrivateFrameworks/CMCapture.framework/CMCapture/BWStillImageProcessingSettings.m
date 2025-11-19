@interface BWStillImageProcessingSettings
- (BOOL)isEqual:(id)a3;
- (BWStillImageProcessingSettings)initWithCoder:(id)a3;
- (BWStillImageProcessingSettings)initWithPhotoManifest:(id)a3 processIntelligentDistortionCorrection:(BOOL)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWStillImageProcessingSettings

- (BWStillImageProcessingSettings)initWithPhotoManifest:(id)a3 processIntelligentDistortionCorrection:(BOOL)a4
{
  v19.receiver = self;
  v19.super_class = BWStillImageProcessingSettings;
  v6 = [(BWStillImageProcessingSettings *)&v19 init];
  if (v6)
  {
    v6->_photoManifest = a3;
    v6->_processIntelligentDistortionCorrection = a4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a3 photoDescriptors];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) processingFlags];
        v6->_provideDemosaicedRaw = BYTE2(v12) & 1;
        if ((v12 & 0x10000) != 0)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
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

- (BWStillImageProcessingSettings)initWithCoder:(id)a3
{
  v4 = -[BWStillImageProcessingSettings initWithPhotoManifest:processIntelligentDistortionCorrection:](self, "initWithPhotoManifest:processIntelligentDistortionCorrection:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"photoManifest"], objc_msgSend(a3, "decodeBoolForKey:", @"processIntelligentDistortionCorrection"));
  if (v4)
  {
    v4->_optimizedProcessingForZoomFOVEnabled = [a3 decodeBoolForKey:@"optimizedProcessingForZoomFOVEnabled"];
    v4->_optimizedProcessingWithCropAndDownscaleEnabled = [a3 decodeBoolForKey:@"optimizedProcessingWithCropAndDownscaleEnabled"];
    v4->_documentScanning = [a3 decodeBoolForKey:@"documentScanning"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_photoManifest forKey:@"photoManifest"];
  [a3 encodeBool:self->_processIntelligentDistortionCorrection forKey:@"processIntelligentDistortionCorrection"];
  [a3 encodeBool:self->_optimizedProcessingForZoomFOVEnabled forKey:@"optimizedProcessingForZoomFOVEnabled"];
  [a3 encodeBool:self->_optimizedProcessingWithCropAndDownscaleEnabled forKey:@"optimizedProcessingWithCropAndDownscaleEnabled"];
  documentScanning = self->_documentScanning;

  [a3 encodeBool:documentScanning forKey:@"documentScanning"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

    v11 = [(BWStillImageProcessingSettings *)self photoManifest];
    if (v11 == [a3 photoManifest] || (v12 = -[BWPhotoManifest isEqual:](-[BWStillImageProcessingSettings photoManifest](self, "photoManifest"), "isEqual:", objc_msgSend(a3, "photoManifest"))) != 0)
    {
      v13 = [(BWStillImageProcessingSettings *)self processIntelligentDistortionCorrection:v6];
      if (v13 != [a3 processIntelligentDistortionCorrection])
      {
        goto LABEL_9;
      }

      v14 = [(BWStillImageProcessingSettings *)self provideDemosaicedRaw];
      if (v14 != [a3 provideDemosaicedRaw])
      {
        goto LABEL_9;
      }

      v15 = [(BWStillImageProcessingSettings *)self optimizedProcessingForZoomFOVEnabled];
      if (v15 != [a3 optimizedProcessingForZoomFOVEnabled])
      {
        goto LABEL_9;
      }

      v16 = [(BWStillImageProcessingSettings *)self optimizedProcessingWithCropAndDownscaleEnabled];
      if (v16 != [a3 optimizedProcessingWithCropAndDownscaleEnabled])
      {
        goto LABEL_9;
      }

      v17 = [(BWStillImageProcessingSettings *)self documentScanning];
      LOBYTE(v12) = v17 ^ [a3 documentScanning] ^ 1;
    }
  }

  return v12;
}

@end