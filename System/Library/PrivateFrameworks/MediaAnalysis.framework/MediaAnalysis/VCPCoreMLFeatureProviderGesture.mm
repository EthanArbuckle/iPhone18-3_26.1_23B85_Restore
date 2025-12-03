@interface VCPCoreMLFeatureProviderGesture
- (VCPCoreMLFeatureProviderGesture)initWith:(id)with rotationInDegrees:(int)degrees;
- (id)featureValueForName:(id)name;
@end

@implementation VCPCoreMLFeatureProviderGesture

- (VCPCoreMLFeatureProviderGesture)initWith:(id)with rotationInDegrees:(int)degrees
{
  withCopy = with;
  v10.receiver = self;
  v10.super_class = VCPCoreMLFeatureProviderGesture;
  v7 = [(VCPCoreMLFeatureProviderGesture *)&v10 init];
  observation = v7->_observation;
  v7->_observation = withCopy;

  v7->_rotationInDegrees = degrees;
  return v7;
}

- (id)featureValueForName:(id)name
{
  v4 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:&unk_1F49BEB18 dataType:65568 error:0];
  for (i = 0; i != 21; ++i)
  {
    keypoints = [(VCPHandObservation *)self->_observation keypoints];
    v7 = [keypoints objectAtIndexedSubscript:i];
    [v7 location];
    transformLocation(v22, 0, self->_rotationInDegrees);
    v9 = v8;
    v11 = v10;

    dataPointer = [v4 dataPointer];
    v13 = v9;
    *(dataPointer + 4 * i) = v13;
    dataPointer2 = [v4 dataPointer];
    v15 = v11;
    *(dataPointer2 + 4 * i + 84) = v15;
    keypoints2 = [(VCPHandObservation *)self->_observation keypoints];
    v17 = [keypoints2 objectAtIndexedSubscript:i];
    [v17 confidence];
    *([v4 dataPointer] + 4 * i + 168) = v18;
  }

  v19 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v4];

  return v19;
}

@end