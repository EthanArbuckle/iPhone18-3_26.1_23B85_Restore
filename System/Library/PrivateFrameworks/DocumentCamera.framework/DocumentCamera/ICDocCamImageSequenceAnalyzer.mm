@interface ICDocCamImageSequenceAnalyzer
- (ICDocCamImageSequenceAnalyzer)initWithOptions:(id)a3 callback:(id)a4;
- (void)addFrame:(__CVBuffer *)a3 metaData:(id)a4 frameOptions:(id)a5 rectangleRequest:(id)a6 pixelFocalLength:(float)a7 cameraIntrinsicData:(__CFData *)a8;
- (void)dealloc;
@end

@implementation ICDocCamImageSequenceAnalyzer

- (ICDocCamImageSequenceAnalyzer)initWithOptions:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = ICDocCamImageSequenceAnalyzer;
  v8 = [(ICDocCamImageSequenceAnalyzer *)&v32 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    frameArray = v8->_frameArray;
    v8->_frameArray = v9;

    v11 = dispatch_semaphore_create(1);
    frameArraySem = v8->_frameArraySem;
    v8->_frameArraySem = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.VisionKit", v13);
    dq = v8->_dq;
    v8->_dq = v14;

    v16 = _Block_copy(v7);
    callback = v8->_callback;
    v8->_callback = v16;

    v18 = objc_alloc_init(MEMORY[0x277CE2E10]);
    seqHandler = v8->_seqHandler;
    v8->_seqHandler = v18;

    v20 = [v6 mutableCopy];
    sessionOptions = v8->_sessionOptions;
    v8->_sessionOptions = v20;

    v22 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_MaxBufferQueueSize"];

    if (v22)
    {
      v23 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_MaxBufferQueueSize"];
      v24 = [v23 intValue];

      v25 = dispatch_semaphore_create(v24);
    }

    else
    {
      v25 = 0;
    }

    queueSizeSem = v8->_queueSizeSem;
    v8->_queueSizeSem = v25;

    v8->_bRealTime = 0;
    v27 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_RealTime"];

    if (v27)
    {
      v28 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_RealTime"];
      v8->_bRealTime = [v28 BOOLValue];
    }

    v8->_bSynchronous = 0;
    v29 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Synchronous"];

    if (v29)
    {
      v30 = [(NSDictionary *)v8->_sessionOptions objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Synchronous"];
      v8->_bSynchronous = [v30 BOOLValue];
    }

    perfInit();
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICDocCamImageSequenceAnalyzer;
  [(ICDocCamImageSequenceAnalyzer *)&v2 dealloc];
}

- (void)addFrame:(__CVBuffer *)a3 metaData:(id)a4 frameOptions:(id)a5 rectangleRequest:(id)a6 pixelFocalLength:(float)a7 cameraIntrinsicData:(__CFData *)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a5;
  v17 = objc_alloc_init(ICDocCamImageSequenceFrame);
  [(ICDocCamImageSequenceFrame *)v17 setPb:CVPixelBufferRetain(a3)];
  [(ICDocCamImageSequenceFrame *)v17 setFrameOptions:v16];

  if (!self->_bSynchronous)
  {
    queueSizeSem = self->_queueSizeSem;
    if (queueSizeSem)
    {
      dispatch_semaphore_wait(queueSizeSem, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  dispatch_semaphore_wait(self->_frameArraySem, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_frameArray addObject:v17];
  dispatch_semaphore_signal(self->_frameArraySem);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__ICDocCamImageSequenceAnalyzer_addFrame_metaData_frameOptions_rectangleRequest_pixelFocalLength_cameraIntrinsicData___block_invoke;
  aBlock[3] = &unk_278F934A8;
  aBlock[4] = self;
  v29 = a8;
  v30 = a7;
  v19 = v15;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v21 = _Block_copy(aBlock);
  v22 = v21;
  if (self->_bSynchronous)
  {
    v21[2](v21);
  }

  else
  {
    dq = self->_dq;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __118__ICDocCamImageSequenceAnalyzer_addFrame_metaData_frameOptions_rectangleRequest_pixelFocalLength_cameraIntrinsicData___block_invoke_3;
    v24[3] = &unk_278F92FB8;
    v25 = v21;
    dispatch_async(dq, v24);
  }
}

void __118__ICDocCamImageSequenceAnalyzer_addFrame_metaData_frameOptions_rectangleRequest_pixelFocalLength_cameraIntrinsicData___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (*(v2 + 64) == 1)
  {
    v4 = [v3 lastObject];
    [*(*(a1 + 32) + 8) removeLastObject];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v5 = *(*(a1 + 32) + 8);
    v6 = [v5 countByEnumeratingWithState:&v100 objects:v110 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v101;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v101 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v100 + 1) + 8 * i);
          if (v10 != v4)
          {
            CVPixelBufferRelease([v10 pb]);
            v11 = *(*(a1 + 32) + 48);
            if (v11)
            {
              dispatch_semaphore_signal(v11);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v100 objects:v110 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 32) + 8) removeAllObjects];
  }

  else
  {
    v4 = [v3 firstObject];
    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
  if (v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v4 pb];
    if (!v13)
    {
      __118__ICDocCamImageSequenceAnalyzer_addFrame_metaData_frameOptions_rectangleRequest_pixelFocalLength_cameraIntrinsicData___block_invoke_cold_1();
    }

    v14 = v13;
    v15 = [v4 frameOptions];
    context = v12;
    if (v15 && (v16 = v15, [v4 frameOptions], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", @"ICDocCamImageSequenceFrame_Orientation"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, v18))
    {
      v19 = [v4 frameOptions];
      v20 = [v19 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_Orientation"];
      v21 = [v20 intValue];
    }

    else
    {
      v21 = 1;
    }

    v22 = *(a1 + 56);
    v23 = MEMORY[0x277CE3038];
    if (v22)
    {
      v108 = *MEMORY[0x277CE3038];
      v109 = v22;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
    }

    else
    {
      Width = CVPixelBufferGetWidth(v14);
      v98 = 0u;
      v99 = 0u;
      *bytes = 0u;
      *&v26 = CVPixelBufferGetHeight(v14);
      LODWORD(v27) = *(a1 + 64);
      [ICDocCamViewController cameraIntrinsicMatrixForWidth:COERCE_DOUBLE(COERCE_UNSIGNED_INT(Width)) height:v26 pixelFocalLength:v27];
      *&bytes[8] = v28;
      DWORD2(v98) = v29;
      *bytes = v30;
      *&v98 = v31;
      DWORD2(v99) = v32;
      *&v99 = v33;
      v34 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 48);
      v106 = *v23;
      v107 = v34;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    }

    v35 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCVPixelBuffer:v14 orientation:v21 options:v24];
    v36 = [MEMORY[0x277CBEB18] array];
    v92 = [MEMORY[0x277CBEB18] array];
    v37 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Rectangles"];
    if (v37)
    {
      v38 = v37;
      v39 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Rectangles"];
      v40 = [v39 BOOLValue];

      if (v40)
      {
        if (*(a1 + 40))
        {
          [v36 addObject:?];
        }
      }
    }

    v41 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Registration"];
    if (v41 && (v42 = v41, [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Registration"], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "BOOLValue"), v43, v42, v44) && (v45 = objc_alloc(MEMORY[0x277CE2E28]), (v46 = objc_msgSend(v45, "initWithTargetedCVPixelBuffer:options:", v14, MEMORY[0x277CBEC10])) != 0))
    {
      v47 = v92;
      v91 = v46;
      [v92 addObject:v46];
    }

    else
    {
      v91 = 0;
      v47 = v92;
    }

    v48 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_SceneClassification"];
    if (v48 && (v49 = v48, [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_SceneClassification"], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "BOOLValue"), v50, v49, v51))
    {
      v52 = objc_alloc_init(MEMORY[0x277CE2E00]);
      if (v52)
      {
        [v36 addObject:v52];
      }
    }

    else
    {
      v52 = 0;
    }

    if (![v36 count])
    {
      goto LABEL_61;
    }

    v53 = timeElapsedSinceInit();
    v96 = 0;
    v54 = [v35 performRequests:v36 error:&v96];
    v55 = v96;
    v56 = [v47 count];
    if (v56 && v54)
    {
      v57 = *(*(a1 + 32) + 56);
      v95 = v55;
      v58 = [v57 performRequests:v47 onCVPixelBuffer:v14 error:&v95];
      v89 = v95;

      v59 = timeElapsedSinceInit();
      if ((v58 & 1) == 0)
      {
LABEL_58:
        v55 = v89;
LABEL_60:

LABEL_61:
        CVPixelBufferRelease(v14);

        objc_autoreleasePoolPop(context);
        goto LABEL_62;
      }

      v60 = v59;
    }

    else
    {
      v61 = v35;
      v62 = v24;
      v63 = (v56 == 0) & v54;
      v64 = timeElapsedSinceInit();
      if (v63 != 1)
      {
        v24 = v62;
        v35 = v61;
        v47 = v92;
        goto LABEL_60;
      }

      v60 = v64;
      v89 = v55;
      v24 = v62;
      v35 = v61;
      v47 = v92;
    }

    if (*(*(a1 + 32) + 40))
    {
      v65 = [MEMORY[0x277CBEB38] dictionary];
      v66 = [*(a1 + 40) results];
      if (v66)
      {
        [v65 setObject:v66 forKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Rectangles"];
      }

      v86 = v66;
      v88 = v24;
      v67 = [v91 results];
      if (v67)
      {
        [v65 setObject:v67 forKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Registration"];
      }

      v84 = v67;
      v68 = MEMORY[0x277CBEB38];
      v104 = @"ICDocCamImageSequenceAnalyzerResults";
      v105 = v65;
      v87 = v65;
      v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:{1, v84}];
      v70 = [v68 dictionaryWithDictionary:v69];

      v71 = [v4 frameOptions];
      v72 = [v71 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_Timestamp"];

      if (v72)
      {
        v73 = [v4 frameOptions];
        [v73 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_Timestamp"];
        v75 = v74 = v35;
        [v70 setObject:v75 forKeyedSubscript:@"ICDocCamImageSequenceFrame_Timestamp"];

        v35 = v74;
        v47 = v92;
      }

      v76 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Debug"];

      if (v76)
      {
        v77 = [MEMORY[0x277CCABB0] numberWithDouble:v60 - v53];
        [v70 setObject:v77 forKeyedSubscript:@"ICDocCamImageSequenceFrame_RequestTime"];
      }

      v78 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_SceneClassification"];

      if (v78)
      {
        v79 = [v52 results];
        [v70 setObject:v79 forKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_SceneClassification"];
      }

      v80 = *(a1 + 48);
      if (v80)
      {
        [v70 setObject:v80 forKeyedSubscript:@"ICDocCamImageSequenceFrame_MetaData"];
      }

      v81 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __118__ICDocCamImageSequenceAnalyzer_addFrame_metaData_frameOptions_rectangleRequest_pixelFocalLength_cameraIntrinsicData___block_invoke_2;
      block[3] = &unk_278F92DE8;
      block[4] = *(a1 + 32);
      v94 = v70;
      v82 = v70;
      dispatch_async(v81, block);

      v24 = v88;
    }

    goto LABEL_58;
  }

LABEL_62:
  v83 = *(*(a1 + 32) + 48);
  if (v83)
  {
    dispatch_semaphore_signal(v83);
  }
}

@end