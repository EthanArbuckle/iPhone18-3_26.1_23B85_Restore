@interface NSTextAttachment(IC)
- (uint64_t)ic_isSystemTextAttachment;
@end

@implementation NSTextAttachment(IC)

- (uint64_t)ic_isSystemTextAttachment
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = [v0 containsObject:objc_opt_class()];

  return v1;
}

@end