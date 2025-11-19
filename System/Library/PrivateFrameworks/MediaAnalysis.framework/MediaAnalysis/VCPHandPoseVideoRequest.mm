@interface VCPHandPoseVideoRequest
- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4;
- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4;
- (VCPHandPoseVideoRequest)init;
- (VCPHandPoseVideoRequest)initWithOptions:(id)a3;
- (float)handDistance:(id)a3 withhandB:(id)a4;
- (id)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withOptions:(id)a4 error:(id *)a5;
- (int)associateHands:(id)a3 withExisingHands:(id)a4;
@end

@implementation VCPHandPoseVideoRequest

- (VCPHandPoseVideoRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHandPoseVideoRequest)initWithOptions:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = VCPHandPoseVideoRequest;
  v5 = [(VCPRequest *)&v18 initWithOptions:v4];
  v6 = v5;
  if (v5)
  {
    maxNumHands = v5->super._maxNumHands;
    if (maxNumHands <= 0)
    {
      maxNumHands = 6;
    }

    v5->super._maxNumHands = maxNumHands;
    v8 = [VCPImageHandsAnalyzer alloc];
    LODWORD(v17) = v6->super._revision;
    HIDWORD(v15) = v6->super._width;
    LODWORD(v16) = v6->super._height;
    LOBYTE(v15) = 1;
    v9 = [(VCPImageHandsAnalyzer *)v8 initWithKeypointsOption:v6->super._maxNumHands forceCPU:v6->super._useCPUOnly sharedModel:0 enableHandDetection:v6->super._enableHandDetection enableANSTHandDetection:v6->super._enableANSTHandDetection enableRejectHandsNearBoundaries:v6->super._enableRejectHandsNearBoundaries enableHandObject:v15 sourceWidth:v16 sourceHeight:@"hand_keypoint_detector_lite.espresso.net" modelName:v17 revision:v4 options:?];
    analyzer = v6->_analyzer;
    v6->_analyzer = v9;

    v11 = v6->_analyzer;
    if (v11)
    {
      [(VCPImageHandsAnalyzer *)v11 preferredInputFormat:&v6->_handID height:&v6->_preferredWidth format:&v6->_preferredHeight];
    }

    *(&v6->super._minHandSize + 1) = 0;
  }

  if (v6->_analyzer)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v13;
}

- (float)handDistance:(id)a3 withhandB:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v8)
  {

    v11 = 0.0;
LABEL_14:
    v26 = (21.0 - v11) * 100.0;
    goto LABEL_15;
  }

  LODWORD(v9) = 0;
  v10 = *v29;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v13 = 0;
    v9 = v9;
    do
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      v15 = [v6 objectAtIndexedSubscript:{v9, v28}];
      [v14 confidence];
      if (v16 > 0.1)
      {
        [v15 confidence];
        if (v17 > 0.1)
        {
          [v14 location];
          v19 = v18;
          [v15 location];
          v21 = v20;
          [v14 location];
          v23 = v22;
          [v15 location];
          v25 = vabdd_f64(v19, v21) + vabdd_f64(v23, v24);
          v12 = v12 + v25;
          v11 = v11 + 1.0;
        }
      }

      ++v9;
      ++v13;
    }

    while (v8 != v13);
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v8);

  if (v11 <= 10.0)
  {
    goto LABEL_14;
  }

  v26 = v12 / v11;
LABEL_15:

  return v26;
}

- (id)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withOptions:(id)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E695DF70] array];
  v21 = 0;
  if (!self->_analyzer)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    v13 = 0;
    v11 = -50;
    if (a5)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    analyzer = self->_analyzer;
    v20 = 0;
    v11 = [(VCPImageHandsAnalyzer *)analyzer analyzePixelBuffer:ImageBuffer flags:&v21 results:&v20 cancel:&__block_literal_global_27];
    v12 = v20;
    v13 = v12;
    if (!v11)
    {
      v14 = [v12 objectForKeyedSubscript:@"HandsResults"];

      if (!v14 || ([v13 objectForKeyedSubscript:@"HandsResults"], v15 = objc_claimAutoreleasedReturnValue(), v11 = +[VCPHandPoseImageRequest parseResults:observations:](VCPHandPoseImageRequest, "parseResults:observations:", v15, v8), v15, !v11) && (!objc_msgSend(v8, "count") || (v11 = -[VCPHandPoseVideoRequest associateHands:withExisingHands:](self, "associateHands:withExisingHands:", v8, self->_existingHands)) == 0))
      {
        v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
        existingHands = self->_existingHands;
        self->_existingHands = v16;

        v18 = v8;
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
    v11 = -18;
  }

  if (a5)
  {
LABEL_12:
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
    *a5 = v18 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (int)associateHands:(id)a3 withExisingHands:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v48 = a4;
  if ([v48 count])
  {
    v6 = [v48 count];
    if (v6 >= [v53 count])
    {
      v9 = [MEMORY[0x1E695DF70] arrayWithArray:v48];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v7 = v53;
      v41 = [v7 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v41)
      {
        v43 = *v72;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v72 != v43)
            {
              objc_enumerationMutation(v7);
            }

            v27 = *(*(&v71 + 1) + 8 * i);
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            obja = v9;
            v28 = [obja countByEnumeratingWithState:&v67 objects:v82 count:16];
            if (v28)
            {
              v54 = 0;
              v29 = 0;
              v52 = *v68;
              v30 = 3.4028e38;
              while (2)
              {
                v50 = v28;
                for (j = 0; j != v50; ++j)
                {
                  if (*v68 != v52)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v32 = *(*(&v67 + 1) + 8 * j);
                  v14 = [v27 keypoints];
                  if ([v14 count] != 21)
                  {
                    v9 = obja;
                    goto LABEL_61;
                  }

                  v33 = [v32 keypoints];
                  v34 = [v33 count] == 21;

                  if (!v34)
                  {
                    v9 = obja;
                    goto LABEL_63;
                  }

                  v35 = [v27 keypoints];
                  v36 = [v32 keypoints];
                  [(VCPHandPoseVideoRequest *)self handDistance:v35 withhandB:v36];
                  v38 = v37;

                  if (v38 < v30)
                  {
                    v29 = [v32 handID];
                    v39 = v32;

                    v54 = v39;
                    v30 = v38;
                  }
                }

                v28 = [obja countByEnumeratingWithState:&v67 objects:v82 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v54 = 0;
              v29 = 0;
            }

            [v27 setHandID:v29];
            [obja removeObject:v54];
          }

          v41 = [v7 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v41);
        LODWORD(v22) = 0;
        v9 = obja;
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }

    else
    {
      v49 = [MEMORY[0x1E695DF70] arrayWithArray:v53];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v7 = v48;
      v42 = [v7 countByEnumeratingWithState:&v63 objects:v81 count:16];
      if (v42)
      {
        v44 = *v64;
LABEL_5:
        obj = 0;
LABEL_6:
        if (*v64 != v44)
        {
          objc_enumerationMutation(v7);
        }

        v8 = *(*(&v63 + 1) + 8 * obj);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v9 = v49;
        v10 = [v9 countByEnumeratingWithState:&v59 objects:v80 count:16];
        if (v10)
        {
          v54 = 0;
          v51 = *v60;
          v11 = 3.4028e38;
LABEL_10:
          v12 = 0;
          while (1)
          {
            if (*v60 != v51)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v59 + 1) + 8 * v12);
            v14 = [v8 keypoints];
            if ([v14 count] != 21)
            {
              break;
            }

            v15 = [v13 keypoints];
            v16 = [v15 count] == 21;

            if (!v16)
            {
              goto LABEL_63;
            }

            v17 = [v8 keypoints];
            v18 = [v13 keypoints];
            [(VCPHandPoseVideoRequest *)self handDistance:v17 withhandB:v18];
            v20 = v19;

            if (v20 < v11)
            {
              v21 = v13;

              v11 = v20;
              v54 = v21;
            }

            if (v10 == ++v12)
            {
              v10 = [v9 countByEnumeratingWithState:&v59 objects:v80 count:16];
              if (v10)
              {
                goto LABEL_10;
              }

              if (!v54)
              {
                goto LABEL_64;
              }

              [v54 setHandID:{objc_msgSend(v8, "handID")}];
              [v9 removeObject:v54];

              obj = obj + 1;
              if (obj != v42)
              {
                goto LABEL_6;
              }

              v42 = [v7 countByEnumeratingWithState:&v63 objects:v81 count:16];
              if (v42)
              {
                goto LABEL_5;
              }

              goto LABEL_22;
            }
          }

LABEL_61:
        }

        else
        {
          v54 = 0;
        }

LABEL_63:

LABEL_64:
        LODWORD(v22) = -18;
      }

      else
      {
LABEL_22:

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v7 = v49;
        v22 = [v7 countByEnumeratingWithState:&v55 objects:v79 count:16];
        if (v22)
        {
          v23 = *v56;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v56 != v23)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v55 + 1) + 8 * k) setHandID:(*(&self->super._minHandSize + 1))++];
            }

            v22 = [v7 countByEnumeratingWithState:&v55 objects:v79 count:16];
          }

          while (v22);
        }

        v9 = v7;
      }
    }
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v9 = v53;
    v22 = [v9 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v22)
    {
      v25 = *v76;
      do
      {
        for (m = 0; m != v22; ++m)
        {
          if (*v76 != v25)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v75 + 1) + 8 * m) setHandID:(*(&self->super._minHandSize + 1))++];
        }

        v22 = [v9 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v22);
    }
  }

  return v22;
}

- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4
{
  handID = self->_handID;
  preferredWidth = self->_preferredWidth;
  result.height = preferredWidth;
  result.width = handID;
  return result;
}

- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

@end