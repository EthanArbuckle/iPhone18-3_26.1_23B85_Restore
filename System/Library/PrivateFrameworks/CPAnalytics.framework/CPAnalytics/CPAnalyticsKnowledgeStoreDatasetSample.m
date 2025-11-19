@interface CPAnalyticsKnowledgeStoreDatasetSample
- (CPAnalyticsKnowledgeStoreDatasetSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5;
- (id)metadata;
@end

@implementation CPAnalyticsKnowledgeStoreDatasetSample

- (id)metadata
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(CPAnalyticsKnowledgeStoreDatasetSample *)self subset];

  if (v3)
  {
    v11[0] = @"_DKPhotosMetadataKey.identifier";
    v4 = [(CPAnalyticsKnowledgeStoreDatasetSample *)self identifier];
    v11[1] = @"_DKPhotosMetadataKey.subset";
    v12[0] = v4;
    v5 = [(CPAnalyticsKnowledgeStoreDatasetSample *)self subset];
    v12[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v9 = @"_DKPhotosMetadataKey.identifier";
    v4 = [(CPAnalyticsKnowledgeStoreDatasetSample *)self identifier];
    v10 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (CPAnalyticsKnowledgeStoreDatasetSample)initWithIdentifier:(id)a3 andDate:(id)a4 forSubset:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CPAnalyticsKnowledgeStoreDatasetSample;
  v12 = [(CPAnalyticsKnowledgeStoreDatasetSample *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_date, a4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
LABEL_6:
      subset = v13->_subset;
      v13->_subset = v14;

      goto LABEL_7;
    }

    if (v11)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v11];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v13;
}

@end