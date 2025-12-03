@interface NDODefaultFolllowUpProvider
- (BOOL)clearNotificationForItem:(id)item error:(id *)error;
- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)postFollowUpItem:(id)item error:(id *)error;
- (id)pendingFollowUpItems:(id *)items;
@end

@implementation NDODefaultFolllowUpProvider

- (BOOL)postFollowUpItem:(id)item error:(id *)error
{
  v5 = MEMORY[0x277CFE500];
  itemCopy = item;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(error) = [v7 postFollowUpItem:itemCopy error:error];

  return error;
}

- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers error:(id *)error
{
  v5 = MEMORY[0x277CFE500];
  identifiersCopy = identifiers;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(error) = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:identifiersCopy error:error];

  return error;
}

- (id)pendingFollowUpItems:(id *)items
{
  v4 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  v5 = [v4 pendingFollowUpItems:items];

  return v5;
}

- (BOOL)clearNotificationForItem:(id)item error:(id *)error
{
  v5 = MEMORY[0x277CFE500];
  itemCopy = item;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(error) = [v7 clearNotificationForItem:itemCopy error:error];

  return error;
}

@end