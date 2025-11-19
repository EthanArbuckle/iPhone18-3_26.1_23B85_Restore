@interface EMDEBeamSearchHandler
- (EMDEBeamSearchHandler)initWithModel:(void *)a3 beamWidth:(int)a4 timeSteps:(int)a5 lengthPenalty:(float)a6 tokenThreshold:(float)a7;
- (id).cxx_construct;
- (id)getTopBeamWithModelState:(__CFArray *)a3 startPosition:(int)a4 allowedWords:()basic_string<char;
- (vector<const)currentStates;
- (vector<const)previousStates;
- (void)runNextTimeStep;
- (void)setCurrentStates:(vector<const __CFArray *);
- (void)setPreviousStates:(vector<const __CFArray *);
- (void)updateBeamsWithPredictionFor:(id)a3 state:(__CFArray *)a4 predictions:(void *)a5;
@end

@implementation EMDEBeamSearchHandler

- (EMDEBeamSearchHandler)initWithModel:(void *)a3 beamWidth:(int)a4 timeSteps:(int)a5 lengthPenalty:(float)a6 tokenThreshold:(float)a7
{
  v7 = self;
  if (a3)
  {
    v34.receiver = self;
    v34.super_class = EMDEBeamSearchHandler;
    v13 = [(EMDEBeamSearchHandler *)&v34 init];
    v13->_maxLength = a5;
    v13->_beamWidth = a4;
    v13->_tokenThreshold = a7;
    v14 = +[EMDEUtils config];
    v15 = [v14 objectForKeyedSubscript:@"EMDE_EARLY_STOPPING_PATIENCE"];
    if (v15)
    {
      v16 = +[EMDEUtils config];
      v17 = [v16 objectForKeyedSubscript:@"EMDE_EARLY_STOPPING_PATIENCE"];
      [v17 floatValue];
      v13->_earlyStoppingPatience = v18;
    }

    else
    {
      v13->_earlyStoppingPatience = 2.0;
    }

    v13->_finishedBeamMaxScore = 0.0;
    v13->_lengthPenalty = a6;
    v21 = objc_alloc_init(NSMutableArray);
    activeBeams = v13->_activeBeams;
    v13->_activeBeams = v21;

    v23 = objc_alloc_init(NSMutableArray);
    nextBeams = v13->_nextBeams;
    v13->_nextBeams = v23;

    v25 = objc_alloc_init(NSMutableArray);
    finishedBeams = v13->_finishedBeams;
    v13->_finishedBeams = v25;

    v27 = +[EMDEUtils config];
    v28 = [v27 objectForKeyedSubscript:@"EMDE_VOCAB_SIZE"];
    v13->_vocabSize = [v28 intValue];

    v29 = +[EMDEUtils config];
    v30 = [v29 objectForKeyedSubscript:@"EMDE_EOS_TOKEN_ID"];
    v31 = +[EMDEUtils config];
    if (v30)
    {
      [v31 objectForKeyedSubscript:@"EMDE_EOS_TOKEN_ID"];
    }

    else
    {
      [v31 objectForKeyedSubscript:@"EMDE_SEPARATOR_TOKEN"];
    }
    v32 = ;
    v13->_EOSToken = [v32 intValue];

    v13->_model = a3;
    v7 = v13;
    v20 = v7;
  }

  else
  {
    v19 = modelLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10008B218(v19);
    }

    v20 = 0;
  }

  return v20;
}

- (void)updateBeamsWithPredictionFor:(id)a3 state:(__CFArray *)a4 predictions:(void *)a5
{
  v8 = a3;
  if (v8 && a4 && a5)
  {
    if (self->_beamWidth >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(a5 + 1) + (((v9 + *(a5 + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + *(a5 + 4)) & 0x1FF);
        if (*v10 == self->_EOSToken)
        {
          v11 = [EMDEBeamPath alloc];
          v12 = *(*(*(a5 + 1) + (((v9 + *(a5 + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + *(a5 + 4)) & 0x1FF));
          lengthPenalty = self->_lengthPenalty;
          v14 = +[EMDEUtils config];
          v15 = [v14 objectForKeyedSubscript:@"EMDE_BEAM_VALIDATION_REQUIRED"];
          v16 = [v15 BOOLValue];
          *&v17 = lengthPenalty;
          v18 = [(EMDEBeamPath *)v11 initFinishedBeamFrom:v8 additionalToken:v12 lengthPenalty:v16 validate:v17];

          if (v18)
          {
            [(NSMutableArray *)self->_finishedBeams addObject:v18];
            finishedBeamMaxScore = self->_finishedBeamMaxScore;
            [v18 averageScore];
            if (finishedBeamMaxScore < v20)
            {
              [v18 averageScore];
              self->_finishedBeamMaxScore = v21;
            }
          }
        }

        else
        {
          if (*(v10 + 4) < self->_tokenThreshold)
          {
            break;
          }

          v22 = [EMDEBeamPath alloc];
          v23 = *(*(*(a5 + 1) + (((v9 + *(a5 + 4)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + *(a5 + 4)) & 0x1FF));
          v24 = self->_lengthPenalty;
          v25 = +[EMDEUtils config];
          v26 = [v25 objectForKeyedSubscript:@"EMDE_BEAM_VALIDATION_REQUIRED"];
          v27 = [v26 BOOLValue];
          *&v28 = v24;
          v18 = [(EMDEBeamPath *)v22 initChildBeamFrom:v8 additionalToken:v23 state:a4 lengthPenalty:v27 validate:v28];

          if (v18)
          {
            [v18 averageScore];
            if ((v29 * self->_earlyStoppingPatience) > self->_finishedBeamMaxScore)
            {
              [(NSMutableArray *)self->_nextBeams addObject:v18];
            }
          }
        }

        ++v9;
      }

      while (v9 < self->_beamWidth);
    }
  }

  else
  {
    v30 = modelLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = 138412802;
      v32 = v8;
      v33 = 2112;
      v34 = a4;
      v35 = 2112;
      v36 = a5;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "EMDEBeamSearchHandler - Found nil in input parameters for updateBeamsWithPredictionFor:%@ state:%@ predictions:%@", &v31, 0x20u);
    }
  }
}

- (void)runNextTimeStep
{
  v64[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
  v3 = [NSNumber numberWithInt:1];
  v65[0] = v3;
  v64[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
  v4 = [NSNumber numberWithInt:1];
  v65[1] = v4;
  v43 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];

  v61 = 0;
  begin = self->_previousStates.__begin_;
  if (self->_previousStates.__end_ != begin)
  {
    v6 = 0;
    do
    {
      CFRelease(begin[v6++]);
      begin = self->_previousStates.__begin_;
    }

    while (v6 < self->_previousStates.__end_ - begin);
  }

  v7 = self->_currentStates.__begin_;
  self->_previousStates.__end_ = begin;
  sub_100003FB0(&self->_previousStates.__begin_, v7, self->_currentStates.__end_, (self->_currentStates.__end_ - v7) >> 3);
  self->_currentStates.__end_ = self->_currentStates.__begin_;
  *v46.i32 = self->_currentPosition;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  sub_1000040DC(&v58, &v46, v46.i64 + 4, 1uLL);
  self->_positionTensor = MRLNeuralNetworkTensorCreate();
  MRLNeuralNetworkTensorAppendData();
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_activeBeams;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v8)
  {
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        [v11 tokens];
        [v11 tokens];
        v44 = *(v46.i64[0] + v50 - __p - 4);
        v52 = 0;
        v53 = 0;
        v51 = 0;
        sub_1000040DC(&v51, &v44, &v45, 1uLL);
        if (__p)
        {
          v50 = __p;
          operator delete(__p);
        }

        if (v46.i64[0])
        {
          v46.i64[1] = v46.i64[0];
          operator delete(v46.i64[0]);
        }

        self->_inputTensor = MRLNeuralNetworkTensorCreate();
        MRLNeuralNetworkTensorAppendData();
        inputTensor = self->_inputTensor;
        v13 = *self->_model;
        MRLNeuralNetworkSetInputTensor();
        v14 = *self->_model;
        positionTensor = self->_positionTensor;
        MRLNeuralNetworkSetInputTensor();
        v16 = *self->_model;
        segmentTensor = self->_segmentTensor;
        MRLNeuralNetworkSetInputTensor();
        v18 = *self->_model;
        tempTensor = self->_tempTensor;
        MRLNeuralNetworkSetInputTensor();
        v20 = *self->_model;
        [v11 state];
        MRLNeuralNetworkPredict();
        v21 = *self->_model;
        v61 = MRLNeuralNetworkCopyStates();
        sub_1000032BC(&self->_currentStates, &v61);
        v22 = *self->_model;
        Output = MRLNeuralNetworkGetOutput();
        beamWidth = self->_beamWidth;
        __p = 0;
        sub_1000041D4(&v46, beamWidth, &__p);
        vocabSize = self->_vocabSize;
        if (vocabSize >= 1)
        {
          for (j = 0; j < vocabSize; ++j)
          {
            v27 = self->_beamWidth;
            if (v27 >= 1)
            {
              v28 = 0;
              v29 = -v27;
              v30 = v48;
              while (*(Output + 4 * j) <= *(*(v46.i64[1] + ((v30 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v30 & 0x1FF) + 4))
              {
                --v28;
                ++v30;
                if (v29 == v28)
                {
                  goto LABEL_24;
                }
              }

              if (v47 == v46.i64[1])
              {
                v31 = 0;
              }

              else
              {
                v31 = *(v46.i64[1] + 8 * (v48 >> 9)) + 8 * (v48 & 0x1FF);
              }

              __p = (v46.i64[1] + 8 * (v48 >> 9));
              v50 = v31;
              v32 = sub_100003720(&__p, -v28);
              v44 = *&j;
              v45 = *(Output + 4 * j);
              sub_100003390(&v46, v32, v33, &v44);
              vocabSize = self->_vocabSize;
            }

LABEL_24:
            ;
          }
        }

        [(EMDEBeamSearchHandler *)self updateBeamsWithPredictionFor:v11 state:v61 predictions:&v46];
        CFRelease(self->_inputTensor);
        sub_100004B1C(&v46);
        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v8);
  }

  CFRelease(self->_positionTensor);
  [(NSMutableArray *)self->_activeBeams removeAllObjects];
  nextBeams = self->_nextBeams;
  v35 = [NSSortDescriptor sortDescriptorWithKey:@"score" ascending:0];
  v62 = v35;
  v36 = [NSArray arrayWithObjects:&v62 count:1];
  [(NSMutableArray *)nextBeams sortUsingDescriptors:v36];

  for (k = 0; ; ++k)
  {
    v38 = [(NSMutableArray *)self->_nextBeams count];
    v39 = self->_beamWidth;
    if (v39 >= v38)
    {
      v39 = v38;
    }

    if (k >= v39)
    {
      break;
    }

    activeBeams = self->_activeBeams;
    v41 = [(NSMutableArray *)self->_nextBeams objectAtIndex:k];
    [(NSMutableArray *)activeBeams addObject:v41];
  }

  [(NSMutableArray *)self->_nextBeams removeAllObjects];
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

- (id)getTopBeamWithModelState:(__CFArray *)a3 startPosition:(int)a4 allowedWords:()basic_string<char
{
  v35 = a3;
  if (a3)
  {
    self->_currentPosition = a4;
    v37[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v7 = [NSNumber numberWithInt:1];
    v38[0] = v7;
    v37[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v8 = [NSNumber numberWithInt:1];
    v38[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

    LODWORD(v29) = 1065353216;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    sub_1000040DC(&v32, &v29, &v29 + 4, 1uLL);
    v28 = 1065353216;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    sub_1000040DC(&v29, &v28, &v29, 1uLL);
    self->_segmentTensor = MRLNeuralNetworkTensorCreate();
    self->_tempTensor = MRLNeuralNetworkTensorCreate();
    segmentTensor = self->_segmentTensor;
    MRLNeuralNetworkTensorAppendData();
    tempTensor = self->_tempTensor;
    MRLNeuralNetworkTensorAppendData();
    v12 = [EMDEBeamPath alloc];
    v13 = v35;
    if (*(&a5->__rep_.__l + 23) < 0)
    {
      sub_100019AD4(__p, a5->__rep_.__l.__data_, a5->__rep_.__l.__size_);
    }

    else
    {
      *__p = *a5->__rep_.__s.__data_;
      v27 = *(&a5->__rep_.__l + 2);
    }

    v15 = [(EMDEBeamPath *)v12 initWithState:v13 allowedWords:__p];
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    [(NSMutableArray *)self->_activeBeams addObject:v15, __p[0], __p[1], v27];
    sub_1000032BC(&self->_currentStates, &v35);
    currentPosition = self->_currentPosition;
    v17 = currentPosition + self->_maxLength - 2;
    while (currentPosition < v17 && [(NSMutableArray *)self->_activeBeams count])
    {
      [(EMDEBeamSearchHandler *)self runNextTimeStep];
      currentPosition = self->_currentPosition + 1;
      self->_currentPosition = currentPosition;
    }

    begin = self->_previousStates.__begin_;
    if (self->_previousStates.__end_ != begin)
    {
      v19 = 0;
      do
      {
        CFRelease(begin[v19++]);
        begin = self->_previousStates.__begin_;
      }

      while (v19 < self->_previousStates.__end_ - begin);
    }

    v20 = self->_currentStates.__begin_;
    if (self->_currentStates.__end_ != v20)
    {
      v21 = 0;
      do
      {
        CFRelease(v20[v21++]);
        v20 = self->_currentStates.__begin_;
      }

      while (v21 < self->_currentStates.__end_ - v20);
    }

    CFRelease(self->_segmentTensor);
    CFRelease(self->_tempTensor);
    finishedBeams = self->_finishedBeams;
    v23 = [NSSortDescriptor sortDescriptorWithKey:@"averageScore" ascending:0];
    v36 = v23;
    v24 = [NSArray arrayWithObjects:&v36 count:1];
    [(NSMutableArray *)finishedBeams sortUsingDescriptors:v24];

    if ([(NSMutableArray *)self->_finishedBeams count])
    {
      v14 = [(NSMutableArray *)self->_finishedBeams objectAtIndex:0];
    }

    else
    {
      v14 = 0;
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  else
  {
    v9 = modelLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008B294(v9);
    }

    v14 = 0;
  }

  return v14;
}

- (vector<const)previousStates
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100003E98(retstr, self->_previousStates.__begin_, self->_previousStates.__end_, self->_previousStates.__end_ - self->_previousStates.__begin_);
}

- (void)setPreviousStates:(vector<const __CFArray *)
{
  p_previousStates = &self->_previousStates;
  if (p_previousStates != a3)
  {
    sub_100003FB0(p_previousStates, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (vector<const)currentStates
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100003E98(retstr, self->_currentStates.__begin_, self->_currentStates.__end_, self->_currentStates.__end_ - self->_currentStates.__begin_);
}

- (void)setCurrentStates:(vector<const __CFArray *)
{
  p_currentStates = &self->_currentStates;
  if (p_currentStates != a3)
  {
    sub_100003FB0(p_currentStates, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 7) = 0u;
  return self;
}

@end