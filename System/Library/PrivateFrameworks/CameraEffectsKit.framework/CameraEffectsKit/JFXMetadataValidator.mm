@interface JFXMetadataValidator
- (JFXMetadataValidator)init;
- (void)reset;
- (void)validateARImageData:(id)data;
- (void)validateFaceTrackedARFrame:(id)frame;
@end

@implementation JFXMetadataValidator

- (JFXMetadataValidator)init
{
  v3.receiver = self;
  v3.super_class = JFXMetadataValidator;
  result = [(JFXMetadataValidator *)&v3 init];
  if (result)
  {
    *&result->_faceDataDetectedFacesCount = xmmword_242B5BE90;
    result->_lastARFrameIsFaceTracked = 2;
  }

  return result;
}

- (void)validateARImageData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    v5 = JFXLog_metadata();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [JFXMetadataValidator validateARImageData:v5];
    }
  }

  faceData = [dataCopy faceData];

  if (!faceData)
  {
    v10 = JFXLog_metadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [JFXMetadataValidator validateARImageData:v10];
    }

    goto LABEL_11;
  }

  faceData2 = [dataCopy faceData];
  detectedFaces = [faceData2 detectedFaces];
  v9 = [detectedFaces count];

  if ([(JFXMetadataValidator *)self faceDataDetectedFacesCount]!= v9)
  {
    [(JFXMetadataValidator *)self setFaceDataDetectedFacesCount:v9];
    v10 = JFXLog_metadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "The number of detected faces has changed: %lu", &v11, 0xCu);
    }

LABEL_11:
  }
}

- (void)validateFaceTrackedARFrame:(id)frame
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  anchors = [frame anchors];
  v5 = [anchors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(anchors);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 isTracked])
          {
            v7 = 1;
          }

          v8 = 1;
        }
      }

      v6 = [anchors countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);

    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v7 = 0;
  }

  if ([(JFXMetadataValidator *)self lastARFrameHasFaceAnchors])
  {
    v12 = JFXLog_metadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "frames no longer contain face anchors", v15, 2u);
    }

    v8 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v8 = 0;
LABEL_20:
  if (v8 != [(JFXMetadataValidator *)self lastARFrameHasFaceAnchors])
  {
    v12 = JFXLog_metadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "frames now contain face anchors", v15, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:
  [(JFXMetadataValidator *)self setLastARFrameHasFaceAnchors:v8];
  if (!v7 && [(JFXMetadataValidator *)self lastARFrameIsFaceTracked])
  {
    v13 = JFXLog_metadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v14 = "frames are no longer face-tracked";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (v7 != [(JFXMetadataValidator *)self lastARFrameIsFaceTracked])
  {
    v13 = JFXLog_metadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v14 = "frames are now face-tracked";
LABEL_31:
      _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    }

LABEL_32:
  }

  [(JFXMetadataValidator *)self setLastARFrameIsFaceTracked:v7, *v15];
}

- (void)reset
{
  [(JFXMetadataValidator *)self setFaceDataDetectedFacesCount:0x7FFFFFFFFFFFFFFFLL];
  [(JFXMetadataValidator *)self setLastARFrameHasFaceAnchors:2];

  [(JFXMetadataValidator *)self setLastARFrameIsFaceTracked:2];
}

- (void)validateARImageData:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"ARImageData contains nil face data";
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "%{public}@", &v1, 0xCu);
}

@end