@interface VCPVideoPetsActionAnalyzer
- (CGRect)scaleRect:(CGRect)rect scaleX:(float)x scaleY:(float)y;
- (VCPVideoPetsActionAnalyzer)initWithTimeOfInterest:(id)interest;
- (float)intersectionOverUnion:(CGRect)union rect:(CGRect)rect;
- (float)normDistance:(id)distance point2:(id)point2;
- (id).cxx_construct;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags;
- (int)finishAnalysisPass:(id *)pass;
- (int)processPets:(id)pets petsBounds:(id)bounds dominantPetIdx:(int)idx frame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats;
- (void)computeActionScore;
- (void)computeVar:(int)var index2:(int)index2 interVar:(float *)interVar intraVar:(float *)intraVar;
@end

@implementation VCPVideoPetsActionAnalyzer

- (VCPVideoPetsActionAnalyzer)initWithTimeOfInterest:(id)interest
{
  interestCopy = interest;
  v31.receiver = self;
  v31.super_class = VCPVideoPetsActionAnalyzer;
  v6 = [(VCPVideoPetsActionAnalyzer *)&v31 init];
  if (v6)
  {
    v7 = [[VCPImagePetsKeypointsAnalyzer alloc] initWithMaxNumRegions:2 forceCPU:0 sharedModel:1];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = MEMORY[0x1E6960C80];
    v10 = *(MEMORY[0x1E6960C80] + 16);
    *(v6 + 1) = *MEMORY[0x1E6960C80];
    *(v6 + 4) = v10;
    array = [MEMORY[0x1E695DF70] array];
    v12 = *(v6 + 8);
    *(v6 + 8) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v14 = *(v6 + 16);
    *(v6 + 16) = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    v16 = *(v6 + 17);
    *(v6 + 17) = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    v18 = *(v6 + 18);
    *(v6 + 18) = array4;

    *(v6 + 18) = 0;
    v19 = MEMORY[0x1E6960C70];
    v20 = *MEMORY[0x1E6960C70];
    *(v6 + 92) = *(MEMORY[0x1E6960C70] + 16);
    *(v6 + 76) = v20;
    v21 = *(v19 + 16);
    *(v6 + 100) = *v19;
    *(v6 + 116) = v21;
    v22 = MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 16);
    *(v6 + 152) = *MEMORY[0x1E695F058];
    *(v6 + 168) = v23;
    v24 = v22[1];
    *(v6 + 184) = *v22;
    *(v6 + 200) = v24;
    *(v6 + 54) = 0;
    *(v6 + 55) = 0;
    *(v6 + 56) = 0;
    *(v6 + 57) = 0;
    v25 = *(v19 + 16);
    *(v6 + 232) = *v19;
    *(v6 + 31) = v25;
    v26 = *(v9 + 16);
    *(v6 + 40) = *v9;
    *(v6 + 7) = v26;
    v27 = *(v6 + 32);
    *(v6 + 32) = 0;

    v6[264] = 0;
    objc_storeStrong(v6 + 34, interest);
    v6[280] = 1;
  }

  if (*(v6 + 1))
  {
    v28 = v6;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v29;
}

- (float)normDistance:(id)distance point2:(id)point2
{
  distanceCopy = distance;
  point2Copy = point2;
  v7 = [distanceCopy objectAtIndexedSubscript:0];
  [v7 floatValue];
  v9 = v8;
  v10 = [point2Copy objectAtIndexedSubscript:0];
  [v10 floatValue];
  v12 = v11;
  v13 = [distanceCopy objectAtIndexedSubscript:0];
  [v13 floatValue];
  v15 = v14;
  v16 = [point2Copy objectAtIndexedSubscript:0];
  [v16 floatValue];
  v18 = v17;
  v19 = [distanceCopy objectAtIndexedSubscript:1];
  [v19 floatValue];
  v21 = v20;
  v22 = [point2Copy objectAtIndexedSubscript:1];
  [v22 floatValue];
  v24 = v23;
  v25 = [distanceCopy objectAtIndexedSubscript:1];
  [v25 floatValue];
  v27 = v26;
  v28 = [point2Copy objectAtIndexedSubscript:1];
  [v28 floatValue];
  v30 = sqrtf(((v21 - v24) * (v27 - v29)) + ((v9 - v12) * (v15 - v18)));

  return v30;
}

- (void)computeVar:(int)var index2:(int)index2 interVar:(float *)interVar intraVar:(float *)intraVar
{
  v80 = *MEMORY[0x1E69E9840];
  if (interVar && intraVar)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = self->_bodyArray;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v8)
    {
      v9 = *v76;
      index2Copy = index2;
      v72 = 0.0;
      v67 = 0.0;
      v70 = 0.0;
      v71 = 0.0;
      v68 = 0.0;
      v69 = 0.0;
      v10 = 0.0;
      v65 = 0.0;
      v66 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v76 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v75 + 1) + 8 * i);
          if ([v12 count])
          {
            v13 = [v12 objectAtIndexedSubscript:var];
            v14 = [v13 objectAtIndexedSubscript:2];
            [v14 floatValue];
            if (v15 <= 0.15)
            {
            }

            else
            {
              v16 = [v12 objectAtIndexedSubscript:index2Copy];
              v17 = [v16 objectAtIndexedSubscript:2];
              [v17 floatValue];
              v19 = v18 > 0.15;

              if (v19)
              {
                v20 = [v12 objectAtIndexedSubscript:var];
                v21 = [v20 objectAtIndexedSubscript:0];
                [v21 floatValue];
                v64 = v22;

                v23 = [v12 objectAtIndexedSubscript:var];
                v24 = [v23 objectAtIndexedSubscript:0];
                [v24 floatValue];
                v26 = v25;
                v27 = [v12 objectAtIndexedSubscript:var];
                v28 = [v27 objectAtIndexedSubscript:0];
                v63 = v26;
                [v28 floatValue];
                v62 = v29;

                v30 = [v12 objectAtIndexedSubscript:var];
                v31 = [v30 objectAtIndexedSubscript:1];
                [v31 floatValue];
                v33 = v32;

                v34 = [v12 objectAtIndexedSubscript:var];
                v35 = [v34 objectAtIndexedSubscript:1];
                [v35 floatValue];
                v37 = v36;
                v38 = [v12 objectAtIndexedSubscript:var];
                v39 = [v38 objectAtIndexedSubscript:1];
                [v39 floatValue];
                v41 = v40;

                v42 = [v12 objectAtIndexedSubscript:var];
                v43 = [v42 objectAtIndexedSubscript:0];
                [v43 floatValue];
                v45 = v44;
                v46 = [v12 objectAtIndexedSubscript:index2Copy];
                v47 = [v46 objectAtIndexedSubscript:0];
                [v47 floatValue];
                v49 = v48;

                v50 = [v12 objectAtIndexedSubscript:var];
                v51 = [v50 objectAtIndexedSubscript:1];
                [v51 floatValue];
                v53 = v52;
                v54 = [v12 objectAtIndexedSubscript:index2Copy];
                v55 = [v54 objectAtIndexedSubscript:1];
                [v55 floatValue];
                v57 = v56;

                v65 = v65 + v64;
                v66 = v66 + v33;
                v67 = v67 + (v37 * v41);
                v68 = v68 + ((v45 - v49) * (v45 - v49));
                v71 = v71 + (v53 - v57);
                v72 = v72 + (v63 * v62);
                v69 = v69 + ((v53 - v57) * (v53 - v57));
                v70 = v70 + (v45 - v49);
                v10 = v10 + 1.0;
              }
            }
          }
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v8);

      v58 = 0.0;
      v59 = 0.0;
      if (v10 > 0.0)
      {
        v59 = (((v67 / v10) - ((v66 * v66) / (v10 * v10))) + ((v72 / v10) - ((v65 * v65) / (v10 * v10)))) * 0.5;
        v58 = (((v68 / v10) - ((v70 * v70) / (v10 * v10))) + ((v69 / v10) - ((v71 * v71) / (v10 * v10)))) * 0.5;
      }
    }

    else
    {

      v58 = 0.0;
      v59 = 0.0;
    }

    *interVar = v59;
    *intraVar = v58;
  }
}

- (void)computeActionScore
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = self->_bodyArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v3)
  {

    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    goto LABEL_25;
  }

  v4 = *v50;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v50 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v49 + 1) + 8 * i);
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:16];
        v11 = [v10 objectAtIndexedSubscript:2];
        [v11 floatValue];
        if (v12 <= 0.15)
        {
        }

        else
        {
          v13 = [v9 objectAtIndexedSubscript:10];
          v14 = [v13 objectAtIndexedSubscript:2];
          [v14 floatValue];
          v16 = v15 > 0.15;

          if (v16)
          {
            v17 = [v9 objectAtIndexedSubscript:16];
            v18 = [v9 objectAtIndexedSubscript:10];
            [(VCPVideoPetsActionAnalyzer *)self normDistance:v17 point2:v18];
            v20 = v19;

            goto LABEL_14;
          }
        }

        v21 = [v9 objectAtIndexedSubscript:19];
        v22 = [v21 objectAtIndexedSubscript:2];
        [v22 floatValue];
        if (v23 <= 0.15)
        {
        }

        else
        {
          v24 = [v9 objectAtIndexedSubscript:13];
          v25 = [v24 objectAtIndexedSubscript:2];
          [v25 floatValue];
          v27 = v26 > 0.15;

          if (v27)
          {
            v28 = [v9 objectAtIndexedSubscript:19];
            v29 = [v9 objectAtIndexedSubscript:13];
            [(VCPVideoPetsActionAnalyzer *)self normDistance:v28 point2:v29];
            v20 = v30;

LABEL_14:
            v7 = v7 + v20;
            v5 = v5 + 1.0;
          }
        }

        for (j = 10; j != 25; ++j)
        {
          v32 = [v9 objectAtIndexedSubscript:j];
          v33 = [v32 objectAtIndexedSubscript:2];
          [v33 floatValue];
          v35 = v34 > 0.15;

          if (v35)
          {
            v6 = v6 + 1.0;
          }
        }

        continue;
      }
    }

    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v3);

  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  if (v5 >= 5.0)
  {
    v48 = 0;
    [(VCPVideoPetsActionAnalyzer *)self computeVar:12 index2:10 interVar:&v48 + 4 intraVar:&v48, 0.0, 0.0, 0.0];
    v40 = v48;
    LODWORD(v46) = HIDWORD(v40);
    LODWORD(v39) = v40;
    [(VCPVideoPetsActionAnalyzer *)self computeVar:15 index2:13 interVar:&v48 + 4 intraVar:&v48];
    v41 = v48;
    [(VCPVideoPetsActionAnalyzer *)self computeVar:18 index2:16 interVar:&v48 + 4 intraVar:&v48];
    v42 = v48;
    [(VCPVideoPetsActionAnalyzer *)self computeVar:21 index2:19 interVar:&v48 + 4 intraVar:&v48];
    v36 = v6 / 105.0;
    v43 = (v7 / v5) * ((v7 / v5) * 4.0);
    v44 = sqrtf(fmaxf(((((v46 + 0.0) + *(&v41 + 1)) + *(&v42 + 1)) + *(&v48 + 1)) / v43, 0.0));
    v45 = sqrtf(fmaxf(((((v39 + 0.0) + *&v41) + *&v42) + *&v48) / v43, 0.0));
    v38 = v44 + v44;
    v37 = v45 + v45;
  }

LABEL_25:
  if (v36 > 0.5)
  {
    v36 = 0.5;
  }

  self->_actionScoreAbsolute = fminf(v38 * v36, 1.0);
  self->_actionScoreRelative = fminf(v37 * v36, 1.0);
}

- (CGRect)scaleRect:(CGRect)rect scaleX:(float)x scaleY:(float)y
{
  xCopy = x;
  v6 = rect.origin.x * xCopy;
  yCopy = y;
  v8 = rect.origin.y * yCopy;
  v9 = rect.size.width * xCopy;
  v10 = rect.size.height * yCopy;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (float)intersectionOverUnion:(CGRect)union rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = union.size.height;
  v9 = union.size.width;
  v10 = union.origin.y;
  v11 = union.origin.x;
  v15 = CGRectIntersection(union, rect);
  v13 = v15.size.height;
  v14 = v15.size.width;
  v15.origin.x = v11;
  v15.origin.y = v10;
  v15.size.width = v9;
  v15.size.height = v8;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v16 = CGRectUnion(v15, v17);
  return v14 * v13 / (v16.size.width * v16.size.height + 0.00000011920929);
}

- (int)processPets:(id)pets petsBounds:(id)bounds dominantPetIdx:(int)idx frame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats
{
  v113 = *MEMORY[0x1E69E9840];
  petsCopy = pets;
  boundsCopy = bounds;
  statsCopy = stats;
  Width = CVPixelBufferGetWidth(frame);
  Height = CVPixelBufferGetHeight(frame);
  var3 = timestamp->var3;
  *&self->_lastPetTimestamp.value = *&timestamp->var0;
  self->_lastPetTimestamp.epoch = var3;
  v17 = [petsCopy objectAtIndexedSubscript:idx];
  v18 = [petsCopy objectAtIndexedSubscript:0];
  [petsCopy setObject:v18 atIndexedSubscript:idx];

  [petsCopy setObject:v17 atIndexedSubscript:0];
  v19 = [boundsCopy objectAtIndexedSubscript:idx];
  self->_petRect = NSRectFromString(v19);

  v20 = self->_petRect.size.width;
  v21 = self->_petRect.size.height;
  v22 = self->_petRect.origin.x + v20 * 0.5;
  v23 = self->_petRect.origin.y + v21 * 0.5;
  if (fmax(v20, v21) < fminf(fabsf(v22 + -0.5), fabsf(v23 + -0.5)))
  {
    self->_actionScoreRelative = 0.0;
    goto LABEL_65;
  }

  timestampCopy = timestamp;
  selfCopy = self;
  if ([v17 count])
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    tracker = v17;
    v95 = v17;
    v25 = [(VCPVideoObjectTracker *)tracker countByEnumeratingWithState:&v102 objects:v111 count:16];
    if (v25)
    {
      v92 = Height;
      v93 = Width;
      frameCopy = frame;
      v26 = 0;
      v27 = 0;
      v28 = *v103;
      v29 = 1.0;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 1.0;
      do
      {
        v33 = 0;
        v34 = v26;
        v26 += v25;
        do
        {
          if (*v103 != v28)
          {
            objc_enumerationMutation(tracker);
          }

          v35 = *(*(&v102 + 1) + 8 * v33);
          v36 = [v35 objectAtIndexedSubscript:{2, v92}];
          [v36 floatValue];
          v38 = v37 > 0.15;

          if (v38)
          {
            v39 = [v35 objectAtIndexedSubscript:0];
            [v39 floatValue];
            if (v40 < v32)
            {
              v32 = v40;
            }

            v41 = [v35 objectAtIndexedSubscript:1];
            [v41 floatValue];
            if (v42 < v29)
            {
              v29 = v42;
            }

            v43 = [v35 objectAtIndexedSubscript:0];
            [v43 floatValue];
            if (v31 < v44)
            {
              v31 = v44;
            }

            v45 = [v35 objectAtIndexedSubscript:1];
            [v45 floatValue];
            if (v30 < v46)
            {
              v30 = v46;
            }

            if (v34 > 2)
            {
              ++v27;
            }
          }

          ++v34;
          ++v33;
        }

        while (v25 != v33);
        v25 = [(VCPVideoObjectTracker *)tracker countByEnumeratingWithState:&v102 objects:v111 count:16];
      }

      while (v25);

      v17 = v95;
      self = selfCopy;
      if (v27 < 6)
      {
        goto LABEL_52;
      }

      v47 = (v31 + v32) * 0.5;
      v48 = (v30 + v29) * 0.5;
      v49 = selfCopy->_actionScoreAbsolute * 0.3;
      if (v49 > 0.15)
      {
        v49 = 0.15;
      }

      v50 = v49 + 0.25;
      v51 = v30 - v29;
      if ((v30 - v29) < (v31 - v32))
      {
        v51 = v31 - v32;
      }

      v52 = v51 * 1.2;
      if (v52 >= v50)
      {
        v50 = v52;
      }

      if (v50 <= 0.5)
      {
        v53 = v50;
      }

      else
      {
        v53 = 0.5;
      }

      if (v93 > v92)
      {
        v54 = v53;
      }

      else
      {
        v54 = (v93 / v92) * v53;
      }

      if (v93 > v92)
      {
        v53 = (v92 / v93) * v53;
      }

      v55 = selfCopy->_crop.size.width;
      v56 = (v55 * 0.8) * 0.5;
      if (v53 < v56)
      {
        v53 = v56;
      }

      v57 = selfCopy->_crop.size.height;
      v58 = (v57 * 0.8) * 0.5;
      if (v54 >= v58)
      {
        v58 = v54;
      }

      v59 = v47 - v53;
      v60 = 0.01;
      if ((v47 - v53) < 0.01)
      {
        v59 = 0.01;
      }

      v61 = v47 + v53;
      v62 = 0.99;
      if (v61 <= 0.99)
      {
        v63 = v61;
      }

      else
      {
        v63 = 0.99;
      }

      if ((v48 - v58) >= 0.01)
      {
        v60 = v48 - v58;
      }

      v64 = v48 + v58;
      if (v64 <= 0.99)
      {
        v62 = v64;
      }

      selfCopy->_crop.origin.x = v59;
      selfCopy->_crop.origin.y = v60;
      selfCopy->_crop.size.width = (v63 - v59);
      selfCopy->_crop.size.height = (v62 - v60);
      [VCPVideoPetsActionAnalyzer scaleRect:selfCopy scaleX:"scaleRect:scaleX:scaleY:" scaleY:?];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v73 = [VCPVideoObjectTracker alloc];
      lhs = *timestampCopy;
      v74 = [(VCPVideoObjectTracker *)v73 initWithObjectBounds:frameCopy inFrame:&lhs timestamp:v66, v68, v70, v72];
      tracker = selfCopy->_tracker;
      selfCopy->_tracker = v74;
    }

    v17 = v95;
    self = selfCopy;
  }

LABEL_52:
  if ([(NSMutableArray *)self->_bodyArray count]>= 7)
  {
    [(NSMutableArray *)self->_bodyArray removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_bodyArray addObject:v17];
  if ([(NSMutableArray *)self->_bodyArray count]>= 7)
  {
    [(VCPVideoPetsActionAnalyzer *)self computeActionScore];
    *&v75 = self->_scoreAbsoluteMax;
    if (*&v75 < self->_actionScoreAbsolute)
    {
      *&v75 = self->_actionScoreAbsolute;
    }

    self->_scoreAbsoluteMax = *&v75;
    *&v75 = self->_scoreRelativeMax;
    if (*&v75 < self->_actionScoreRelative)
    {
      *&v75 = self->_actionScoreRelative;
    }

    self->_scoreRelativeMax = *&v75;
    *&v75 = self->_actionScoreRelative;
    [statsCopy setPetsActionScore:v75];
    v76 = (&self->_endTime.epoch + 4);
    lhs = *timestampCopy;
    rhs = *(&self->_endTime.epoch + 4);
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 1.0)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        scoreAbsoluteMax = self->_scoreAbsoluteMax;
        scoreRelativeMax = self->_scoreRelativeMax;
        LODWORD(lhs.value) = 134218240;
        *(&lhs.value + 4) = scoreAbsoluteMax;
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = scoreRelativeMax;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VideoPetActionAnalyzer: _scoreAbsoluteMax = %f, _scoreRelativeMax =%f", &lhs, 0x16u);
      }

      v80 = MEMORY[0x1E695DF90];
      v109[0] = @"petsAbsoluteScore";
      *&v77 = self->_scoreAbsoluteMax;
      v81 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
      v109[1] = @"petsRelativeScore";
      v110[0] = v81;
      *&v82 = self->_scoreRelativeMax;
      v83 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
      v110[1] = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
      v85 = [v80 dictionaryWithDictionary:v84];

      actionResults = selfCopy->_actionResults;
      v107[0] = @"start";
      lhs = *v76;
      v87 = CMTimeCopyAsDictionary(&lhs, 0);
      v108[0] = v87;
      v107[1] = @"duration";
      lhs = *timestampCopy;
      rhs = *v76;
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs = time;
      v88 = CMTimeCopyAsDictionary(&lhs, 0);
      v107[2] = @"attributes";
      v108[1] = v88;
      v108[2] = v85;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
      [(NSMutableArray *)actionResults addObject:v89];

      v90 = *&timestampCopy->value;
      v76->epoch = timestampCopy->epoch;
      *&v76->value = v90;
      selfCopy->_scoreAbsoluteMax = 0.0;
      selfCopy->_scoreRelativeMax = 0.0;
    }
  }

  [statsCopy setFrameProcessedByPetsActionAnalyzer:1];
LABEL_65:

  return 0;
}

- (int)analyzeFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration frameStats:(id)stats flags:(unint64_t *)flags
{
  v126 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  v121 = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  durationCopy = duration;
  selfCopy = self;
  Width = CVPixelBufferGetWidth(frame);
  cf = frame;
  Height = CVPixelBufferGetHeight(frame);
  *&v12 = selfCopy->_actionScoreRelative;
  [statsCopy setPetsActionScore:v12];
  [statsCopy setFrameProcessedByPetsActionAnalyzer:1];
  lhs = *timestamp;
  rhs = selfCopy->_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) >= 0.150000006)
  {
    v24 = selfCopy;
    selfCopy->_sampleFlag = 1;
  }

  else
  {
    if (!CGRectIsEmpty(selfCopy->_crop) && selfCopy->_tracker)
    {
      v13 = VCPSignPostLog();
      v14 = os_signpost_id_generate(v13);

      v15 = VCPSignPostLog();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        LOWORD(lhs.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VCPVideoPetsActionTracker", "", &lhs, 2u);
      }

      v17 = [(VCPVideoObjectTracker *)selfCopy->_tracker trackObjectInFrame:cf];
      if (v17)
      {
        goto LABEL_22;
      }

      v18 = VCPSignPostLog();
      v19 = v18;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        LOWORD(lhs.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v14, "VCPVideoPetsActionTracker", "", &lhs, 2u);
      }

      [(VCPVideoObjectTracker *)selfCopy->_tracker objectBounds];
      [VCPVideoPetsActionAnalyzer scaleRect:selfCopy scaleX:"scaleRect:scaleX:scaleY:" scaleY:?];
      selfCopy->_crop.origin.x = v20;
      selfCopy->_crop.origin.y = v21;
      selfCopy->_crop.size.width = v22;
      selfCopy->_crop.size.height = v23;
    }

    v24 = selfCopy;
    if (!selfCopy->_sampleFlag)
    {
      v100 = 0;
      v17 = 0;
      goto LABEL_78;
    }
  }

  tracker = v24->_tracker;
  v24->_tracker = 0;

  v26 = *&timestamp->var0;
  selfCopy->_timeLastProcess.epoch = timestamp->var3;
  *&selfCopy->_timeLastProcess.value = v26;
  selfCopy->_actionScoreAbsolute = 0.0;
  selfCopy->_sampleFlag = 0;
  v91 = (&selfCopy->_endTime.epoch + 4);
  if ((selfCopy->_startTime.timescale & 1) == 0)
  {
    v27 = *&timestamp->var0;
    *&selfCopy->_startTime.flags = timestamp->var3;
    *v91 = v27;
  }

  p_x = &selfCopy->_crop.origin.x;
  v29 = selfCopy->_crop.size.width;
  v30 = selfCopy->_crop.size.height;
  if (fmin(v29, v30) < 0.100000001)
  {
    v31 = *(MEMORY[0x1E695F058] + 16);
    *p_x = *MEMORY[0x1E695F058];
    selfCopy->_crop.size = v31;
    v29 = selfCopy->_crop.size.width;
    v30 = selfCopy->_crop.size.height;
  }

  v32 = *p_x;
  y = selfCopy->_crop.origin.y;
  if (CGRectIsEmpty(*(&v29 - 2)))
  {
    v121 = CFRetain(cf);
    v34 = selfCopy;
    goto LABEL_23;
  }

  v127.origin.x = *p_x;
  v127.size.width = selfCopy->_crop.size.width;
  v127.size.height = selfCopy->_crop.size.height;
  v35 = 1.0 - v127.size.height - selfCopy->_crop.origin.y;
  v127.origin.y = fmaxf(v35, 0.0);
  v34 = selfCopy;
  v17 = Scaler::ScaleCropped(&selfCopy->_scaler, v127, cf, &v121, Width, Height, 875704422);
  if (v17)
  {
LABEL_22:
    v100 = 0;
    goto LABEL_78;
  }

LABEL_23:
  p_lastPetTimestamp = &v34->_lastPetTimestamp;
  if (v34->_lastPetTimestamp.flags)
  {
    lhs = *timestamp;
    rhs = v34->_lastPetTimestamp;
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v34 = selfCopy;
    p_tracking = &selfCopy->_tracking;
    selfCopy->_tracking = Seconds < 1.0;
    if (Seconds < 1.0)
    {
      poseAnalyzer = selfCopy->_poseAnalyzer;
      v119 = 0;
      v17 = [(VCPImagePetsKeypointsAnalyzer *)poseAnalyzer analyzePixelBuffer:v121 flags:flags results:&v119 cancel:&__block_literal_global_49];
      v39 = v119;
      v100 = v39;
      if (v17)
      {
        goto LABEL_76;
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = [v39 objectForKeyedSubscript:@"PetsKeypointsResults"];
      v40 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
      if (v40)
      {
        v103 = v40;
        v104 = 0;
        v101 = 0;
        v102 = *v116;
        v41 = 0.0;
        do
        {
          for (i = 0; i != v103; ++i)
          {
            if (*v116 != v102)
            {
              objc_enumerationMutation(obj);
            }

            v106 = [*(*(&v115 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v108 = [v106 objectForKeyedSubscript:@"petsKeypoints"];
            v42 = [v106 objectForKeyedSubscript:@"petsBounds"];
            v128 = NSRectFromString(v42);
            x = v128.origin.x;
            v44 = v128.origin.y;
            v45 = v128.size.width;
            v46 = v128.size.height;

            v47 = fmax(v45, v46);
            if (v47 >= 0.1 && v47 >= 0.2)
            {
              if (v108)
              {
                v129.origin.x = *p_x;
                v129.origin.y = selfCopy->_crop.origin.y;
                v129.size.width = selfCopy->_crop.size.width;
                v129.size.height = selfCopy->_crop.size.height;
                v48 = 0.0;
                if (CGRectIsEmpty(v129))
                {
                  array3 = v108;
                }

                else
                {
                  array3 = [MEMORY[0x1E695DF70] array];
                  v113 = 0u;
                  v114 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v109 = v108;
                  v50 = [v109 countByEnumeratingWithState:&v111 objects:v124 count:16];
                  if (v50)
                  {
                    v51 = *v112;
                    do
                    {
                      for (j = 0; j != v50; ++j)
                      {
                        if (*v112 != v51)
                        {
                          objc_enumerationMutation(v109);
                        }

                        v53 = *(*(&v111 + 1) + 8 * j);
                        v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
                        v55 = MEMORY[0x1E696AD98];
                        v56 = *p_x;
                        v57 = [v53 objectAtIndexedSubscript:0];
                        [v57 floatValue];
                        v59 = [v55 numberWithDouble:v56 + v58 * selfCopy->_crop.size.width];
                        [v54 setObject:v59 atIndexedSubscript:0];

                        v60 = MEMORY[0x1E696AD98];
                        v61 = selfCopy->_crop.origin.y;
                        v62 = [v53 objectAtIndexedSubscript:1];
                        [v62 floatValue];
                        v64 = [v60 numberWithDouble:v61 + v63 * selfCopy->_crop.size.height];
                        [v54 setObject:v64 atIndexedSubscript:1];

                        v65 = [v53 objectAtIndexedSubscript:2];
                        [v65 floatValue];
                        LODWORD(v61) = v66;

                        LODWORD(v67) = LODWORD(v61);
                        v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
                        [v54 setObject:v68 atIndexedSubscript:2];

                        [array3 addObject:v54];
                        if (*&v61 > 0.15)
                        {
                          v48 = v48 + 1.0;
                        }
                      }

                      v50 = [v109 countByEnumeratingWithState:&v111 objects:v124 count:16];
                    }

                    while (v50);
                  }

                  v108 = array3;
                }

                [array addObject:array3];
              }

              else
              {
                v108 = 0;
                v48 = 0.0;
              }

              v130.origin.x = x;
              v130.origin.y = v44;
              v130.size.width = v45;
              v130.size.height = v46;
              if (!CGRectIsEmpty(v130))
              {
                v131.origin.x = *p_x;
                v131.origin.y = selfCopy->_crop.origin.y;
                v131.size.width = selfCopy->_crop.size.width;
                v131.size.height = selfCopy->_crop.size.height;
                if (!CGRectIsEmpty(v131))
                {
                  v69 = selfCopy->_crop.size.width;
                  v70 = selfCopy->_crop.size.height;
                  x = *p_x + x * v69;
                  v44 = selfCopy->_crop.origin.y + v44 * v70;
                  v45 = v45 * v69;
                  v46 = v46 * v70;
                }

                v132.origin.x = x;
                v132.origin.y = v44;
                v132.size.width = v45;
                v132.size.height = v46;
                v71 = NSStringFromRect(v132);
                [array2 addObject:v71];

                if (!CGRectIsEmpty(selfCopy->_petRect))
                {
                  [(VCPVideoPetsActionAnalyzer *)selfCopy intersectionOverUnion:selfCopy->_petRect.origin.x rect:selfCopy->_petRect.origin.y, selfCopy->_petRect.size.width, selfCopy->_petRect.size.height, x, v44, v45, v46];
                  v48 = v72 + 0.1;
                }
              }

              v73 = v48 <= v41;
              if (v48 > v41)
              {
                v41 = v48;
              }

              v74 = v104;
              if (!v73)
              {
                v74 = v101;
              }

              v104 = v74;
              ++v101;
            }
          }

          v103 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
        }

        while (v103);
      }

      else
      {
        v104 = 0;
      }

      v88 = [array2 count];
      if (v88 != [array count])
      {
        v17 = -50;
        goto LABEL_76;
      }

      v36 = 1;
      v34 = selfCopy;
    }

    else
    {
      v36 = 0;
      v104 = 0;
      v100 = 0;
    }
  }

  else
  {
    v36 = 0;
    v104 = 0;
    v100 = 0;
    p_tracking = &v34->_tracking;
    v34->_tracking = 0;
  }

  p_timeLastProcessFullFrame = &v34->_timeLastProcessFullFrame;
  lhs = *timestamp;
  rhs = *p_timeLastProcessFullFrame;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < 1.0)
  {
LABEL_71:
    if ([array count])
    {
      lhs = *timestamp;
      rhs = *durationCopy;
      v17 = [(VCPVideoPetsActionAnalyzer *)selfCopy processPets:array petsBounds:array2 dominantPetIdx:v104 frame:cf timestamp:&lhs duration:&rhs frameStats:statsCopy];
    }

    else
    {
      v83 = MEMORY[0x1E695F058];
      v84 = *(MEMORY[0x1E695F058] + 16);
      selfCopy->_petRect.origin = *MEMORY[0x1E695F058];
      selfCopy->_petRect.size = v84;
      if (!*p_tracking)
      {
        v85 = v83[1];
        *p_x = *v83;
        selfCopy->_crop.size = v85;
      }

      [(NSMutableArray *)selfCopy->_bodyArray removeAllObjects];
      v17 = 0;
      v86 = *&timestamp->var0;
      *&selfCopy->_startTime.flags = timestamp->var3;
      *v91 = v86;
    }

    goto LABEL_76;
  }

  v133.origin.x = *p_x;
  v133.origin.y = selfCopy->_crop.origin.y;
  v133.size.width = selfCopy->_crop.size.width;
  v133.size.height = selfCopy->_crop.size.height;
  if ((v36 & CGRectIsEmpty(v133)) == 1)
  {
    v76 = v100;
LABEL_68:
    v79 = *&timestamp->var0;
    p_timeLastProcessFullFrame->epoch = timestamp->var3;
    *&p_timeLastProcessFullFrame->value = v79;
    v80 = [v76 objectForKeyedSubscript:@"PetsKeypointsResults"];
    v81 = [v80 count] == 0;

    if (!v81)
    {
      v82 = *&timestamp->var0;
      p_lastPetTimestamp->epoch = timestamp->var3;
      *&p_lastPetTimestamp->value = v82;
    }

    goto LABEL_71;
  }

  v77 = selfCopy->_poseAnalyzer;
  petsDetections = [statsCopy petsDetections];
  v110 = 0;
  v17 = [(VCPImagePetsKeypointsAnalyzer *)v77 analyzePixelBuffer:cf flags:flags petsDetections:petsDetections results:&v110 cancel:&__block_literal_global_345_0];
  v76 = v110;

  if (!v17)
  {
    goto LABEL_68;
  }

LABEL_76:
  if (v121)
  {
    CFRelease(v121);
  }

LABEL_78:

  return v17;
}

- (int)finishAnalysisPass:(id *)pass
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VideoPetActionAnalyzer: finishAnalysisPass", v4, 2u);
  }

  return 0;
}

- (id)results
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_actionResults count])
  {
    [dictionary setObject:self->_actionResults forKeyedSubscript:@"PetsActionResults"];
  }

  return dictionary;
}

- (id).cxx_construct
{
  *(self + 37) = 0;
  *(self + 76) = 0;
  return self;
}

@end