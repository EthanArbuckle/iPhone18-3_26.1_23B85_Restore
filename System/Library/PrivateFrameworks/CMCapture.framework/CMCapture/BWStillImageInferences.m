@interface BWStillImageInferences
- (BWStillImageInferences)init;
- (id)description;
- (opaqueCMSampleBuffer)createSampleBufferForInferenceForAttachedMediaKey:(id)a3 pts:(id *)a4;
- (void)addInferenceAttachedMediaMetadata:(id)a3;
- (void)addInferenceBuffer:(__CVBuffer *)a3 metadata:(id)a4 inferenceAttachedMediaKey:(id)a5;
- (void)dealloc;
@end

@implementation BWStillImageInferences

- (BWStillImageInferences)init
{
  v4.receiver = self;
  v4.super_class = BWStillImageInferences;
  v2 = [(BWStillImageInferences *)&v4 init];
  if (v2)
  {
    v2->_inferenceBufferByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_metadataByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_inferenceByAttachmentKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageInferences;
  [(BWStillImageInferences *)&v3 dealloc];
}

- (void)addInferenceBuffer:(__CVBuffer *)a3 metadata:(id)a4 inferenceAttachedMediaKey:(id)a5
{
  [(NSMutableDictionary *)self->_inferenceBufferByAttachedMediaKey setObject:a3 forKeyedSubscript:a5];
  metadataByAttachedMediaKey = self->_metadataByAttachedMediaKey;

  [(NSMutableDictionary *)metadataByAttachedMediaKey setObject:a4 forKeyedSubscript:a5];
}

- (void)addInferenceAttachedMediaMetadata:(id)a3
{
  inferenceAttachedMediaMetadata = self->_inferenceAttachedMediaMetadata;
  if (inferenceAttachedMediaMetadata != a3)
  {

    self->_inferenceAttachedMediaMetadata = a3;
  }
}

- (id)description
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_inferenceByAttachmentKey;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v5 length];
        v10 = @", ";
        if (!v9)
        {
          v10 = &stru_1F216A3D0;
        }

        v5 = [v5 stringByAppendingFormat:@"%@%@", v10, v8];
        v11 = [(NSMutableDictionary *)self->_inferenceByAttachmentKey objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v5 stringByAppendingFormat:@":%lu", objc_msgSend(v11, "count")];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v5 stringByAppendingFormat:@":%lu", objc_msgSend(v11, "count")];
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p>: inferenceBuffers:%@ inferenceAttachments:%@ inferenceAttachedMediaMetadata:%lu", objc_opt_class(), self, objc_msgSend(-[NSMutableDictionary allKeys](self->_inferenceBufferByAttachedMediaKey, "allKeys"), "componentsJoinedByString:", @", "), v5, -[NSDictionary count](self->_inferenceAttachedMediaMetadata, "count")];
}

- (opaqueCMSampleBuffer)createSampleBufferForInferenceForAttachedMediaKey:(id)a3 pts:(id *)a4
{
  target = 0;
  v7 = [(BWStillImageInferences *)self inferenceBufferForAttachedMediaKey:?];
  if (v7)
  {
    cf = 0;
    v14 = *&a4->var0;
    var3 = a4->var3;
    v8 = BWSampleBufferCreateFromPixelBuffer(v7, &v14, &cf, &target);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v8)
    {
      v9 = [(BWStillImageInferences *)self metadataForAttachedMediaKey:a3];
      if (v9)
      {
        CMSetAttachment(target, *off_1E798A3C8, v9, 1u);
      }

      v10 = BWMetadataAttachmentKeyForAttachedMediaKey(a3);
      if (v10)
      {
        v11 = v10;
        v12 = [(NSDictionary *)[(BWStillImageInferences *)self inferenceAttachedMediaMetadata] objectForKeyedSubscript:a3];
        if (v12)
        {
          CMSetAttachment(target, v11, v12, 1u);
        }
      }
    }
  }

  return target;
}

@end