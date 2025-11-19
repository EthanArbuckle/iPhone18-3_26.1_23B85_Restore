@interface NDODefaultFolllowUpProvider
- (BOOL)clearNotificationForItem:(id)a3 error:(id *)a4;
- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)postFollowUpItem:(id)a3 error:(id *)a4;
- (id)pendingFollowUpItems:(id *)a3;
@end

@implementation NDODefaultFolllowUpProvider

- (BOOL)postFollowUpItem:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CFE500];
  v6 = a3;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(a4) = [v7 postFollowUpItem:v6 error:a4];

  return a4;
}

- (BOOL)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CFE500];
  v6 = a3;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(a4) = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:a4];

  return a4;
}

- (id)pendingFollowUpItems:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  v5 = [v4 pendingFollowUpItems:a3];

  return v5;
}

- (BOOL)clearNotificationForItem:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CFE500];
  v6 = a3;
  v7 = [[v5 alloc] initWithClientIdentifier:@"com.apple.NewDeviceOutreach"];
  LOBYTE(a4) = [v7 clearNotificationForItem:v6 error:a4];

  return a4;
}

@end