@interface ICASTagRenameData
- (ICASTagRenameData)initWithTagRenameApproach:(id)approach;
- (id)toDict;
@end

@implementation ICASTagRenameData

- (ICASTagRenameData)initWithTagRenameApproach:(id)approach
{
  approachCopy = approach;
  v9.receiver = self;
  v9.super_class = ICASTagRenameData;
  v6 = [(ICASTagRenameData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagRenameApproach, approach);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"tagRenameApproach";
  tagRenameApproach = [(ICASTagRenameData *)self tagRenameApproach];
  if (tagRenameApproach)
  {
    tagRenameApproach2 = [(ICASTagRenameData *)self tagRenameApproach];
  }

  else
  {
    tagRenameApproach2 = objc_opt_new();
  }

  v5 = tagRenameApproach2;
  v10[0] = tagRenameApproach2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end