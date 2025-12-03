@interface VCPHumanPoseImageRequest
+ (int)parseResults:(id)results observations:(id)observations revision:(unsigned int)revision;
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (BOOL)updateWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPHumanPoseImageRequest)init;
- (VCPHumanPoseImageRequest)initWithOptions:(id)options;
- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error;
@end

@implementation VCPHumanPoseImageRequest

- (VCPHumanPoseImageRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHumanPoseImageRequest)initWithOptions:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v21.receiver = self;
  v21.super_class = VCPHumanPoseImageRequest;
  v5 = [(VCPRequest *)&v21 initWithOptions:optionsCopy];
  v7 = v5;
  if (v5)
  {
    width = v5->super._width;
    if (width < 1 || (height = v5->super._height, height < 1))
    {
      v10 = 0;
    }

    else
    {
      *&v6 = width / height;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    }

    v7->super._maxNumOfPersonsForPose = fmax(v7->super._maxNumOfPersonsForPose, 1.0);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      maxNumOfPersonsForPose = v7->super._maxNumOfPersonsForPose;
      revision = v7->super._revision;
      *buf = 67109376;
      v23 = maxNumOfPersonsForPose;
      v24 = 1024;
      v25 = revision;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHumanPoseImageRequest - max num of persons for pose = %d, _revision = %d", buf, 0xEu);
    }

    v13 = v7->super._revision;
    switch(v13)
    {
      case 3u:
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHumanPoseImageRequest - use holistic human pose detector", buf, 2u);
        }

        v14 = [[VCPImageHumanPoseAnalyzerHolistic alloc] initWithMaxNumRegionsPersons:v7->super._maxNumOfPersonsForPose forceCPU:v7->super._useCPUOnly sharedModel:0 inputConfig:&stru_1F496CB30];
        v15 = &OBJC_IVAR___VCPHumanPoseImageRequest__analyzerHolistic;
        break;
      case 2u:
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHumanPoseImageRequest - use top-down human pose detector", buf, 2u);
        }

        v14 = [[VCPImageHumanPoseAnalyzerTopDown alloc] initWithMaxNumRegions:v7->super._maxNumOfPersonsForPose forceCPU:v7->super._useCPUOnly sharedModel:0 inputConfig:&stru_1F496CB30];
        v15 = &OBJC_IVAR___VCPHumanPoseImageRequest__analyzerTopDown;
        break;
      case 1u:
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHumanPoseImageRequest - use bottom-up human pose detector", buf, 2u);
        }

        v14 = [[VCPImageHumanPoseAnalyzer alloc] initWithKeypointsOption:1 aspectRatio:v10 lightweight:0 forceCPU:v7->super._useCPUOnly sharedModel:0 flushModel:0];
        v15 = &OBJC_IVAR___VCPHumanPoseImageRequest__analyzerBottomUp;
        break;
      default:
LABEL_25:

        goto LABEL_26;
    }

    v16 = *v15;
    v17 = *(&v7->super.super.isa + v16);
    *(&v7->super.super.isa + v16) = v14;

    [*(&v7->super.super.isa + v16) preferredInputFormat:&v7->_preferredWidth height:&v7->_preferredHeight format:&v7->_preferredFormat];
    goto LABEL_25;
  }

LABEL_26:
  if (v7->_analyzerBottomUp || v7->_analyzerTopDown || (analyzerHolistic = v7->_analyzerHolistic) != 0)
  {
    analyzerHolistic = v7;
  }

  v19 = analyzerHolistic;

  return v19;
}

+ (int)parseResults:(id)results observations:(id)observations revision:(unsigned int)revision
{
  v101 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  observationsCopy = observations;
  v75 = resultsCopy;
  if (observationsCopy)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = resultsCopy;
    v74 = [obj countByEnumeratingWithState:&v93 objects:v100 count:16];
    if (v74)
    {
      revisionCopy = revision;
      v76 = *v94;
      while (2)
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v94 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v93 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"attributes"];
          v79 = [v10 objectForKeyedSubscript:@"humanConfidence"];

          v11 = v79;
          if (v79)
          {
            [v79 floatValue];
            v11 = v79;
            if (v12 >= 0.3)
            {
              v13 = [v9 objectForKeyedSubscript:@"attributes"];
              v73 = [v13 objectForKeyedSubscript:@"humanKeypoints"];

              if ([v73 count] != 17)
              {
                goto LABEL_49;
              }

              v72 = objc_alloc_init(VCPPersonObservation);
              array = [MEMORY[0x1E695DF70] array];
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v80 = v73;
              v15 = [v80 countByEnumeratingWithState:&v89 objects:v99 count:16];
              if (v15)
              {
                v16 = *v90;
                while (2)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v90 != v16)
                    {
                      objc_enumerationMutation(v80);
                    }

                    v18 = *(*(&v89 + 1) + 8 * j);
                    if ([v18 count] != 3)
                    {
                      v62 = v80;
                      goto LABEL_48;
                    }

                    v19 = objc_alloc_init(VCPKeypoint);
                    v20 = [v18 objectAtIndexedSubscript:0];
                    [v20 floatValue];
                    v22 = v21;
                    v23 = [v18 objectAtIndexedSubscript:1];
                    [v23 floatValue];
                    [(VCPKeypoint *)v19 setLocation:v22, v24];

                    v25 = [v18 objectAtIndexedSubscript:2];
                    [v25 floatValue];
                    [(VCPKeypoint *)v19 setConfidence:?];

                    [array addObject:v19];
                  }

                  v15 = [v80 countByEnumeratingWithState:&v89 objects:v99 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

              [(VCPPersonObservation *)v72 setKeypoints:array];
              v26 = revisionCopy;
              if (revisionCopy == 3)
              {
                v27 = [v9 objectForKeyedSubscript:@"attributes"];
                v67 = [v27 objectForKeyedSubscript:@"humanID"];

                v28 = [v9 objectForKeyedSubscript:@"attributes"];
                v29 = [v28 objectForKeyedSubscript:@"handsLeft"];
                v69 = [v29 objectForKeyedSubscript:@"handsKeypoints"];

                v30 = [v9 objectForKeyedSubscript:@"attributes"];
                v31 = [v30 objectForKeyedSubscript:@"handsLeft"];
                aString = [v31 objectForKeyedSubscript:@"handsBounds"];

                v32 = [v9 objectForKeyedSubscript:@"attributes"];
                v33 = [v32 objectForKeyedSubscript:@"handsRight"];
                v68 = [v33 objectForKeyedSubscript:@"handsKeypoints"];

                v34 = [v9 objectForKeyedSubscript:@"attributes"];
                v35 = [v34 objectForKeyedSubscript:@"handsRight"];
                v64 = [v35 objectForKeyedSubscript:@"handsBounds"];

                if (v69)
                {
                  if ([v69 count] != 21)
                  {
                    goto LABEL_54;
                  }

                  array2 = [MEMORY[0x1E695DF70] array];
                  v87 = 0u;
                  v88 = 0u;
                  v85 = 0u;
                  v86 = 0u;
                  v71 = v69;
                  v37 = [v71 countByEnumeratingWithState:&v85 objects:v98 count:16];
                  if (v37)
                  {
                    v38 = *v86;
LABEL_23:
                    v39 = 0;
                    while (1)
                    {
                      if (*v86 != v38)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v40 = *(*(&v85 + 1) + 8 * v39);
                      if ([v40 count] != 4)
                      {
                        goto LABEL_53;
                      }

                      v41 = objc_alloc_init(VCPKeypoint);
                      v42 = [v40 objectAtIndexedSubscript:0];
                      [v42 floatValue];
                      v44 = v43;
                      v45 = [v40 objectAtIndexedSubscript:1];
                      [v45 floatValue];
                      [(VCPKeypoint *)v41 setLocation:v44, v46];

                      v47 = [v40 objectAtIndexedSubscript:2];
                      [v47 floatValue];
                      [(VCPKeypoint *)v41 setConfidence:?];

                      [array2 addObject:v41];
                      if (v37 == ++v39)
                      {
                        v37 = [v71 countByEnumeratingWithState:&v85 objects:v98 count:16];
                        if (v37)
                        {
                          goto LABEL_23;
                        }

                        break;
                      }
                    }
                  }

                  v48 = objc_alloc_init(VCPHandObservation);
                  [(VCPHandObservation *)v48 setKeypoints:array2];
                  [(VCPHandObservation *)v48 setChirality:0xFFFFFFFFLL];
                  -[VCPHandObservation setGroupID:](v48, "setGroupID:", [v67 intValue]);
                  v102 = NSRectFromString(aString);
                  [(VCPHandObservation *)v48 setBounds:v102.origin.x, v102.origin.y, v102.size.width, v102.size.height];
                  [(VCPPersonObservation *)v72 setLeftHand:v48];
                }

                if (v68)
                {
                  if ([v68 count] != 21)
                  {
                    goto LABEL_54;
                  }

                  array2 = [MEMORY[0x1E695DF70] array];
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v71 = v68;
                  v49 = [v71 countByEnumeratingWithState:&v81 objects:v97 count:16];
                  if (v49)
                  {
                    v50 = *v82;
LABEL_34:
                    v51 = 0;
                    while (1)
                    {
                      if (*v82 != v50)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v52 = *(*(&v81 + 1) + 8 * v51);
                      if ([v52 count] != 4)
                      {
                        break;
                      }

                      v53 = objc_alloc_init(VCPKeypoint);
                      v54 = [v52 objectAtIndexedSubscript:0];
                      [v54 floatValue];
                      v56 = v55;
                      v57 = [v52 objectAtIndexedSubscript:1];
                      [v57 floatValue];
                      [(VCPKeypoint *)v53 setLocation:v56, v58];

                      v59 = [v52 objectAtIndexedSubscript:2];
                      [v59 floatValue];
                      [(VCPKeypoint *)v53 setConfidence:?];

                      [array2 addObject:v53];
                      if (v49 == ++v51)
                      {
                        v49 = [v71 countByEnumeratingWithState:&v81 objects:v97 count:16];
                        if (v49)
                        {
                          goto LABEL_34;
                        }

                        goto LABEL_40;
                      }
                    }

LABEL_53:

LABEL_54:
                    v62 = v67;
LABEL_48:

LABEL_49:
                    v61 = -18;
                    goto LABEL_51;
                  }

LABEL_40:

                  v60 = objc_alloc_init(VCPHandObservation);
                  [(VCPHandObservation *)v60 setKeypoints:array2];
                  [(VCPHandObservation *)v60 setChirality:1];
                  -[VCPHandObservation setGroupID:](v60, "setGroupID:", [v67 intValue]);
                  v103 = NSRectFromString(v64);
                  [(VCPHandObservation *)v60 setBounds:v103.origin.x, v103.origin.y, v103.size.width, v103.size.height];
                  [(VCPPersonObservation *)v72 setRightHand:v60];
                }

                -[VCPPersonObservation setPersonID:](v72, "setPersonID:", [v67 intValue]);

                v26 = 3;
              }

              [(VCPPersonObservation *)v72 setRevision:v26];
              [observationsCopy addObject:v72];

              v11 = v79;
            }
          }
        }

        v61 = 0;
        v74 = [obj countByEnumeratingWithState:&v93 objects:v100 count:16];
        if (v74)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v61 = 0;
    }

LABEL_51:
  }

  else
  {
    v61 = -50;
  }

  return v61;
}

- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0;
  analyzerBottomUp = self->_analyzerBottomUp;
  analyzerTopDown = self->_analyzerTopDown;
  if (analyzerBottomUp)
  {
    if (!analyzerTopDown)
    {
      v25 = 0;
      v11 = [(VCPImageHumanPoseAnalyzer *)analyzerBottomUp analyzePixelBuffer:image flags:&v27 results:&v25 cancel:&__block_literal_global_199];
      v12 = v25;
      goto LABEL_6;
    }

LABEL_5:
    v26 = 0;
    v11 = [(VCPImageHumanPoseAnalyzerTopDown *)analyzerTopDown analyzePixelBuffer:image flags:&v27 results:&v26 cancel:&__block_literal_global_8];
    v12 = v26;
    goto LABEL_6;
  }

  if (analyzerTopDown)
  {
    goto LABEL_5;
  }

  analyzerHolistic = self->_analyzerHolistic;
  if (!analyzerHolistic)
  {
    v14 = 0;
    v11 = -18;
    goto LABEL_7;
  }

  v24 = 0;
  v11 = [(VCPImageHumanPoseAnalyzerHolistic *)analyzerHolistic analyzePixelBuffer:image flags:&v27 results:&v24 cancel:&__block_literal_global_201];
  v12 = v24;
LABEL_6:
  v13 = v12;
  v14 = v13;
  if (!v11)
  {
    v18 = [v13 objectForKeyedSubscript:@"HumanPoseResults"];
    v19 = v18 == 0;

    if (v19 || (v20 = objc_opt_class(), [v14 objectForKeyedSubscript:@"HumanPoseResults"], v21 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v20, "parseResults:observations:revision:", v21, array, self->super._revision), v21, !v11))
    {
      error = array;
      goto LABEL_12;
    }
  }

LABEL_7:
  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to processImage"];
    v29[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *error = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:v17];

    error = 0;
  }

LABEL_12:

  return error;
}

- (BOOL)updateWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  width = self->super._width;
  height = self->super._height;
  v28.receiver = self;
  v28.super_class = VCPHumanPoseImageRequest;
  [(VCPRequest *)&v28 updateWithOptions:optionsCopy error:error];
  analyzerBottomUp = self->_analyzerBottomUp;
  if (!analyzerBottomUp)
  {
    goto LABEL_13;
  }

  v11 = self->super._width;
  if (width == v11)
  {
    v12 = self->super._height;
    if (width < 1 || height == v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v11 < 1)
    {
      goto LABEL_13;
    }

    v12 = self->super._height;
  }

  if (v12 >= 1)
  {
    *&v9 = v11 / v12;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v15 = [(VCPImageHumanPoseAnalyzer *)analyzerBottomUp updateModelForAspectRatio:v14];

    if (v15)
    {
      goto LABEL_39;
    }
  }

LABEL_13:
  analyzerTopDown = self->_analyzerTopDown;
  if (!analyzerTopDown)
  {
    goto LABEL_27;
  }

  v17 = self->super._width;
  if (width == v17)
  {
    v18 = self->super._height;
    if (width < 1 || height == v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v17 < 1)
    {
LABEL_26:
      v20 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];
      [(VCPImageHumanPoseAnalyzerTopDown *)analyzerTopDown updateMaxNumPersons:v20];

LABEL_27:
      analyzerHolistic = self->_analyzerHolistic;
      if (!analyzerHolistic)
      {
LABEL_42:
        v25 = 1;
        goto LABEL_43;
      }

      v22 = self->super._width;
      if (width == v22)
      {
        v23 = self->super._height;
        if (width >= 1 && height != v23)
        {
LABEL_37:
          if (v23 >= 1)
          {
            if ([VCPImageHumanPoseAnalyzerHolistic updateInputWidth:"updateInputWidth:Height:" Height:?])
            {
              goto LABEL_39;
            }

            analyzerHolistic = self->_analyzerHolistic;
          }
        }
      }

      else if (v22 >= 1)
      {
        v23 = self->super._height;
        goto LABEL_37;
      }

      v26 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];
      [(VCPImageHumanPoseAnalyzerHolistic *)analyzerHolistic updateMaxNumPersons:v26];

      goto LABEL_42;
    }

    v18 = self->super._height;
  }

  if (v18 < 1)
  {
    goto LABEL_26;
  }

  if (![VCPImageHumanPoseAnalyzerTopDown updateInputWidth:"updateInputWidth:Height:" Height:?])
  {
    analyzerTopDown = self->_analyzerTopDown;
    goto LABEL_26;
  }

LABEL_39:
  v25 = 0;
LABEL_43:

  return v25;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  analyzerBottomUp = self->_analyzerBottomUp;
  if (analyzerBottomUp)
  {
    [(VCPImageHumanPoseAnalyzer *)analyzerBottomUp preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
  }

  analyzerTopDown = self->_analyzerTopDown;
  if (analyzerTopDown)
  {
    [(VCPImageHumanPoseAnalyzerTopDown *)analyzerTopDown preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
  }

  analyzerHolistic = self->_analyzerHolistic;
  if (analyzerHolistic)
  {
    [(VCPImageHumanPoseAnalyzerHolistic *)analyzerHolistic preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
  }

  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;

  v11 = preferredWidth;
  v12 = preferredHeight;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  analyzerBottomUp = self->_analyzerBottomUp;
  self->_analyzerBottomUp = 0;

  analyzerTopDown = self->_analyzerTopDown;
  self->_analyzerTopDown = 0;

  analyzerHolistic = self->_analyzerHolistic;
  self->_analyzerHolistic = 0;

  return 1;
}

@end