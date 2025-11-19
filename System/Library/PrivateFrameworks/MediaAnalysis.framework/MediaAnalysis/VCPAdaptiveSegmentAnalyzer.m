@interface VCPAdaptiveSegmentAnalyzer
- (float)calculateTimestamp:(unint64_t)a3 videoEmbeddings:(id)a4;
- (id).cxx_construct;
- (int)calculateAdaptiveSegments:(id)a3;
- (int)calculateAdaptiveSegments:(id)a3 videoEmbeddingsX3D:(id)a4;
- (vector<float,)averagedEmbedding:(VCPAdaptiveSegmentAnalyzer *)self startTime:(SEL)a3 endTime:(id)a4;
@end

@implementation VCPAdaptiveSegmentAnalyzer

- (int)calculateAdaptiveSegments:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = a3;
  if ([v29 embeddingType] == 2)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    adaptiveSegments = self->_adaptiveSegments;
    self->_adaptiveSegments = v4;

    v6 = [v29 embeddingsArray];
    videoEmbeddings = self->_videoEmbeddings;
    self->_videoEmbeddings = v6;

    self->_embeddingSize = [v29 embeddingSize];
    if ([(NSArray *)self->_videoEmbeddings count])
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      memset(v34, 0, sizeof(v34));
      obj = self->_videoEmbeddings;
      if ([(NSArray *)obj countByEnumeratingWithState:v34 objects:v41 count:16])
      {
        v8 = [**(&v34[0] + 1) objectForKeyedSubscript:@"attributes"];
        [v8 objectForKeyedSubscript:@"embeddings"];
        objc_claimAutoreleasedReturnValue();

        dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix(&v38.value);
      }

      if (v36 == v35)
      {
        v27 = -18;
      }

      else
      {
        LODWORD(v38.value) = 0;
        std::vector<float>::vector[abi:ne200100](buf, 1uLL);
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) >= 0x140)
          {
            v9 = 320;
          }

          else
          {
            v9 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3);
          }

          memset(&v38, 0, sizeof(v38));
          std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__init_with_size[abi:ne200100]<std::__wrap_iter<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>,std::__wrap_iter<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>(&v38, v35, v35 + 24 * v9, 0xAAAAAAAAAAAAAAABLL * ((24 * v9) >> 3));
          estimateNumberOfSegmentsBySpectralClustering();
        }

        v10 = [(NSArray *)self->_videoEmbeddings lastObject];
        v11 = [v10 objectForKeyedSubscript:@"start"];
        CMTimeMakeFromDictionary(&v38, v11);
        Seconds = CMTimeGetSeconds(&v38);

        v13 = [(NSArray *)self->_videoEmbeddings lastObject];
        v14 = [v13 objectForKeyedSubscript:@"duration"];
        CMTimeMakeFromDictionary(&v38, v14);
        v15 = CMTimeGetSeconds(&v38);

        v16 = Seconds;
        v17 = v15;
        *&v38.value = v16 + v17;
        std::vector<float>::push_back[abi:ne200100](buf, &v38);
        v18 = *buf;
        if (&v33[-*buf] != 4)
        {
          v19 = 0;
          do
          {
            v20 = &v18[4 * v19];
            v21 = *v20;
            v22 = v20[1];
            v23 = self->_adaptiveSegments;
            v39[0] = @"start";
            CMTimeMakeWithSeconds(&v31, v21, 600);
            v38 = v31;
            v24 = CMTimeCopyAsDictionary(&v38, 0);
            v39[1] = @"duration";
            v40[0] = v24;
            CMTimeMakeWithSeconds(&v31, (v22 - v21), 600);
            v38 = v31;
            v25 = CMTimeCopyAsDictionary(&v38, 0);
            v40[1] = v25;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
            [(NSMutableArray *)v23 addObject:v26];

            ++v19;
            v18 = *buf;
          }

          while (v19 < (&v33[-*buf] >> 2) - 1);
        }

        if (v18)
        {
          v33 = v18;
          operator delete(v18);
        }

        v27 = 0;
      }

      v38.value = &v35;
      std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&v38);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adaptive segments must be calculated on unified embeddings.", &v38, 2u);
    }

    v27 = -18;
  }

  return v27;
}

- (int)calculateAdaptiveSegments:(id)a3 videoEmbeddingsX3D:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ([v8 embeddingType] == 1)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    adaptiveSegments = self->_adaptiveSegments;
    self->_adaptiveSegments = v5;

    operator new[]();
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(time.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adaptive segments must be calculated on X3D embeddings.", &time, 2u);
  }

  return -18;
}

- (float)calculateTimestamp:(unint64_t)a3 videoEmbeddings:(id)a4
{
  v5 = a4;
  v6 = [v5 objectAtIndexedSubscript:(a3 >> 4)];
  v7 = [v6 objectForKeyedSubscript:@"start"];
  CMTimeMakeFromDictionary(&time, v7);
  Seconds = CMTimeGetSeconds(&time);

  v9 = [v5 objectAtIndexedSubscript:(a3 >> 4)];
  v10 = [v9 objectForKeyedSubscript:@"duration"];
  CMTimeMakeFromDictionary(&time, v10);
  v11 = CMTimeGetSeconds(&time);

  *&Seconds = Seconds;
  return (((a3 & 0xF) * v11) * 0.0625) + *&Seconds;
}

- (vector<float,)averagedEmbedding:(VCPAdaptiveSegmentAnalyzer *)self startTime:(SEL)a3 endTime:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  v9 = [v8 embeddingSize];
  if (v9 >> 62)
  {
    v10 = -1;
  }

  else
  {
    v10 = 4 * v9;
  }

  v11 = operator new[](v10, MEMORY[0x1E69E5398]);
  memset(v45, 0, sizeof(v45));
  obj = [v8 embeddingsArray];
  if ([obj countByEnumeratingWithState:v45 objects:v51 count:16])
  {
    v12 = **(&v45[0] + 1);
    v13 = [**(&v45[0] + 1) objectForKeyedSubscript:@"start"];
    CMTimeMakeFromDictionary(&time, v13);
    Seconds = CMTimeGetSeconds(&time);

    v15 = Seconds;
    *v37 = v15;
    v16 = [v12 objectForKeyedSubscript:@"duration"];
    CMTimeMakeFromDictionary(&time, v16);
    v17 = CMTimeGetSeconds(&time);

    v18 = v17;
    v44 = *v37 + v18;
    std::vector<float>::push_back[abi:ne200100](v47, v37);
    std::vector<float>::push_back[abi:ne200100](v46, &v44);
    bzero(v11, 4 * [v8 embeddingSize]);
    v19 = [v12 objectForKeyedSubscript:@"attributes"];
    v20 = [v19 objectForKeyedSubscript:@"embeddings"];
    [v20 getBytes:v11 length:{4 * objc_msgSend(v8, "embeddingSize")}];

    v21 = [v8 embeddingSize];
    __p = v11;
    v40 = 1;
    v41 = v21;
    v42 = v21;
    dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_pointer_to_mat<float>>>(&time.value);
  }

  if (v11)
  {
    MEMORY[0x1CCA95C10](v11, 0x1000C8052888210);
  }

  LODWORD(time.value) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, (v49 - v48) >> 5);
  v22 = __p;
  if (v49 != v48)
  {
    v23 = (v49 - v48) >> 5;
    v24 = v47[0];
    v25 = v46[0];
    if (v23 <= 1)
    {
      v23 = 1;
    }

    v26 = __p;
    do
    {
      v27 = *v24++;
      v28 = v27;
      if (v27 <= a5)
      {
        v28 = a5;
      }

      v29 = *v25++;
      v30 = v29;
      if (v29 >= a6)
      {
        v30 = a6;
      }

      if (v30 <= v28)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v30 - v28;
      }

      *v26++ = v31;
      --v23;
    }

    while (v23);
  }

  if (v40 != v22)
  {
    v32 = (v40 - v22) >> 2;
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v33 = 0.0;
    do
    {
      v34 = *v22++;
      v33 = v33 + v34;
      --v32;
    }

    while (v32);
  }

  v37[0] = 1;
  v37[1] = [v8 embeddingSize];
  v38 = 0;
  dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_uniform_matrix_3<float>>>(&time.value);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end