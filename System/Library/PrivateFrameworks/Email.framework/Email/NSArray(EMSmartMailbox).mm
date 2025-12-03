@interface NSArray(EMSmartMailbox)
- (uint64_t)em_containsSmartMailboxType:()EMSmartMailbox;
@end

@implementation NSArray(EMSmartMailbox)

- (uint64_t)em_containsSmartMailboxType:()EMSmartMailbox
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__NSArray_EMSmartMailbox__em_containsSmartMailboxType___block_invoke;
  v4[3] = &__block_descriptor_40_e19_B16__0__EMMailbox_8l;
  v4[4] = a3;
  return [self ef_any:v4];
}

@end