@interface NSAttributedString(Helper)
- (void)_enumerateTokenListsInRange:()Helper usingBlock_emk:;
- (void)_enumerateTokenListsInReverse:()Helper handler_emk:;
@end

@implementation NSAttributedString(Helper)

- (void)_enumerateTokenListsInReverse:()Helper handler_emk:
{
  v6 = a4;
  v7 = [a1 length];
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NSAttributedString_Helper___enumerateTokenListsInReverse_handler_emk___block_invoke;
  v10[3] = &unk_2781C1FE0;
  v11 = v6;
  v9 = v6;
  [a1 enumerateAttribute:@"EMKEmojiTokenList" inRange:0 options:v7 usingBlock:{v8, v10}];
}

- (void)_enumerateTokenListsInRange:()Helper usingBlock_emk:
{
  v8 = a5;
  [a1 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__NSAttributedString_Helper___enumerateTokenListsInRange_usingBlock_emk___block_invoke;
  v10[3] = &unk_2781C1FE0;
  v11 = v8;
  v9 = v8;
  [a1 enumerateAttribute:@"EMKEmojiTokenList" inRange:a3 options:a4 usingBlock:{0, v10}];
}

@end