@interface BWMatteMediaSuppressionNode
- (BWMatteMediaSuppressionNode)initWithBehavior:(unsigned int)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWMatteMediaSuppressionNode

- (BWMatteMediaSuppressionNode)initWithBehavior:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = BWMatteMediaSuppressionNode;
  v4 = [(BWNode *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    v6 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5];
    [(BWNodeInput *)v6 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v6 setPassthroughMode:1];
    [(BWNode *)v5 addInput:v6];

    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
    [(BWNodeOutput *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v7 setPassthroughMode:1];
    [(BWNode *)v5 addOutput:v7];

    *(&v5->super._requiresEndOfDataForConfigurationChanges + 3) = a3;
  }

  return v5;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
  v6 = CMGetAttachment(a3, @"StillSettings", 0);
  if ([objc_msgSend(v6 "processingSettings")])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = *(&self->super._requiresEndOfDataForConfigurationChanges + 3);
  }

  v8 = BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw();
  v9 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21AABB0, @"PersonSemanticsHair", @"PersonSemanticsSkin", @"PersonSemanticsTeeth", @"PersonSemanticsGlasses", 0}];
  if (v7)
  {
    v10 = BWSampleBufferGetAttachedMedia(a3, @"Depth") == 0;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  if ((v7 & 2) != 0)
  {
    v10 = BWSampleBufferHasDetectedFaces(a3, 0, 0, 1, 0, 1) ^ 1;
  }

LABEL_9:
  if ((v10 & 1) == 0 && (v7 & 4) != 0)
  {
    v10 = BWSampleBufferHasDetectedFaces(a3, 0, 0, 1, 1, 1) ^ 1;
  }

  if ((v7 & 8) != 0)
  {
    v11 = BWStillImageProcessingFlagsForSampleBuffer(a3) & 0x1000;
    v12 = [objc_msgSend(v6 "requestedSettings")];
    v13 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    v14 = BWSmartStylePersonMasksValidHint(v13) <= 0.0 || v12 == 0;
    if (!v14 && v11 == 0)
    {
      [v9 removeObjectsInArray:v8];
    }
  }

  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v9);
          }

          BWSampleBufferRemoveAttachedMedia(a3, *(*(&v21 + 1) + 8 * v19++));
        }

        while (v17 != v19);
        v17 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v17);
    }
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

@end