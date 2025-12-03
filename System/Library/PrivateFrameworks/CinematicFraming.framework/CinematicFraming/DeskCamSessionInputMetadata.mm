@interface DeskCamSessionInputMetadata
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp;
- (DeskCamSessionInputMetadata)initWithCoder:(id)coder;
- (DeskCamSessionInputMetadata)initWithDetectedObjectsInfo:(id)info cameraCalibrationData:(id)data cameraOrientation:(int)orientation timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d gravity:;
- (id)_createCameraCalibrationDictionary:(id)dictionary;
- (void)_parseDetectedObjectsInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeskCamSessionInputMetadata

- (DeskCamSessionInputMetadata)initWithDetectedObjectsInfo:(id)info cameraCalibrationData:(id)data cameraOrientation:(int)orientation timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d gravity:
{
  v25 = v8;
  infoCopy = info;
  dataCopy = data;
  v17 = [(DeskCamSessionInputMetadata *)self init];
  v18 = v17;
  if (v17)
  {
    [(DeskCamSessionInputMetadata *)v17 _parseDetectedObjectsInfo:infoCopy];
    if (dataCopy && ([(DeskCamSessionInputMetadata *)v18 _createCameraCalibrationDictionary:dataCopy], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      cameraCalibrationDictionary = v18->_cameraCalibrationDictionary;
      v18->_cameraCalibrationDictionary = v19;
      v21 = v19;
    }

    else
    {
      if (d == 1906)
      {
        defaultCalibrationDictionaryForPictou();
      }

      else
      {
        defaultCalibrationDictionaryForPennsylvania();
      }
      v22 = ;
      v21 = v18->_cameraCalibrationDictionary;
      v18->_cameraCalibrationDictionary = v22;
    }

    v18->_cameraOrientation = orientation;
    v23 = *&timestamp->var0;
    *&v18->_timestamp.flags = timestamp->var3;
    *(&v18->_cameraOrientation + 1) = v23;
    *(&v18->_timestamp.epoch + 1) = ratio;
    LODWORD(v18->_aspectRatio) = d;
    *&v18->_anon_44[8] = v25;
  }

  return v18;
}

- (DeskCamSessionInputMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DeskCamSessionInputMetadata *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bodyDetections"];
    bodyDetections = v5->_bodyDetections;
    v5->_bodyDetections = v9;

    if (!v5->_bodyDetections)
    {
      v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"detections"];
      v12 = v5->_bodyDetections;
      v5->_bodyDetections = v11;
    }

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"faceDetections"];
    faceDetections = v5->_faceDetections;
    v5->_faceDetections = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"timestamp"];

    CMTimeMakeFromDictionary(&v34, v19);
    *(&v5->_cameraOrientation + 1) = v34;
    [coderCopy decodeFloatForKey:@"aspectRatio"];
    HIDWORD(v5->_timestamp.epoch) = v20;
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"cameraCalibrationDictionary"];
    cameraCalibrationDictionary = v5->_cameraCalibrationDictionary;
    v5->_cameraCalibrationDictionary = v25;

    v5->_cameraOrientation = [coderCopy decodeInt32ForKey:@"cameraOrientation"];
    LODWORD(v5->_aspectRatio) = [coderCopy decodeInt32ForKey:@"sensorID"];
    [coderCopy decodeFloatForKey:@"gravityX"];
    v33 = v27;
    [coderCopy decodeFloatForKey:@"gravityY"];
    v32 = v28;
    [coderCopy decodeFloatForKey:@"gravityZ"];
    v29 = v33;
    DWORD1(v29) = v32;
    DWORD2(v29) = v30;
    *&v5->_anon_44[8] = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bodyDetections forKey:@"bodyDetections"];
  [coderCopy encodeObject:self->_faceDetections forKey:@"faceDetections"];
  v5 = *MEMORY[0x277CBECE8];
  *&v11.value = *(&self->_cameraOrientation + 1);
  v11.epoch = *&self->_timestamp.flags;
  v6 = CMTimeCopyAsDictionary(&v11, v5);
  [coderCopy encodeObject:v6 forKey:@"timestamp"];
  if (v6)
  {
    CFRelease(v6);
  }

  LODWORD(v7) = HIDWORD(self->_timestamp.epoch);
  [coderCopy encodeFloat:@"aspectRatio" forKey:v7];
  [coderCopy encodeObject:self->_cameraCalibrationDictionary forKey:@"cameraCalibrationDictionary"];
  [coderCopy encodeInt32:self->_cameraOrientation forKey:@"cameraOrientation"];
  [coderCopy encodeInt32:LODWORD(self->_aspectRatio) forKey:@"sensorID"];
  LODWORD(v8) = *&self->_anon_44[8];
  [coderCopy encodeFloat:@"gravityX" forKey:v8];
  LODWORD(v9) = *self->_gravity;
  [coderCopy encodeFloat:@"gravityY" forKey:v9];
  LODWORD(v10) = *&self->_gravity[4];
  [coderCopy encodeFloat:@"gravityZ" forKey:v10];
}

- (void)_parseDetectedObjectsInfo:(id)info
{
  infoCopy = info;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (infoCopy)
  {
    selfCopy = self;
    v28 = infoCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = infoCopy;
    v31 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (!v31)
    {
      goto LABEL_21;
    }

    v30 = *v48;
    v29 = *MEMORY[0x277CF4440];
    v5 = *MEMORY[0x277CF50B8];
    v6 = *MEMORY[0x277CF4408];
    v37 = *MEMORY[0x277CF4400];
    v34 = *MEMORY[0x277CF43D0];
    v36 = *MEMORY[0x277CF6928];
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(*(&v47 + 1) + 8 * v7);
        v9 = [obj objectForKeyedSubscript:v8];
        v10 = [v9 objectForKeyedSubscript:v29];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v39 = v10;
        v11 = [v39 countByEnumeratingWithState:&v42 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v43;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v43 != v13)
              {
                objc_enumerationMutation(v39);
              }

              v15 = *(*(&v42 + 1) + 8 * i);
              v16 = objc_alloc_init(Detection);
              memset(&rect, 0, sizeof(rect));
              v17 = [v15 objectForKeyedSubscript:v5];
              CGRectMakeWithDictionaryRepresentation(v17, &rect);
              if ([v8 isEqualToString:v6])
              {
                v18 = [v15 objectForKeyedSubscript:v36];
                intValue = [v18 intValue];

                v20 = 2 * intValue;
                v21 = v38;
              }

              else
              {
                if (![v8 isEqualToString:v37])
                {
                  goto LABEL_17;
                }

                v22 = [v15 objectForKeyedSubscript:v34];
                intValue2 = [v22 intValue];

                v20 = (2 * intValue2) | 1;
                v21 = v35;
              }

              [(Detection *)v16 setOid:v20];
              [(Detection *)v16 setBounds:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
              [(NSArray *)v21 addObject:v16];
LABEL_17:
            }

            v12 = [v39 countByEnumeratingWithState:&v42 objects:v41 count:16];
          }

          while (v12);
        }

        v7 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (!v31)
      {
LABEL_21:

        self = selfCopy;
        infoCopy = v28;
        break;
      }
    }
  }

  bodyDetections = self->_bodyDetections;
  self->_bodyDetections = v35;
  v25 = v35;

  faceDetections = self->_faceDetections;
  self->_faceDetections = v38;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timestamp
{
  *&retstr->var0 = *&self[1].var2;
  retstr->var3 = *(&self[2].var0 + 4);
  return self;
}

- (id)_createCameraCalibrationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"PixelSize"];
  if (!v5)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v6 = [v4 objectForKeyedSubscript:@"LensDistortionCenter"];
  if (!v6)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  v7 = [v4 objectForKeyedSubscript:@"LensDistortionCoefficients"];
  if (!v7)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v8 = [v4 objectForKeyedSubscript:@"InverseLensDistortionCoefficients"];
  if (!v8)
  {
LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  v9 = [v4 objectForKeyedSubscript:@"IntrinsicMatrix"];
  if (v9)
  {
    v10 = v9;
    goto LABEL_9;
  }

  v10 = [v4 objectForKeyedSubscript:@"OriginalCameraIntrinsicMatrix"];
  if (!v10)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v11 = [v4 objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  if (v11)
  {
    v12 = v11;
    goto LABEL_12;
  }

  v12 = [v4 objectForKeyedSubscript:@"OriginalCameraIntrinsicMatrixReferenceDimensions"];
  if (!v12)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

LABEL_12:
  v13 = [v4 objectForKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:v5 forKeyedSubscript:@"PixelSize"];
    [v14 setObject:v10 forKeyedSubscript:@"IntrinsicMatrix"];
    [v14 setObject:v12 forKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
    [v14 setObject:v6 forKeyedSubscript:@"LensDistortionCenter"];
    [v14 setObject:v7 forKeyedSubscript:@"LensDistortionCoefficients"];
    [v14 setObject:v8 forKeyedSubscript:@"InverseLensDistortionCoefficients"];
    [v14 setObject:v13 forKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];
    goto LABEL_14;
  }

LABEL_24:
  v14 = 0;
LABEL_14:

  return v14;
}

@end