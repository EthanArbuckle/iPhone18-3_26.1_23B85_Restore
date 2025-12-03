@interface EGStillImageReferenceFrameSelectionNode
- (EGStillImageReferenceFrameSelectionNode)initWithName:(id)name numSampleBufferInputs:(int)inputs;
- (void)dealloc;
- (void)receiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageReferenceFrameSelectionNode

- (EGStillImageReferenceFrameSelectionNode)initWithName:(id)name numSampleBufferInputs:(int)inputs
{
  v13.receiver = self;
  v13.super_class = EGStillImageReferenceFrameSelectionNode;
  v5 = [(EGNode *)&v13 initWithName:name];
  if (v5)
  {
    v5->_sampleBufferInputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[EGInputGroup alloc] initWithName:@"sbufInputs"];
    if (inputs >= 1)
    {
      v7 = 0;
      do
      {
        v8 = [EGInput alloc];
        v9 = -[EGInput initWithName:](v8, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v7]);
        [(EGInputGroup *)v6 installInput:v9];
        [(NSMutableArray *)v5->_sampleBufferInputs addObject:v9];
        v7 = (v7 + 1);
      }

      while (inputs != v7);
    }

    v10 = [[EGInput alloc] initWithName:@"fusionMode"];
    v5->_fusionModeInput = v10;
    [(EGInputGroup *)v6 installInput:v10];
    [(EGNode *)v5 installInputGroup:v6];
    v11 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"referenceFrame"];
    v5->_referenceFrameOutput = v11;
    [(EGNode *)v5 installOutput:v11];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageReferenceFrameSelectionNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)data fromInputGroup:(id)group
{
  v6 = [objc_msgSend(objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_fusionModeInput, "name", data, group)), "number"), "intValue"}];
  if (v6)
  {
    v7 = v6;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    sampleBufferInputs = self->_sampleBufferInputs;
    v9 = [(NSMutableArray *)sampleBufferInputs countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(sampleBufferInputs);
          }

          v13 = [objc_msgSend(data objectForKeyedSubscript:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "name")), "sampleBuffer"}];
          v14 = BWStillImageCaptureFrameFlagsForSampleBuffer(v13);
          if (v7 == 1 && (v14 & 0x10) != 0 || v7 == 2 && (v14 & 4) != 0)
          {
            v15 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:v13];
            [(EGStillImageOutput *)self->_referenceFrameOutput emitPayload:v15];

            return;
          }
        }

        v10 = [(NSMutableArray *)sampleBufferInputs countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  [EGStillImageReferenceFrameSelectionNode receiveData:? fromInputGroup:?];
}

@end