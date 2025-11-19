@interface CAMBurstFaceStat
- (CAMBurstFaceStat)initWithFaceStat:(id)a3;
- (CGRect)faceRect;
- (CGRect)hwFaceRect;
- (CGRect)leftEyeRect;
- (CGRect)normalizedFaceRect;
- (CGRect)rightEyeRect;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CAMBurstFaceStat

- (CAMBurstFaceStat)initWithFaceStat:(id)a3
{
  self->leftEyeOpen = [a3 leftEyeOpen];
  self->rightEyeOpen = [a3 rightEyeOpen];
  self->smiling = [a3 smiling];
  self->foundByFaceCore = [a3 foundByFaceCore];
  [a3 faceRect];
  self->faceRect.origin.x = v5;
  self->faceRect.origin.y = v6;
  self->faceRect.size.width = v7;
  self->faceRect.size.height = v8;
  [a3 normalizedFaceRect];
  self->normalizedFaceRect.origin.x = v9;
  self->normalizedFaceRect.origin.y = v10;
  self->normalizedFaceRect.size.width = v11;
  self->normalizedFaceRect.size.height = v12;
  [a3 normalizedSigma];
  self->normalizedSigma = v13;
  self->faceId = [a3 faceId];
  self->hwFaceId = [a3 hwFaceId];
  self->framesSinceLast = [a3 framesSinceLast];
  [a3 focusScore];
  self->focusScore = v14;
  [a3 normalizedFocusScore];
  self->normalizedFocusScore = v15;
  [a3 faceScore];
  self->faceScore = v16;
  self->hasLeftEye = [a3 hasLeftEye];
  self->hasRightEye = [a3 hasRightEye];
  [a3 leftEyeRect];
  self->leftEyeRect.origin.x = v17;
  self->leftEyeRect.origin.y = v18;
  self->leftEyeRect.size.width = v19;
  self->leftEyeRect.size.height = v20;
  [a3 rightEyeRect];
  self->rightEyeRect.origin.x = v21;
  self->rightEyeRect.origin.y = v22;
  self->rightEyeRect.size.width = v23;
  self->rightEyeRect.size.height = v24;
  [a3 timestamp];
  self->timestamp = v25;
  [a3 leftEyeBlinkScore];
  self->leftEyeBlinkScore = v26;
  [a3 rightEyeBlinkScore];
  self->rightEyeBlinkScore = v27;
  [a3 smileScore];
  self->smileScore = v28;
  self->smallFace = 0;
  self->FCRLeftEyeFeaturesOffset = [a3 FCRLeftEyeFeaturesOffset];
  self->FCRRightEyeFeaturesOffset = [a3 FCRRightEyeFeaturesOffset];
  self->FCRSmileFeaturesOffset = [a3 FCRSmileFeaturesOffset];
  self->FCRBlinkFeaturesSize = [a3 FCRBlinkFeaturesSize];
  self->FCRSmileFeaturesSize = [a3 FCRSmileFeaturesSize];
  self->FCRSmileAndBlinkFeatures = 0;
  [(CAMBurstFaceStat *)self setIsSyncedWithImage:1];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMBurstFaceStat allocWithZone:a3];

  return [(CAMBurstFaceStat *)v4 initWithFaceStat:self];
}

- (CGRect)faceRect
{
  objc_copyStruct(v6, &self->faceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)normalizedFaceRect
{
  objc_copyStruct(v6, &self->normalizedFaceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)leftEyeRect
{
  objc_copyStruct(v6, &self->leftEyeRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)rightEyeRect
{
  objc_copyStruct(v6, &self->rightEyeRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)hwFaceRect
{
  objc_copyStruct(v6, &self->_hwFaceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end