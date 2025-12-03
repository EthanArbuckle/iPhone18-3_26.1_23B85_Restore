@interface ICNoteSnippetUtilities(NotesShared)
+ (id)snippetForAttributedContent:()NotesShared attributedSnippetIfNecessary:;
+ (id)titleForAttributedContent:()NotesShared truncated:attributedTitleIfNecessary:;
@end

@implementation ICNoteSnippetUtilities(NotesShared)

+ (id)titleForAttributedContent:()NotesShared truncated:attributedTitleIfNecessary:
{
  v8 = a3;
  string = [v8 string];
  v10 = [self rangeForTitleInContent:string truncated:a4];
  v12 = v11;

  v13 = [v8 attributedSubstringFromRange:{v10, v12}];

  snippetAndTitleTrimCharacterSet = [MEMORY[0x277D36228] snippetAndTitleTrimCharacterSet];
  v15 = [v13 ic_attributedStringByTrimmingCharactersInSet:snippetAndTitleTrimCharacterSet];

  string2 = [v15 string];
  if (a5)
  {
    *a5 = [v15 ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary];
  }

  return string2;
}

+ (id)snippetForAttributedContent:()NotesShared attributedSnippetIfNecessary:
{
  v6 = a3;
  v7 = v6;
  if ([v6 length] >= 0x100)
  {
    v7 = [v6 ic_attributedSubstringFromRange:{0, 255}];
  }

  snippetAndTitleTrimCharacterSet = [self snippetAndTitleTrimCharacterSet];
  v9 = [v7 ic_attributedStringByTrimmingCharactersInSet:snippetAndTitleTrimCharacterSet];

  ic_whitespaceAndNewlineCoalescedAttributedString = [v9 ic_whitespaceAndNewlineCoalescedAttributedString];

  string = [ic_whitespaceAndNewlineCoalescedAttributedString string];
  ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary = [ic_whitespaceAndNewlineCoalescedAttributedString ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary];

  if (a4)
  {
    v13 = ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary;
    *a4 = ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary;
  }

  return string;
}

@end