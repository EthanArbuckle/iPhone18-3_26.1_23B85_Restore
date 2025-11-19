@interface VCPLoudnessAnalyzer
- (VCPLoudnessAnalyzer)init;
- (id).cxx_construct;
- (id)results;
- (int)finalizeAnalysisAtTime:(id *)a3;
- (int)processAudioSamples:(AudioBufferList *)a3 timestamp:(AudioTimeStamp *)a4;
- (int)setupWithSample:(opaqueCMSampleBuffer *)a3 andSampleBatchSize:(int)a4;
- (void)dealloc;
@end

@implementation VCPLoudnessAnalyzer

- (VCPLoudnessAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = VCPLoudnessAnalyzer;
  v2 = [(VCPLoudnessAnalyzer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_framePosition = 0;
    v2->_sampleRate = 16000.0;
    v4 = [MEMORY[0x1E695DF70] array];
    loudnessResults = v3->_loudnessResults;
    v3->_loudnessResults = v4;

    v6 = v3;
  }

  return v3;
}

- (int)setupWithSample:(opaqueCMSampleBuffer *)a3 andSampleBatchSize:(int)a4
{
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription))
  {
    operator new();
  }

  return -50;
}

- (void)dealloc
{
  loudnessAnalyzer = self->_loudnessAnalyzer;
  if (loudnessAnalyzer)
  {
    LkFsMeasure::~LkFsMeasure(loudnessAnalyzer);
    MEMORY[0x1CCA95C50]();
  }

  processFormat = self->_processFormat;
  if (processFormat)
  {
    MEMORY[0x1CCA95C50](processFormat, 0x1000C400A747E1ELL);
  }

  samplesForProcessingBufferList = self->_samplesForProcessingBufferList;
  if (samplesForProcessingBufferList)
  {
    AUOutputBL::~AUOutputBL(samplesForProcessingBufferList);
    MEMORY[0x1CCA95C50]();
  }

  v6.receiver = self;
  v6.super_class = VCPLoudnessAnalyzer;
  [(VCPLoudnessAnalyzer *)&v6 dealloc];
}

- (int)processAudioSamples:(AudioBufferList *)a3 timestamp:(AudioTimeStamp *)a4
{
  std::vector<float>::__insert_with_size[abi:ne200100]<float *,float *>(&self->_loudnessSampleBuffer, self->_loudnessSampleBuffer.__end_, a3->mBuffers[0].mData, a3->mBuffers[0].mData + (a3->mBuffers[0].mDataByteSize & 0xFFFFFFFFFFFFFFFCLL), a3->mBuffers[0].mDataByteSize >> 2);
  begin = self->_loudnessSampleBuffer.__begin_;
  samplesFor100ms = self->_samplesFor100ms;
  if (samplesFor100ms <= self->_loudnessSampleBuffer.__end_ - begin)
  {
    __src = 0;
    v48 = 0;
    v49 = 0;
    std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&__src, 0, begin, &begin[samplesFor100ms], samplesFor100ms);
    var2 = self->_samplesForProcessingBufferList->var2;
    mData = var2->mBuffers[0].mData;
    v9 = self->_samplesFor100ms;
    if (v9)
    {
      memmove(mData, __src, 4 * v9);
      var2 = self->_samplesForProcessingBufferList->var2;
      v10 = self->_samplesFor100ms;
    }

    else
    {
      v10 = 0;
    }

    v11 = LkFsMeasure::Process(self->_loudnessAnalyzer, var2, v10, 0);
    end = self->_momentaryEnergyValues.__end_;
    cap = self->_momentaryEnergyValues.__cap_;
    if (end >= cap)
    {
      v15 = self->_momentaryEnergyValues.__begin_;
      v16 = end - v15;
      v17 = end - v15;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
      }

      v19 = cap - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
      v21 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&self->_momentaryEnergyValues, v21);
      }

      v22 = end - v15;
      v23 = (8 * v17);
      v24 = (8 * v17 - 8 * v22);
      *v23 = v11;
      v14 = v23 + 1;
      memcpy(v24, v15, v16);
      v25 = self->_momentaryEnergyValues.__begin_;
      self->_momentaryEnergyValues.__begin_ = v24;
      self->_momentaryEnergyValues.__end_ = v14;
      self->_momentaryEnergyValues.__cap_ = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *end = v11;
      v14 = end + 1;
    }

    self->_momentaryEnergyValues.__end_ = v14;
    __C = 0.0;
    vDSP_maxmgv(mData, 1, &__C, self->_samplesFor100ms);
    v26 = __C;
    v28 = self->_peakValues.__end_;
    v27 = self->_peakValues.__cap_;
    if (v28 >= v27)
    {
      v30 = self->_peakValues.__begin_;
      v31 = v28 - v30;
      v32 = v28 - v30;
      v33 = v32 + 1;
      if ((v32 + 1) >> 61)
      {
        std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
      }

      v34 = v27 - v30;
      if (v34 >> 2 > v33)
      {
        v33 = v34 >> 2;
      }

      v20 = v34 >= 0x7FFFFFFFFFFFFFF8;
      v35 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v35 = v33;
      }

      if (v35)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&self->_peakValues, v35);
      }

      v36 = v28 - v30;
      v37 = (8 * v32);
      v38 = (8 * v32 - 8 * v36);
      *v37 = v26;
      v29 = v37 + 1;
      memcpy(v38, v30, v31);
      v39 = self->_peakValues.__begin_;
      self->_peakValues.__begin_ = v38;
      self->_peakValues.__end_ = v29;
      self->_peakValues.__cap_ = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v28 = v26;
      v29 = v28 + 1;
    }

    self->_peakValues.__end_ = v29;
    v40 = self->_samplesFor100ms;
    if (v40)
    {
      v42 = self->_loudnessSampleBuffer.__begin_;
      v41 = self->_loudnessSampleBuffer.__end_;
      v43 = &v42[v40];
      v44 = v41 - v43;
      if (v41 != v43)
      {
        memmove(self->_loudnessSampleBuffer.__begin_, v43, v41 - v43);
      }

      self->_loudnessSampleBuffer.__end_ = (v42 + v44);
    }

    if (__src)
    {
      v48 = __src;
      operator delete(__src);
    }
  }

  return 0;
}

- (int)finalizeAnalysisAtTime:(id *)a3
{
  v36[3] = *MEMORY[0x1E69E9840];
  begin = self->_momentaryEnergyValues.__begin_;
  end = self->_momentaryEnergyValues.__end_;
  if (begin != end)
  {
    v5 = end - begin;
    v6 = end - begin;
    v7 = v6 <= 3 ? 0 : 3;
    if (v7 < (v5 >> 3))
    {
      v9 = 0;
      if (v6 >= 10)
      {
        v6 = 10;
      }

      v10 = v6 - v7;
      do
      {
        __p = 0;
        v27 = 0;
        v28 = 0;
        v11 = v7 + v10;
        std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, 0, &begin[v7], &begin[v7 + v10], v10);
        v25 = 0;
        v12 = LkFsMeasure::ComputeProgramLoudnessFromBlockEnergies(&__p, &v25);
        if (v10 < 1)
        {
          v14 = -INFINITY;
        }

        else
        {
          v14 = -INFINITY;
          do
          {
            v13 = self->_peakValues.__begin_;
            if (v14 <= v13[v7])
            {
              v14 = v13[v7];
            }

            ++v7;
          }

          while (v7 < v11);
        }

        CMTimeMake(&time, (self->_sampleRate * v9), self->_sampleRate);
        v30 = time;
        CMTimeMake(&time, ((self->_sampleRate * v11) / 10.0), self->_sampleRate);
        v29 = time;
        loudnessResults = self->_loudnessResults;
        v35[0] = @"start";
        time = v30;
        v16 = CMTimeCopyAsDictionary(&time, 0);
        v36[0] = v16;
        v35[1] = @"duration";
        time = v29;
        rhs = v30;
        CMTimeSubtract(&v24, &time, &rhs);
        time = v24;
        v17 = CMTimeCopyAsDictionary(&time, 0);
        v36[1] = v17;
        v35[2] = @"attributes";
        v33[0] = @"energyValues";
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v34[0] = v18;
        v33[1] = @"peakValues";
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
        v34[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
        v36[2] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
        [(NSMutableArray *)loudnessResults addObject:v21];

        begin = self->_momentaryEnergyValues.__begin_;
        v22 = self->_momentaryEnergyValues.__end_ - begin;
        if ((v22 - v11) >= 10)
        {
          v10 = 10;
        }

        else
        {
          v10 = v22 - v11;
        }

        if (__p)
        {
          v27 = __p;
          operator delete(__p);
          begin = self->_momentaryEnergyValues.__begin_;
          v22 = self->_momentaryEnergyValues.__end_ - begin;
        }

        ++v9;
        v7 = v11;
      }

      while (v11 < v22);
    }
  }

  return 0;
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  loudnessResults = self->_loudnessResults;
  v5 = @"LoudnessResults";
  v6[0] = loudnessResults;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end