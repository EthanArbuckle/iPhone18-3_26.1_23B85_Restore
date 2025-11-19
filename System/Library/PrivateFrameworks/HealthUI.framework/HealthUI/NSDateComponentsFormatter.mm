@interface NSDateComponentsFormatter
@end

@implementation NSDateComponentsFormatter

uint64_t __74__NSDateComponentsFormatter_HealthUI__hk_fullStyleDateComponentsFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = hk_fullStyleDateComponentsFormatter___dateComponentsFormatter;
  hk_fullStyleDateComponentsFormatter___dateComponentsFormatter = v0;

  v2 = hk_fullStyleDateComponentsFormatter___dateComponentsFormatter;

  return [v2 setUnitsStyle:3];
}

@end