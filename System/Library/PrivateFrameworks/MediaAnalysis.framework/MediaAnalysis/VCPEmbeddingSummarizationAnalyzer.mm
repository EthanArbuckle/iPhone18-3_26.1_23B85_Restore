@interface VCPEmbeddingSummarizationAnalyzer
- (id)summarizedEmbeddings;
- (int)findSummarizedEmbeddings:(id)a3 embeddingSize:(unint64_t)a4 isFP16:(BOOL)a5;
@end

@implementation VCPEmbeddingSummarizationAnalyzer

- (int)findSummarizedEmbeddings:(id)a3 embeddingSize:(unint64_t)a4 isFP16:(BOOL)a5
{
  v8 = a3;
  objc_storeStrong(&self->_videoEmbeddings, a3);
  if ([(NSArray *)self->_videoEmbeddings count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    summarizedEmbeddingIds = self->_summarizedEmbeddingIds;
    self->_summarizedEmbeddingIds = v9;

    v11 = [MEMORY[0x1E695DF70] array];
    representativeMapping = self->_representativeMapping;
    self->_representativeMapping = v11;

    v21 = 0uLL;
    v22 = 0;
    v19 = 0uLL;
    v20 = 0;
    __p = 0;
    v18 = 0uLL;
    getEmbeddingArray(self->_videoEmbeddings, a4, &v15);
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__vdeallocate(&v21);
    v21 = v15;
    v22 = v16;
    v16 = 0;
    v15 = 0uLL;
    v23 = &v15;
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&v23);
    if (*(&v21 + 1) != v21)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(&v21 + 1) - v21) >> 3) <= 0x3E8)
      {
        partitionEmbeddingsBySpectralClustering();
      }

      partitionEmbeddingsByKmeansWithSilhouetteScore(&v21, &v15);
    }

    v13 = -18;
    if (__p)
    {
      operator delete(__p);
    }

    __p = &v19;
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&__p);
    *&v19 = &v21;
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&v19);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)summarizedEmbeddings
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_videoEmbeddings count]&& [(NSMutableArray *)self->_summarizedEmbeddingIds count]&& [(NSMutableArray *)self->_representativeMapping count])
  {
    v4 = *(MEMORY[0x1E6960CA8] + 16);
    *&v26.start.value = *MEMORY[0x1E6960CA8];
    *&v26.start.epoch = v4;
    *&v26.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_summarizedEmbeddingIds;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [v9 unsignedIntValue];
          if ([(NSArray *)self->_videoEmbeddings count]> v10)
          {
            memset(&v21, 0, sizeof(v21));
            v11 = -[NSArray objectAtIndexedSubscript:](self->_videoEmbeddings, "objectAtIndexedSubscript:", [v9 unsignedIntValue]);
            CMTimeRangeMakeFromDictionary(&v21, v11);

            range = v21;
            v18 = v26;
            CMTimeRangeGetUnion(&v20, &range, &v18);
            v26 = v20;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v6);
    }

    v29[0] = @"start";
    *&v21.start.value = *&v26.start.value;
    v21.start.epoch = v26.start.epoch;
    v12 = CMTimeCopyAsDictionary(&v21.start, 0);
    v30[0] = v12;
    v29[1] = @"duration";
    v21.start = v26.duration;
    v13 = CMTimeCopyAsDictionary(&v21.start, 0);
    v30[1] = v13;
    v29[2] = @"attributes";
    v27[0] = @"embeddingIds";
    v27[1] = @"representativeMapping";
    representativeMapping = self->_representativeMapping;
    v28[0] = self->_summarizedEmbeddingIds;
    v28[1] = representativeMapping;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v30[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [v3 addObject:v16];
  }

  return v3;
}

@end