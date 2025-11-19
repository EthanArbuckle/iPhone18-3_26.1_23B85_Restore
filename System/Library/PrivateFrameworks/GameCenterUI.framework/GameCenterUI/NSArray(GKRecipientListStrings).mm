@interface NSArray(GKRecipientListStrings)
- (__CFString)_gkCommaSeparatedRecipientListWithWidth:()GKRecipientListStrings forTextStyle:usingSelector:;
@end

@implementation NSArray(GKRecipientListStrings)

- (__CFString)_gkCommaSeparatedRecipientListWithWidth:()GKRecipientListStrings forTextStyle:usingSelector:
{
  v41 = a4;
  v8 = [a1 count];
  if (v8)
  {
    v9 = v8;
    v40 = [MEMORY[0x277CBEB18] array];
    v10 = 0;
    v11 = 0;
    v12 = a2;
    v13 = &stru_28612D290;
    do
    {
      v14 = [a1 objectAtIndex:v10];
      v15 = [v14 _gkInvokeSelector:a5];
      if (v11 < 1)
      {
        v18 = v13;
      }

      else
      {
        v16 = GKGameCenterUIFrameworkBundle();
        v17 = GKGetLocalizedStringFromTableInBundle();
        v18 = [(__CFString *)v13 stringByAppendingString:v17];
      }

      v19 = [(__CFString *)v18 stringByAppendingString:v15];

      v20 = [v19 _gkAttributedStringByApplyingStyle:v41];
      [v20 size];
      v22 = v21;

      if (v22 <= v12)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFString length](v13, "length")}];
        [v40 addObject:v23];

        v24 = v19;
        ++v11;
        v13 = v24;
      }

      if (v22 > v12)
      {
        break;
      }

      v10 = v11;
    }

    while (v9 > v11);
    if (v22 > v12)
    {
      v25 = (v11 - 1);
      if (v11 < 1)
      {
        v36 = v13;
LABEL_18:
        v27 = [MEMORY[0x277CCABB8] gk_formatInteger:v9 withGrouping:1];
        v37 = MEMORY[0x277CCACA8];
        v13 = GKGameCenterUIFrameworkBundle();
        v38 = GKGetLocalizedStringFromTableInBundle();
        v30 = [v37 stringWithFormat:v38, v27];
      }

      else
      {
        v26 = v9 - v11;
        while (1)
        {
          v27 = [MEMORY[0x277CCABB8] gk_formatInteger:v26 withGrouping:1];
          v28 = GKGameCenterUIFrameworkBundle();
          v29 = GKGetLocalizedStringFromTableInBundle();
          v30 = [(__CFString *)v13 stringByAppendingFormat:v29, v27];

          v31 = [(__CFString *)v30 _gkAttributedStringByApplyingStyle:v41];
          [v31 size];
          v33 = v32;

          if (v33 <= v12)
          {
            break;
          }

          --v11;
          v34 = [v40 objectAtIndex:v25];
          v35 = [v34 intValue];

          v36 = [(__CFString *)v13 substringWithRange:0, v35];

          ++v26;
          --v25;
          v13 = v36;
          if (!v11)
          {
            goto LABEL_18;
          }
        }
      }

      v13 = v30;
    }
  }

  else
  {
    v13 = &stru_28612D290;
  }

  return v13;
}

@end