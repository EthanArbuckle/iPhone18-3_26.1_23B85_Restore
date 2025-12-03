@interface VCPHandGestureVideoRequest
- (VCPHandGestureVideoRequest)initWithOptions:(id)options;
- (id)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options error:(id *)error;
- (void)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options completion:(id)completion;
- (void)updateWithOptions:(id)options completion:(id)completion;
@end

@implementation VCPHandGestureVideoRequest

- (VCPHandGestureVideoRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPHandGestureVideoRequest_initWithOptions", "", buf, 2u);
  }

  v26.receiver = self;
  v26.super_class = VCPHandGestureVideoRequest;
  v9 = [(VCPRequest *)&v26 initWithOptions:optionsCopy];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v11 = [optionsCopy objectForKeyedSubscript:@"handPoseLite"];

    if (!v11)
    {
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"handPoseLite"];
    }

    [v10 setObject:&unk_1F49BBEC0 forKeyedSubscript:@"revision"];
    v12 = [[VCPHandPoseImageRequest alloc] initWithOptions:v10];
    poseImageRequest = v9->_poseImageRequest;
    v9->_poseImageRequest = v12;

    v14 = [VCPHandGestureClassifier alloc];
    *&v15 = v9->super._minHandSize;
    v16 = [(VCPHandGestureClassifier *)v14 initWithMinHandSize:optionsCopy options:v15];
    handGestureClassifier = v9->_handGestureClassifier;
    v9->_handGestureClassifier = v16;

    v18 = *(MEMORY[0x1E6960C80] + 16);
    *&v9->_previousTime.value = *MEMORY[0x1E6960C80];
    v9->_previousTime.epoch = v18;
    v9->_minTimeInterval = 0.19;
    if (!v9->_poseImageRequest || !v9->_handGestureClassifier || (queue = v9->_queue, v9->_queue = 0, queue, v9->super._useAsync) && (v20 = dispatch_queue_create("VCPHandGestureVideoRequestSerialQueue", 0), v21 = v9->_queue, v9->_queue = v20, v21, !v9->_queue))
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  v22 = VCPSignPostLog();
  v10 = v22;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v6, "VCPHandGestureVideoRequest_initWithOptions", "", buf, 2u);
  }

  v23 = v9;
LABEL_17:

  v24 = v23;
  return v24;
}

- (id)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options error:(id *)error
{
  v111 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  v73 = v9 - 1;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf.var0) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPHandGestureVideoRequest_processBuffer", "", &buf, 2u);
  }

  v80 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"faceRects"];
  v76 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"faceYaws"];
  if ([v80 count])
  {
    firstObject = [v80 firstObject];
    NSRectFromString(firstObject);
  }

  v13 = [(VCPHandPoseImageRequest *)self->_poseImageRequest processImage:buffer withOptions:optionsCopy error:error];
  maxNumOfPersons = self->super._maxNumOfPersons;
  if (maxNumOfPersons >= 3)
  {
    maxNumOfPersons = 3;
  }

  if (maxNumOfPersons <= 1)
  {
    maxNumOfPersons = 1;
  }

  v75 = maxNumOfPersons;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v100 objects:v109 count:16];
  if (v15)
  {
    v16 = *v101;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v101 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v100 + 1) + 8 * i);
        v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "groupID")}];
        v20 = [dictionary objectForKeyedSubscript:v19];
        v21 = v20 == 0;

        if (v21)
        {
          v24 = MEMORY[0x1E695DF70];
          v108 = v18;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
          v23 = [v24 arrayWithArray:v22];
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "groupID")}];
          [dictionary setObject:v23 forKeyedSubscript:v25];
        }

        else
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "groupID")}];
          v23 = [dictionary objectForKeyedSubscript:v22];
          [v23 addObject:v18];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v100 objects:v109 count:16];
    }

    while (v15);
  }

  allKeys = [dictionary allKeys];
  v27 = [allKeys count];
  v28 = v75;
  if (v75 >= v27)
  {
    v28 = v27;
  }

  v79 = v28;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  allKeys2 = [dictionary allKeys];
  v29 = [allKeys2 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v29)
  {
    v84 = *v97;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v97 != v84)
        {
          objc_enumerationMutation(allKeys2);
        }

        v31 = *(*(&v96 + 1) + 8 * j);
        v32 = [dictionary objectForKeyedSubscript:v31];
        if ([v32 count])
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
          if (v34)
          {
            v35 = *v93;
            v36 = 0.0;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v93 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v92 + 1) + 8 * k);
                [v38 bounds];
                v40 = v39;
                [v38 bounds];
                v42 = v41;

                v43 = v40 * v42;
                v36 = v36 + v43;
              }

              v34 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
            }

            while (v34);
          }

          else
          {
            v36 = 0.0;
          }

          *&v44 = v36 / [v33 count];
          v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
          [dictionary2 setObject:v45 forKeyedSubscript:v31];
        }
      }

      v29 = [allKeys2 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v29);
  }

  v46 = [dictionary2 keysSortedByValueUsingComparator:&__block_literal_global_31];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.var0) = 138412802;
    *(&buf.var0 + 4) = v46;
    LOWORD(buf.var2) = 1024;
    *(&buf.var2 + 2) = v75;
    WORD1(buf.var3) = 1024;
    HIDWORD(buf.var3) = v79;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest - sorted groupIDs based on hand size = %@, max number of persons = %d, number of valid persons = %d", &buf, 0x18u);
  }

  p_previousTime = &self->_previousTime;
  if (self->_previousTime.flags)
  {
    buf = *timestamp;
    *&rhs.value = *&p_previousTime->value;
    rhs.epoch = self->_previousTime.epoch;
    CMTimeSubtract(&time, &buf, &rhs);
    if (CMTimeGetSeconds(&time) > self->_minTimeInterval)
    {
      v48 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"rotationInDegrees"];
      v49 = v48 == 0;

      if (!v49)
      {
        RotationInDegrees = getRotationInDegrees(optionsCopy);
        if ([(VCPHandGestureClassifier *)self->_handGestureClassifier rotationInDegrees]!= RotationInDegrees)
        {
          [(VCPHandGestureClassifier *)self->_handGestureClassifier reset];
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            rotationInDegrees = [(VCPHandGestureClassifier *)self->_handGestureClassifier rotationInDegrees];
            LODWORD(buf.var0) = 67109376;
            HIDWORD(buf.var0) = rotationInDegrees;
            LOWORD(buf.var1) = 1024;
            *(&buf.var1 + 2) = RotationInDegrees;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "gesture rotation updated from %d to %d", &buf, 0xEu);
          }
        }

        [(VCPHandGestureClassifier *)self->_handGestureClassifier setRotationInDegrees:RotationInDegrees];
      }

      v52 = *&timestamp->var0;
      self->_previousTime.epoch = timestamp->var3;
      *&p_previousTime->value = v52;
      array2 = [MEMORY[0x1E695DF70] array];
      for (m = 0; ; ++m)
      {
        v55 = [v46 count];
        v56 = v79 >= v55 ? v55 : v79;
        if (m >= v56)
        {
          break;
        }

        v57 = [v46 objectAtIndexedSubscript:m];
        v58 = [dictionary objectForKeyedSubscript:v57];

        if ([v58 count])
        {
          handGestureClassifier = self->_handGestureClassifier;
          v60 = [v46 objectAtIndexedSubscript:m];
          LODWORD(handGestureClassifier) = -[VCPHandGestureClassifier processPerson:withObservations:andFaceRects:faceYaws:](handGestureClassifier, "processPerson:withObservations:andFaceRects:faceYaws:", [v60 intValue], v58, v80, v76);

          if (handGestureClassifier)
          {

LABEL_77:
            v69 = 0;
            goto LABEL_74;
          }

          [array addObjectsFromArray:v58];
          v61 = [v46 objectAtIndexedSubscript:m];
          [array2 addObject:v61];
        }
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      existingGroupIDs = [(VCPHandGestureClassifier *)self->_handGestureClassifier existingGroupIDs];
      v63 = [existingGroupIDs countByEnumeratingWithState:&v87 objects:v105 count:16];
      if (v63)
      {
        v64 = *v88;
        v65 = MEMORY[0x1E695E0F0];
        while (2)
        {
          for (n = 0; n != v63; ++n)
          {
            if (*v88 != v64)
            {
              objc_enumerationMutation(existingGroupIDs);
            }

            v67 = *(*(&v87 + 1) + 8 * n);
            if ((-[NSObject containsObject:](array2, "containsObject:", v67) & 1) == 0 && -[VCPHandGestureClassifier processPerson:withObservations:andFaceRects:faceYaws:](self->_handGestureClassifier, "processPerson:withObservations:andFaceRects:faceYaws:", [v67 intValue], v65, v65, v65))
            {

              goto LABEL_77;
            }
          }

          v63 = [existingGroupIDs countByEnumeratingWithState:&v87 objects:v105 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v68 = VCPSignPostLog();
  array2 = v68;
  if (v73 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
  {
    LOWORD(buf.var0) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, array2, OS_SIGNPOST_INTERVAL_END, spid, "VCPHandGestureVideoRequest_processBuffer", "", &buf, 2u);
  }

  v69 = array;
LABEL_74:

  v70 = v69;
  return v69;
}

- (void)updateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__VCPHandGestureVideoRequest_updateWithOptions_completion___block_invoke;
    block[3] = &unk_1E834DBD8;
    block[4] = self;
    v12 = optionsCopy;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureVideoRequest : queue not available for async updateWithOptions", v10, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

void __59__VCPHandGestureVideoRequest_updateWithOptions_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v8 = 0;
  v4 = [v3 updateWithOptions:v2 error:&v8];
  v5 = v8;
  v6 = a1[6];
  if (v4)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)processBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp withOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (self->_queue)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = CFRetain(buffer);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__VCPHandGestureVideoRequest_processBuffer_timestamp_withOptions_completion___block_invoke;
    block[3] = &unk_1E834DC00;
    block[4] = self;
    v17 = buf;
    v18 = *&timestamp->var0;
    var3 = timestamp->var3;
    v15 = optionsCopy;
    v16 = completionCopy;
    dispatch_async(queue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPHandGestureVideoRequest : queue not available for async processBuffer", buf, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __77__VCPHandGestureVideoRequest_processBuffer_timestamp_withOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v3 processBuffer:v2 timestamp:&v9 withOptions:v4 error:&v8];
  v6 = v8;
  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  (*(*(a1 + 48) + 16))();
}

@end