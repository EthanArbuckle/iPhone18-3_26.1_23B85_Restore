@interface ICASWindowSceneData
- (ICASWindowSceneData)initWithWindowSceneID:(id)d;
- (id)toDict;
@end

@implementation ICASWindowSceneData

- (ICASWindowSceneData)initWithWindowSceneID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASWindowSceneData;
  v6 = [(ICASWindowSceneData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowSceneID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"windowSceneID";
  windowSceneID = [(ICASWindowSceneData *)self windowSceneID];
  if (windowSceneID)
  {
    windowSceneID2 = [(ICASWindowSceneData *)self windowSceneID];
  }

  else
  {
    windowSceneID2 = objc_opt_new();
  }

  v5 = windowSceneID2;
  v10[0] = windowSceneID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end