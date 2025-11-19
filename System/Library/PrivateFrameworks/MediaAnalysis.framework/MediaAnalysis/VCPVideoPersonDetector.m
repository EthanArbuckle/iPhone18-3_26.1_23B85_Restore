@interface VCPVideoPersonDetector
- (VCPVideoPersonDetector)init;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)detectPersons:(__CVBuffer *)a3 persons:(id)a4;
@end

@implementation VCPVideoPersonDetector

- (VCPVideoPersonDetector)init
{
  v6.receiver = self;
  v6.super_class = VCPVideoPersonDetector;
  v2 = [(VCPVideoPersonDetector *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    persons = v2->_persons;
    v2->_persons = v3;
  }

  return v2;
}

- (int)detectPersons:(__CVBuffer *)a3 persons:(id)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  v6 = objc_autoreleasePoolPush();
  v40 = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x1E69845B8]);
  v9 = [v8 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  context = v6;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPVideoPersonDetectorHumanDetection", "", buf, 2u);
  }

  v48 = 0;
  v14 = [VCPFaceUtils configureVNRequest:&v48 withClass:objc_opt_class() andProcessingVersion:15];
  v15 = v48;
  v16 = v15;
  if (v14)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v52[0] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v47 = 0;
    v20 = [v9 performRequests:v19 error:&v47];
    v18 = v47;

    if (v20)
    {
      v46 = 0;
      v14 = [VCPFaceUtils configureVNRequest:&v46 withClass:objc_opt_class() andProcessingVersion:15];
      v38 = v46;
      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v21 = [v16 results];
        [v38 setInputDetectedObjectObservations:v21];

        v51 = v38;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        v45 = v18;
        v23 = [v9 performRequests:v22 error:&v45];
        v37 = v45;

        if (v23)
        {
          v24 = VCPSignPostLog();
          v25 = v24;
          if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v11, "VCPVideoPersonDetectorHumanDetection", "", buf, 2u);
          }

          v26 = [v38 results];
          v27 = v26 == 0;

          if (!v27)
          {
            v28 = [v38 results];
            [v40 addObjectsFromArray:v28];
          }

          v14 = 0;
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v14 = -18;
        }

        v18 = v37;
      }
    }

    else
    {
      v17 = 0;
      v14 = -18;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (v17)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v40;
    v30 = [v29 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v30)
    {
      v31 = *v42;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v41 + 1) + 8 * i);
          v34 = objc_alloc_init(VCPHuman);
          [v33 boundingBox];
          [(VCPHuman *)v34 setBounds:?];
          [v33 confidence];
          [(VCPHuman *)v34 setConfidence:?];
          v35 = [v33 torsoprint];
          [(VCPHuman *)v34 setTorsoprint:v35];

          [v5 addObject:v34];
        }

        v30 = [v29 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v30);
    }
  }

  objc_autoreleasePoolPop(context);
  return v14;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v6 = a3;
  [(NSMutableArray *)self->_persons removeAllObjects:a3];
  v8 = objc_autoreleasePoolPush();
  LODWORD(v6) = [(VCPVideoPersonDetector *)self detectPersons:v6 persons:self->_persons];
  objc_autoreleasePoolPop(v8);
  return v6;
}

@end