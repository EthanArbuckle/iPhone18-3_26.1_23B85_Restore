@interface ICTTTextStorage(UI)
@end

@implementation ICTTTextStorage(UI)

- (void)replaceCharactersInRange:()UI withAttributedString:.cold.2(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  [a2 length];
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "replaceCharactersInRange:withAttributedString: input range %@ out of bound. self.length is %lu", v6, v7, v8, v9, 2u);
}

- (void)replaceCharactersInRange:()UI withString:.cold.1(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  [a2 length];
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "replaceCharactersInRange:withString: input range %@ out of bound. self.length is %lu", v6, v7, v8, v9, 2u);
}

@end