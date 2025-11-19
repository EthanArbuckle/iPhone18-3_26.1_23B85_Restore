@interface DKStorageProvider
- (int64_t)dataSize;
@end

@implementation DKStorageProvider

- (int64_t)dataSize
{
  v2 = [MEMORY[0x277D69960] sharedMonitor];
  [v2 sync];

  v3 = [MEMORY[0x277D69960] sharedMonitor];
  v4 = [v3 storageSpace];

  v5 = [v4 usedBytes];
  return v5;
}

@end