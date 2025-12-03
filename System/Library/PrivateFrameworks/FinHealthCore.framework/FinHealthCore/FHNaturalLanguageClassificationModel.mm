@interface FHNaturalLanguageClassificationModel
- (FHNaturalLanguageClassificationModel)initWithModelURL:(id)l;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
@end

@implementation FHNaturalLanguageClassificationModel

- (FHNaturalLanguageClassificationModel)initWithModelURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = FHNaturalLanguageClassificationModel;
  v3 = [(FHModel *)&v15 initWithModelURL:l];
  v4 = v3;
  if (v3)
  {
    mlModel = [(FHModel *)v3 mlModel];
    if (mlModel)
    {
      v14 = 0;
      v6 = [MEMORY[0x277CD89D0] modelWithMLModel:mlModel error:&v14];
      v7 = v14;
      nlModel = v4->_nlModel;
      v4->_nlModel = v6;

      if (v7)
      {
        v9 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v7 localizedDescription];
          *buf = 138412290;
          v17 = localizedDescription;
          _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "Failed to create natural language model, error: %@", buf, 0xCu);
        }

        v11 = v4->_nlModel;
        v4->_nlModel = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count
{
  nlModel = self->_nlModel;
  if (nlModel)
  {
    v5 = [(NLModel *)nlModel predictedLabelHypothesesForString:string maximumCount:count];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v5;
}

@end