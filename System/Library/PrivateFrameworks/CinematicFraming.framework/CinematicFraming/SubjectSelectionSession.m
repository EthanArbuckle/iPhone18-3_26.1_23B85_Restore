@interface SubjectSelectionSession
+ (void)filterDetectedObjects:(id)a3 usedFaceIDs:(id)a4 usedBodyIDs:(id)a5 filteredObjects:(id)a6;
- (SubjectSelectionSession)initWithCurrentProcessIsCameraCaptureDaemon:(BOOL)a3;
- (int)_initGaze;
- (int)_runGazeInference:(__CVBuffer *)a3 faceRect:(CGRect)a4 gazeScore:(float *)a5;
- (int)processPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 detectedObjects:(id)a5 usedFaceIDs:(id)a6 usedBodyIDs:(id)a7;
- (void)_convertDetectionArrayToDict:(id)a3 bodyObjects:(id)a4 faceRects:(id)a5 bodyRects:(id)a6;
- (void)_pairFaceBody:(id)a3 bodyObjects:(id)a4 face2Body:(id)a5 body2Face:(id)a6;
- (void)_runGazeDetection:(__CVBuffer *)a3 faceObjects:(id)a4 selectedFaceRects:(id)a5;
- (void)_selectAllObjects:(id)a3 bodyObjects:(id)a4 usedFaceIDs:(id)a5 usedBodyIDs:(id)a6;
- (void)_selectPairRects:(id)a3 bodyRects:(id)a4 face2Body:(id)a5 body2Face:(id)a6 selectedFaceRects:(id)a7 selectedBodyRects:(id)a8;
- (void)_selectSingleSubject:(id)a3 bodyRects:(id)a4 selectedFaceRects:(id)a5 selectedBodyRects:(id)a6 timestamp:(id *)a7 inputPixelBuffer:(__CVBuffer *)a8;
- (void)_updateDetectionRects:(id)a3 bodyObjects:(id)a4 timestamp:(id *)a5;
- (void)dealloc;
- (void)setSingleSubjectSelection:(BOOL)a3;
@end

@implementation SubjectSelectionSession

- (void)dealloc
{
  if (self->_espressoPlan)
  {
    espresso_plan_destroy();
    self->_espressoPlan = 0;
  }

  if (self->_espressoContext)
  {
    espresso_context_destroy();
    self->_espressoContext = 0;
  }

  gazeFacePixelBuffer = self->_gazeFacePixelBuffer;
  if (gazeFacePixelBuffer)
  {
    CFRelease(gazeFacePixelBuffer);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  v5.receiver = self;
  v5.super_class = SubjectSelectionSession;
  [(SubjectSelectionSession *)&v5 dealloc];
}

+ (void)filterDetectedObjects:(id)a3 usedFaceIDs:(id)a4 usedBodyIDs:(id)a5 filteredObjects:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277CF4408];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CF4408]];
  v41 = v12;
  v38 = *MEMORY[0x277CF4400];
  v15 = [v12 objectForKeyedSubscript:?];
  v16 = *MEMORY[0x277CF4440];
  v40 = v14;
  v44 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF4440]];
  v39 = v15;
  [v15 objectForKeyedSubscript:v16];
  v43 = v42 = v9;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = [v9 objectForKeyedSubscript:v13];
  v37 = v16;
  v18 = [v17 objectForKeyedSubscript:v16];

  v19 = [v18 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    v22 = *MEMORY[0x277CF6928];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v51 + 1) + 8 * i);
        v25 = [v24 objectForKeyedSubscript:v22];
        v26 = [v10 containsObject:v25];

        if (v26)
        {
          [v44 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v20);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = [v42 objectForKeyedSubscript:v38];
  v28 = [v27 objectForKeyedSubscript:v37];

  v29 = [v28 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    v32 = *MEMORY[0x277CF43D0];
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v46 + 1) + 8 * j);
        v35 = [v34 objectForKeyedSubscript:v32];
        v36 = [v11 containsObject:v35];

        if (v36)
        {
          [v43 addObject:v34];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v30);
  }
}

- (int)processPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 detectedObjects:(id)a5 usedFaceIDs:(id)a6 usedBodyIDs:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = *MEMORY[0x277CF4408];
  v14 = a5;
  v15 = [v14 objectForKeyedSubscript:v13];
  v16 = *MEMORY[0x277CF4440];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CF4440]];

  v18 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF4400]];

  v19 = [v18 objectForKeyedSubscript:v16];

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v40 = self->_lastUsedFaceRects;
  v39 = self->_lastUsedBodyRects;
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  [(SubjectSelectionSession *)self _convertDetectionArrayToDict:v17 bodyObjects:v19 faceRects:v20 bodyRects:v21];
  [(SubjectSelectionSession *)self _pairFaceBody:v20 bodyObjects:v21 face2Body:v22 body2Face:v23];
  if ((self->_lastTimestamp.flags & 1) == 0)
  {
    v24 = *&a4->var0;
    self->_lastTimestamp.epoch = a4->var3;
    *&self->_lastTimestamp.value = v24;
  }

  if (!self->_enableGazeSelection)
  {
    goto LABEL_20;
  }

  if ([v17 count] || objc_msgSend(v19, "count"))
  {
    time = *a4;
    [(SubjectSelectionSession *)self _updateDetectionRects:v20 bodyObjects:v21 timestamp:&time];
    v36 = v19;
    v37 = v12;
    v34 = v11;
    if (self->_singleSubjectSelection)
    {
      time = *a4;
      [(SubjectSelectionSession *)self _selectSingleSubject:v20 bodyRects:v21 selectedFaceRects:v40 selectedBodyRects:v39 timestamp:&time inputPixelBuffer:a3];
    }

    else if ([v17 count] == 1)
    {
      if ([v20 count] && !-[NSMutableDictionary count](self->_lastUsedFaceRects, "count") && !-[NSMutableDictionary count](self->_lastUsedBodyRects, "count"))
      {
        v25 = [v20 allKeys];
        v26 = [v25 objectAtIndexedSubscript:0];

        v27 = [v20 objectForKeyedSubscript:v26];
        [(NSMutableDictionary *)v40 setObject:v27 forKeyedSubscript:v26];
      }
    }

    else if ((self->_lastGazeTime.flags & 1) == 0 || (lhs = *a4, rhs = self->_lastGazeTime, CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) > self->_gazeElapsedThreshold))
    {
      v28 = *&a4->var0;
      self->_lastGazeTime.epoch = a4->var3;
      *&self->_lastGazeTime.value = v28;
      [(SubjectSelectionSession *)self _runGazeDetection:a3 faceObjects:v20 selectedFaceRects:v40, v11];
    }

    [(SubjectSelectionSession *)self _selectPairRects:v20 bodyRects:v21 face2Body:v22 body2Face:v23 selectedFaceRects:v40 selectedBodyRects:v39, v34];
    v29 = [(NSMutableDictionary *)v40 allKeys];
    [v35 addObjectsFromArray:v29];

    v30 = [(NSMutableDictionary *)v39 allKeys];
    v12 = v37;
    [v37 addObjectsFromArray:v30];

    v11 = v35;
    if ([v35 count] || objc_msgSend(v37, "count"))
    {
      self->_emptySelectionTimeElapsed = 0.0;
      v19 = v36;
      goto LABEL_21;
    }

    lhs = *a4;
    rhs = self->_lastTimestamp;
    CMTimeSubtract(&time, &lhs, &rhs);
    v31 = CMTimeGetSeconds(&time) + self->_emptySelectionTimeElapsed;
    self->_emptySelectionTimeElapsed = v31;
    v19 = v36;
    if (v31 < 1.6)
    {
      goto LABEL_21;
    }

LABEL_20:
    [(SubjectSelectionSession *)self _selectAllObjects:v17 bodyObjects:v19 usedFaceIDs:v11 usedBodyIDs:v12];
  }

LABEL_21:
  v32 = *&a4->var0;
  self->_lastTimestamp.epoch = a4->var3;
  *&self->_lastTimestamp.value = v32;

  return 0;
}

- (void)setSingleSubjectSelection:(BOOL)a3
{
  if (a3)
  {
    self->_singleSubjectSelection = 1;
    [(NSMutableDictionary *)self->_lastUsedFaceRects removeAllObjects];
    lastUsedBodyRects = self->_lastUsedBodyRects;

    [(NSMutableDictionary *)lastUsedBodyRects removeAllObjects];
  }

  else
  {
    self->_singleSubjectSelection = 0;
  }
}

- (void)_runGazeDetection:(__CVBuffer *)a3 faceObjects:(id)a4 selectedFaceRects:(id)a5
{
  v7 = a4;
  v8 = a5;
  v25 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v7 allKeys];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v27 = vdupq_n_s64(0x3F947AE140000000uLL);
    v28 = vdupq_n_s64(0xBF847AE140000000);
    __asm { FMOV            V0.2D, #1.0 }

    v26 = _Q0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = [v7 objectForKeyedSubscript:v18];
        memset(&rect, 0, sizeof(rect));
        CGRectMakeWithDictionaryRepresentation(v19, &rect);
        v20 = [(NSMutableDictionary *)v8 objectForKey:v18];

        if (!v20)
        {
          v31 = 0.0;
          rect.origin = vmaxnmq_f64(vaddq_f64(rect.origin, v28), 0);
          rect.size = vminnmq_f64(vaddq_f64(rect.size, v27), vsubq_f64(v26, rect.origin));
          [(SubjectSelectionSession *)self _runGazeInference:a3 faceRect:&v31 gazeScore:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
          *&v21 = v31;
          if (v31 >= self->_gazeScoreThreshold)
          {
            v22 = [(NSMutableDictionary *)self->_lastGazedFaceRects objectForKey:v18, v21];

            if (v22)
            {
              v23 = v8;
            }

            else
            {
              v23 = v25;
            }

            [(NSMutableDictionary *)v23 setObject:v19 forKeyedSubscript:v18];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v10);
  }

  lastGazedFaceRects = self->_lastGazedFaceRects;
  self->_lastGazedFaceRects = v25;
}

- (void)_convertDetectionArrayToDict:(id)a3 bodyObjects:(id)a4 faceRects:(id)a5 bodyRects:(id)a6
{
  v9 = a3;
  v31 = a4;
  v10 = a5;
  v11 = a6;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [v9 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v15 = *MEMORY[0x277CF6928];
    v16 = *MEMORY[0x277CF50B8];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:{v15, v31}];
        v20 = [v18 objectForKeyedSubscript:v16];
        [v10 setObject:v20 forKeyedSubscript:v19];
      }

      v13 = [v9 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v13);
  }

  v32 = v9;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v31;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    v25 = *MEMORY[0x277CF43D0];
    v26 = *MEMORY[0x277CF50B8];
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v34 + 1) + 8 * j);
        v29 = [v28 objectForKeyedSubscript:{v25, v31, v32}];
        v30 = [v28 objectForKeyedSubscript:v26];
        [v11 setObject:v30 forKeyedSubscript:v29];
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v23);
  }
}

- (void)_pairFaceBody:(id)a3 bodyObjects:(id)a4 face2Body:(id)a5 body2Face:(id)a6
{
  v9 = a3;
  v10 = a4;
  v49 = a5;
  v48 = a6;
  memset(&v71, 0, sizeof(v71));
  memset(&v70, 0, sizeof(v70));
  v11 = objc_opt_new();
  v12 = objc_alloc(MEMORY[0x277CBEB58]);
  v58 = v9;
  v13 = [v9 allKeys];
  v14 = [v12 initWithArray:v13];

  while ([v14 count])
  {
    v15 = [v14 allObjects];
    v16 = [v15 objectAtIndexedSubscript:0];

    memset(&rect, 0, sizeof(rect));
    v17 = [v58 objectForKeyedSubscript:v16];
    CGRectMakeWithDictionaryRepresentation(v17, &rect);

    if ([v14 count] >= 2)
    {
      v18 = 1;
      do
      {
        v19 = [v14 allObjects];
        v20 = [v19 objectAtIndexedSubscript:v18];

        v21 = [v58 objectForKeyedSubscript:v20];
        CGRectMakeWithDictionaryRepresentation(v21, &v71);

        if (v71.size.width * v71.size.height > rect.size.width * rect.size.height)
        {
          rect = v71;
          v22 = v20;

          v16 = v22;
        }

        ++v18;
      }

      while ([v14 count] > v18);
    }

    [v11 addObject:v16];
    [v14 removeObject:v16];
  }

  v47 = v14;
  v23 = objc_alloc(MEMORY[0x277CBEB58]);
  v24 = [v10 allKeys];
  v56 = [v23 initWithArray:v24];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v11;
  v57 = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
  if (v57)
  {
    v55 = *v66;
    v53 = *(MEMORY[0x277CBF398] + 8);
    v54 = *MEMORY[0x277CBF398];
    v51 = *(MEMORY[0x277CBF398] + 24);
    v52 = *(MEMORY[0x277CBF398] + 16);
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v65 + 1) + 8 * i);
        v27 = [v58 objectForKeyedSubscript:{v26, v47}];
        CGRectMakeWithDictionaryRepresentation(v27, &v71);

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v28 = v56;
        v29 = [v28 countByEnumeratingWithState:&v60 objects:v59 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = 0;
          v32 = *v61;
          v34 = v53;
          x = v54;
          v36 = v51;
          v35 = v52;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v61 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v38 = *(*(&v60 + 1) + 8 * j);
              v39 = [v10 objectForKeyedSubscript:v38];
              CGRectMakeWithDictionaryRepresentation(v39, &v70);

              width = v71.size.width;
              height = v71.size.height;
              v72 = CGRectIntersection(v70, v71);
              y = v72.size.width * v72.size.height;
              *&y = v72.size.width * v72.size.height;
              *&v72.origin.y = width * height;
              *&y = *&y / *&v72.origin.y;
              if (*&y >= 0.8)
              {
                y = v71.origin.y;
                if (v71.origin.y < v70.origin.y + v70.size.height / 3.0)
                {
                  v73.origin.x = x;
                  v73.origin.y = v34;
                  v73.size.width = v35;
                  v73.size.height = v36;
                  IsNull = CGRectIsNull(v73);
                  v44 = v70.size.width;
                  v45 = v70.size.height;
                  if (IsNull || (y = v70.size.width * v70.size.height, v70.size.width * v70.size.height > v35 * v36))
                  {
                    x = v70.origin.x;
                    v34 = v70.origin.y;
                    v46 = v38;

                    v31 = v46;
                    v35 = v44;
                    v36 = v45;
                  }
                }
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v60 objects:v59 count:{16, y}];
          }

          while (v30);
        }

        else
        {
          v31 = 0;
          v34 = v53;
          x = v54;
          v36 = v51;
          v35 = v52;
        }

        v74.origin.x = x;
        v74.origin.y = v34;
        v74.size.width = v35;
        v74.size.height = v36;
        if (!CGRectIsNull(v74) && v31)
        {
          [v49 setObject:v31 forKeyedSubscript:v26];
          [v48 setObject:v26 forKeyedSubscript:v31];
          [v28 removeObject:v31];
        }
      }

      v57 = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
    }

    while (v57);
  }
}

- (void)_selectPairRects:(id)a3 bodyRects:(id)a4 face2Body:(id)a5 body2Face:(id)a6 selectedFaceRects:(id)a7 selectedBodyRects:(id)a8
{
  v33 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      v21 = 0;
      do
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [v14 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * v21)];
        if (v22)
        {
          v23 = [v13 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v13 objectForKeyedSubscript:v22];
            [v17 setObject:v24 forKeyedSubscript:v22];
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v19);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v17;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      v29 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [v15 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v29)];
        if (v30)
        {
          v31 = [v33 objectForKeyedSubscript:v30];

          if (v31)
          {
            v32 = [v33 objectForKeyedSubscript:v30];
            [v16 setObject:v32 forKeyedSubscript:v30];
          }
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v27);
  }
}

- (void)_updateDetectionRects:(id)a3 bodyObjects:(id)a4 timestamp:(id *)a5
{
  v7 = a3;
  v67 = a4;
  memset(&rect, 0, sizeof(rect));
  memset(&v110, 0, sizeof(v110));
  memset(&v109, 0, sizeof(v109));
  v58 = objc_opt_new();
  v64 = objc_opt_new();
  v65 = objc_opt_new();
  v66 = v7;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = [v7 allKeys];
  v61 = [obj countByEnumeratingWithState:&v105 objects:v104 count:16];
  if (v61)
  {
    v59 = *v106;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v106 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v105 + 1) + 8 * i);
        v68 = [v66 objectForKeyedSubscript:v9];
        CGRectMakeWithDictionaryRepresentation(v68, &rect);
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v10 = [(NSMutableDictionary *)self->_lastUsedFaceRects allKeys];
        v11 = [v10 countByEnumeratingWithState:&v100 objects:v99 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v101;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v101 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v100 + 1) + 8 * j);
              v16 = [(NSMutableDictionary *)self->_lastUsedFaceRects objectForKeyedSubscript:v15];
              CGRectMakeWithDictionaryRepresentation(v16, &v109);

              if (_isRectAlmostEqual(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v109.origin.x, v109.origin.y, v109.size.width, v109.size.height, 0.4))
              {
                [v15 isEqual:v9];
                [(NSMutableDictionary *)self->_lastUsedFaceRects removeObjectForKey:v15];
                [v64 setObject:v68 forKeyedSubscript:v9];
                [v66 removeObjectForKey:v9];
                [(NSMutableDictionary *)self->_lastFaceUpdatedTimestamp removeObjectForKey:v15];
                time = *a5;
                v17 = CMTimeCopyAsDictionary(&time, allocator);
                [(NSMutableDictionary *)self->_lastFaceUpdatedTimestamp setObject:v17 forKeyedSubscript:v9];

                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v100 objects:v99 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v97 = 0u;
        v96 = 0u;
        v95 = 0u;
        v94 = 0u;
        v18 = self->_lastGazedFaceRects;
        v19 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v94 objects:v93 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v95;
          while (2)
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v95 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v94 + 1) + 8 * k);
              v24 = [(NSMutableDictionary *)self->_lastGazedFaceRects objectForKeyedSubscript:v23];
              CGRectMakeWithDictionaryRepresentation(v24, &v109);

              if (_isRectAlmostEqual(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v109.origin.x, v109.origin.y, v109.size.width, v109.size.height, 0.4))
              {
                [v23 isEqual:v9];
                [(NSMutableDictionary *)self->_lastGazedFaceRects removeObjectForKey:v23];
                [v58 setObject:v68 forKeyedSubscript:v9];
                goto LABEL_26;
              }
            }

            v20 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v94 objects:v93 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        if (!self->_singleSubjectSelection)
        {
          v25 = [v64 objectForKey:v9];
          if (v25 || rect.size.width < 0.08)
          {
          }

          else if (rect.size.height >= 0.08)
          {
            [v64 setObject:v68 forKeyedSubscript:{v9, rect.size.height}];
            [v66 removeObjectForKey:v9];
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v105 objects:v104 count:16];
    }

    while (v61);
  }

  objc_storeStrong(&self->_lastGazedFaceRects, v58);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obja = [v67 allKeys];
  v62 = [obja countByEnumeratingWithState:&v89 objects:v88 count:16];
  if (v62)
  {
    v60 = *v90;
    allocatora = *MEMORY[0x277CBECE8];
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v90 != v60)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v89 + 1) + 8 * m);
        v28 = [v67 objectForKeyedSubscript:v27];
        CGRectMakeWithDictionaryRepresentation(v28, &v110);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v29 = [(NSMutableDictionary *)self->_lastUsedBodyRects allKeys];
        v30 = [v29 countByEnumeratingWithState:&v84 objects:v83 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v85;
          v69 = v28;
          while (2)
          {
            for (n = 0; n != v31; ++n)
            {
              if (*v85 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v84 + 1) + 8 * n);
              v35 = [(NSMutableDictionary *)self->_lastUsedBodyRects objectForKeyedSubscript:v34];
              CGRectMakeWithDictionaryRepresentation(v35, &v109);

              if (_isRectAlmostEqual(v110.origin.x, v110.origin.y, v110.size.width, v110.size.height, v109.origin.x, v109.origin.y, v109.size.width, v109.size.height, 0.3))
              {
                [v34 isEqual:v27];
                [(NSMutableDictionary *)self->_lastUsedBodyRects removeObjectForKey:v34];
                v28 = v69;
                [v65 setObject:v69 forKeyedSubscript:v27];
                [(NSMutableDictionary *)self->_lastBodyUpdatedTimestamp removeObjectForKey:v34];
                time = *a5;
                v36 = CMTimeCopyAsDictionary(&time, allocatora);
                [(NSMutableDictionary *)self->_lastBodyUpdatedTimestamp setObject:v36 forKeyedSubscript:v27];

                [v67 removeObjectForKey:v27];
                goto LABEL_49;
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v84 objects:v83 count:16];
            v28 = v69;
            if (v31)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:

        if (!self->_singleSubjectSelection)
        {
          v37 = [v65 objectForKey:v27];
          width = v110.size.width;

          if (!v37 && width >= 0.25)
          {
            [v65 setObject:v28 forKeyedSubscript:v27];
            [v67 removeObjectForKey:v27];
          }
        }
      }

      v62 = [obja countByEnumeratingWithState:&v89 objects:v88 count:16];
    }

    while (v62);
  }

  [(NSMutableDictionary *)self->_lastUsedFaceRects addEntriesFromDictionary:v64];
  [(NSMutableDictionary *)self->_lastUsedBodyRects addEntriesFromDictionary:v65];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v40 = [(NSMutableDictionary *)self->_lastFaceUpdatedTimestamp allKeys];
  v41 = [v40 countByEnumeratingWithState:&v79 objects:v78 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v80;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v80 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v79 + 1) + 8 * ii);
        memset(&time, 0, sizeof(time));
        v46 = [(NSMutableDictionary *)self->_lastFaceUpdatedTimestamp objectForKeyedSubscript:v45];
        CMTimeMakeFromDictionary(&time, v46);

        lhs = *a5;
        rhs = time;
        CMTimeSubtract(&v77, &lhs, &rhs);
        if (CMTimeGetSeconds(&v77) >= 1.6)
        {
          [(NSMutableDictionary *)self->_lastUsedFaceRects removeObjectForKey:v45];
          [(NSMutableDictionary *)self->_lastFaceUpdatedTimestamp removeObjectForKey:v45];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v79 objects:v78 count:16];
    }

    while (v42);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v47 = [(NSMutableDictionary *)self->_lastBodyUpdatedTimestamp allKeys];
  v48 = [v47 countByEnumeratingWithState:&v71 objects:v70 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v72;
    do
    {
      for (jj = 0; jj != v49; ++jj)
      {
        if (*v72 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v71 + 1) + 8 * jj);
        memset(&time, 0, sizeof(time));
        v53 = [(NSMutableDictionary *)self->_lastBodyUpdatedTimestamp objectForKeyedSubscript:v52];
        CMTimeMakeFromDictionary(&time, v53);

        lhs = *a5;
        rhs = time;
        CMTimeSubtract(&v77, &lhs, &rhs);
        if (CMTimeGetSeconds(&v77) >= 1.6)
        {
          [(NSMutableDictionary *)self->_lastUsedBodyRects removeObjectForKey:v52];
          [(NSMutableDictionary *)self->_lastBodyUpdatedTimestamp removeObjectForKey:v52];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v71 objects:v70 count:16];
    }

    while (v49);
  }
}

- (void)_selectAllObjects:(id)a3 bodyObjects:(id)a4 usedFaceIDs:(id)a5 usedBodyIDs:(id)a6
{
  v10 = a3;
  v34 = a4;
  v37 = a5;
  obj = v10;
  v36 = a6;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    v14 = *MEMORY[0x277CF6928];
    v15 = *MEMORY[0x277CF50B8];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:{v14, v34}];
        [v37 addObject:v18];

        v19 = [v17 objectForKeyedSubscript:v15];
        lastUsedFaceRects = self->_lastUsedFaceRects;
        v21 = [v17 objectForKeyedSubscript:v14];
        [(NSMutableDictionary *)lastUsedFaceRects setObject:v19 forKeyedSubscript:v21];
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v12);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v34;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    v26 = *MEMORY[0x277CF43D0];
    v27 = *MEMORY[0x277CF50B8];
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        v30 = [v29 objectForKeyedSubscript:{v26, v34}];
        [v36 addObject:v30];

        v31 = [v29 objectForKeyedSubscript:v27];
        lastUsedBodyRects = self->_lastUsedBodyRects;
        v33 = [v29 objectForKeyedSubscript:v26];
        [(NSMutableDictionary *)lastUsedBodyRects setObject:v31 forKeyedSubscript:v33];
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v24);
  }
}

- (void)_selectSingleSubject:(id)a3 bodyRects:(id)a4 selectedFaceRects:(id)a5 selectedBodyRects:(id)a6 timestamp:(id *)a7 inputPixelBuffer:(__CVBuffer *)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v13 count] || objc_msgSend(v14, "count"))
  {
    goto LABEL_37;
  }

  if ([v11 count] == 1)
  {
    v15 = [v11 allKeys];
    v16 = [v15 objectAtIndexedSubscript:0];

    v17 = [v11 objectForKeyedSubscript:v16];
    v18 = v13;
LABEL_5:
    [v18 setObject:v17 forKeyedSubscript:v16];

    goto LABEL_37;
  }

  if ([v11 count] >= 2)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = [v11 allKeys];
    v20 = [v19 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v20)
    {
      v21 = v20;
      v48 = v14;
      v22 = 0;
      v23 = *v58;
      y = 0.0;
      width = 0.0;
      height = 0.0;
      x = 0.0;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v58 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v29 = *(*(&v57 + 1) + 8 * i);
          memset(&rect, 0, sizeof(rect));
          v30 = [v11 objectForKeyedSubscript:v29];
          CGRectMakeWithDictionaryRepresentation(v30, &rect);

          if (v22)
          {
            v31 = width * height;
            if (width * height >= rect.size.width * rect.size.height)
            {
              continue;
            }
          }

          v32 = v29;

          x = rect.origin.x;
          y = rect.origin.y;
          v22 = v32;
          width = rect.size.width;
          height = rect.size.height;
        }

        v21 = [v19 countByEnumeratingWithState:&v57 objects:v56 count:{16, v31}];
      }

      while (v21);

      v14 = v48;
      if (v22)
      {
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v61);
        v34 = v13;
LABEL_19:
        [v34 setObject:DictionaryRepresentation forKeyedSubscript:v22];

LABEL_36:
        goto LABEL_37;
      }

      goto LABEL_37;
    }

LABEL_35:
    v22 = v19;
    goto LABEL_36;
  }

  if ([v12 count] == 1)
  {
    v35 = [v12 allKeys];
    v16 = [v35 objectAtIndexedSubscript:0];

    v17 = [v12 objectForKeyedSubscript:v16];
    v18 = v14;
    goto LABEL_5;
  }

  if ([v12 count] < 2)
  {
    goto LABEL_37;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = [v12 allKeys];
  v36 = [v19 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (!v36)
  {
    goto LABEL_35;
  }

  v37 = v36;
  v49 = v14;
  v22 = 0;
  v38 = *v52;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  do
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v52 != v38)
      {
        objc_enumerationMutation(v19);
      }

      v44 = *(*(&v51 + 1) + 8 * j);
      memset(&rect, 0, sizeof(rect));
      v45 = [v12 objectForKeyedSubscript:v44];
      CGRectMakeWithDictionaryRepresentation(v45, &rect);

      if (v22)
      {
        v46 = v41 * v42;
        if (v41 * v42 >= rect.size.width * rect.size.height)
        {
          continue;
        }
      }

      v47 = v44;

      v39 = rect.origin.x;
      v40 = rect.origin.y;
      v22 = v47;
      v41 = rect.size.width;
      v42 = rect.size.height;
    }

    v37 = [v19 countByEnumeratingWithState:&v51 objects:v50 count:{16, v46}];
  }

  while (v37);

  v14 = v49;
  if (v22)
  {
    v62.origin.x = v39;
    v62.origin.y = v40;
    v62.size.width = v41;
    v62.size.height = v42;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v62);
    v34 = v49;
    goto LABEL_19;
  }

LABEL_37:
}

- (SubjectSelectionSession)initWithCurrentProcessIsCameraCaptureDaemon:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = SubjectSelectionSession;
  v4 = [(SubjectSelectionSession *)&v21 init];
  v5 = v4;
  if (!v4 || (v4->_currentProcessIsCameraCaptureDaemon = a3, v6 = objc_opt_new(), lastUsedFaceRects = v5->_lastUsedFaceRects, v5->_lastUsedFaceRects = v6, lastUsedFaceRects, v8 = objc_opt_new(), lastUsedBodyRects = v5->_lastUsedBodyRects, v5->_lastUsedBodyRects = v8, lastUsedBodyRects, v10 = objc_opt_new(), lastGazedFaceRects = v5->_lastGazedFaceRects, v5->_lastGazedFaceRects = v10, lastGazedFaceRects, v12 = objc_opt_new(), lastFaceUpdatedTimestamp = v5->_lastFaceUpdatedTimestamp, v5->_lastFaceUpdatedTimestamp = v12, lastFaceUpdatedTimestamp, v14 = objc_opt_new(), lastBodyUpdatedTimestamp = v5->_lastBodyUpdatedTimestamp, v5->_lastBodyUpdatedTimestamp = v14, lastBodyUpdatedTimestamp, v16 = MEMORY[0x277CC0898], v17 = *MEMORY[0x277CC0898], *&v5->_lastGazeTime.value = *MEMORY[0x277CC0898], v18 = *(v16 + 16), v5->_lastGazeTime.epoch = v18, *&v5->_lastTimestamp.value = v17, v5->_lastTimestamp.epoch = v18, *&v5->_emptySelectionTimeElapsed = 0x3F4CCCCD00000000, *&v5->_enableGazeSelection = 1, v5->_espressoContext = 0, v5->_espressoPlan = 0, [(SubjectSelectionSession *)v5 _initGaze]))
  {
    v19 = 0;
  }

  else
  {
    v19 = v5;
  }

  return v19;
}

- (int)_initGaze
{
  v3 = *MEMORY[0x277CC4DE0];
  v39[0] = *MEMORY[0x277CC4E08];
  v39[1] = v3;
  v40[0] = MEMORY[0x277CBEC38];
  v40[1] = MEMORY[0x277CBEC38];
  v39[2] = *MEMORY[0x277CC4DE8];
  v40[2] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  gazeInputName = self->_gazeInputName;
  self->_gazeInputName = @"image";

  self->_gazeFaceSize = vdupq_n_s64(0x4070000000000000uLL);
  self->_gazeScoreThreshold = 0.4;
  if (VisionCoreLibraryCore())
  {
    v34 = v4;
    v6 = [objc_alloc(getVisionCoreResourceVersionClass()) initWithMajor:2 minor:0 micro:0];
    VisionCoreProcessingDescriptorClass = getVisionCoreProcessingDescriptorClass();
    v8 = getVisionCoreInferenceNetworkIdentifierCamGaze();
    v38 = 0;
    v9 = [VisionCoreProcessingDescriptorClass descriptorForIdentifier:v8 version:v6 error:&v38];
    v10 = v38;

    if (v9)
    {
      v11 = v10;
      v12 = v6;
    }

    else
    {
      v12 = [objc_alloc(getVisionCoreResourceVersionClass()) initWithMajor:1 minor:0 micro:0];

      v15 = getVisionCoreProcessingDescriptorClass();
      v16 = getVisionCoreInferenceNetworkIdentifierCamGaze();
      v37 = v10;
      v9 = [v15 descriptorForIdentifier:v16 version:v12 error:&v37];
      v11 = v37;

      if (!v9)
      {
        OUTLINED_FUNCTION_0_2();
        v18 = 0;
        v17 = 0;
        goto LABEL_30;
      }

      self->_gazeScoreThreshold = 0.2;
    }

    v17 = [v9 onlyInputImage];
    if (v17)
    {
      v18 = [v9 gazeProbabilitiesOutput];
      if (v18)
      {
        v19 = v12;
        v20 = [v9 URL];
        v36 = v11;
        v13 = [v20 VisionCoreFileSystemPathAndReturnError:&v36];
        v21 = v36;

        if (v13)
        {
          v22 = [v17 pixelWidth];
          v23 = [v17 pixelHeight];
          self->_gazeFaceSize.width = v22;
          self->_gazeFaceSize.height = v23;
          v24 = [v17 name];
          v25 = self->_gazeInputName;
          self->_gazeInputName = v24;

          pixelFormatType = [v17 pixelFormatType];
          v14 = [v18 name];
          v26 = 0;
          v11 = v21;
          v12 = v19;
          v27 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_0_2();
          v26 = -12782;
          v11 = v21;
          v14 = @"camgaze_probs";
          v12 = v19;
          v27 = 0;
        }

LABEL_11:

        v4 = v34;
        if (!v27)
        {
          goto LABEL_23;
        }

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_2();
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      v18 = 0;
    }

LABEL_30:
    v27 = 0;
    v26 = -12782;
    v13 = @"/System/Library/PrivateFrameworks/VisionCore.framework/camgaze_classification_3class_light-nxbrsq87z6_23998_BGR_opt.espresso.net";
    v14 = @"camgaze_probs";
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_2();
  v11 = 0;
  v13 = @"/System/Library/PrivateFrameworks/VisionCore.framework/camgaze_classification_3class_light-nxbrsq87z6_23998_BGR_opt.espresso.net";
  v14 = @"camgaze_probs";
LABEL_12:
  context = espresso_create_context();
  self->_espressoContext = context;
  if ((context || (v29 = espresso_create_context(), (self->_espressoContext = v29) != 0)) && (plan = espresso_create_plan(), (self->_espressoPlan = plan) != 0))
  {
    [(__CFString *)v13 UTF8String];
    if (espresso_plan_add_network())
    {
      goto LABEL_24;
    }

    if (espresso_plan_set_priority())
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    if (espresso_plan_build() || ([(__CFString *)v14 UTF8String], espresso_network_bind_buffer()))
    {
LABEL_24:
      v26 = -12782;
    }

    else
    {
      v31 = *MEMORY[0x277CBECE8];
      v32 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], self->_gazeFaceSize.width, self->_gazeFaceSize.height, pixelFormatType, v4, &self->_gazeFacePixelBuffer);
      if (!v32)
      {
        v32 = VTPixelTransferSessionCreate(v31, &self->_pixelTransferSession);
      }

      v26 = v32;
    }
  }

  else
  {
    v26 = -12786;
  }

LABEL_23:

  return v26;
}

- (int)_runGazeInference:(__CVBuffer *)a3 faceRect:(CGRect)a4 gazeScore:(float *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  *a5 = 0.0;
  v11 = a4.origin.x * CVPixelBufferGetWidth(a3);
  v12 = y * CVPixelBufferGetHeight(a3);
  v13 = width * CVPixelBufferGetWidth(a3);
  v20.size.height = height * CVPixelBufferGetHeight(a3);
  v20.origin.x = v11;
  v20.origin.y = v12;
  v20.size.width = v13;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v20);
  v15 = VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B8], DictionaryRepresentation);
  if (v15)
  {
    v18 = v15;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3();
    v16 = 0;
  }

  else
  {
    v21.size.width = self->_gazeFaceSize.width;
    v21.size.height = self->_gazeFaceSize.height;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v16 = CGRectCreateDictionaryRepresentation(v21);
    v17 = VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE2868], v16);
    if (v17 || (v17 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, a3, self->_gazeFacePixelBuffer)) != 0)
    {
      v18 = v17;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_1();
      FigDebugAssert3();
    }

    else
    {
      [(NSString *)self->_gazeInputName UTF8String];
      if (espresso_network_bind_cvpixelbuffer() || espresso_plan_execute_sync())
      {
        v18 = -12782;
      }

      else
      {
        v18 = 0;
        *a5 = *(self->_gazeOutput.data + 1);
      }
    }
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

@end