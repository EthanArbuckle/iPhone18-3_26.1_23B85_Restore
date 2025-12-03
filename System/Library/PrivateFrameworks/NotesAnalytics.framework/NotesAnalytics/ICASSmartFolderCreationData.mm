@interface ICASSmartFolderCreationData
- (ICASSmartFolderCreationData)initWithFolderCreationApproach:(id)approach countOfTags:(id)tags filterCondition:(id)condition enabledFiltersArray:(id)array;
- (id)toDict;
@end

@implementation ICASSmartFolderCreationData

- (ICASSmartFolderCreationData)initWithFolderCreationApproach:(id)approach countOfTags:(id)tags filterCondition:(id)condition enabledFiltersArray:(id)array
{
  approachCopy = approach;
  tagsCopy = tags;
  conditionCopy = condition;
  arrayCopy = array;
  v18.receiver = self;
  v18.super_class = ICASSmartFolderCreationData;
  v15 = [(ICASSmartFolderCreationData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_folderCreationApproach, approach);
    objc_storeStrong(&v16->_countOfTags, tags);
    objc_storeStrong(&v16->_filterCondition, condition);
    objc_storeStrong(&v16->_enabledFiltersArray, array);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"folderCreationApproach";
  folderCreationApproach = [(ICASSmartFolderCreationData *)self folderCreationApproach];
  if (folderCreationApproach)
  {
    folderCreationApproach2 = [(ICASSmartFolderCreationData *)self folderCreationApproach];
  }

  else
  {
    folderCreationApproach2 = objc_opt_new();
  }

  v5 = folderCreationApproach2;
  v19[0] = folderCreationApproach2;
  v18[1] = @"countOfTags";
  countOfTags = [(ICASSmartFolderCreationData *)self countOfTags];
  if (countOfTags)
  {
    countOfTags2 = [(ICASSmartFolderCreationData *)self countOfTags];
  }

  else
  {
    countOfTags2 = objc_opt_new();
  }

  v8 = countOfTags2;
  v19[1] = countOfTags2;
  v18[2] = @"filterCondition";
  filterCondition = [(ICASSmartFolderCreationData *)self filterCondition];
  if (filterCondition)
  {
    filterCondition2 = [(ICASSmartFolderCreationData *)self filterCondition];
  }

  else
  {
    filterCondition2 = objc_opt_new();
  }

  v11 = filterCondition2;
  v19[2] = filterCondition2;
  v18[3] = @"enabledFiltersArray";
  enabledFiltersArray = [(ICASSmartFolderCreationData *)self enabledFiltersArray];
  if (enabledFiltersArray)
  {
    enabledFiltersArray2 = [(ICASSmartFolderCreationData *)self enabledFiltersArray];
  }

  else
  {
    enabledFiltersArray2 = objc_opt_new();
  }

  v14 = enabledFiltersArray2;
  v19[3] = enabledFiltersArray2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end