@interface ICASCollaborationItemData
- (ICASCollaborationItemData)initWithCollaborationItemType:(id)type;
- (id)toDict;
@end

@implementation ICASCollaborationItemData

- (ICASCollaborationItemData)initWithCollaborationItemType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASCollaborationItemData;
  v6 = [(ICASCollaborationItemData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collaborationItemType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"collaborationItemType";
  collaborationItemType = [(ICASCollaborationItemData *)self collaborationItemType];
  if (collaborationItemType)
  {
    collaborationItemType2 = [(ICASCollaborationItemData *)self collaborationItemType];
  }

  else
  {
    collaborationItemType2 = objc_opt_new();
  }

  v5 = collaborationItemType2;
  v10[0] = collaborationItemType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end