@interface ICTextViewAccessibility
+ (id)icaxEmphasisStyleNameFromAttributes:(id)a3;
@end

@implementation ICTextViewAccessibility

+ (id)icaxEmphasisStyleNameFromAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D35D88]];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D74188]];
    ICEmphasisColorTypeForNSTextHighlightColorScheme();

    v6 = NSStringForEmphasisColorType();
    if ([v6 length])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = __ICLocalizedFrameworkString_impl(@"%@ highlight", @"%@ highlight", 0, 1);
      v9 = [v7 localizedStringWithFormat:v8, v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end