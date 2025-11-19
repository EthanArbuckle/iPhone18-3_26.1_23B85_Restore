@interface ICASWindowSceneData
- (ICASWindowSceneData)initWithWindowSceneID:(id)a3;
- (id)toDict;
@end

@implementation ICASWindowSceneData

- (ICASWindowSceneData)initWithWindowSceneID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICASWindowSceneData;
  v6 = [(ICASWindowSceneData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowSceneID, a3);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"windowSceneID";
  v3 = [(ICASWindowSceneData *)self windowSceneID];
  if (v3)
  {
    v4 = [(ICASWindowSceneData *)self windowSceneID];
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