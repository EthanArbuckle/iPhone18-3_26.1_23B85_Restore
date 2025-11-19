@interface IMBalloonPluginManager
@end

@implementation IMBalloonPluginManager

void __93__IMBalloonPluginManager_ChatKitAdditions__balloonControllerForIMChatItem_contextIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 message];
  v4 = [v5 guid];
  [CKSnapshotUtilities cacheSnapshot:v3 guid:v4 messageTintColor:1 postChangeNotification:*MEMORY[0x1E69A6E08], *(MEMORY[0x1E69A6E08] + 8), *(MEMORY[0x1E69A6E08] + 16), *(MEMORY[0x1E69A6E08] + 24)];
}

@end