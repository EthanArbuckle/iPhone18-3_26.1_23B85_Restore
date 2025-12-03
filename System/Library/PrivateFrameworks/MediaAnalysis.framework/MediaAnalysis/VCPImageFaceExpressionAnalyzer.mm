@interface VCPImageFaceExpressionAnalyzer
- (VCPImageFaceExpressionAnalyzer)initWithFaceResults:(id)results;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
@end

@implementation VCPImageFaceExpressionAnalyzer

- (VCPImageFaceExpressionAnalyzer)initWithFaceResults:(id)results
{
  resultsCopy = results;
  v10.receiver = self;
  v10.super_class = VCPImageFaceExpressionAnalyzer;
  v5 = [(VCPImageFaceExpressionAnalyzer *)&v10 init];
  if (v5)
  {
    if (resultsCopy)
    {
      v6 = [resultsCopy objectForKey:@"FaceResults"];
      faces = v5->_faces;
      v5->_faces = v6;
    }

    v8 = v5;
  }

  return v5;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v59 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  *results = 0;
  faces = self->_faces;
  if (faces && [(NSArray *)faces count])
  {
    array = [MEMORY[0x1E695DF70] array];
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v53 = 0uLL;
    v13 = objc_autoreleasePoolPush();
    v44 = +[VCPCNNSmileDetector detector];
    v43 = +[VCPCNNPoseEstimator estimator];
    resultsCopy = results;
    context = v13;
    v41 = objc_alloc_init(VCPCNNGazeAnalysis);
    v14 = 0;
    v15 = -18;
    if (v44 && v43 && v41)
    {
      *flags &= 0xFFFFFFFFFFFFFFF9;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = self->_faces;
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v16)
      {
        v17 = Width;
        v18 = -Height;
        v19 = Height;
        v40 = *v50;
        while (2)
        {
          v39 = v16;
          for (i = 0; i != v39; ++i)
          {
            if (*v50 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v49 + 1) + 8 * i);
            if (cancelCopy[2]())
            {
              v14 = 0;
              v15 = -128;
              goto LABEL_29;
            }

            v22 = [v21 objectForKeyedSubscript:@"attributes"];
            v23 = [v22 objectForKeyedSubscript:@"faceBounds"];

            if (!v23)
            {
              v14 = 0;
              v15 = -18;
              goto LABEL_29;
            }

            v60 = NSRectFromString(v23);
            *&v48.b = v53;
            v48.a = v17;
            v48.d = v18;
            v48.tx = 0.0;
            v48.ty = v19;
            v61 = CGRectApplyAffineTransform(v60, &v48);
            x = v61.origin.x;
            y = v61.origin.y;
            v26 = v61.size.width;
            v27 = v61.size.height;
            v47 = 0;
            v15 = [v44 detectSmileForFace:buffer inBuffer:&v47 smile:?];
            if (v15 || (v48.a = 0.0, (v15 = [v43 detectPoseForFace:buffer inBuffer:&v48 yaw:{x, y, v26, v27}]) != 0) || (v46 = 0, (v15 = -[VCPCNNGazeAnalysis detectEyeOpennessForFace:inBuffer:eyeOpenness:](v41, "detectEyeOpennessForFace:inBuffer:eyeOpenness:", buffer, &v46, x, y, v26, v27)) != 0))
            {

              v14 = 0;
              goto LABEL_29;
            }

            v28 = 2;
            if (!v47)
            {
              v28 = 0;
            }

            if (v46)
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 | 4;
            }

            v30 = [v21 objectForKeyedSubscript:@"attributes"];
            v31 = [v30 mutableCopy];

            v32 = [MEMORY[0x1E696AD98] numberWithInteger:*&v48.a];
            [v31 setObject:v32 forKey:@"facePoseYaw"];

            v56[0] = @"flags";
            v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v29];
            v56[1] = @"attributes";
            v57[0] = v33;
            v57[1] = v31;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
            [array addObject:v34];

            *flags |= v29;
          }

          v16 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v58 count:16];
          v15 = 0;
          v14 = 1;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v15 = 0;
        v14 = 1;
      }

LABEL_29:
    }

    objc_autoreleasePoolPop(context);
    if (v14 && [array count])
    {
      *flags |= 0x20uLL;
      v54 = @"FaceResults";
      v55 = array;
      *resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end