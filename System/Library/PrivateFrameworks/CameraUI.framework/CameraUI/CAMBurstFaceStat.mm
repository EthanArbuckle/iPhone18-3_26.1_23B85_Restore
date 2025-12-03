@interface CAMBurstFaceStat
- (CAMBurstFaceStat)initWithFaceStat:(id)stat;
- (CGRect)faceRect;
- (CGRect)hwFaceRect;
- (CGRect)leftEyeRect;
- (CGRect)normalizedFaceRect;
- (CGRect)rightEyeRect;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CAMBurstFaceStat

- (CAMBurstFaceStat)initWithFaceStat:(id)stat
{
  self->leftEyeOpen = [stat leftEyeOpen];
  self->rightEyeOpen = [stat rightEyeOpen];
  self->smiling = [stat smiling];
  self->foundByFaceCore = [stat foundByFaceCore];
  [stat faceRect];
  self->faceRect.origin.x = v5;
  self->faceRect.origin.y = v6;
  self->faceRect.size.width = v7;
  self->faceRect.size.height = v8;
  [stat normalizedFaceRect];
  self->normalizedFaceRect.origin.x = v9;
  self->normalizedFaceRect.origin.y = v10;
  self->normalizedFaceRect.size.width = v11;
  self->normalizedFaceRect.size.height = v12;
  [stat normalizedSigma];
  self->normalizedSigma = v13;
  self->faceId = [stat faceId];
  self->hwFaceId = [stat hwFaceId];
  self->framesSinceLast = [stat framesSinceLast];
  [stat focusScore];
  self->focusScore = v14;
  [stat normalizedFocusScore];
  self->normalizedFocusScore = v15;
  [stat faceScore];
  self->faceScore = v16;
  self->hasLeftEye = [stat hasLeftEye];
  self->hasRightEye = [stat hasRightEye];
  [stat leftEyeRect];
  self->leftEyeRect.origin.x = v17;
  self->leftEyeRect.origin.y = v18;
  self->leftEyeRect.size.width = v19;
  self->leftEyeRect.size.height = v20;
  [stat rightEyeRect];
  self->rightEyeRect.origin.x = v21;
  self->rightEyeRect.origin.y = v22;
  self->rightEyeRect.size.width = v23;
  self->rightEyeRect.size.height = v24;
  [stat timestamp];
  self->timestamp = v25;
  [stat leftEyeBlinkScore];
  self->leftEyeBlinkScore = v26;
  [stat rightEyeBlinkScore];
  self->rightEyeBlinkScore = v27;
  [stat smileScore];
  self->smileScore = v28;
  self->smallFace = 0;
  self->FCRLeftEyeFeaturesOffset = [stat FCRLeftEyeFeaturesOffset];
  self->FCRRightEyeFeaturesOffset = [stat FCRRightEyeFeaturesOffset];
  self->FCRSmileFeaturesOffset = [stat FCRSmileFeaturesOffset];
  self->FCRBlinkFeaturesSize = [stat FCRBlinkFeaturesSize];
  self->FCRSmileFeaturesSize = [stat FCRSmileFeaturesSize];
  self->FCRSmileAndBlinkFeatures = 0;
  [(CAMBurstFaceStat *)self setIsSyncedWithImage:1];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAMBurstFaceStat allocWithZone:zone];

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