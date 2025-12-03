@interface BWRedEyeReducerNode
- (BWRedEyeReducerNode)initWithVersion:(int)version sensorConfigurationsByPortType:(id)type;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWRedEyeReducerNode

- (BWRedEyeReducerNode)initWithVersion:(int)version sensorConfigurationsByPortType:(id)type
{
  v22.receiver = self;
  v22.super_class = BWRedEyeReducerNode;
  v6 = [(BWNode *)&v22 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(type, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(type);
          }

          -[NSDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v11)), "sensorIDDictionary"), "objectForKeyedSubscript:", @"RedEyeReductionParameters"}], *(*(&v18 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v9);
    }

    v6->_redEyeReductionParametersByPortType = v7;
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2248B50];
    [(BWNodeInput *)v12 setFormatRequirements:v13];
    [(BWNodeInput *)v12 setPassthroughMode:1];

    [(BWNode *)v6 addInput:v12];
    v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
    v15 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v15 setSupportedPixelFormats:&unk_1F2248B68];
    [(BWNodeOutput *)v14 setFormatRequirements:v15];
    [(BWNodeOutput *)v14 setPassthroughMode:1];

    [(BWNode *)v6 addOutput:v14];
    v6->_ciContext = objc_alloc_init(MEMORY[0x1E695F620]);
    v6->_primaryImageSampleBuffer = 0;
    v6->_skipRepair = 0;
    v6->_redEyeReductionVersion = version;
  }

  return v6;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  primaryImageSampleBuffer = self->_primaryImageSampleBuffer;
  if (primaryImageSampleBuffer)
  {
    CFRelease(primaryImageSampleBuffer);
  }

  v5.receiver = self;
  v5.super_class = BWRedEyeReducerNode;
  [(BWNode *)&v5 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWRedEyeReducerNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_redEyeRepairSession)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695F640]);
    self->_redEyeRepairSession = v3;
    [(CIDualRedEyeRepairSession *)v3 setContext:self->_ciContext];
    [(CIDualRedEyeRepairSession *)self->_redEyeRepairSession prepareRepair];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = BWRedEyeReducerNode;
  [(BWNode *)&v10 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForInput:(id)input
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
    self->_outputFormatDescription = 0;
  }

  v6.receiver = self;
  v6.super_class = BWRedEyeReducerNode;
  [(BWNode *)&v6 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v7 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}];
  v8 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  v9 = [v6 objectForKeyedSubscript:*off_1E798B540];
  v10 = [objc_msgSend(v8 captureStreamSettingsForPortType:{v9), "captureFlags"}];
  if ([v8 captureType] != 2 || (*&v10 & 0x10000) == 0)
  {
    [BWRedEyeReducerNode renderSampleBuffer:? forInput:?];
LABEL_17:
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    return;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if ((v7 & 1) == 0)
  {
    if (!self->_primaryImageSampleBuffer && self->_inferenceType && self->_inferenceAttachmentKey)
    {
      AttachedInference = BWInferenceGetAttachedInference(buffer, [(BWRedEyeReducerNode *)self inferenceType], [(BWRedEyeReducerNode *)self inferenceAttachmentKey]);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      sceneFlags = [v8 sceneFlags];
      v17 = [MEMORY[0x1E696AD98] numberWithBool:(sceneFlags >> 5) & 1];
      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E695F5F0]];
      v18 = [v6 objectForKeyedSubscript:*off_1E798A5B0];
      [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x1E695F5D0]];
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E695F5E0]];
      v19 = [v6 objectForKeyedSubscript:*off_1E798B510];
      [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x1E695F5D8]];
      [dictionary setObject:FigCaptureGetModelSpecificName() forKeyedSubscript:*MEMORY[0x1E695F5C8]];
      if ([(NSDictionary *)self->_redEyeReductionParametersByPortType objectForKeyedSubscript:v9])
      {
        v23 = [(NSDictionary *)self->_redEyeReductionParametersByPortType objectForKeyedSubscript:v9, v9];
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x1E695F5E8]];
      }

      v21 = [(CIDualRedEyeRepairSession *)self->_redEyeRepairSession setPrimary:ImageBuffer observations:AttachedInference metadata:dictionary];
      self->_skipRepair = v21 ^ 1;
      if (((v21 ^ 1) & 1) == 0)
      {
        self->_primaryImageSampleBuffer = CFRetain(buffer);
        return;
      }
    }

    goto LABEL_17;
  }

  if (!self->_skipRepair)
  {
    [(CIDualRedEyeRepairSession *)self->_redEyeRepairSession repairPrimaryWithSecondary:ImageBuffer];
    [(BWNodeOutput *)self->super._output emitSampleBuffer:self->_primaryImageSampleBuffer];
    primaryImageSampleBuffer = self->_primaryImageSampleBuffer;
    if (primaryImageSampleBuffer)
    {
      CFRelease(primaryImageSampleBuffer);
      self->_primaryImageSampleBuffer = 0;
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (self->_primaryImageSampleBuffer)
  {
    [(CIDualRedEyeRepairSession *)self->_redEyeRepairSession setPrimary:0 observations:0 metadata:0];
    [(BWNodeOutput *)self->super._output emitSampleBuffer:self->_primaryImageSampleBuffer];
    primaryImageSampleBuffer = self->_primaryImageSampleBuffer;
    if (primaryImageSampleBuffer)
    {
      CFRelease(primaryImageSampleBuffer);
      self->_primaryImageSampleBuffer = 0;
    }
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitNodeError:error, input];
  }
}

- (void)renderSampleBuffer:(uint64_t)a1 forInput:.cold.1(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 160) = 0;
  }
}

@end