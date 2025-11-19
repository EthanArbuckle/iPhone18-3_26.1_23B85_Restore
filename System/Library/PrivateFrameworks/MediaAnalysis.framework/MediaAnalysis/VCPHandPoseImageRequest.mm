@interface VCPHandPoseImageRequest
- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4;
- (BOOL)updateWithOptions:(id)a3 error:(id *)a4;
- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4;
- (VCPHandPoseImageRequest)init;
- (VCPHandPoseImageRequest)initWithOptions:(id)a3;
- (id)processImage:(__CVBuffer *)a3 withOptions:(id)a4 error:(id *)a5;
- (int)parseResults:(id)a3 observations:(id)a4;
@end

@implementation VCPHandPoseImageRequest

- (VCPHandPoseImageRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHandPoseImageRequest)initWithOptions:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPHandPoseImageRequest_initWithOptions", "", buf, 2u);
  }

  v33.receiver = self;
  v33.super_class = VCPHandPoseImageRequest;
  v8 = [(VCPRequest *)&v33 initWithOptions:v32];
  v10 = v8;
  v11 = &OBJC_IVAR___VCPMovieAssetWriter__livePhotoInfoQueue;
  if (v8)
  {
    width = v8->super._width;
    if (width < 1 || (height = v8->super._height, height < 1))
    {
      v31 = 0;
    }

    else
    {
      *&v9 = width / height;
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    }

    maxNumHands = v10->super._maxNumHands;
    if (maxNumHands <= 0)
    {
      maxNumHands = 6;
    }

    v10->super._maxNumHands = maxNumHands;
    if (v10->super._enableHandPoseLite)
    {
      v15 = @"hand_keypoint_detector_lite.espresso.net";
    }

    else
    {
      v15 = @"hand_keypoint_detector_acc_v2.espresso.net";
    }

    v16 = v15;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      revision = v10->super._revision;
      enableHandDetection = v10->super._enableHandDetection;
      *buf = 67109634;
      v35 = revision;
      v36 = 1024;
      v37 = enableHandDetection;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandPoseImageRequest options: _revision = %d, enable detection = %d, model name = %@", buf, 0x18u);
    }

    v19 = [VCPImageHandsAnalyzer alloc];
    LODWORD(v30) = v10->super._revision;
    HIDWORD(v28) = v10->super._width;
    LODWORD(v29) = v10->super._height;
    LOBYTE(v28) = v10->super._enableHandPoseLite;
    v20 = [(VCPImageHandsAnalyzer *)v19 initWithKeypointsOption:v10->super._maxNumHands forceCPU:v10->super._useCPUOnly sharedModel:0 enableHandDetection:v10->super._enableHandDetection enableANSTHandDetection:v10->super._enableANSTHandDetection enableRejectHandsNearBoundaries:v10->super._enableRejectHandsNearBoundaries enableHandObject:v28 sourceWidth:v29 sourceHeight:v16 modelName:v30 revision:v32 options:?];
    analyzer = v10->_analyzer;
    v10->_analyzer = v20;

    v22 = v10->_analyzer;
    if (v22)
    {
      [(VCPImageHandsAnalyzer *)v22 setOptimizeForDistance:v10->super._optimizeForDistance];
      [(VCPImageHandsAnalyzer *)v10->_analyzer preferredInputFormat:&v10->_preferredWidth height:&v10->_preferredHeight format:&v10->_preferredFormat];
    }

    v11 = &OBJC_IVAR___VCPMovieAssetWriter__livePhotoInfoQueue;
  }

  v23 = VCPSignPostLog();
  v24 = v23;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v5, "VCPHandPoseImageRequest_initWithOptions", "", buf, 2u);
  }

  if (*(&v10->super.super.isa + v11[962]))
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v26;
}

- (int)parseResults:(id)a3 observations:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v38 = v6;
  v39 = a4;
  if (v39)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v6;
    v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v33)
    {
      v34 = *v47;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          v7 = [v37 objectForKeyedSubscript:@"attributes"];
          v40 = [v7 objectForKeyedSubscript:@"handsKeypoints"];

          if ([v40 count] != 21)
          {
LABEL_29:

            v31 = -18;
            goto LABEL_31;
          }

          v8 = objc_alloc_init(VCPHandObservation);
          v9 = [MEMORY[0x1E695DF70] array];
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = v40;
          v10 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v10)
          {
            v11 = *v43;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v43 != v11)
                {
                  objc_enumerationMutation(v41);
                }

                v13 = *(*(&v42 + 1) + 8 * j);
                if ([v13 count] != 4)
                {

                  goto LABEL_29;
                }

                v14 = objc_alloc_init(VCPKeypoint);
                v15 = [v13 objectAtIndexedSubscript:0];
                [v15 floatValue];
                v17 = v16;
                v18 = [v13 objectAtIndexedSubscript:1];
                [v18 floatValue];
                [(VCPKeypoint *)v14 setLocation:v17, v19];

                v20 = [v13 objectAtIndexedSubscript:2];
                [v20 floatValue];
                [(VCPKeypoint *)v14 setConfidence:?];

                [v9 addObject:v14];
                if (self->super._revision == 2 && ![(VCPHandObservation *)v8 chirality])
                {
                  v21 = [v13 objectAtIndexedSubscript:3];
                  -[VCPHandObservation setChirality:](v8, "setChirality:", [v21 intValue]);
                }

                else if ([(VCPHandObservation *)v8 chirality])
                {
                  [(VCPHandObservation *)v8 setChirality:0];
                }
              }

              v10 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          [(VCPHandObservation *)v8 setKeypoints:v9];
          v22 = [v37 objectForKeyedSubscript:@"attributes"];
          v23 = [v22 objectForKeyedSubscript:@"handsGroupID"];
          -[VCPHandObservation setGroupID:](v8, "setGroupID:", [v23 intValue]);

          v24 = [v37 objectForKeyedSubscript:@"attributes"];
          v25 = [v24 objectForKeyedSubscript:@"handsTrackingID"];
          -[VCPHandObservation setHandID:](v8, "setHandID:", [v25 intValue]);

          v26 = [v37 objectForKeyedSubscript:@"attributes"];
          v27 = [v26 objectForKeyedSubscript:@"handsHoldObject"];
          [v27 floatValue];
          [(VCPHandObservation *)v8 setHoldObject:?];

          if (self->super._revision == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          [(VCPHandObservation *)v8 setRevision:v28];
          v29 = [v37 objectForKeyedSubscript:@"attributes"];
          v30 = [v29 objectForKeyedSubscript:@"handsBounds"];
          v53 = NSRectFromString(v30);
          [(VCPHandObservation *)v8 setBounds:v53.origin.x, v53.origin.y, v53.size.width, v53.size.height];

          [v39 addObject:v8];
        }

        v31 = 0;
        v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_31:
  }

  else
  {
    v31 = -50;
  }

  return v31;
}

- (id)processImage:(__CVBuffer *)a3 withOptions:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPHandPoseImageRequest_processImage", "", buf, 2u);
  }

  v12 = [(NSDictionary *)v7 objectForKeyedSubscript:@"handObjects"];

  if (v12)
  {
    v13 = [(NSDictionary *)v7 objectForKeyedSubscript:@"handObjects"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSDictionary *)v7 objectForKeyedSubscript:@"rotationInDegrees"];

  if (v14)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:getRotationInDegrees(v7)];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  *buf = 0;
  analyzer = self->_analyzer;
  if (!analyzer)
  {
    v20 = 0;
    v18 = -18;
LABEL_18:
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v18 userInfo:0];
      *a5 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_21;
  }

  [(VCPImageHandsAnalyzer *)analyzer setHandObjects:v13];
  v17 = self->_analyzer;
  v29 = 0;
  v18 = [(VCPImageHandsAnalyzer *)v17 analyzePixelBuffer:a3 rotationInDegrees:v14 flags:buf results:&v29 cancel:&__block_literal_global_84];
  v19 = v29;
  v20 = v19;
  if (v18)
  {
    goto LABEL_18;
  }

  v21 = [v19 objectForKeyedSubscript:@"HandsResults"];

  if (v21)
  {
    v22 = [v20 objectForKeyedSubscript:@"HandsResults"];
    v18 = [(VCPHandPoseImageRequest *)self parseResults:v22 observations:v15];

    if (v18)
    {
      goto LABEL_18;
    }
  }

  v23 = VCPSignPostLog();
  v24 = v23;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v9, "VCPHandPoseImageRequest_processImage", "", v28, 2u);
  }

  v25 = v15;
LABEL_21:

  return v25;
}

- (BOOL)updateWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  width = self->super._width;
  height = self->super._height;
  v16.receiver = self;
  v16.super_class = VCPHandPoseImageRequest;
  [(VCPRequest *)&v16 updateWithOptions:v6 error:a4];
  v9 = self->super._width;
  if (width == v9)
  {
    v10 = self->super._height;
    if (width < 1 || height == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 < 1)
    {
LABEL_14:
      analyzer = self->_analyzer;
      v14 = [v6 objectForKeyedSubscript:@"maxNumberHands"];
      [(VCPImageHandsAnalyzer *)analyzer updateMaxNumHands:v14];

      v12 = 1;
      goto LABEL_15;
    }

    v10 = self->super._height;
  }

  if (v10 < 1)
  {
    goto LABEL_14;
  }

  if (![VCPImageHandsAnalyzer updateModelForSourceWidth:"updateModelForSourceWidth:sourceHeight:" sourceHeight:?])
  {
    [(VCPImageHandsAnalyzer *)self->_analyzer preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4
{
  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = preferredWidth;
  return result;
}

- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

@end