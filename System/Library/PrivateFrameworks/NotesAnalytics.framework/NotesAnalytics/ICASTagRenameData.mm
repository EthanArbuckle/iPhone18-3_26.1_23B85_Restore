@interface ICASTagRenameData
- (ICASTagRenameData)initWithTagRenameApproach:(id)a3;
- (id)toDict;
@end

@implementation ICASTagRenameData

- (ICASTagRenameData)initWithTagRenameApproach:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICASTagRenameData;
  v6 = [(ICASTagRenameData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tagRenameApproach, a3);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"tagRenameApproach";
  v3 = [(ICASTagRenameData *)self tagRenameApproach];
  if (v3)
  {
    v4 = [(ICASTagRenameData *)self tagRenameApproach];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end