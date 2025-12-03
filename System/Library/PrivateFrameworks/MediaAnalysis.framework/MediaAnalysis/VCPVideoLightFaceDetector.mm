@interface VCPVideoLightFaceDetector
- (VCPVideoLightFaceDetector)initWithTransform:(CGAffineTransform *)transform faceDominated:(BOOL)dominated;
- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags;
- (int)detectFaces:(__CVBuffer *)faces faces:(id)a4 frameStats:(id)stats;
- (int)finishAnalysisPass:(id *)pass;
@end

@implementation VCPVideoLightFaceDetector

- (VCPVideoLightFaceDetector)initWithTransform:(CGAffineTransform *)transform faceDominated:(BOOL)dominated
{
  v15.receiver = self;
  v15.super_class = VCPVideoLightFaceDetector;
  v6 = [(VCPVideoLightFaceDetector *)&v15 init];
  if (v6)
  {
    v7 = *&transform->c;
    v14[0] = *&transform->a;
    v14[1] = v7;
    v14[2] = *&transform->tx;
    *(v6 + 2) = angleForTransform(v14);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = *(v6 + 5);
    *(v6 + 5) = dictionary;

    v10 = *(MEMORY[0x1E6960C80] + 16);
    *(v6 + 12) = *MEMORY[0x1E6960C80];
    *(v6 + 28) = v10;
    v11 = *(v6 + 6);
    *(v6 + 6) = 0;

    *(v6 + 14) = 0;
    *(v6 + 15) = 0;
    v6[64] = dominated;
    v12 = *(v6 + 9);
    *(v6 + 9) = 0;
  }

  return v6;
}

- (int)detectFaces:(__CVBuffer *)faces faces:(id)a4 frameStats:(id)stats
{
  v54[1] = *MEMORY[0x1E69E9840];
  v47 = a4;
  statsCopy = stats;
  Width = CVPixelBufferGetWidth(faces);
  Height = CVPixelBufferGetHeight(faces);
  context = objc_autoreleasePoolPush();
  obj = [MEMORY[0x1E695DF70] array];
  array = [MEMORY[0x1E695DF70] array];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E69845B8]);
  v12 = [v11 initWithCVPixelBuffer:faces options:MEMORY[0x1E695E0F8]];
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
      results = [v14 results];
      v21 = results == 0;

      if (!v21)
      {
        results2 = [v14 results];
        [obj addObjectsFromArray:results2];
      }

      if (v19)
      {
        results3 = [v19 results];
        v24 = results3 == 0;

        if (!v24)
        {
          results4 = [v19 results];
          [array addObjectsFromArray:results4];
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
    v26 = array;
    if (!array)
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
    [statsCopy setFrameProcessedByFaceDetector:1];
  }

  return v41;
}

- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags
{
  v85 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  if (self->super._results)
  {
    v11 = -18;
LABEL_3:
    v64 = v11;
    goto LABEL_52;
  }

  if (CVPixelBufferGetPixelFormatType(frame) != 875704438 && CVPixelBufferGetPixelFormatType(frame) != 875704422)
  {
    v11 = -50;
    goto LABEL_3;
  }

  detectedFaces = [statsCopy detectedFaces];
  [detectedFaces removeAllObjects];

  [statsCopy setFrameProcessedByFaceDetector:0];
  v13 = objc_autoreleasePoolPush();
  lhs = *timestamp;
  rhs.origin = *(&self->super._angle + 1);
  rhs.size.width = *&self->super._timeLastDetection.flags;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(VCPVideoLightFaceDetector *)self minProcessTimeIntervalInSecs];
  context = v13;
  if (Seconds >= v15)
  {
    v17 = *&timestamp->var0;
    *&self->super._timeLastDetection.flags = timestamp->var3;
    *(&self->super._angle + 1) = v17;
    array = [MEMORY[0x1E695DF70] array];
    v18 = [VCPVideoLightFaceDetector detectFaces:"detectFaces:faces:frameStats:" faces:frame frameStats:?];
    v16 = 0;
    v71 = 0;
    v62 = v18 == 0;
    v64 = v18;
    if (!v18)
    {
      v19 = array;
      if (!array)
      {
LABEL_35:

        goto LABEL_36;
      }

      if ([array count])
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
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
        *flags |= 0x20uLL;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = array;
        v25 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
        selfCopy = self;
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
              observation = [v28 observation];
              [(VCPFace *)v35 setObservation:observation];

              detectedFaces2 = [statsCopy detectedFaces];
              [detectedFaces2 addObject:v35];

              activeFaces = selfCopy->super._activeFaces;
              v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "trackID")}];
              v40 = [(NSMutableDictionary *)activeFaces objectForKey:v39];

              if (v40)
              {
                lhs = *timestamp;
                [v40 setLast:&lhs];
                [v40 setFlags:{objc_msgSend(v40, "flags") | v29}];
                [v40 setPosition:{objc_msgSend(v40, "position") | v34}];
              }

              else
              {
                v41 = objc_alloc_init(VCPFaceDetectionRange);
                lhs = *timestamp;
                [(VCPFaceDetectionRange *)v41 setStart:&lhs];
                lhs = *timestamp;
                [(VCPFaceDetectionRange *)v41 setLast:&lhs];
                [(VCPFaceDetectionRange *)v41 setFlags:v29];
                [(VCPFaceDetectionRange *)v41 setBounds:rhs.origin.x, rhs.origin.y, rhs.size.width, rhs.size.height];
                [(VCPFaceDetectionRange *)v41 setPosition:v34];
                v42 = selfCopy->super._activeFaces;
                v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "trackID")}];
                [(NSMutableDictionary *)v42 setObject:v41 forKey:v43];
              }

              *flags |= v29;
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

        self = selfCopy;
      }

      else
      {
        v71 = 0;
        v16 = 0;
      }
    }

    v19 = array;
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
    if ([statsCopy frameProcessedByFaceDetector] && self->_lastDominantFace != 0 && v16)
    {
      observation2 = [v71 observation];
      landmarks65 = [observation2 landmarks65];
      selfCopy2 = self;
      allPoints = [landmarks65 allPoints];

      observation3 = [(VCPFace *)self->_lastDominantFace observation];
      landmarks652 = [observation3 landmarks65];
      allPoints2 = [landmarks652 allPoints];

      if (allPoints && allPoints2)
      {
        v53 = 0;
        v54 = 0.0;
        while ([allPoints pointCount] > v53)
        {
          v55 = allPoints;
          v74 = *([allPoints normalizedPoints] + 16 * v53);
          v56 = allPoints2;
          v57 = vcvt_f32_f64(vsubq_f64(v74, *([allPoints2 normalizedPoints] + 16 * v53)));
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

        [statsCopy setFrameExpressionScore:v59];
      }

      self = selfCopy2;
    }

    objc_storeStrong(&self->_lastDominantFace, v71);
    v64 = 0;
  }

LABEL_52:
  return v64;
}

- (int)finishAnalysisPass:(id *)pass
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->super._results)
  {
    return -18;
  }

  memset(&v40, 0, sizeof(v40));
  [(VCPVideoLightFaceDetector *)self minProcessTimeIntervalInSecs];
  CMTimeMakeWithSeconds(&v40, (v5 * 0.5), 100);
  array = [MEMORY[0x1E695DF70] array];
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
          rhs = pass->var0;
          v11 = CMTimeCompare(&lhs.start, &rhs);
          passCopy = &v32;
          if (v11 < 0)
          {
            passCopy = pass;
          }

          v35 = *passCopy;
          *&lhs.start.value = v33;
          lhs.start.epoch = epoch;
          rhs = v40;
          CMTimeAdd(&v32, &lhs.start, &rhs);
          v13 = *&pass->var0.var3;
          *&lhs.start.value = *&pass->var0.var0;
          *&lhs.start.epoch = v13;
          *&lhs.duration.timescale = *&pass->var1.var1;
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
        [array addObject:v22];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v6);
  }

  v42 = @"FaceResults";
  v43 = array;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  results = self->super._results;
  self->super._results = v23;

  return 0;
}

@end