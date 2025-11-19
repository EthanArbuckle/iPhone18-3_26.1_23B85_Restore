@interface BWEspressoInferenceFaceprintPropagator
- (BWEspressoInferenceFaceprintPropagator)initWithFaceprintRequirement:(id)a3 faceprintSizeBytes:(unint64_t)a4 confidenceRequirement:(id)a5 maxFaces:(unint64_t)a6 faceIndex:(unint64_t)a7;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
@end

@implementation BWEspressoInferenceFaceprintPropagator

- (BWEspressoInferenceFaceprintPropagator)initWithFaceprintRequirement:(id)a3 faceprintSizeBytes:(unint64_t)a4 confidenceRequirement:(id)a5 maxFaces:(unint64_t)a6 faceIndex:(unint64_t)a7
{
  v15.receiver = self;
  v15.super_class = BWEspressoInferenceFaceprintPropagator;
  v12 = [(BWEspressoInferenceFaceprintPropagator *)&v15 init];
  if (v12)
  {
    v12->_faceprintRequirement = [a3 copy];
    v13 = [a5 copy];
    v12->_maxFaces = a6;
    v12->_faceIndex = a7;
    v12->_confidenceRequirement = v13;
    v12->_faceprintSizeBytes = a4;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceFaceprintPropagator;
  [(BWEspressoInferenceFaceprintPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v10 = [a4 tensorForRequirement:self->_faceprintRequirement];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [a4 tensorForRequirement:self->_confidenceRequirement];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_faceprintRequirement metadataKeys] firstObject];
  v15 = CMGetAttachment(a6, v14, 0);
  v16 = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_confidenceRequirement metadataKeys] firstObject];
  v17 = CMGetAttachment(a6, v16, 0);
  v18 = v17;
  if (!v15)
  {
    v22 = a3;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_maxFaces)
    {
      v19 = 0;
      do
      {
        [v15 setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), v19++}];
      }

      while (self->_maxFaces > v19);
    }

    CMSetAttachment(a6, v14, v15, 1u);

    a3 = v22;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_10:
    v23 = a3;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_maxFaces)
    {
      v20 = 0;
      do
      {
        [v18 setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), v20++}];
      }

      while (self->_maxFaces > v20);
    }

    CMSetAttachment(a6, v16, v18, 1u);

    a3 = v23;
  }

LABEL_14:
  [v15 replaceObjectAtIndex:self->_faceIndex withObject:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", *v11, self->_faceprintSizeBytes)}];
  LODWORD(v21) = **v13;
  [v18 replaceObjectAtIndex:self->_faceIndex withObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v21)}];
  [a3 setObject:v15 forKeyedSubscript:v14];

  [a3 setObject:v18 forKeyedSubscript:v16];
}

@end