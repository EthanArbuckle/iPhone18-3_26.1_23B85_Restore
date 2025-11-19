@interface TrackedFace
- (TrackedFace)initWithFaceGroupID:(id)a3 signficanceDetectionThreshold:(float)a4;
- (float)_getMotionScoreUsingLargestFaceTrack:(id)a3;
- (int)_updateGazeStatesUsingGazeProbabilitiesData:(id)a3 gazeConfidenceFilteredOut:(float *)a4 gazeScoreFilteredOut:(float *)a5;
- (void)_appendArray:(id)a3 withObject:(id)a4 restrictingLengthTo:(int)a5;
- (void)dealloc;
- (void)updateStatesIfNeededUsingFaceRect:(CGRect)a3 faceSize:(float)a4 gazeProbabilitiesData:(id)a5 largestFaceTrack:(id)a6 largestFaceSize:(float)a7 totalDetectedFaceCount:(int64_t)a8 currentPTS:(id *)a9 isSignificantOut:(BOOL *)a10;
@end

@implementation TrackedFace

- (TrackedFace)initWithFaceGroupID:(id)a3 signficanceDetectionThreshold:(float)a4
{
  v10.receiver = self;
  v10.super_class = TrackedFace;
  v6 = [(TrackedFace *)&v10 init];
  if (v6)
  {
    *(v6 + 2) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v6 + 3) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v6 + 4) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = MEMORY[0x1E6960C70];
    *(v6 + 5) = v7;
    *(v6 + 52) = *v8;
    *(v6 + 68) = *(v8 + 16);
    *(v6 + 20) = a4;
    *(v6 + 1) = a3;
    v6[76] = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TrackedFace;
  [(TrackedFace *)&v3 dealloc];
}

- (void)_appendArray:(id)a3 withObject:(id)a4 restrictingLengthTo:(int)a5
{
  if ([a3 count] == 30)
  {
    [a3 removeObjectAtIndex:0];
  }

  [a3 addObject:a4];
}

- (float)_getMotionScoreUsingLargestFaceTrack:(id)a3
{
  v5 = [*(a3 + 2) count];
  v6 = [(NSMutableArray *)self->_faceRects count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  memset(&rect, 0, sizeof(rect));
  CGRectMakeWithDictionaryRepresentation([*(a3 + 2) lastObject], &rect);
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  MidX = CGRectGetMidX(rect);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidY = CGRectGetMidY(v43);
  v14 = [*(a3 + 2) count];
  v15 = [(NSMutableArray *)self->_faceRects count];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    if (v7 >= 0xA)
    {
      v7 = 10;
    }

    v18 = v15 - 1;
    v19 = v14 - 1;
    do
    {
      memset(&v41, 0, sizeof(v41));
      CGRectMakeWithDictionaryRepresentation([*(a3 + 2) objectAtIndexedSubscript:v19], &v41);
      v20 = v41.origin.x;
      v21 = v41.origin.y;
      v22 = v41.size.width;
      v23 = v41.size.height;
      v24 = CGRectGetMidX(v41);
      v44.origin.x = v20;
      v44.origin.y = v21;
      v44.size.width = v22;
      v44.size.height = v23;
      v39 = CGRectGetMidY(v44);
      memset(&v40, 0, sizeof(v40));
      CGRectMakeWithDictionaryRepresentation([(NSMutableArray *)self->_faceRects objectAtIndexedSubscript:v18], &v40);
      v25 = v40.origin.x;
      v26 = v40.origin.y;
      v27 = v40.size.width;
      v28 = v40.size.height;
      v29 = MidY;
      v30 = CGRectGetMidX(v40);
      v45.origin.x = v25;
      v45.origin.y = v26;
      v45.size.width = v27;
      v45.size.height = v28;
      v31 = CGRectGetMidY(v45);
      v32 = MidX + v30;
      MidY = v29;
      [v16 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v32 - v24)}];
      [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v29 + v31 - v39)}];
      --v18;
      --v19;
      --v7;
    }

    while (v7);
  }

  sfsm_computeStandardDeviation(v16);
  v34 = v33;
  sfsm_computeStandardDeviation(v17);
  *&v35 = v35;
  v36 = (0.0209 - sqrtf((*&v35 * *&v35) + (v34 * v34))) / 0.0209 + self->_faceSizeScoreFiltered;
  if (v36 > 1.0)
  {
    v36 = 1.0;
  }

  v37 = fmax(v36, 0.0);

  return v37;
}

- (int)_updateGazeStatesUsingGazeProbabilitiesData:(id)a3 gazeConfidenceFilteredOut:(float *)a4 gazeScoreFilteredOut:(float *)a5
{
  if ([a3 length] == 12)
  {
    v10 = *([a3 bytes] + 4);
  }

  else
  {
    if ([(NSMutableArray *)self->_gazeScores count])
    {
      [-[NSMutableArray lastObject](self->_gazeScores "lastObject")];
      v10 = v11;
      [-[NSMutableArray lastObject](self->_gazeConfidences "lastObject")];
      goto LABEL_7;
    }

    v10 = 0;
  }

  LODWORD(v9) = 1.0;
LABEL_7:
  -[TrackedFace _appendArray:withObject:restrictingLengthTo:](self, "_appendArray:withObject:restrictingLengthTo:", self->_gazeConfidences, [MEMORY[0x1E696AD98] numberWithFloat:v9], 30);
  LODWORD(v12) = v10;
  -[TrackedFace _appendArray:withObject:restrictingLengthTo:](self, "_appendArray:withObject:restrictingLengthTo:", self->_gazeScores, [MEMORY[0x1E696AD98] numberWithFloat:v12], 30);
  v13 = [(NSMutableArray *)self->_gazeScores count];
  if (v13 <= 0)
  {
    [TrackedFace _updateGazeStatesUsingGazeProbabilitiesData:gazeConfidenceFilteredOut:gazeScoreFilteredOut:];
    return 0;
  }

  v14 = v13 - 1;
  v15 = [(NSMutableArray *)self->_gazeConfidences subarrayWithRange:v13 - 1, 1];
  v16 = [(NSMutableArray *)self->_gazeScores subarrayWithRange:v14, 1];
  [objc_msgSend(v15 objectAtIndexedSubscript:{0), "doubleValue"}];
  v18 = v17;
  if ([v15 count] < 2)
  {
    v22 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v19 = 0;
    v20 = 1;
    do
    {
      [objc_msgSend(v15 objectAtIndexedSubscript:{v20), "doubleValue"}];
      if (v21 > v18)
      {
        v18 = v21;
        v19 = v20;
      }

      ++v20;
    }

    while ([v15 count] > v20);
    v22 = v19;
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  v23 = v18;
  *a4 = v23;
LABEL_17:
  if (a5)
  {
    [objc_msgSend(v16 objectAtIndexedSubscript:{v22), "floatValue"}];
    *a5 = v24;
  }

  return 0;
}

- (void)updateStatesIfNeededUsingFaceRect:(CGRect)a3 faceSize:(float)a4 gazeProbabilitiesData:(id)a5 largestFaceTrack:(id)a6 largestFaceSize:(float)a7 totalDetectedFaceCount:(int64_t)a8 currentPTS:(id *)a9 isSignificantOut:(BOOL *)a10
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35 = 0;
  [(TrackedFace *)self _updateGazeStatesUsingGazeProbabilitiesData:a5 gazeConfidenceFilteredOut:&v35 gazeScoreFilteredOut:&v35 + 4];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v36);
  [(TrackedFace *)self _appendArray:self->_faceRects withObject:DictionaryRepresentation restrictingLengthTo:30];
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  *&v22 = a4;
  -[TrackedFace _appendArray:withObject:restrictingLengthTo:](self, "_appendArray:withObject:restrictingLengthTo:", self->_faceSizes, [MEMORY[0x1E696AD98] numberWithFloat:v22], 30);
  faceSizeScoreFiltered = self->_faceSizeScoreFiltered;
  v24 = a4 / a7;
  if (faceSizeScoreFiltered != 0.0)
  {
    v24 = v24 * 0.1 + faceSizeScoreFiltered * 0.9;
  }

  self->_faceSizeScoreFiltered = v24;
  [(TrackedFace *)self _getMotionScoreUsingLargestFaceTrack:a6];
  [(NSMutableArray *)self->_faceRects count];
  v25 = vabds_f32(a7, a4);
  if (*(&v35 + 1) == 0.0 || v25 > 0.00000011921)
  {
    v27 = *(&v35 + 1);
  }

  else
  {
    v27 = 1.0;
  }

  memset(&v34, 0, sizeof(v34));
  if (self->_firstSignificantTimeStamp.timescale)
  {
    lhs = *a9;
    v32 = *(&self->_faceSizeScoreFiltered + 1);
    CMTimeSubtract(&v34, &lhs, &v32);
  }

  else
  {
    v34 = **&MEMORY[0x1E6960CC0];
  }

  CMTimeMakeWithSeconds(&lhs, 0.666666667, a9->var1);
  v32 = v34;
  v28 = CMTimeCompare(&v32, &lhs);
  if (v28 < 0 || BYTE5(self->_firstSignificantTimeStamp.epoch))
  {
    if ((self->_firstSignificantTimeStamp.epoch & 0x10000000000) != 0)
    {
      goto LABEL_24;
    }

    if (a8 == 1)
    {
      BYTE4(self->_firstSignificantTimeStamp.epoch) = 1;
    }

    else
    {
      v29 = *&self->_isSignificant;
      BYTE4(self->_firstSignificantTimeStamp.epoch) = v27 > v29;
      if (v27 <= v29)
      {
        v31 = MEMORY[0x1E6960C70];
        *(&self->_faceSizeScoreFiltered + 1) = *MEMORY[0x1E6960C70];
        *&self->_firstSignificantTimeStamp.flags = *(v31 + 16);
        goto LABEL_24;
      }
    }

    if ((self->_firstSignificantTimeStamp.timescale & 1) == 0)
    {
      v30 = *&a9->var0;
      *&self->_firstSignificantTimeStamp.flags = a9->var3;
      *(&self->_faceSizeScoreFiltered + 1) = v30;
      if (!a10)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (!a10)
    {
      return;
    }

    goto LABEL_25;
  }

  BYTE5(self->_firstSignificantTimeStamp.epoch) = v28 >= 0;
  if (!a10)
  {
    return;
  }

LABEL_25:
  *a10 = BYTE4(self->_firstSignificantTimeStamp.epoch);
}

- (uint64_t)_updateGazeStatesUsingGazeProbabilitiesData:gazeConfidenceFilteredOut:gazeScoreFilteredOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end