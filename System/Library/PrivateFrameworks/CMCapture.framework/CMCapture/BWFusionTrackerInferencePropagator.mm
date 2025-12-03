@interface BWFusionTrackerInferencePropagator
- (BWFusionTrackerInferencePropagator)initWithInputVideoRequirement:(id)requirement outputTensorRequirements:(id)requirements operation:(int64_t)operation;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
@end

@implementation BWFusionTrackerInferencePropagator

- (BWFusionTrackerInferencePropagator)initWithInputVideoRequirement:(id)requirement outputTensorRequirements:(id)requirements operation:(int64_t)operation
{
  v11.receiver = self;
  v11.super_class = BWFusionTrackerInferencePropagator;
  v8 = [(BWFusionTrackerInferencePropagator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_operation = operation;
    v8->_outputTensorRequirements = requirements;
    v9->_inputVideoRequirement = requirement;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFusionTrackerInferencePropagator;
  [(BWFusionTrackerInferencePropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = [storage pixelBufferForRequirement:self->_inputVideoRequirement];
  obj = sampleBuffer;
  v10 = [CMGetAttachment(sampleBuffer @"FusionTrackerInput"];
  if (!v9)
  {
    goto LABEL_30;
  }

  v11 = v10;
  if ([v10 completed])
  {
    goto LABEL_30;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  outputTensorRequirements = self->_outputTensorRequirements;
  v21 = OUTLINED_FUNCTION_3_43(v12, v14, v15, v16, v17, v18, v19, v20, v50, dictionary, v11, obj, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v79, v80);
  if (v21)
  {
    v22 = v21;
    v23 = *v82;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v82 != v23)
        {
          objc_enumerationMutation(outputTensorRequirements);
        }

        v25 = *(*(&v81 + 1) + 8 * i);
        v26 = [storage tensorForRequirement:{-[NSMutableDictionary objectForKeyedSubscript:](self->_outputTensorRequirements, "objectForKeyedSubscript:", v25)}];
        FTEspressoBufferClass = getFTEspressoBufferClass();
        memcpy(__dst, v26, sizeof(__dst));
        v28 = [v12 setObject:objc_msgSend(FTEspressoBufferClass forKeyedSubscript:{"bufferWithEspressoBuffer:", __dst), v25}];
      }

      v22 = OUTLINED_FUNCTION_3_43(v28, v29, v30, v31, v32, v33, v34, v35, v51, v53, v54, obja, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], v79, v80);
    }

    while (v22);
  }

  operation = self->_operation;
  if (operation == 1)
  {
    targetRectForSampleBuffer(obja);
    v37 = v54;
    if (![v54 postProcessExemplarOutputs:v12 forTargetRect:?])
    {
      goto LABEL_28;
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    objb = self->_outputTensorRequirements;
    v41 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v74 objects:&v58 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v75;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v75 != v43)
          {
            objc_enumerationMutation(objb);
          }

          v45 = *(*(&v74 + 1) + 8 * j);
          v46 = [storage tensorForRequirement:{-[NSMutableDictionary objectForKeyedSubscript:](self->_outputTensorRequirements, "objectForKeyedSubscript:", v45)}];
          v47 = [MEMORY[0x1E695DEF0] dataWithBytes:*v46 length:bweis_storageLengthInBytes(v46)];
          bzero(__dst, 0xA8uLL);
          memcpy(__dst, v46, sizeof(__dst));
          *__dst = [v47 bytes];
          [objc_msgSend(v54 "sessionStorage")];
          [objc_msgSend(v54 "sessionStorage")];
        }

        v42 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v74 objects:&v58 count:16];
      }

      while (v42);
    }
  }

  else
  {
    v37 = v54;
    if (operation == 2)
    {
      if ([v54 postProcessInstanceOutputs:v12])
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (operation != 3)
    {
      goto LABEL_30;
    }

    v38 = [storage tensorForRequirement:{objc_msgSend(-[NSMutableDictionary allValues](self->_outputTensorRequirements, "allValues"), "firstObject")}];
    memset(__dst, 0, 40);
    FTTapToBoxClass = getFTTapToBoxClass();
    if (FTTapToBoxClass)
    {
      [FTTapToBoxClass postProcessNetworkOutput:v38];
      v40 = *&__dst[32];
    }

    else
    {
      v40 = 0.0;
      memset(__dst, 0, 40);
    }

    [getFTTapToBoxClass() defaultConfidenceThreshold];
    if (v40 < v48)
    {
LABEL_28:
      [v37 abort];
      goto LABEL_30;
    }

    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*__dst);
    CMSetAttachment(obja, @"BWInferenceAttachmentKey_FusionTrackerTargetRect", DictionaryRepresentation, 1u);
    [v53 addEntriesFromDictionary:DictionaryRepresentation];
  }

LABEL_30:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_50();
  }
}

@end