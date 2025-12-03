@interface NSMutableAttributedString(Helper)
- (void)ck_removeAttributesNotIn:()Helper;
@end

@implementation NSMutableAttributedString(Helper)

- (void)ck_removeAttributesNotIn:()Helper
{
  v4 = a3;
  v5 = [self length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NSMutableAttributedString_Helper__ck_removeAttributesNotIn___block_invoke;
  v7[3] = &unk_1E72EEF48;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [self enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
}

@end