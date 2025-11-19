@interface MFOfflineCacheOperation
@end

@implementation MFOfflineCacheOperation

void __84___MFOfflineCacheOperation_databaseID_andMailbox_forMessageWithRemoteID_connection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v14 objectAtIndexedSubscript:1];
  v11 = [v10 numberValue];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *a4 = 1;
}

@end