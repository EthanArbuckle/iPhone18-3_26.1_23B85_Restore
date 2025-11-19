@interface CAMFaceResult
- (CAMFaceResult)initWithFaceObject:(id)a3;
- (CGRect)bounds;
- (NSString)description;
- (NSString)metadataType;
- (id)burstMetadataRepresentation;
- (unint64_t)syntheticFocusMode;
@end

@implementation CAMFaceResult

- (CAMFaceResult)initWithFaceObject:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CAMFaceResult;
  v6 = [(CAMFaceResult *)&v18 init];
  if (v6)
  {
    [v5 bounds];
    v6->_bounds.origin.x = v7;
    v6->_bounds.origin.y = v8;
    v6->_bounds.size.width = v9;
    v6->_bounds.size.height = v10;
    if ([v5 hasRollAngle])
    {
      [v5 rollAngle];
    }

    else
    {
      v11 = 0x47EFFFFFE0000000;
    }

    *&v6->_rollAngle = v11;
    objc_storeStrong(&v6->_underlyingFaceObject, a3);
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 type];
    v14 = [v12 stringWithFormat:@"%@ %ld", v13, objc_msgSend(v5, "faceID")];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v14;

    v16 = v6;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CAMFaceResult *)self underlyingFaceObject];
  v7 = [v6 faceID];
  [(CAMFaceResult *)self rollAngle];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %ld roll: %f>", v5, self, v7, v8];

  return v9;
}

- (NSString)metadataType
{
  v2 = [(CAMFaceResult *)self underlyingFaceObject];
  v3 = [v2 type];

  return v3;
}

- (id)burstMetadataRepresentation
{
  v2 = [(CAMFaceResult *)self underlyingFaceObject];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v2)
  {
    [v2 time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v12 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "faceID")}];
  [v3 setObject:v13 forKeyedSubscript:@"FaceID"];

  v45.origin.x = v5;
  v45.origin.y = v7;
  v45.size.width = v9;
  v45.size.height = v11;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(v45)];
  [v3 setObject:v14 forKeyedSubscript:@"X"];

  v46.origin.x = v5;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidY(v46)];
  [v3 setObject:v15 forKeyedSubscript:@"Y"];

  v47.origin.x = v5;
  v47.origin.y = v7;
  v47.size.width = v9;
  v47.size.height = v11;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v47)];
  [v3 setObject:v16 forKeyedSubscript:@"Width"];

  v48.origin.x = v5;
  v48.origin.y = v7;
  v48.size.width = v9;
  v48.size.height = v11;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v48)];
  [v3 setObject:v17 forKeyedSubscript:@"Height"];

  [v3 setObject:v12 forKeyedSubscript:@"Timestamp"];
  if ([v2 hasRollAngle])
  {
    v18 = MEMORY[0x1E696AD98];
    [v2 rollAngle];
    v19 = [v18 numberWithDouble:?];
    [v3 setObject:v19 forKeyedSubscript:@"RollAngle"];
  }

  if ([v2 hasYawAngle])
  {
    v20 = MEMORY[0x1E696AD98];
    [v2 yawAngle];
    v21 = [v20 numberWithDouble:?];
    [v3 setObject:v21 forKeyedSubscript:@"YawAngle"];
  }

  if ([v2 hasLeftEyeBounds])
  {
    [v2 leftEyeBounds];
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(v49)];
    [v3 setObject:v26 forKeyedSubscript:@"LeftEyeX"];

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidY(v50)];
    [v3 setObject:v27 forKeyedSubscript:@"LeftEyeY"];

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v51)];
    [v3 setObject:v28 forKeyedSubscript:@"LeftEyeWidth"];

    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v52)];
    [v3 setObject:v29 forKeyedSubscript:@"LeftEyeHeight"];

    if ([v2 hasLeftEyeClosedConfidence])
    {
      v30 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "leftEyeClosedConfidence")}];
      [v3 setObject:v30 forKeyedSubscript:@"LeftEyeBlinkLevel"];
    }
  }

  if ([v2 hasRightEyeBounds])
  {
    [v2 rightEyeBounds];
    v31 = v53.origin.x;
    v32 = v53.origin.y;
    v33 = v53.size.width;
    v34 = v53.size.height;
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(v53)];
    [v3 setObject:v35 forKeyedSubscript:@"RightEyeX"];

    v54.origin.x = v31;
    v54.origin.y = v32;
    v54.size.width = v33;
    v54.size.height = v34;
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidY(v54)];
    [v3 setObject:v36 forKeyedSubscript:@"RightEyeY"];

    v55.origin.x = v31;
    v55.origin.y = v32;
    v55.size.width = v33;
    v55.size.height = v34;
    v37 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v55)];
    [v3 setObject:v37 forKeyedSubscript:@"RightEyeWidth"];

    v56.origin.x = v31;
    v56.origin.y = v32;
    v56.size.width = v33;
    v56.size.height = v34;
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v56)];
    [v3 setObject:v38 forKeyedSubscript:@"RightEyeHeight"];

    if ([v2 hasRightEyeClosedConfidence])
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "rightEyeClosedConfidence")}];
      [v3 setObject:v39 forKeyedSubscript:@"RightEyeBlinkLevel"];
    }
  }

  if ([v2 hasSmileConfidence])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "smileConfidence")}];
    [v3 setObject:v40 forKeyedSubscript:@"SmileLevel"];
  }

  v41 = [v3 copy];

  return v41;
}

- (unint64_t)syntheticFocusMode
{
  v2 = [(CAMFaceResult *)self underlyingMetadataObject];
  v3 = +[CAMCaptureConversions CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:](CAMCaptureConversions, "CAMMetadataObjectSyntheticFocusModeForAVCaptureMetadataObjectSyntheticFocusMode:", [v2 syntheticFocusMode]);

  return v3;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end