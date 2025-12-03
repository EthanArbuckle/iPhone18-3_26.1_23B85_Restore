@interface VCPPetsPoseImageRequest
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPPetsPoseImageRequest)init;
- (VCPPetsPoseImageRequest)initWithOptions:(id)options;
- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error;
- (int)parseResults:(id)results observations:(id)observations;
@end

@implementation VCPPetsPoseImageRequest

- (VCPPetsPoseImageRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPPetsPoseImageRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = VCPPetsPoseImageRequest;
  v5 = [(VCPRequest *)&v14 initWithOptions:optionsCopy];
  v6 = v5;
  if (v5)
  {
    maxNumPets = v5->super._maxNumPets;
    if (maxNumPets <= 0)
    {
      maxNumPets = 2;
    }

    v5->super._maxNumPets = maxNumPets;
    v8 = [[VCPImagePetsKeypointsAnalyzer alloc] initWithMaxNumRegions:v5->super._maxNumPets forceCPU:v5->super._useCPUOnly sharedModel:0];
    analyzer = v6->_analyzer;
    v6->_analyzer = v8;

    v10 = v6->_analyzer;
    if (v10)
    {
      [(VCPImagePetsKeypointsAnalyzer *)v10 preferredInputFormat:&v6->_preferredWidth height:&v6->_preferredHeight format:&v6->_preferredFormat];
    }
  }

  if (v6->_analyzer)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (int)parseResults:(id)results observations:(id)observations
{
  v47 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v33 = resultsCopy;
  observationsCopy = observations;
  if (observationsCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = resultsCopy;
    v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v28 = v6;
      v29 = *v42;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v41 + 1) + 8 * i);
          v7 = [v30 objectForKeyedSubscript:@"attributes"];
          v35 = [v7 objectForKeyedSubscript:@"petsKeypoints"];

          if ([v35 count] != 25)
          {
LABEL_21:

            v26 = -18;
            goto LABEL_23;
          }

          v36 = objc_alloc_init(VCPPetsObservation);
          array = [MEMORY[0x1E695DF70] array];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v9 = v35;
          v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v10)
          {
            v11 = *v38;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v38 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v37 + 1) + 8 * j);
                if ([v13 count] != 3)
                {

                  goto LABEL_21;
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

                [array addObject:v14];
              }

              v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          [(VCPPetsObservation *)v36 setKeypoints:array];
          v21 = [v30 objectForKeyedSubscript:@"attributes"];
          v22 = [v21 objectForKeyedSubscript:@"petsBounds"];
          v48 = NSRectFromString(v22);
          [(VCPPetsObservation *)v36 setBounds:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];

          v23 = [v30 objectForKeyedSubscript:@"attributes"];
          v24 = [v23 objectForKeyedSubscript:@"petsType"];
          intValue = [v24 intValue];

          [(VCPPetsObservation *)v36 setPetsType:intValue != 0];
          [(VCPPetsObservation *)v36 setRevision:1];
          [observationsCopy addObject:v36];
        }

        v26 = 0;
        v28 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_23:
  }

  else
  {
    v26 = -50;
  }

  return v26;
}

- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error
{
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  analyzer = self->_analyzer;
  if (analyzer)
  {
    v17 = 0;
    v10 = [(VCPImagePetsKeypointsAnalyzer *)analyzer analyzePixelBuffer:image flags:&v18 results:&v17 cancel:&__block_literal_global_75];
    v11 = v17;
    v12 = v11;
    if (!v10)
    {
      v13 = [v11 objectForKeyedSubscript:@"PetsKeypointsResults"];

      if (!v13 || ([v12 objectForKeyedSubscript:@"PetsKeypointsResults"], v14 = objc_claimAutoreleasedReturnValue(), v10 = -[VCPPetsPoseImageRequest parseResults:observations:](self, "parseResults:observations:", v14, array), v14, !v10))
      {
        v15 = array;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    v10 = -18;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  analyzer = self->_analyzer;
  if (analyzer)
  {
    [(VCPImagePetsKeypointsAnalyzer *)analyzer preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
  }

  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = preferredWidth;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

@end