@interface DKStorageProvider
- (int64_t)dataSize;
@end

@implementation DKStorageProvider

- (int64_t)dataSize
{
  mEMORY[0x277D69960] = [MEMORY[0x277D69960] sharedMonitor];
  [mEMORY[0x277D69960] sync];

  mEMORY[0x277D69960]2 = [MEMORY[0x277D69960] sharedMonitor];
  storageSpace = [mEMORY[0x277D69960]2 storageSpace];

  usedBytes = [storageSpace usedBytes];
  return usedBytes;
}

@end