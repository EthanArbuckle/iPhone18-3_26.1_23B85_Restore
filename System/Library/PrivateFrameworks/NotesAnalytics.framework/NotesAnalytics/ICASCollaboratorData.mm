@interface ICASCollaboratorData
- (ICASCollaboratorData)initWithCountOfCollaboratorAdded:(id)added countOfCollaboratorRemoved:(id)removed;
- (id)toDict;
@end

@implementation ICASCollaboratorData

- (ICASCollaboratorData)initWithCountOfCollaboratorAdded:(id)added countOfCollaboratorRemoved:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  v12.receiver = self;
  v12.super_class = ICASCollaboratorData;
  v9 = [(ICASCollaboratorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfCollaboratorAdded, added);
    objc_storeStrong(&v10->_countOfCollaboratorRemoved, removed);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countOfCollaboratorAdded";
  countOfCollaboratorAdded = [(ICASCollaboratorData *)self countOfCollaboratorAdded];
  if (countOfCollaboratorAdded)
  {
    countOfCollaboratorAdded2 = [(ICASCollaboratorData *)self countOfCollaboratorAdded];
  }

  else
  {
    countOfCollaboratorAdded2 = objc_opt_new();
  }

  v5 = countOfCollaboratorAdded2;
  v12[1] = @"countOfCollaboratorRemoved";
  v13[0] = countOfCollaboratorAdded2;
  countOfCollaboratorRemoved = [(ICASCollaboratorData *)self countOfCollaboratorRemoved];
  if (countOfCollaboratorRemoved)
  {
    countOfCollaboratorRemoved2 = [(ICASCollaboratorData *)self countOfCollaboratorRemoved];
  }

  else
  {
    countOfCollaboratorRemoved2 = objc_opt_new();
  }

  v8 = countOfCollaboratorRemoved2;
  v13[1] = countOfCollaboratorRemoved2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end