@interface NWSAlgosScoreCombiner
+ (id)combiner;
- (NWSAlgosScoreCombiner)init;
- (double)signedMeanSquaredDeviation;
- (id)scoreScores:(id)scores;
- (void)addScore:(double)score weight:(double)weight type:(id)type label:(id)label;
- (void)clearScores;
- (void)dealloc;
@end

@implementation NWSAlgosScoreCombiner

+ (id)combiner
{
  v2 = objc_alloc_init(NWSAlgosScoreCombiner);

  return v2;
}

- (NWSAlgosScoreCombiner)init
{
  v4.receiver = self;
  v4.super_class = NWSAlgosScoreCombiner;
  v2 = [(NWSAlgosScoreCombiner *)&v4 init];
  if (!v2)
  {
    return v2;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x168BC42DuLL);
  if (result)
  {
    result->super.isa = 0;
    result->combinerData = 0;
    *&result->_debug = 0;
    v2->combinerData = result;
    return v2;
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  combinerData = self->combinerData;
  if (combinerData)
  {
    v5 = self->combinerData;
    std::vector<AlgosScoreCombinerFrameRow>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x25F8748F0](combinerData, 0x20C40960023A9);
  }

  v4.receiver = self;
  v4.super_class = NWSAlgosScoreCombiner;
  [(NWSAlgosScoreCombiner *)&v4 dealloc];
}

- (void)addScore:(double)score weight:(double)weight type:(id)type label:(id)label
{
  typeCopy = type;
  labelCopy = label;
  if (labelCopy)
  {
    v12 = labelCopy;
  }

  else
  {
    v12 = &stru_286D2DF20;
  }

  combinerData = self->combinerData;
  std::string::basic_string[abi:ne200100]<0>(v18, [typeCopy cStringUsingEncoding:4]);
  std::string::basic_string[abi:ne200100]<0>(v16, -[__CFString cStringUsingEncoding:](v12, "cStringUsingEncoding:", 4));
  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(v20, v18, v16, score, weight);
  v14 = combinerData[1];
  if (v14 >= combinerData[2])
  {
    v15 = std::vector<AlgosScoreCombinerFrameRow>::__emplace_back_slow_path<AlgosScoreCombinerFrameRow>(combinerData, v20);
  }

  else
  {
    AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(combinerData[1], v20);
    v15 = v14 + 64;
    combinerData[1] = v14 + 64;
  }

  combinerData[1] = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

- (void)clearScores
{
  combinerData = self->combinerData;
  v4 = *combinerData;
  for (i = combinerData[1]; i != v4; std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(i))
  {
    i -= 64;
  }

  combinerData[1] = v4;
}

- (double)signedMeanSquaredDeviation
{
  combinerData = self->combinerData;
  v4 = *combinerData;
  v5 = combinerData[1];
  if (*combinerData == v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v16 = vnegq_f64(v7);
    do
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v23, v4);
      v8.i64[0] = v27;
      v18 = v8;
      debug = [(NWSAlgosScoreCombiner *)self debug];
      *v10.i64 = *v18.i64 * *v18.i64;
      *&v17 = vbslq_s8(v16, v10, v18).u64[0];
      if (debug >= 2)
      {
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"deviation: %f, score_incr: %f", v18.i64[0], *&v17];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __51__NWSAlgosScoreCombiner_signedMeanSquaredDeviation__block_invoke;
        v21[3] = &unk_27996CF98;
        v12 = v11;
        v22 = v12;
        __nws_log_run_with_lock(v21);
      }

      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }

      v6 = v6 + v17;
      v4 = (v4 + 64);
    }

    while (v4 != v5);
  }

  if ([(NWSAlgosScoreCombiner *)self debug]> 1)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"raw score: %f", *&v6];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__NWSAlgosScoreCombiner_signedMeanSquaredDeviation__block_invoke_2;
    v19[3] = &unk_27996CF98;
    v20 = v13;
    v14 = v13;
    __nws_log_run_with_lock(v19);
  }

  return sqrt(v6 / ((combinerData[1] - *combinerData) >> 6));
}

uint64_t __51__NWSAlgosScoreCombiner_signedMeanSquaredDeviation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __51__NWSAlgosScoreCombiner_signedMeanSquaredDeviation__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (id)scoreScores:(id)scores
{
  scoresCopy = scores;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = dictionary;
  if (scoresCopy)
  {
    v7 = scoresCopy;
  }

  else
  {
    v7 = @"no-label";
  }

  [dictionary setObject:v7 forKeyedSubscript:@"label"];
  if ([(NWSAlgosScoreCombiner *)self debug])
  {
    AlgosScoreCombinerFrame::DebugPrint(self->combinerData, 25);
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:amean(self->combinerData)];
    [v6 setObject:v8 forKeyedSubscript:@"amean"];

    v9 = MEMORY[0x277CCABB0];
    combinerData = self->combinerData;
    v11 = *combinerData;
    v12 = combinerData[1];
    if (*combinerData == v12)
    {
      v14 = 0.0;
    }

    else
    {
      v13 = ((v12 - v11) >> 6);
      v14 = 0.0;
      do
      {
        AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v60, v11);
        v15 = log(fabs(v65));
        if (v64 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        v14 = v14 + v15 / v13;
        v11 = (v11 + 64);
      }

      while (v11 != v12);
    }

    v16 = [v9 numberWithDouble:exp(v14)];
    [v6 setObject:v16 forKeyedSubscript:@"gmean(abs)"];

    v17 = MEMORY[0x277CCABB0];
    v18 = self->combinerData;
    v19 = *v18;
    v20 = v18[1];
    v21 = 0.0;
    if (*v18 == v20)
    {
      v23 = *v18;
    }

    else
    {
      do
      {
        AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v60, v19);
        v22 = v65;
        if (v64 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        v21 = v21 + 1.0 / v22;
        v19 = (v19 + 64);
      }

      while (v19 != v20);
      v19 = *v18;
      v23 = v18[1];
    }

    v24 = [v17 numberWithDouble:((v23 - v19) >> 6) / v21];
    [v6 setObject:v24 forKeyedSubscript:@"hmean(abs)"];

    v25 = MEMORY[0x277CCABB0];
    v26 = self->combinerData;
    v27 = *v26;
    v28 = v26[1];
    v29 = (v28 - *v26) >> 6;
    if (v29 > 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      std::vector<AlgosScoreCombinerFrameRow>::__init_with_size[abi:ne200100]<AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*>(&v60, v27, v28, v29);
      v31 = 126 - 2 * __clz((v61 - v60) >> 6);
      v58 = compareScores;
      if (v61 == v60)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,false>(v60, v61, &v58, v32, 1);
      v33 = (v60 + ((((v26[1] - *v26) >> 1) + 32) & 0xFFFFFFFFFFFFFFC0));
      v30 = *(v33 - 1) + (v33[7] - *(v33 - 1)) * 0.5;
      v59 = &v60;
      std::vector<AlgosScoreCombinerFrameRow>::__destroy_vector::operator()[abi:ne200100](&v59);
    }

    else
    {
      v30 = nan("median");
    }

    v34 = [v25 numberWithDouble:{v30, v58}];
    [v6 setObject:v34 forKeyedSubscript:@"median"];

    v35 = [MEMORY[0x277CCABB0] numberWithDouble:stddev(self->combinerData)];
    [v6 setObject:v35 forKeyedSubscript:@"std"];

    v36 = MEMORY[0x277CCABB0];
    v37 = self->combinerData;
    v38 = amean(v37);
    v39 = *v37;
    v40 = v37[1];
    if (*v37 == v40)
    {
      v42 = 0.0;
      v44 = *v37;
    }

    else
    {
      v41 = v38;
      v42 = 0.0;
      do
      {
        AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v60, v39);
        v43 = v65;
        if (v64 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        v42 = v42 + vabdd_f64(v43, v41);
        v39 = (v39 + 64);
      }

      while (v39 != v40);
      v39 = *v37;
      v44 = v37[1];
    }

    v45 = [v36 numberWithDouble:v42 / ((v44 - v39) >> 6)];
    [v6 setObject:v45 forKeyedSubscript:@"mad"];

    v46 = MEMORY[0x277CCABB0];
    v47 = self->combinerData;
    v48 = *v47;
    v49 = v47[1];
    v50 = *(*v47 + 7);
    v51 = v50;
    while (v48 != v49)
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v60, v48);
      if (v65 < v50)
      {
        v50 = v65;
      }

      if (v51 < v65)
      {
        v51 = v65;
      }

      if (v64 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v60);
      }

      v48 = (v48 + 64);
    }

    v52 = [v46 numberWithDouble:v51 - v50];
    [v6 setObject:v52 forKeyedSubscript:@"scale"];

    v53 = [MEMORY[0x277CCABB0] numberWithDouble:{standard_moment(self->combinerData, 4)}];
    [v6 setObject:v53 forKeyedSubscript:@"kurtosis"];

    v54 = [MEMORY[0x277CCABB0] numberWithDouble:{standard_moment(self->combinerData, 3)}];
    [v6 setObject:v54 forKeyedSubscript:@"skew"];
  }

  v55 = MEMORY[0x277CCABB0];
  [(NWSAlgosScoreCombiner *)self signedMeanSquaredDeviation];
  v56 = [v55 numberWithDouble:?];
  [v6 setObject:v56 forKeyedSubscript:@"score"];

  return v6;
}

@end