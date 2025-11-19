@interface HKHRSampleClassificationCollectionCollection
- (HKHRSampleClassificationCollectionCollection)initWithClassificationCollections:(id)a3;
- (HKHRSampleClassificationCollectionCollection)initWithCoder:(id)a3;
@end

@implementation HKHRSampleClassificationCollectionCollection

- (HKHRSampleClassificationCollectionCollection)initWithClassificationCollections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHRSampleClassificationCollectionCollection;
  v6 = [(HKHRSampleClassificationCollectionCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classificationCollections, a3);
  }

  return v7;
}

- (HKHRSampleClassificationCollectionCollection)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKHRSampleClassificationCollectionCollection;
  v5 = [(HKHRSampleClassificationCollectionCollection *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ClassificationCollections"];
    classificationCollections = v5->_classificationCollections;
    v5->_classificationCollections = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end