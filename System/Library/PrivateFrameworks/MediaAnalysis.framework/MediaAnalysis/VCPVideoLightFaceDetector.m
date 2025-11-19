@interface VCPVideoLightFaceDetector
- (VCPVideoLightFaceDetector)initWithTransform:(CGAffineTransform *)a3 faceDominated:(BOOL)a4;
- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7;
- (int)detectFaces:(__CVBuffer *)a3 faces:(id)a4 frameStats:(id)a5;
- (int)finishAnalysisPass:(id *)a3;
@end

@implementation VCPVideoLightFaceDetector

- (VCPVideoLightFaceDetector)initWithTransform:(CGAffineTransform *)a3 faceDominated:(BOOL)a4
{
  v15.receiver = self;
  v15.super_class = VCPVideoLightFaceDetector;
  v6 = [(VCPVideoLightFaceDetector *)&v15 init];
  if (v6)
  {
    v7 = *&a3->c;
    v14[0] = *&a3->a;
    v14[1] = v7;
    v14[2] = *&a3->tx;
    *(v6 + 2) = angleForTransform(v14);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = *(v6 + 5);
    *(v6 + 5) = v8;

    v10 = *(MEMORY[0x1E6960C80] + 16);
    *(v6 + 12) = *MEMORY[0x1E6960C80];
    *(v6 + 28) = v10;
    v11 = *(v6 + 6);
    *(v6 + 6) = 0;

    *(v6 + 14) = 0;
    *(v6 + 15) = 0;
    v6[64] = a4;
    v12 = *(v6 + 9);
    *(v6 + 9) = 0;
  }

  return v6;
}

- (int)detectFaces:(__CVBuffer *)a3 faces:(id)a4 frameStats:(id)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v47 = a4;
  v43 = a5;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  context = objc_autoreleasePoolPush();
  obj = [MEMORY[0x1E695DF70] array];
  v44 = [MEMORY[0x1E695DF70] array];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E69845B8]);
  v12 = [v11 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
  if (!v12)
  {
    v45 = 0;
    v41 = -108;
    goto LABEL_20;
  }

  v13 = objc_alloc_init(MEMORY[0x1E69844D0]);
  v14 = v13;
  if (v13)
  {
    [v13 setPreferBackgroundProcessing:1];
    [v14 setRevision:2];
    v54[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v16 = [v15 mutableCopy];

    if (self->_faceDominated)
    {
      v17 = objc_alloc_init(MEMORY[0x1E69844C8]);
      v18 = v17;
      if (!v17)
      {
        v19 = 0;
        goto LABEL_17;
      }

      [v17 setPreferBackgroundProcessing:1];
      [v18 setRevision:2];
      v19 = v18;
      [v16 addObject:v18];
    }

    else
    {
      v19 = 0;
    }

    if ([v12 performRequests:v16 error:0])
    {
      v20 = [v14 results];
      v21 = v20 == 0;

      if (!v21)
      {
        v22 = [v14 results];
        [obj addObjectsFromArray:v22];
      }

      if (v19)
      {
        v23 = [v19 results];
        v24 = v23 == 0;

        if (!v24)
        {
          v25 = [v19 results];
          [v44 addObjectsFromArray:v25];
        }
      }

      v41 = 0;
      v45 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v45 = 0;
    v41 = -18;
LABEL_18:

    goto LABEL_19;
  }

  v45 = 0;
  v41 = -18;
LABEL_19:

LABEL_20:
  objc_autoreleasePoolPop(v10);
  if (v45)
  {
    v26 = v44;
    if (!v44)
    {
      v26 = obj;
    }

    v27 = v26;

    lastestFaceID = self->_lastestFaceID;
    if (v27 && [v27 count])
    {
      v29 = [v27 count];
      numFacesLastFrame = self->_numFacesLastFrame;
      if (numFacesLastFrame >= v29)
      {
        numFacesLastFrame = v29;
      }

      lastestFaceID = (lastestFaceID - numFacesLastFrame);
      self->_numFacesLastFrame = v29;
    }

    else
    {
      self->_numFacesLastFrame = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v27;
    v31 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v31)
    {
      v32 = *v50;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v49 + 1) + 8 * i);
          [v34 boundingBox];
          v48.b = 0.0;
          v48.c = 0.0;
          v48.a = Width;
          v48.d = -Height;
          v48.tx = 0.0;
          v48.ty = Height;
          v56 = CGRectApplyAffineTransform(v55, &v48);
          x = v56.origin.x;
          y = v56.origin.y;
          v37 = v56.size.width;
          v38 = v56.size.height;
          v39 = objc_alloc_init(VCPFace);
          [(VCPFace *)v39 setObservation:v34];
          [(VCPFace *)v39 setBounds:x, y, v37, v38];
          [(VCPFace *)v39 setTrackID:lastestFaceID];
          lastestFaceID = (lastestFaceID + 1);
          self->_lastestFaceID = lastestFaceID;
          [v47 addObject:v39];
        }

        v31 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v31);
    }
  }

  objc_autoreleasePoolPop(context);
  if (v45)
  {
    [v43 setFrameProcessedByFaceDetector:1];
  }

  return v41;
}

- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7
{
  v85 = *MEMORY[0x1E69E9840];
  v72 = a6;
  if (self->super._results)
  {
    v11 = -18;
LABEL_3:
    v64 = v11;
    goto LABEL_52;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 875704438 && CVPixelBufferGetPixelFormatType(a3) != 875704422)
  {
    v11 = -50;
    goto LABEL_3;
  }

  v12 = [v72 detectedFaces];
  [v12 removeAllObjects];

  [v72 setFrameProcessedByFaceDetector:0];
  v13 = objc_autoreleasePoolPush();
  lhs = *a4;
  rhs.origin = *(&self->super._angle + 1);
  rhs.size.width = *&self->super._timeLastDetection.flags;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(VCPVideoLightFaceDetector *)self minProcessTimeIntervalInSecs];
  context = v13;
  if (Seconds >= v15)
  {
    v17 = *&a4->var0;
    *&self->super._timeLastDetection.flags = a4->var3;
    *(&self->super._angle + 1) = v17;
    v61 = [MEMORY[0x1E695DF70] array];
    v18 = [VCPVideoLightFaceDetector detectFaces:"detectFaces:faces:frameStats:" faces:a3 frameStats:?];
    v16 = 0;
    v71 = 0;
    v62 = v18 == 0;
    v64 = v18;
    if (!v18)
    {
      v19 = v61;
      if (!v61)
      {
LABEL_35:

        goto LABEL_36;
      }

      if ([v61 count])
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
        angle = self->super._angle;
        if (angle)
        {
          v23 = angle == 180;
        }

        else
        {
          v23 = 1;
        }

        v24 = v23;
        v69 = v24;
        *a7 |= 0x20uLL;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = v61;
        v25 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
        v73 = self;
        if (v25)
        {
          v66 = HeightOfPlane;
          v67 = WidthOfPlane;
          v71 = 0;
          v68 = *v80;
          v26 = 0.0;
          do
          {
            v70 = v25;
            for (i = 0; i != v70; ++i)
            {
              if (*v80 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v79 + 1) + 8 * i);
              v29 = [v28 flagsForOrientation:v69 width:v67 height:v66];
              *&lhs.timescale = 0;
              lhs.epoch = 0;
              memset(&rhs, 0, sizeof(rhs));
              lhs.value = 0x3FF0000000000000;
              v76 = xmmword_1C9F60600;
              v77 = 0x3FF0000000000000;
              [v28 faceBoundsWithTransform:v67 height:v66 transform:&lhs];
              rhs.origin.x = v30;
              rhs.origin.y = v31;
              rhs.size.width = v32;
              rhs.size.height = v33;
              v34 = MediaAnalysisFacePosition(&rhs);
              v35 = objc_alloc_init(VCPFace);
              [(VCPFace *)v35 setBounds:rhs.origin.x, rhs.origin.y, rhs.size.width, rhs.size.height];
              v36 = [v28 observation];
              [(VCPFace *)v35 setObservation:v36];

              v37 = [v72 detectedFaces];
              [v37 addObject:v35];

              activeFaces = v73->super._activeFaces;
              v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "trackID")}];
              v40 = [(NSMutableDictionary *)activeFaces objectForKey:v39];

              if (v40)
              {
                lhs = *a4;
                [v40 setLast:&lhs];
                [v40 setFlags:{objc_msgSend(v40, "flags") | v29}];
                [v40 setPosition:{objc_msgSend(v40, "position") | v34}];
              }

              else
              {
                v41 = objc_alloc_init(VCPFaceDetectionRange);
                lhs = *a4;
                [(VCPFaceDetectionRange *)v41 setStart:&lhs];
                lhs = *a4;
                [(VCPFaceDetectionRange *)v41 setLast:&lhs];
                [(VCPFaceDetectionRange *)v41 setFlags:v29];
                [(VCPFaceDetectionRange *)v41 setBounds:rhs.origin.x, rhs.origin.y, rhs.size.width, rhs.size.height];
                [(VCPFaceDetectionRange *)v41 setPosition:v34];
                v42 = v73->super._activeFaces;
                v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "trackID")}];
                [(NSMutableDictionary *)v42 setObject:v41 forKey:v43];
              }

              *a7 |= v29;
              v44 = rhs.size.height * rhs.size.width;
              if (rhs.size.height * rhs.size.width > v26)
              {
                v45 = v28;

                v26 = v44;
                v71 = v45;
              }
            }

            v25 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
          }

          while (v25);
          v16 = v26 > 0.2;
        }

        else
        {
          v71 = 0;
          v16 = 0;
        }

        self = v73;
      }

      else
      {
        v71 = 0;
        v16 = 0;
      }
    }

    v19 = v61;
    goto LABEL_35;
  }

  v71 = 0;
  v16 = 0;
  v62 = 0;
  v64 = 0;
LABEL_36:
  objc_autoreleasePoolPop(context);
  if (v62)
  {
    if ([v72 frameProcessedByFaceDetector] && self->_lastDominantFace != 0 && v16)
    {
      v46 = [v71 observation];
      v47 = [v46 landmarks65];
      v48 = self;
      v49 = [v47 allPoints];

      v50 = [(VCPFace *)self->_lastDominantFace observation];
      v51 = [v50 landmarks65];
      v52 = [v51 allPoints];

      if (v49 && v52)
      {
        v53 = 0;
        v54 = 0.0;
        while ([v49 pointCount] > v53)
        {
          v55 = v49;
          v74 = *([v49 normalizedPoints] + 16 * v53);
          v56 = v52;
          v57 = vcvt_f32_f64(vsubq_f64(v74, *([v52 normalizedPoints] + 16 * v53)));
          v54 = v54 + sqrtf(vaddv_f32(vmul_f32(v57, v57)));
          ++v53;
        }

        v58 = 1.0;
        if ((v54 / 9.1924) < 1.0)
        {
          v58 = v54 / 9.1924;
        }

        v59 = 0.0;
        if ((v54 / 9.1924) > 0.0)
        {
          *&v59 = v58;
        }

        [v72 setFrameExpressionScore:v59];
      }

      self = v48;
    }

    objc_storeStrong(&self->_lastDominantFace, v71);
    v64 = 0;
  }

LABEL_52:
  return v64;
}

- (int)finishAnalysisPass:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->super._results)
  {
    return -18;
  }

  memset(&v40, 0, sizeof(v40));
  [(VCPVideoLightFaceDetector *)self minProcessTimeIntervalInSecs];
  CMTimeMakeWithSeconds(&v40, (v5 * 0.5), 100);
  v27 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->super._activeFaces;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v6)
  {
    v26 = *v37;
    do
    {
      v28 = v6;
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->super._activeFaces objectForKey:*(*(&v36 + 1) + 8 * i)];
        v9 = v8;
        memset(&v35, 0, sizeof(v35));
        if (v8)
        {
          [v8 start];
          v33 = 0uLL;
          epoch = 0;
          [v9 last];
        }

        else
        {
          v33 = 0uLL;
          epoch = 0;
        }

        [(VCPVideoLightFaceDetector *)self minProcessTimeIntervalInSecs];
        if (v10 > 0.0)
        {
          lhs.start = v35;
          rhs = v40;
          CMTimeSubtract(&v32, &lhs.start, &rhs);
          lhs.start = v32;
          rhs = a3->var0;
          v11 = CMTimeCompare(&lhs.start, &rhs);
          v12 = &v32;
          if (v11 < 0)
          {
            v12 = a3;
          }

          v35 = *v12;
          *&lhs.start.value = v33;
          lhs.start.epoch = epoch;
          rhs = v40;
          CMTimeAdd(&v32, &lhs.start, &rhs);
          v13 = *&a3->var0.var3;
          *&lhs.start.value = *&a3->var0.var0;
          *&lhs.start.epoch = v13;
          *&lhs.duration.timescale = *&a3->var1.var1;
          CMTimeRangeGetEnd(&v31, &lhs);
          lhs.start = v31;
          rhs = v32;
          v14 = CMTimeCompare(&lhs.start, &rhs);
          v15 = &v32;
          if (v14 < 0)
          {
            v15 = &v31;
          }

          v33 = *&v15->value;
          epoch = v15->epoch;
        }

        v46[0] = @"start";
        lhs.start = v35;
        v16 = CMTimeCopyAsDictionary(&lhs.start, 0);
        v47[0] = v16;
        v46[1] = @"duration";
        *&lhs.start.value = v33;
        lhs.start.epoch = epoch;
        rhs = v35;
        CMTimeSubtract(&v32, &lhs.start, &rhs);
        lhs.start = v32;
        v17 = CMTimeCopyAsDictionary(&lhs.start, 0);
        v47[1] = v17;
        v46[2] = @"flags";
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "flags")}];
        v47[2] = v18;
        v46[3] = @"attributes";
        v44[0] = @"facePosition";
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "position")}];
        v44[1] = @"faceBounds";
        v45[0] = v19;
        [v9 bounds];
        v20 = NSStringFromRect(v50);
        v45[1] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        v47[3] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
        [v27 addObject:v22];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v6);
  }

  v42 = @"FaceResults";
  v43 = v27;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  results = self->super._results;
  self->super._results = v23;

  return 0;
}

@end