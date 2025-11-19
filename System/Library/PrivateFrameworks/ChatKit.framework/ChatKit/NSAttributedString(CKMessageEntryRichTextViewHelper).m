@interface NSAttributedString(CKMessageEntryRichTextViewHelper)
- (void)ck_enumerateAllMentionAnimationIdentifiersUsingBlock:()CKMessageEntryRichTextViewHelper;
@end

@implementation NSAttributedString(CKMessageEntryRichTextViewHelper)

- (void)ck_enumerateAllMentionAnimationIdentifiersUsingBlock:()CKMessageEntryRichTextViewHelper
{
  v4 = a3;
  v5 = *MEMORY[0x1E69A70D0];
  v6 = [a1 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__NSAttributedString_CKMessageEntryRichTextViewHelper__ck_enumerateAllMentionAnimationIdentifiersUsingBlock___block_invoke;
  v8[3] = &unk_1E72F1410;
  v9 = v4;
  v7 = v4;
  [a1 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{2, v8}];
}

@end