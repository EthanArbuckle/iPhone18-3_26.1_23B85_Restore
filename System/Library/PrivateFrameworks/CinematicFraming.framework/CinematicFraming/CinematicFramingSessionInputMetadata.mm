@interface CinematicFramingSessionInputMetadata
- (CinematicFramingSessionInputMetadata)initWithCoder:(id)coder;
- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d;
- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d filteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs;
- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d filteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs calibrationDistortionCoefficientsSupported:(BOOL)self0 calibrationValidMaxRadiusSupported:(BOOL)self1;
- (__n128)setDeviceToCameraSpaceTransform:(__n128)transform;
- (id)_validateCalibrationDictionary:(id)dictionary;
- (void)_parseDetectedObjectsInfoWithFilteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs;
- (void)encodeWithCoder:(id)coder;
- (void)setGravityX:(float)x y:(float)y z:(float)z;
@end

@implementation CinematicFramingSessionInputMetadata

- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d filteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs calibrationDistortionCoefficientsSupported:(BOOL)self0 calibrationValidMaxRadiusSupported:(BOOL)self1
{
  infoCopy = info;
  dataCopy = data;
  dsCopy = ds;
  iDsCopy = iDs;
  v23 = [(CinematicFramingSessionInputMetadata *)self init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_detectedObjectsInfo, info);
    [(CinematicFramingSessionInputMetadata *)v24 _parseDetectedObjectsInfoWithFilteredFaceIDs:dsCopy filteredBodyIDs:iDsCopy];
    v24->_calibrationDistortionCoefficientsSupported = supported;
    v24->_calibrationValidMaxRadiusSupported = radiusSupported;
    if (dataCopy)
    {
      v25 = [(CinematicFramingSessionInputMetadata *)v24 _validateCalibrationDictionary:dataCopy];
      calibrationDictionary = v24->_calibrationDictionary;
      v24->_calibrationDictionary = v25;
    }

    if (!v24->_calibrationDictionary)
    {
      if (d == 1906)
      {
        v27 = defaultCalibrationDictionaryForPictou();
      }

      else
      {
        if (d != 1556)
        {
          v31 = 0;
          goto LABEL_12;
        }

        v27 = defaultCalibrationDictionaryForPennsylvania();
      }

      v28 = v24->_calibrationDictionary;
      v24->_calibrationDictionary = v27;
    }

    v29 = *&timestamp->var0;
    v24->_timestamp.epoch = timestamp->var3;
    *&v24->_timestamp.value = v29;
    v24->_aspectRatio = ratio;
    v24->_sensorID = d;
    v24->_additionalCameraRotation = 0.0;
    v24->_cameraOrientation = -1;
    portType = v24->_portType;
    v24->_portType = 0;

    *&v24->_hasDeviceToCameraSpaceTransform = 256;
  }

  v31 = v24;
LABEL_12:

  return v31;
}

- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d filteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs
{
  v11 = *timestamp;
  LOWORD(v10) = 257;
  return [CinematicFramingSessionInputMetadata initWithDetectedObjectsInfo:"initWithDetectedObjectsInfo:calibrationData:timestamp:aspectRatio:sensorID:filteredFaceIDs:filteredBodyIDs:calibrationDistortionCoefficientsSupported:calibrationValidMaxRadiusSupported:" calibrationData:info timestamp:data aspectRatio:&v11 sensorID:*&d filteredFaceIDs:ds filteredBodyIDs:iDs calibrationDistortionCoefficientsSupported:v10 calibrationValidMaxRadiusSupported:?];
}

- (CinematicFramingSessionInputMetadata)initWithDetectedObjectsInfo:(id)info calibrationData:(id)data timestamp:(id *)timestamp aspectRatio:(float)ratio sensorID:(int)d
{
  v9 = *timestamp;
  LOWORD(v8) = 257;
  return [CinematicFramingSessionInputMetadata initWithDetectedObjectsInfo:"initWithDetectedObjectsInfo:calibrationData:timestamp:aspectRatio:sensorID:filteredFaceIDs:filteredBodyIDs:calibrationDistortionCoefficientsSupported:calibrationValidMaxRadiusSupported:" calibrationData:info timestamp:data aspectRatio:&v9 sensorID:*&d filteredFaceIDs:0 filteredBodyIDs:0 calibrationDistortionCoefficientsSupported:v8 calibrationValidMaxRadiusSupported:?];
}

- (CinematicFramingSessionInputMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CinematicFramingSessionInputMetadata *)self init];
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

    CMTimeMakeFromDictionary(&v29, v19);
    v5->_timestamp = v29;
    [coderCopy decodeFloatForKey:@"aspectRatio"];
    v5->_aspectRatio = v20;
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"calibrationDataDictionary"];
    calibrationDictionary = v5->_calibrationDictionary;
    v5->_calibrationDictionary = v25;

    v5->_sensorID = [coderCopy decodeInt32ForKey:@"sensorID"];
    [coderCopy decodeFloatForKey:@"additionalCameraRotation"];
    v5->_additionalCameraRotation = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bodyDetections forKey:@"bodyDetections"];
  [coderCopy encodeObject:self->_faceDetections forKey:@"faceDetections"];
  v5 = *MEMORY[0x277CBECE8];
  timestamp = self->_timestamp;
  v6 = CMTimeCopyAsDictionary(&timestamp, v5);
  [coderCopy encodeObject:v6 forKey:@"timestamp"];
  if (v6)
  {
    CFRelease(v6);
  }

  *&v7 = self->_aspectRatio;
  [coderCopy encodeFloat:@"aspectRatio" forKey:v7];
  [coderCopy encodeObject:self->_calibrationDictionary forKey:@"calibrationDataDictionary"];
  [coderCopy encodeInt32:self->_sensorID forKey:@"sensorID"];
  *&v8 = self->_additionalCameraRotation;
  [coderCopy encodeFloat:@"additionalCameraRotation" forKey:v8];
}

- (void)setGravityX:(float)x y:(float)y z:(float)z
{
  self->_hasGravity = 1;
  self->_gravityX = x;
  self->_gravityY = y;
  self->_gravityZ = z;
}

- (__n128)setDeviceToCameraSpaceTransform:(__n128)transform
{
  result[10].n128_u8[0] = 1;
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  return result;
}

- (void)_parseDetectedObjectsInfoWithFilteredFaceIDs:(id)ds filteredBodyIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  obj = self->_detectedObjectsInfo;
  if (obj)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = [(NSDictionary *)obj countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v30)
    {
      v29 = *v49;
      v28 = *MEMORY[0x277CF4440];
      v7 = *MEMORY[0x277CF50B8];
      v8 = *MEMORY[0x277CF4408];
      v38 = *MEMORY[0x277CF4400];
      v34 = *MEMORY[0x277CF43D0];
      v37 = *MEMORY[0x277CF6928];
      v39 = dsCopy;
      do
      {
        v9 = 0;
        do
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v9;
          v10 = *(*(&v48 + 1) + 8 * v9);
          selfCopy = [(NSDictionary *)obj objectForKeyedSubscript:v10, selfCopy];
          v12 = [selfCopy objectForKeyedSubscript:v28];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v40 = v12;
          v13 = [v40 countByEnumeratingWithState:&v43 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v44;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(v40);
                }

                v17 = *(*(&v43 + 1) + 8 * i);
                v18 = objc_alloc_init(Detection);
                memset(&rect, 0, sizeof(rect));
                v19 = [v17 objectForKeyedSubscript:v7];
                CGRectMakeWithDictionaryRepresentation(v19, &rect);
                if ([v10 isEqualToString:v8])
                {
                  v20 = [v17 objectForKeyedSubscript:v37];
                  if (dsCopy && ![dsCopy containsObject:v20])
                  {
                    goto LABEL_21;
                  }

                  v21 = 2 * [v20 intValue];
                  v22 = v36;
                  goto LABEL_20;
                }

                if (![v10 isEqualToString:v38])
                {
                  goto LABEL_22;
                }

                v20 = [v17 objectForKeyedSubscript:v34];
                if (!iDsCopy || [iDsCopy containsObject:v20])
                {
                  v21 = (2 * [v20 intValue]) | 1;
                  v22 = v33;
LABEL_20:
                  [(Detection *)v18 setOid:v21];
                  [(Detection *)v18 setBounds:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
                  [(NSArray *)v22 addObject:v18];
                  dsCopy = v39;
                }

LABEL_21:

LABEL_22:
              }

              v14 = [v40 countByEnumeratingWithState:&v43 objects:v42 count:16];
            }

            while (v14);
          }

          v9 = v32 + 1;
        }

        while (v32 + 1 != v30);
        v30 = [(NSDictionary *)obj countByEnumeratingWithState:&v48 objects:v47 count:16];
      }

      while (v30);
    }
  }

  bodyDetections = selfCopy->_bodyDetections;
  selfCopy->_bodyDetections = v33;
  v24 = v33;

  faceDetections = selfCopy->_faceDetections;
  selfCopy->_faceDetections = v36;
  v26 = v36;
}

- (id)_validateCalibrationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"PixelSize"];
  if (!v6)
  {
LABEL_25:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_26;
  }

  v7 = [v5 objectForKeyedSubscript:@"LensDistortionCenter"];
  if (!v7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_3();
    FigDebugAssert3();
  }

  if (self->_calibrationDistortionCoefficientsSupported)
  {
    v8 = [v5 objectForKeyedSubscript:@"LensDistortionCoefficients"];
    if (!v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3();
    }

    v9 = [v5 objectForKeyedSubscript:@"InverseLensDistortionCoefficients"];
    if (!v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3();
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"IntrinsicMatrix"];
  if (!v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"OriginalCameraIntrinsicMatrix"];
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_21;
  }

  v11 = v10;
LABEL_14:
  v12 = [v5 objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  if (!v12)
  {
    v12 = [v5 objectForKeyedSubscript:@"OriginalCameraIntrinsicMatrixReferenceDimensions"];
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  v13 = v12;
  if (self->_calibrationValidMaxRadiusSupported)
  {
    v14 = [v5 objectForKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];
    if (!v14)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3();
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v15 setObject:v6 forKeyedSubscript:@"PixelSize"];
  [v15 setObject:v11 forKeyedSubscript:@"IntrinsicMatrix"];
  [v15 setObject:v13 forKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  [v15 setObject:v7 forKeyedSubscript:@"LensDistortionCenter"];
  [v15 setObject:v8 forKeyedSubscript:@"LensDistortionCoefficients"];
  [v15 setObject:v9 forKeyedSubscript:@"InverseLensDistortionCoefficients"];
  [v15 setObject:v14 forKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];

LABEL_21:

  return v15;
}

@end