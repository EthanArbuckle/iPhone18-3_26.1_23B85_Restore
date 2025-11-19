@interface BWEspressoInferenceCamGazePropagator
- (BWEspressoInferenceCamGazePropagator)initWithCamGazeRequirement:(id)a3 camGazeSizeBytes:(unint64_t)a4 maxFaces:(unint64_t)a5 faceIndex:(unint64_t)a6;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
@end

@implementation BWEspressoInferenceCamGazePropagator

- (BWEspressoInferenceCamGazePropagator)initWithCamGazeRequirement:(id)a3 camGazeSizeBytes:(unint64_t)a4 maxFaces:(unint64_t)a5 faceIndex:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = BWEspressoInferenceCamGazePropagator;
  v10 = [(BWEspressoInferenceCamGazePropagator *)&v13 init];
  if (v10)
  {
    v11 = [a3 copy];
    v10->_maxFaces = a5;
    v10->_faceIndex = a6;
    v10->_camGazeRequirement = v11;
    v10->_camGazeSizeBytes = a4;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceCamGazePropagator;
  [(BWEspressoInferenceCamGazePropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v10 = [a4 tensorForRequirement:self->_camGazeRequirement];
  if (v10)
  {
    v11 = v10;
    v12 = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_camGazeRequirement metadataKeys] firstObject];
    v13 = CMGetAttachment(a6, v12, 0);
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      if (self->_maxFaces)
      {
        v14 = 0;
        do
        {
          [v13 setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), v14++}];
        }

        while (self->_maxFaces > v14);
      }

      CMSetAttachment(a6, v12, v13, 1u);
    }

    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:*v11 length:self->_camGazeSizeBytes];
    [v15 setObject:objc_msgSend(objc_msgSend(CMGetAttachment(a5 forKeyedSubscript:{*off_1E798A5A0, 0), "objectAtIndexedSubscript:", self->_faceIndex), "objectForKeyedSubscript:", *off_1E798AC70), *off_1E798AC70}];
    [v15 setObject:v16 forKeyedSubscript:0x1F219EED0];
    [v13 setObject:v15 atIndexedSubscript:self->_faceIndex];

    [a3 setObject:v13 forKeyedSubscript:v12];
  }
}

@end