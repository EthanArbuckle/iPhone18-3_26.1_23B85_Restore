@interface HMFIDSDate
- (double)timeIntervalSince1970;
@end

@implementation HMFIDSDate

- (double)timeIntervalSince1970
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMFIDSDate_timeIntervalSince1970__block_invoke;
  block[3] = &unk_2786E7258;
  block[4] = &v5;
  dispatch_block_perform(DISPATCH_BLOCK_DETACHED, block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__HMFIDSDate_timeIntervalSince1970__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D189A8] sharedInstance];
  [v3 currentServerTimeInterval];
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

@end