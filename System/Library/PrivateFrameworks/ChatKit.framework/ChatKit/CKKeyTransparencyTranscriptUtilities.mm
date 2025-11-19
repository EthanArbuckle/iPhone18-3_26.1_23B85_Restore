@interface CKKeyTransparencyTranscriptUtilities
+ (id)transcriptStringFromHandles:(id)a3 status:(unint64_t)a4;
@end

@implementation CKKeyTransparencyTranscriptUtilities

+ (id)transcriptStringFromHandles:(id)a3 status:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 <= 8)
  {
    if (a4 == 5)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_ERROR_WITH_STATIC_ACCOUNT_KEY";
      goto LABEL_13;
    }

    if (a4 == 6)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_ERROR_WITHOUT_STATIC_ACCOUNT_KEY";
      goto LABEL_13;
    }

LABEL_8:
    v8 = objc_opt_new();
    goto LABEL_20;
  }

  if (a4 != 9)
  {
    if (a4 == 11)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_UNAVAILABLE";
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ([v5 count] == 1)
  {
    v7 = @"KT_TRANSCRIPT_STATUS_TURNED_OFF";
  }

  else
  {
    v7 = @"KT_TRANSCRIPT_STATUS_TURNED_OFF_PLURAL";
  }

LABEL_13:
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 transcriptEmphasizedFontAttributes];

  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 transcriptRegularFontAttributes];

  v13 = [v6 __imArrayByApplyingBlock:&__block_literal_global_137];
  v14 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v13];
  v15 = objc_alloc(MEMORY[0x1E696AD40]);
  v16 = MEMORY[0x1E696AEC0];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v19 = [v16 stringWithFormat:v18, v14];

  v20 = [MEMORY[0x1E69DC668] sharedApplication];
  v21 = [v20 userInterfaceLayoutDirection];

  if (v21 == 1)
  {
    v22 = @"\u200F";
  }

  else
  {
    v22 = @"\u200E";
  }

  v23 = [(__CFString *)v22 stringByAppendingString:v19];

  v24 = [v15 initWithString:v23 attributes:v12];
  if (v14)
  {
    v25 = [v24 string];
    v26 = [v25 rangeOfString:v14];
    v28 = v27;

    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v24 setAttributes:v10 range:{v26, v28}];
    }
  }

  v8 = [v24 copy];

LABEL_20:

  return v8;
}

@end