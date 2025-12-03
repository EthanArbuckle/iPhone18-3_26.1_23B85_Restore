@interface _PADVNFaceprintDetector
- (_PADVNFaceprintDetector)init;
- (id)requestsForFrame:(id)frame handler:(id)handler;
- (void)analyzeObservationComposite:(id)composite;
- (void)analyzeObservationCompositeSet:(id)set;
- (void)handleObservationCompositeError:(id)error;
- (void)invalidate;
- (void)processFrames:(id)frames completion:(id)completion;
@end

@implementation _PADVNFaceprintDetector

- (_PADVNFaceprintDetector)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = dispatch_queue_create([v5 UTF8String], v3);

  v11.receiver = self;
  v11.super_class = _PADVNFaceprintDetector;
  v7 = [(PADVNSerialRequestsScheduler *)&v11 initWithQueue:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBF8] mutableCopy];
    faceprints = v7->_faceprints;
    v7->_faceprints = v8;

    objc_storeStrong(&v7->_queue, v6);
  }

  return v7;
}

- (void)processFrames:(id)frames completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_completion)
  {
    v9 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA068];
    v24[0] = @"Could not complete faceprint detection on frames because another request is being processed.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v10];
    (v8)[2](v8, v11);
  }

  else
  {
    v12 = _Block_copy(completionCopy);
    completion = self->_completion;
    self->_completion = v12;

    self->_setSize = [framesCopy count];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = framesCopy;
    v14 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v10);
          }

          [(PADVNSerialRequestsScheduler *)self processFrame:*(*(&v18 + 1) + 8 * v17++), v18];
        }

        while (v15 != v17);
        v15 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (id)requestsForFrame:(id)frame handler:(id)handler
{
  v37[1] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v8 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_245686000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Vision.ID", "", buf, 2u);
  }

  v9 = VNCreateFaceprintRequestInit(handlerCopy);
  v37[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

  faces = [frameCopy faces];
  v12 = [faces count];

  if (v12 == 1)
  {
    faces2 = [frameCopy faces];
    firstObject = [faces2 firstObject];
    [firstObject bounds];
    v19 = VNFaceObservationWithAVFoundationFaceBounds(v15, v16, v17, v18);

    if (v19)
    {
      v28 = v10;
      v29 = handlerCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v31 == v23)
            {
              v25 = *(*(&v30 + 1) + 8 * i);
              if (![v25 conformsToProtocol:&unk_28587C3A0])
              {
                continue;
              }
            }

            else
            {
              objc_enumerationMutation(v20);
              v25 = *(*(&v30 + 1) + 8 * i);
              if (![v25 conformsToProtocol:&unk_28587C3A0])
              {
                continue;
              }
            }

            v35 = v19;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:{1, v28, v29, v30}];
            [v25 setInputFaceObservations:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v22);
      }

      v10 = v28;
      handlerCopy = v29;
    }
  }

  return v10;
}

- (void)handleObservationCompositeError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
  if (os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_245686000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Vision.ID", "", v9, 2u);
  }

  completion = self->_completion;
  if (completion)
  {
    if (!errorCopy)
    {
      v7 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA068];
      v11[0] = @"An error occurred when detecting faceprints in the frame.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      errorCopy = [v7 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v8];

      completion = self->_completion;
    }

    completion[2](completion, errorCopy);
  }
}

- (void)analyzeObservationComposite:(id)composite
{
  v15.receiver = self;
  v15.super_class = _PADVNFaceprintDetector;
  compositeCopy = composite;
  [(PADVNSerialRequestsScheduler *)&v15 analyzeObservationComposite:compositeCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [compositeCopy objectForKeyedSubscript:v6];

  firstObject = [v7 firstObject];

  if (firstObject)
  {
    v9 = PADVNFaceprintInit(firstObject);
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    [(NSMutableArray *)self->_faceprints addObject:v12];
    v13 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_signpost_enabled(v13))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_245686000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Vision.ID", "", v14, 2u);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_PADVNFaceprintDetector analyzeObservationComposite:v13];
    }
  }
}

- (void)analyzeObservationCompositeSet:(id)set
{
  v5.receiver = self;
  v5.super_class = _PADVNFaceprintDetector;
  [(PADVNSerialRequestsScheduler *)&v5 analyzeObservationCompositeSet:set];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 0);
  }
}

- (void)invalidate
{
  if (__37___PADVNFaceprintDetector_invalidate__block_invoke_2())
  {
    v3 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(_PADVNFaceprintDetector *)v3 invalidate];
    }
  }

  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  faceprints = self->_faceprints;
  self->_faceprints = v4;

  v6.receiver = self;
  v6.super_class = _PADVNFaceprintDetector;
  [(PADVNSerialRequestsScheduler *)&v6 invalidate];
}

@end