@interface NSAttributedString(MentionsHelper)
- (void)ck_textKit1_enumerateAllAutomaticConfirmedMentionsUsingBlock:()MentionsHelper;
- (void)ck_textKit2_enumerateAllAutomaticConfirmedMentionsUsingBlock:()MentionsHelper;
@end

@implementation NSAttributedString(MentionsHelper)

- (void)ck_textKit1_enumerateAllAutomaticConfirmedMentionsUsingBlock:()MentionsHelper
{
  v4 = a3;
  v5 = [self length];
  v6 = *MEMORY[0x1E69A70D8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__NSAttributedString_MentionsHelper__ck_textKit1_enumerateAllAutomaticConfirmedMentionsUsingBlock___block_invoke;
  v8[3] = &unk_1E72F1410;
  v9 = v4;
  v7 = v4;
  [self enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{2, v8}];
}

- (void)ck_textKit2_enumerateAllAutomaticConfirmedMentionsUsingBlock:()MentionsHelper
{
  v4 = a3;
  v5 = [self length];
  v6 = *MEMORY[0x1E69A70D8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__NSAttributedString_MentionsHelper__ck_textKit2_enumerateAllAutomaticConfirmedMentionsUsingBlock___block_invoke;
  v8[3] = &unk_1E72F1410;
  v9 = v4;
  v7 = v4;
  [self enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{2, v8}];
}

@end