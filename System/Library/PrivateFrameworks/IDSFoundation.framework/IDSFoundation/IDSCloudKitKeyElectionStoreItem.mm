@interface IDSCloudKitKeyElectionStoreItem
- (id)description;
@end

@implementation IDSCloudKitKeyElectionStoreItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupName = [(IDSCloudKitKeyElectionStoreItem *)self groupName];
  groupID = [(IDSCloudKitKeyElectionStoreItem *)self groupID];
  v7 = [v3 stringWithFormat:@"<%@ %p groupName: %@ groupID: %@>", v4, self, groupName, groupID];

  return v7;
}

@end