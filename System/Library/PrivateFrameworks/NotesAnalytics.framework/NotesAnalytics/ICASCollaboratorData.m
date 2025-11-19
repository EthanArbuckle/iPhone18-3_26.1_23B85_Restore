@interface ICASCollaboratorData
- (ICASCollaboratorData)initWithCountOfCollaboratorAdded:(id)a3 countOfCollaboratorRemoved:(id)a4;
- (id)toDict;
@end

@implementation ICASCollaboratorData

- (ICASCollaboratorData)initWithCountOfCollaboratorAdded:(id)a3 countOfCollaboratorRemoved:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASCollaboratorData;
  v9 = [(ICASCollaboratorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfCollaboratorAdded, a3);
    objc_storeStrong(&v10->_countOfCollaboratorRemoved, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countOfCollaboratorAdded";
  v3 = [(ICASCollaboratorData *)self countOfCollaboratorAdded];
  if (v3)
  {
    v4 = [(ICASCollaboratorData *)self countOfCollaboratorAdded];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"countOfCollaboratorRemoved";
  v13[0] = v4;
  v6 = [(ICASCollaboratorData *)self countOfCollaboratorRemoved];
  if (v6)
  {
    v7 = [(ICASCollaboratorData *)self countOfCollaboratorRemoved];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end