@interface ICASTagDeleteData
- (ICASTagDeleteData)initWithTagDeleteApproach:(id)approach;
- (id)toDict;
@end

@implementation ICASTagDeleteData

- (ICASTagDeleteData)initWithTagDeleteApproach:(id)approach
{
  approachCopy = approach;
  v9.receiver = self;
  v9.super_class = ICASTagDeleteData;
  v6 = [(ICASTagDeleteData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagDeleteApproach, approach);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"tagDeleteApproach";
  tagDeleteApproach = [(ICASTagDeleteData *)self tagDeleteApproach];
  if (tagDeleteApproach)
  {
    tagDeleteApproach2 = [(ICASTagDeleteData *)self tagDeleteApproach];
  }

  else
  {
    tagDeleteApproach2 = objc_opt_new();
  }

  v5 = tagDeleteApproach2;
  v10[0] = tagDeleteApproach2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end