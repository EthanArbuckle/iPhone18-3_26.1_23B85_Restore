@interface VCPHumanPoseVideoRequest
- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4;
- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4;
- (VCPHumanPoseVideoRequest)init;
- (VCPHumanPoseVideoRequest)initWithOptions:(id)a3;
- (float)bodyDistance:(id)a3 withBodyB:(id)a4;
- (id)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withOptions:(id)a4 error:(id *)a5;
- (int)associatePersons:(id)a3 withExisingPersons:(id)a4;
- (void)computeActionScoreForPerson:(id)a3;
- (void)computeVarWithID:(id)a3 index1:(int)a4 index2:(int)a5 interVar:(float *)a6 intraVar:(float *)a7;
@end

@implementation VCPHumanPoseVideoRequest

- (VCPHumanPoseVideoRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHumanPoseVideoRequest)initWithOptions:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VCPHumanPoseVideoRequest;
  v5 = [(VCPRequest *)&v19 initWithOptions:v4];
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

    v11 = [MEMORY[0x1E695DF70] array];
    existingPersonsArray = v7->_existingPersonsArray;
    v7->_existingPersonsArray = v11;

    v13 = [[VCPImageHumanPoseAnalyzer alloc] initWithKeypointsOption:1 aspectRatio:v10 lightweight:0 forceCPU:v7->super._useCPUOnly sharedModel:0 flushModel:0];
    analyzer = v7->_analyzer;
    v7->_analyzer = v13;

    v15 = v7->_analyzer;
    if (v15)
    {
      [(VCPImageHumanPoseAnalyzer *)v15 preferredInputFormat:&v7->_personID height:&v7->_preferredWidth format:&v7->_preferredHeight];
    }

    *(&v7->super._minHandSize + 1) = 0;
  }

  if (v7->_analyzer)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

- (float)bodyDistance:(id)a3 withBodyB:(id)a4
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
    v26 = (17.0 - v11) * 100.0;
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
          v25 = ((v19 - v21) * (v19 - v21) + (v23 - v24) * (v23 - v24)) * 0.5;
          v12 = v12 + sqrtf(v25);
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

  if (v11 <= 5.0)
  {
    goto LABEL_14;
  }

  v26 = v12 / v11;
LABEL_15:

  return v26;
}

- (id)processSampleBuffer:(opaqueCMSampleBuffer *)a3 withOptions:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0;
  if (!self->_analyzer)
  {
    goto LABEL_28;
  }

  if (!a3)
  {
    v13 = 0;
    v11 = -50;
    if (!a5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
LABEL_28:
    v13 = 0;
    v11 = -18;
    goto LABEL_29;
  }

  analyzer = self->_analyzer;
  v44 = 0;
  v11 = [(VCPImageHumanPoseAnalyzer *)analyzer analyzePixelBuffer:ImageBuffer flags:&v45 results:&v44 cancel:&__block_literal_global_46];
  v12 = v44;
  v13 = v12;
  if (v11 || ([v12 objectForKeyedSubscript:@"HumanPoseResults"], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, !v15) && ((objc_msgSend(v13, "objectForKeyedSubscript:", @"HumanPoseResults"), v16 = objc_claimAutoreleasedReturnValue(), v11 = +[VCPHumanPoseImageRequest parseResults:observations:revision:](VCPHumanPoseImageRequest, "parseResults:observations:revision:", v16, v35, self->super._revision), v16, v11) || objc_msgSend(v35, "count") && (v11 = -[VCPHumanPoseVideoRequest associatePersons:withExisingPersons:](self, "associatePersons:withExisingPersons:", v35, self->_existingPersons)) != 0))
  {
LABEL_29:
    if (!a5)
    {
LABEL_31:
      v29 = 0;
      goto LABEL_32;
    }

LABEL_30:
    v30 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to processSampleBuffer"];
    v47 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    *a5 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:v32];

    goto LABEL_31;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v35];
  existingPersons = self->_existingPersons;
  self->_existingPersons = v17;

  if (self->super._humanActionWindowSize >= 1)
  {
    v34 = 32;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v35;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v20)
    {
      v21 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "personID", v34)}];
          [v8 setObject:v23 forKey:v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v20);
    }

    if ([(NSMutableArray *)self->_existingPersonsArray count]>= *(&self->super.super.isa + v34))
    {
      [(NSMutableArray *)self->_existingPersonsArray removeLastObject];
    }

    [(NSMutableArray *)self->_existingPersonsArray insertObject:v8 atIndex:0, v34];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v26)
    {
      v27 = *v37;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [(VCPHumanPoseVideoRequest *)self computeActionScoreForPerson:*(*(&v36 + 1) + 8 * j)];
        }

        v26 = [v25 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v26);
    }
  }

  v29 = v35;
LABEL_32:

  return v29;
}

- (void)computeActionScoreForPerson:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((atomic_load_explicit(&qword_1ED942820, memory_order_acquire) & 1) == 0)
  {
    v70 = self;
    v71 = v4;
    v72 = v70;
    [VCPHumanPoseVideoRequest computeActionScoreForPerson:v70];
    v4 = v71;
    self = v72;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "personID", v4)}];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = self->_existingPersonsArray;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  v74 = self;
  if (v6)
  {
    v7 = *v79;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v79 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v12 = [*(*(&v78 + 1) + 8 * v11) objectForKey:v5];
      v13 = v12;
      if (!v12)
      {
        goto LABEL_26;
      }

      v14 = [v12 keypoints];
      v15 = [v14 objectAtIndexedSubscript:11];
      [v15 confidence];
      if (v16 <= 0.1)
      {
      }

      else
      {
        v17 = [v13 keypoints];
        v18 = [v17 objectAtIndexedSubscript:5];
        [v18 confidence];
        v20 = v19 > 0.1;

        if (v20)
        {
          v21 = [v13 keypoints];
          v22 = [v21 objectAtIndexedSubscript:11];
          [v22 location];
          v24 = v23;
          v26 = v25;
          v27 = [v13 keypoints];
          v28 = [v27 objectAtIndexedSubscript:5];
          [v28 location];
          [(VCPHumanPoseVideoRequest *)v74 normDistance:v24 point2:v26, v29, v30];
          v32 = v31;

LABEL_16:
          v10 = v10 + v32;
          v9 = v9 + 1.0;
          goto LABEL_18;
        }
      }

      v33 = [v13 keypoints];
      v34 = [v33 objectAtIndexedSubscript:12];
      [v34 confidence];
      if (v35 > 0.1)
      {
        v36 = [v13 keypoints];
        v37 = [v36 objectAtIndexedSubscript:6];
        [v37 confidence];
        v39 = v38 > 0.1;

        if (!v39)
        {
          goto LABEL_18;
        }

        v40 = [v13 keypoints];
        v41 = [v40 objectAtIndexedSubscript:12];
        [v41 location];
        v43 = v42;
        v45 = v44;
        v46 = [v13 keypoints];
        v47 = [v46 objectAtIndexedSubscript:6];
        [v47 location];
        [(VCPHumanPoseVideoRequest *)v74 normDistance:v43 point2:v45, v48, v49];
        v32 = v50;

        goto LABEL_16;
      }

LABEL_18:
      for (i = 5; i != 17; ++i)
      {
        v52 = [v13 keypoints];
        v53 = [v52 objectAtIndexedSubscript:i];
        [v53 confidence];
        v55 = v54 > 0.1;

        if (v55)
        {
          v8 = v8 + 1.0;
        }
      }

      if (++v11 == v6)
      {
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v78 objects:v82 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
LABEL_26:

  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  if (v9 >= *&_MergedGlobals_1)
  {
    humanActionWindowSize = v74->super._humanActionWindowSize;
    v77 = 0;
    [(VCPHumanPoseVideoRequest *)v74 computeVarWithID:v5 index1:9 index2:5 interVar:&v77 + 4 intraVar:&v77, 0.0, 0.0];
    v61 = v77;
    LODWORD(obja) = HIDWORD(v61);
    LODWORD(v60) = v61;
    [(VCPHumanPoseVideoRequest *)v74 computeVarWithID:v5 index1:10 index2:6 interVar:&v77 + 4 intraVar:&v77];
    v62 = v77;
    [(VCPHumanPoseVideoRequest *)v74 computeVarWithID:v5 index1:15 index2:11 interVar:&v77 + 4 intraVar:&v77];
    v64 = *(&v77 + 1);
    v63 = *&v77;
    [(VCPHumanPoseVideoRequest *)v74 computeVarWithID:v5 index1:16 index2:12 interVar:&v77 + 4 intraVar:&v77];
    *&v56 = v8 / (12 * humanActionWindowSize);
    v65 = (v10 / v9) * ((v10 / v9) * 4.0);
    v66 = sqrtf(fmaxf(((((obja + 0.0) + *(&v62 + 1)) + v64) + *(&v77 + 1)) / v65, 0.0));
    v67 = sqrtf(fmaxf(((((v60 + 0.0) + *&v62) + v63) + *&v77) / v65, 0.0));
    v58 = v66 + v66;
    v57 = v67 + v67;
  }

  if (*&v56 <= 0.5)
  {
    v68 = *&v56;
  }

  else
  {
    v68 = 0.5;
  }

  *&v56 = fminf(v57 * v68, 1.0);
  [v73 setRelativeActionScore:v56];
  *&v69 = fminf(v58 * v68, 1.0);
  [v73 setAbsoluteActionScore:v69];
}

- (void)computeVarWithID:(id)a3 index1:(int)a4 index2:(int)a5 interVar:(float *)a6 intraVar:(float *)a7
{
  v93 = *MEMORY[0x1E69E9840];
  v87 = a3;
  v73 = a6;
  if (a6 && a7)
  {
    v72 = a7;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = self->_existingPersonsArray;
    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v12)
    {
      v13 = *v89;
      v14 = a4;
      v86 = a5;
      v15 = 0.0;
      v84 = 0.0;
      v82 = 0.0;
      v83 = 0.0;
      v80 = 0.0;
      v81 = 0.0;
      v78 = 0.0;
      v79 = 0.0;
      v77 = 0.0;
LABEL_5:
      v16 = 0;
      while (1)
      {
        if (*v89 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v88 + 1) + 8 * v16) objectForKey:v87];
        v18 = v17;
        if (!v17)
        {
          break;
        }

        v19 = [v17 keypoints];
        v20 = [v19 objectAtIndexedSubscript:v14];
        [v20 confidence];
        if (v21 <= 0.1)
        {
        }

        else
        {
          v22 = [v18 keypoints];
          v23 = [v22 objectAtIndexedSubscript:v86];
          [v23 confidence];
          v25 = v24 > 0.1;

          if (v25)
          {
            v26 = [v18 keypoints];
            v27 = [v26 objectAtIndexedSubscript:v14];
            [v27 location];
            v76 = v28;

            v29 = [v18 keypoints];
            v30 = [v29 objectAtIndexedSubscript:v14];
            [v30 location];
            v32 = v31;
            v33 = [v18 keypoints];
            v34 = [v33 objectAtIndexedSubscript:v14];
            v75 = v32;
            [v34 location];
            v74 = v35;

            v36 = [v18 keypoints];
            v37 = [v36 objectAtIndexedSubscript:v14];
            [v37 location];
            v39 = v38;

            v40 = [v18 keypoints];
            v41 = [v40 objectAtIndexedSubscript:v14];
            [v41 location];
            v43 = v42;
            v44 = [v18 keypoints];
            v45 = [v44 objectAtIndexedSubscript:v14];
            [v45 location];
            v47 = v46;

            v48 = [v18 keypoints];
            v49 = [v48 objectAtIndexedSubscript:v14];
            [v49 location];
            v51 = v50;
            v52 = [v18 keypoints];
            v53 = [v52 objectAtIndexedSubscript:v86];
            [v53 location];
            v55 = v54;

            v56 = [v18 keypoints];
            v57 = [v56 objectAtIndexedSubscript:v14];
            [v57 location];
            v59 = v58;
            v60 = [v18 keypoints];
            v61 = [v60 objectAtIndexedSubscript:v86];
            [v61 location];
            v63 = v62;

            v64 = v76 + v77;
            v65 = v78 + v75 * v74;
            v77 = v64;
            v78 = v65;
            v66 = v39 + v79;
            v67 = v80 + v43 * v47;
            v79 = v66;
            v80 = v67;
            v68 = v51 - v55;
            v81 = v81 + v68;
            v82 = v82 + (v68 * v68);
            v69 = v59 - v63;
            v83 = v83 + v69;
            v84 = v84 + (v69 * v69);
            v15 = v15 + 1.0;
          }
        }

        if (v12 == ++v16)
        {
          v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v88 objects:v92 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          break;
        }
      }

      v70 = 0.0;
      v71 = 0.0;
      if (v15 > 0.0)
      {
        v71 = (((v80 / v15) - ((v79 * v79) / (v15 * v15))) + ((v78 / v15) - ((v77 * v77) / (v15 * v15)))) * 0.5;
        v70 = (((v84 / v15) - ((v83 * v83) / (v15 * v15))) + ((v82 / v15) - ((v81 * v81) / (v15 * v15)))) * 0.5;
      }
    }

    else
    {

      v70 = 0.0;
      v71 = 0.0;
    }

    *v73 = v71;
    *v72 = v70;
  }
}

- (int)associatePersons:(id)a3 withExisingPersons:(id)a4
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
                  if ([v14 count] != 17)
                  {
                    v9 = obja;
                    goto LABEL_61;
                  }

                  v33 = [v32 keypoints];
                  v34 = [v33 count] == 17;

                  if (!v34)
                  {
                    v9 = obja;
                    goto LABEL_63;
                  }

                  v35 = [v27 keypoints];
                  v36 = [v32 keypoints];
                  [(VCPHumanPoseVideoRequest *)self bodyDistance:v35 withBodyB:v36];
                  v38 = v37;

                  if (v38 < v30)
                  {
                    v29 = [v32 personID];
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

            [v27 setPersonID:v29];
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
            if ([v14 count] != 17)
            {
              break;
            }

            v15 = [v13 keypoints];
            v16 = [v15 count] == 17;

            if (!v16)
            {
              goto LABEL_63;
            }

            v17 = [v8 keypoints];
            v18 = [v13 keypoints];
            [(VCPHumanPoseVideoRequest *)self bodyDistance:v17 withBodyB:v18];
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

              [v54 setPersonID:{objc_msgSend(v8, "personID")}];
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

              [*(*(&v55 + 1) + 8 * k) setPersonID:(*(&self->super._minHandSize + 1))++];
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

          [*(*(&v75 + 1) + 8 * m) setPersonID:(*(&self->super._minHandSize + 1))++];
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
  personID = self->_personID;
  preferredWidth = self->_preferredWidth;
  result.height = preferredWidth;
  result.width = personID;
  return result;
}

- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

- (void)computeActionScoreForPerson:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_1ED942820))
  {
    *&v2 = *(a1 + 32) * 0.7;
    _MergedGlobals_1 = v2;

    __cxa_guard_release(&qword_1ED942820);
  }
}

@end