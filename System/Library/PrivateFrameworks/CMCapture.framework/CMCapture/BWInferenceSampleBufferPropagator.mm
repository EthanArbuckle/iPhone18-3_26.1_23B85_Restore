@interface BWInferenceSampleBufferPropagator
- (BWInferenceSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements metadataRequirements:(id)metadataRequirements updateMetadataWithCropRect:(BOOL)rect;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWInferenceSampleBufferPropagator

- (BWInferenceSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements metadataRequirements:(id)metadataRequirements updateMetadataWithCropRect:(BOOL)rect
{
  v12.receiver = self;
  v12.super_class = BWInferenceSampleBufferPropagator;
  v10 = [(BWInferenceSampleBufferPropagator *)&v12 init];
  if (v10)
  {
    v10->_videoRequirements = [requirements copy];
    v10->_cloneVideoRequirements = [cloneRequirements copy];
    v10->_metadataRequirements = [metadataRequirements copy];
    v10->_updateMetadataWithCropRect = rect;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSampleBufferPropagator;
  [(BWInferenceSampleBufferPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_videoRequirements;
  dictionary = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v61 count:16, dictionary];
  if (dictionary)
  {
    v10 = dictionary;
    v11 = *v63;
    key = *off_1E798A3C8;
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        v18 = [storage newSampleBufferSatisfyingRequirement:v17 withPropagationSampleBuffer:sampleBuffer];
        v19 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v18);
        if (self->_updateMetadataWithCropRect)
        {
          v20 = v19;
          v21 = BWPixelBufferDimensionsFromSampleBuffer(sampleBuffer);
          CMGetAttachment(sampleBuffer, key, 0);
          v22 = *(MEMORY[0x1E695F050] + 16);
          v59 = *MEMORY[0x1E695F050];
          v60 = v22;
          v23 = v12;
          v24 = v13;
          v25 = v14;
          v26 = v15;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v59, *(&v59 + 1), *&v60, *(&v60 + 1));
            v23 = v27;
            v24 = v28;
            v25 = v29;
            v26 = v30;
          }

          v31 = BWPixelBufferDimensionsFromSampleBuffer(v18);
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v20, v21, v31, v23, v24, v25, v26, v12, v13, v14, v15);
        }

        BWSampleBufferSetAttachedMedia(sampleBuffer, [v17 attachedMediaKey], v18);
        if (v18)
        {
          CFRelease(v18);
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v61 count:16];
    }

    while (v10);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  cloneVideoRequirements = self->_cloneVideoRequirements;
  v33 = [(NSArray *)cloneVideoRequirements countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v56;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(cloneVideoRequirements);
        }

        v37 = *(*(&v55 + 1) + 8 * j);
        v38 = [storage newSampleBufferSatisfyingCloneRequirement:v37];
        BWSampleBufferSetAttachedMedia(sampleBuffer, [v37 attachedMediaKey], v38);
        if (v38)
        {
          CFRelease(v38);
        }
      }

      v34 = [(NSArray *)cloneVideoRequirements countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v34);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  metadataRequirements = self->_metadataRequirements;
  v40 = [(NSArray *)metadataRequirements countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v51;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(metadataRequirements);
        }

        v44 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v50 + 1) + 8 * k)];
        [v46 addEntriesFromDictionary:v44];
      }

      v41 = [(NSArray *)metadataRequirements countByEnumeratingWithState:&v50 objects:v49 count:16];
    }

    while (v41);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }
}

@end