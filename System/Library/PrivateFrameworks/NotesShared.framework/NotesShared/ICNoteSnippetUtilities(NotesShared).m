@interface ICNoteSnippetUtilities(NotesShared)
+ (id)snippetForAttributedContent:()NotesShared attributedSnippetIfNecessary:;
+ (id)titleForAttributedContent:()NotesShared truncated:attributedTitleIfNecessary:;
@end

@implementation ICNoteSnippetUtilities(NotesShared)

+ (id)titleForAttributedContent:()NotesShared truncated:attributedTitleIfNecessary:
{
  v8 = a3;
  v9 = [v8 string];
  v10 = [a1 rangeForTitleInContent:v9 truncated:a4];
  v12 = v11;

  v13 = [v8 attributedSubstringFromRange:{v10, v12}];

  v14 = [MEMORY[0x277D36228] snippetAndTitleTrimCharacterSet];
  v15 = [v13 ic_attributedStringByTrimmingCharactersInSet:v14];

  v16 = [v15 string];
  if (a5)
  {
    *a5 = [v15 ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary];
  }

  return v16;
}

+ (id)snippetForAttributedContent:()NotesShared attributedSnippetIfNecessary:
{
  v6 = a3;
  v7 = v6;
  if ([v6 length] >= 0x100)
  {
    v7 = [v6 ic_attributedSubstringFromRange:{0, 255}];
  }

  v8 = [a1 snippetAndTitleTrimCharacterSet];
  v9 = [v7 ic_attributedStringByTrimmingCharactersInSet:v8];

  v10 = [v9 ic_whitespaceAndNewlineCoalescedAttributedString];

  v11 = [v10 string];
  v12 = [v10 ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary];

  if (a4)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

@end