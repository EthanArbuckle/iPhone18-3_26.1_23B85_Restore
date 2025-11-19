@interface NSDate
@end

@implementation NSDate

uint64_t __48__NSDate_HMFoundation__hmf_localTimeDescription__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = qword_280AFC6A8;
  qword_280AFC6A8 = v0;

  v2 = qword_280AFC6A8;

  return [v2 setFormatOptions:3059];
}

@end