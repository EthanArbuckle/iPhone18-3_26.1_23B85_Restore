@interface FHNaturalLanguageClassificationModel
- (FHNaturalLanguageClassificationModel)initWithModelURL:(id)a3;
- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4;
@end

@implementation FHNaturalLanguageClassificationModel

- (FHNaturalLanguageClassificationModel)initWithModelURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = FHNaturalLanguageClassificationModel;
  v3 = [(FHModel *)&v15 initWithModelURL:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(FHModel *)v3 mlModel];
    if (v5)
    {
      v14 = 0;
      v6 = [MEMORY[0x277CD89D0] modelWithMLModel:v5 error:&v14];
      v7 = v14;
      nlModel = v4->_nlModel;
      v4->_nlModel = v6;

      if (v7)
      {
        v9 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [v7 localizedDescription];
          *buf = 138412290;
          v17 = v10;
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

- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4
{
  nlModel = self->_nlModel;
  if (nlModel)
  {
    v5 = [(NLModel *)nlModel predictedLabelHypothesesForString:a3 maximumCount:a4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v5;
}

@end