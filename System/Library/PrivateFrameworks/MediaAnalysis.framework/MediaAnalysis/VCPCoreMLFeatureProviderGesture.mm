@interface VCPCoreMLFeatureProviderGesture
- (VCPCoreMLFeatureProviderGesture)initWith:(id)a3 rotationInDegrees:(int)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation VCPCoreMLFeatureProviderGesture

- (VCPCoreMLFeatureProviderGesture)initWith:(id)a3 rotationInDegrees:(int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VCPCoreMLFeatureProviderGesture;
  v7 = [(VCPCoreMLFeatureProviderGesture *)&v10 init];
  observation = v7->_observation;
  v7->_observation = v6;

  v7->_rotationInDegrees = a4;
  return v7;
}

- (id)featureValueForName:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:&unk_1F49BEB18 dataType:65568 error:0];
  for (i = 0; i != 21; ++i)
  {
    v6 = [(VCPHandObservation *)self->_observation keypoints];
    v7 = [v6 objectAtIndexedSubscript:i];
    [v7 location];
    transformLocation(v22, 0, self->_rotationInDegrees);
    v9 = v8;
    v11 = v10;

    v12 = [v4 dataPointer];
    v13 = v9;
    *(v12 + 4 * i) = v13;
    v14 = [v4 dataPointer];
    v15 = v11;
    *(v14 + 4 * i + 84) = v15;
    v16 = [(VCPHandObservation *)self->_observation keypoints];
    v17 = [v16 objectAtIndexedSubscript:i];
    [v17 confidence];
    *([v4 dataPointer] + 4 * i + 168) = v18;
  }

  v19 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v4];

  return v19;
}

@end