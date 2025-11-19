@interface VCPImageFaceDetector
+ (id)faceDetector;
- (BOOL)isDuplicate:(CGRect)a3 withRect:(CGRect)a4;
- (int)aggregateTileResults:(id)a3 tileRect:(CGRect)a4 imageSize:(CGSize)a5 landscape:(BOOL)a6 results:(id)a7;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6;
- (int)faceDetection:(__CVBuffer *)a3 faces:(id)a4 cancel:(id)a5;
@end

@implementation VCPImageFaceDetector

+ (id)faceDetector
{
  v2 = objc_alloc_init(VCPImageFaceDetector);

  return v2;
}

- (int)faceDetection:(__CVBuffer *)a3 faces:(id)a4 cancel:(id)a5
{
  v57[1] = *MEMORY[0x1E69E9840];
  v50 = a4;
  v51 = a5;
  context = objc_autoreleasePoolPush();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v52 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E69845B8]);
  v11 = [v10 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8]];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69844D0]);
    v13 = v12;
    if (v12 && ([v12 setPreferBackgroundProcessing:1], objc_msgSend(v13, "setRevision:", 2), v57[0] = v13, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v57, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v11, "performRequests:error:", v14, 0), v14, (v15 & 1) != 0))
    {
      v16 = [v13 results];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v13 results];
        [v52 addObjectsFromArray:v18];
      }

      if (+[VCPImageFaceDetector isLivePhotoKeyFrameEnabled])
      {
        v19 = objc_alloc_init(MEMORY[0x1E69844B0]);
        v20 = v19;
        if (v19 && ([v19 setRevision:1], objc_msgSend(v20, "setInputFaceObservations:", v52), v56 = v20, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v56, 1), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v11, "performRequests:error:", v21, 0), v21, (v22 & 1) != 0))
        {
          v23 = [v20 results];
          v24 = v23 == 0;

          if (!v24)
          {
            v25 = [v20 results];
            [v49 addObjectsFromArray:v25];
          }

          v47 = 0;
          v26 = 1;
        }

        else
        {
          v26 = 0;
          v47 = -18;
        }
      }

      else
      {
        v47 = 0;
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
      v47 = -18;
    }
  }

  else
  {
    v26 = 0;
    v47 = -108;
  }

  objc_autoreleasePoolPop(v9);
  if (v26)
  {
    v27 = +[VCPCNNSmileDetector detector];
    v28 = +[VCPCNNPoseEstimator estimator];
    v29 = Width;
    v30 = objc_alloc_init(VCPCNNGazeAnalysis);
    v31 = v30;
    v32 = -18;
    if (v27 && v28 && v30)
    {
      v33 = 0;
      v34 = v29;
      v35 = -Height;
      v36 = Height;
      while (1)
      {
        if ([v52 count] <= v33)
        {
          v32 = v47;
          goto LABEL_35;
        }

        v37 = [v52 objectAtIndexedSubscript:v33];
        if (v51[2]())
        {
          break;
        }

        [v37 boundingBox];
        v55.b = 0.0;
        v55.c = 0.0;
        v55.a = v34;
        v55.d = v35;
        v55.tx = 0.0;
        v55.ty = v36;
        v59 = CGRectApplyAffineTransform(v58, &v55);
        x = v59.origin.x;
        y = v59.origin.y;
        v40 = v59.size.width;
        v41 = v59.size.height;
        v54 = 0;
        v32 = [v27 detectSmileForFace:a3 inBuffer:&v54 smile:?];
        if (v32)
        {
          goto LABEL_34;
        }

        v55.a = 0.0;
        v32 = [v28 detectPoseForFace:a3 inBuffer:&v55 yaw:{x, y, v40, v41}];
        if (v32)
        {
          goto LABEL_34;
        }

        v53 = 0;
        v32 = [(VCPCNNGazeAnalysis *)v31 detectEyeOpennessForFace:a3 inBuffer:&v53 eyeOpenness:x, y, v40, v41];
        if (v32)
        {
          goto LABEL_34;
        }

        v42 = objc_alloc_init(VCPFace);
        [(VCPFace *)v42 setBounds:x, y, v40, v41];
        [(VCPFace *)v42 setSmile:v54];
        [(VCPFace *)v42 setLeftEyeClosed:(v53 & 1) == 0];
        [(VCPFace *)v42 setRightEyeClosed:(v53 & 1) == 0];
        [(VCPFace *)v42 setYaw:*&v55.a];
        LODWORD(v43) = -1.0;
        [(VCPFace *)v42 setFaceQuality:v43];
        if (+[VCPImageFaceDetector isLivePhotoKeyFrameEnabled])
        {
          v44 = [v49 objectAtIndexedSubscript:v33];
          v45 = [v44 faceCaptureQuality];
          [v45 floatValue];
          [(VCPFace *)v42 setFaceQuality:?];
        }

        [v50 addObject:v42];

        ++v33;
      }

      v32 = -128;
LABEL_34:
    }

LABEL_35:
  }

  else
  {
    v32 = v47;
  }

  objc_autoreleasePoolPop(context);
  return v32;
}

- (BOOL)isDuplicate:(CGRect)a3 withRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = CGRectIntersectsRect(a3, a4);
  if (v12)
  {
    v13 = v9 * v8;
    v14 = width * height;
    if (v13 >= v14)
    {
      v15 = v9 * v8;
    }

    else
    {
      v15 = width * height;
    }

    if (v14 >= v13)
    {
      v14 = v9 * v8;
    }

    if (v15 <= (v14 + v14))
    {
      v18.origin.x = v11;
      v16 = v14;
      v18.origin.y = v10;
      v18.size.width = v9;
      v18.size.height = v8;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v19 = CGRectIntersection(v18, v20);
      LOBYTE(v12) = v19.size.width * v19.size.height >= (v16 * 0.5);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (int)aggregateTileResults:(id)a3 tileRect:(CGRect)a4 imageSize:(CGSize)a5 landscape:(BOOL)a6 results:(id)a7
{
  y = a4.origin.y;
  x = a4.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v42 = a7;
  v11 = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v40;
    v12 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v12)
    {
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          [v15 bounds];
          v17 = v16;
          [v15 bounds];
          v19 = v18;
          [v15 bounds];
          v21 = v20;
          [v15 bounds];
          [v15 setBounds:{x + v17, y + v19, v21}];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v22 = v42;
          v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v23)
          {
            v24 = *v44;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v44 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v43 + 1) + 8 * j) bounds];
                v27 = v26;
                v29 = v28;
                v31 = v30;
                v33 = v32;
                [v15 bounds];
                if ([(VCPImageFaceDetector *)self isDuplicate:v27 withRect:v29, v31, v33, v34, v35, v36, v37])
                {
                  [v11 addObject:v15];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v23);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v12);
    }

    if (obj && [obj count])
    {
      [v42 addObjectsFromArray:obj];
      [v42 removeObjectsInArray:v11];
    }

    v38 = 0;
  }

  else
  {
    v38 = -108;
  }

  return v38;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 results:(id *)a5 cancel:(id)a6
{
  v75 = *MEMORY[0x1E69E9840];
  v47 = a5;
  v49 = a6;
  *v47 = 0;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v50 = [MEMORY[0x1E695DF70] array];
  if (Height >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  if (Width <= Height)
  {
    v11 = Height;
  }

  else
  {
    v11 = Width;
  }

  if ((v11 / v10) <= 2.0)
  {
    v12 = [(VCPImageFaceDetector *)self faceDetection:a3 faces:v50 cancel:v49];
  }

  else
  {
    v12 = [(VCPImageAnalyzer *)self analyzePixelBufferInTiles:a3 results:v50 cancel:v49];
  }

  v13 = v12;
  if (!v12)
  {
    v14 = CVPixelBufferGetWidth(a3);
    v15 = CVPixelBufferGetHeight(a3);
    v63 = 0uLL;
    v53 = [MEMORY[0x1E695DF70] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v50;
    v16 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v16)
    {
      v17 = v14;
      v18 = v15;
      v52 = *v60;
      v19 = v14;
      v20 = v18;
      v21 = 0.0;
      do
      {
        v22 = 0;
        v55 = v16;
        do
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v59 + 1) + 8 * v22);
          memset(&v58, 0, sizeof(v58));
          [v23 faceBounds:v19 height:{v20, v47}];
          v58 = v76;
          v57.a = 1.0;
          *&v57.b = v63;
          *&v57.d = xmmword_1C9F60600;
          v57.ty = 1.0;
          v77 = CGRectApplyAffineTransform(v76, &v57);
          v58 = v77;
          if (v17 < v18)
          {
            v24 = v77.size.width;
          }

          else
          {
            v24 = v77.size.height;
          }

          if (v21 < v24)
          {
            v21 = v24;
          }

          v25 = v19;
          v26 = v20;
          v27 = [v23 flagsForOrientation:v17 >= v18 width:v19 height:v20];
          v28 = MediaAnalysisFacePosition(&v58);
          v72[0] = @"flags";
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v27];
          v72[1] = @"attributes";
          v73[0] = v56;
          v70[0] = @"faceQuality";
          v29 = MEMORY[0x1E696AD98];
          [v23 faceQuality];
          v30 = [v29 numberWithFloat:?];
          v71[0] = v30;
          v70[1] = @"facePosition";
          v31 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          v32 = v31;
          if (v58.origin.x < 1.0)
          {
            x = v58.origin.x;
          }

          else
          {
            x = 1.0;
          }

          if (v58.origin.x <= 0.0)
          {
            x = 0.0;
          }

          if (v58.origin.y < 1.0)
          {
            y = v58.origin.y;
          }

          else
          {
            y = 1.0;
          }

          if (v58.origin.y <= 0.0)
          {
            y = 0.0;
          }

          v35 = 1.0 - v58.origin.x;
          if (v58.size.width < 1.0 - v58.origin.x)
          {
            v35 = v58.size.width;
          }

          v71[1] = v31;
          v70[2] = @"faceBounds";
          if (v58.size.width <= 0.0)
          {
            v35 = 0.0;
          }

          v36 = 1.0 - v58.origin.y;
          if (v58.size.height < 1.0 - v58.origin.y)
          {
            v36 = v58.size.height;
          }

          if (v58.size.height <= 0.0)
          {
            v36 = 0.0;
          }

          v37 = NSStringFromRect(*&x);
          v71[2] = v37;
          v70[3] = @"facePoseYaw";
          v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v23, "yaw")}];
          v71[3] = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:4];
          v73[1] = v39;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
          [v53 addObject:v40];

          *a4 |= v27;
          ++v22;
          v19 = v25;
          v20 = v26;
        }

        while (v55 != v22);
        v16 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v16);
    }

    else
    {
      v21 = 0.0;
    }

    v41 = [MEMORY[0x1E695DF70] array];
    if ([obj count])
    {
      v42 = MediaAnalysisShotType(v21);
      v68 = @"attributes";
      v66 = @"shotType";
      v43 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
      v67 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v69 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      [v41 addObject:v45];
    }

    if ([obj count])
    {
      *a4 |= 0x20uLL;
      v64[0] = @"FaceResults";
      v64[1] = @"ShotTypeResults";
      v65[0] = v53;
      v65[1] = v41;
      *v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    }

    v13 = 0;
  }

  return v13;
}

@end