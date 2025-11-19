@interface IMDAcceptedContactStoreChanges
- (IMDAcceptedContactStoreChanges)init;
@end

@implementation IMDAcceptedContactStoreChanges

- (IMDAcceptedContactStoreChanges)init
{
  v9.receiver = self;
  v9.super_class = IMDAcceptedContactStoreChanges;
  v2 = [(IMDAcceptedContactStoreChanges *)&v9 init];
  v3 = v2;
  if (v2)
  {
    updatedMap = v2->_updatedMap;
    v2->_updatedMap = MEMORY[0x1E695E0F8];

    deletedCNIDs = v3->_deletedCNIDs;
    v6 = MEMORY[0x1E695E0F0];
    v3->_deletedCNIDs = MEMORY[0x1E695E0F0];

    deletedAliases = v3->_deletedAliases;
    v3->_deletedAliases = v6;
  }

  return v3;
}

@end