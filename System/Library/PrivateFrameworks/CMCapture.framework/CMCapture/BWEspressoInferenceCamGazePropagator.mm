@interface BWEspressoInferenceCamGazePropagator
- (BWEspressoInferenceCamGazePropagator)initWithCamGazeRequirement:(id)requirement camGazeSizeBytes:(unint64_t)bytes maxFaces:(unint64_t)faces faceIndex:(unint64_t)index;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWEspressoInferenceCamGazePropagator

- (BWEspressoInferenceCamGazePropagator)initWithCamGazeRequirement:(id)requirement camGazeSizeBytes:(unint64_t)bytes maxFaces:(unint64_t)faces faceIndex:(unint64_t)index
{
  v13.receiver = self;
  v13.super_class = BWEspressoInferenceCamGazePropagator;
  v10 = [(BWEspressoInferenceCamGazePropagator *)&v13 init];
  if (v10)
  {
    v11 = [requirement copy];
    v10->_maxFaces = faces;
    v10->_faceIndex = index;
    v10->_camGazeRequirement = v11;
    v10->_camGazeSizeBytes = bytes;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceCamGazePropagator;
  [(BWEspressoInferenceCamGazePropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v10 = [storage tensorForRequirement:self->_camGazeRequirement];
  if (v10)
  {
    v11 = v10;
    firstObject = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_camGazeRequirement metadataKeys] firstObject];
    array = CMGetAttachment(sampleBuffer, firstObject, 0);
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      if (self->_maxFaces)
      {
        v14 = 0;
        do
        {
          [array setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), v14++}];
        }

        while (self->_maxFaces > v14);
      }

      CMSetAttachment(sampleBuffer, firstObject, array, 1u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:*v11 length:self->_camGazeSizeBytes];
    [dictionary setObject:objc_msgSend(objc_msgSend(CMGetAttachment(buffer forKeyedSubscript:{*off_1E798A5A0, 0), "objectAtIndexedSubscript:", self->_faceIndex), "objectForKeyedSubscript:", *off_1E798AC70), *off_1E798AC70}];
    [dictionary setObject:v16 forKeyedSubscript:0x1F219EED0];
    [array setObject:dictionary atIndexedSubscript:self->_faceIndex];

    [dictionary setObject:array forKeyedSubscript:firstObject];
  }
}

@end