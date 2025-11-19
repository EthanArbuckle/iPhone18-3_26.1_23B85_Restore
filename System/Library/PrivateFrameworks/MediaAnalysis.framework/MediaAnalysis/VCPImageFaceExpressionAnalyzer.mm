@interface VCPImageFaceExpressionAnalyzer
- (VCPImageFaceExpressionAnalyzer)initWithFaceResults:(id)a3;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
@end

@implementation VCPImageFaceExpressionAnalyzer

- (VCPImageFaceExpressionAnalyzer)initWithFaceResults:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VCPImageFaceExpressionAnalyzer;
  v5 = [(VCPImageFaceExpressionAnalyzer *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 objectForKey:@"FaceResults"];
      faces = v5->_faces;
      v5->_faces = v6;
    }

    v8 = v5;
  }

  return v5;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v45 = a6;
  *a5 = 0;
  faces = self->_faces;
  if (faces && [(NSArray *)faces count])
  {
    v42 = [MEMORY[0x1E695DF70] array];
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v53 = 0uLL;
    v13 = objc_autoreleasePoolPush();
    v44 = +[VCPCNNSmileDetector detector];
    v43 = +[VCPCNNPoseEstimator estimator];
    v36 = a5;
    context = v13;
    v41 = objc_alloc_init(VCPCNNGazeAnalysis);
    v14 = 0;
    v15 = -18;
    if (v44 && v43 && v41)
    {
      *a4 &= 0xFFFFFFFFFFFFFFF9;
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
            if (v45[2]())
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
            v15 = [v44 detectSmileForFace:a3 inBuffer:&v47 smile:?];
            if (v15 || (v48.a = 0.0, (v15 = [v43 detectPoseForFace:a3 inBuffer:&v48 yaw:{x, y, v26, v27}]) != 0) || (v46 = 0, (v15 = -[VCPCNNGazeAnalysis detectEyeOpennessForFace:inBuffer:eyeOpenness:](v41, "detectEyeOpennessForFace:inBuffer:eyeOpenness:", a3, &v46, x, y, v26, v27)) != 0))
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
            [v42 addObject:v34];

            *a4 |= v29;
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
    if (v14 && [v42 count])
    {
      *a4 |= 0x20uLL;
      v54 = @"FaceResults";
      v55 = v42;
      *v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end