@interface BWEspressoInferenceFaceprintPropagator
- (BWEspressoInferenceFaceprintPropagator)initWithFaceprintRequirement:(id)requirement faceprintSizeBytes:(unint64_t)bytes confidenceRequirement:(id)confidenceRequirement maxFaces:(unint64_t)faces faceIndex:(unint64_t)index;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWEspressoInferenceFaceprintPropagator

- (BWEspressoInferenceFaceprintPropagator)initWithFaceprintRequirement:(id)requirement faceprintSizeBytes:(unint64_t)bytes confidenceRequirement:(id)confidenceRequirement maxFaces:(unint64_t)faces faceIndex:(unint64_t)index
{
  v15.receiver = self;
  v15.super_class = BWEspressoInferenceFaceprintPropagator;
  v12 = [(BWEspressoInferenceFaceprintPropagator *)&v15 init];
  if (v12)
  {
    v12->_faceprintRequirement = [requirement copy];
    v13 = [confidenceRequirement copy];
    v12->_maxFaces = faces;
    v12->_faceIndex = index;
    v12->_confidenceRequirement = v13;
    v12->_faceprintSizeBytes = bytes;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceFaceprintPropagator;
  [(BWEspressoInferenceFaceprintPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v10 = [storage tensorForRequirement:self->_faceprintRequirement];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [storage tensorForRequirement:self->_confidenceRequirement];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  firstObject = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_faceprintRequirement metadataKeys] firstObject];
  v15 = CMGetAttachment(sampleBuffer, firstObject, 0);
  firstObject2 = [(NSArray *)[(BWInferenceMetadataRequirement *)self->_confidenceRequirement metadataKeys] firstObject];
  v17 = CMGetAttachment(sampleBuffer, firstObject2, 0);
  v18 = v17;
  if (!v15)
  {
    dictionaryCopy = dictionary;
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

    CMSetAttachment(sampleBuffer, firstObject, v15, 1u);

    dictionary = dictionaryCopy;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_10:
    dictionaryCopy2 = dictionary;
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

    CMSetAttachment(sampleBuffer, firstObject2, v18, 1u);

    dictionary = dictionaryCopy2;
  }

LABEL_14:
  [v15 replaceObjectAtIndex:self->_faceIndex withObject:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", *v11, self->_faceprintSizeBytes)}];
  LODWORD(v21) = **v13;
  [v18 replaceObjectAtIndex:self->_faceIndex withObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v21)}];
  [dictionary setObject:v15 forKeyedSubscript:firstObject];

  [dictionary setObject:v18 forKeyedSubscript:firstObject2];
}

@end