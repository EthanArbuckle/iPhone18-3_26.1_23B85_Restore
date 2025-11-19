@interface BWInferenceSchedulerGraphInputNode
- (BWInferenceSchedulerGraphInputNode)initWithVideoPropagatedToStorage:(id)a3;
- (NSString)description;
- (id)newStorage;
- (int)extractFromSampleBuffer:(opaqueCMSampleBuffer *)a3 usingVideoRequirements:(id)a4 metadataRequirements:(id)a5 toStorage:(id)a6;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerGraphInputNode

- (BWInferenceSchedulerGraphInputNode)initWithVideoPropagatedToStorage:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceSchedulerGraphInputNode;
  v4 = [(BWInferenceSchedulerGraphInputNode *)&v6 init];
  if (v4)
  {
    v4->_videoPropagatedToStorage = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerGraphInputNode;
  [(BWInferenceSchedulerGraphInputNode *)&v3 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerGraphInputNode;
  return [(NSString *)[(BWInferenceSchedulerGraphInputNode *)&v3 description] stringByAppendingFormat:@" videoPropagatedToStorage: %@", self->_videoPropagatedToStorage];
}

- (id)newStorage
{
  v2 = [BWInferenceSimpleStorage alloc];
  v3 = MEMORY[0x1E695E0F0];

  return [(BWInferenceSimpleStorage *)v2 initWithRequirementsNeedingPools:v3];
}

- (int)extractFromSampleBuffer:(opaqueCMSampleBuffer *)a3 usingVideoRequirements:(id)a4 metadataRequirements:(id)a5 toStorage:(id)a6
{
  v9 = a4;
  if (!a4)
  {
    self = [(NSSet *)self->_videoPropagatedToStorage allObjects:a3];
    v9 = self;
  }

  v11 = OUTLINED_FUNCTION_0_0(self, a2, a3, a4, a5, a6, v6, v7, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, 0);
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(8 * i);
        v16 = [v15 attachedMediaKey];
        v17 = [v16 isEqualToString:@"PrimaryFormat"];
        AttachedMedia = a3;
        if ((v17 & 1) == 0)
        {
          AttachedMedia = BWSampleBufferGetAttachedMedia(a3, v16);
        }

        if (!AttachedMedia)
        {
          return -31712;
        }

        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (!ImageBuffer)
        {
          return -31712;
        }

        v20 = [a6 setPixelBuffer:ImageBuffer forRequirement:v15];
      }

      v12 = OUTLINED_FUNCTION_0_0(v20, v21, v22, v23, v24, v25, v26, v27, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v28 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a3, 1u);
  [a6 setInputSampleBufferAttachments:v28];

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a6 setMutableInferenceMetadata:v29];

  return 0;
}

@end