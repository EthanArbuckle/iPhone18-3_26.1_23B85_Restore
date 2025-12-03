@interface CKKeyTransparencyTranscriptUtilities
+ (id)transcriptStringFromHandles:(id)handles status:(unint64_t)status;
@end

@implementation CKKeyTransparencyTranscriptUtilities

+ (id)transcriptStringFromHandles:(id)handles status:(unint64_t)status
{
  handlesCopy = handles;
  v6 = handlesCopy;
  if (status <= 8)
  {
    if (status == 5)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_ERROR_WITH_STATIC_ACCOUNT_KEY";
      goto LABEL_13;
    }

    if (status == 6)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_ERROR_WITHOUT_STATIC_ACCOUNT_KEY";
      goto LABEL_13;
    }

LABEL_8:
    v8 = objc_opt_new();
    goto LABEL_20;
  }

  if (status != 9)
  {
    if (status == 11)
    {
      v7 = @"KT_TRANSCRIPT_STATUS_UNAVAILABLE";
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ([handlesCopy count] == 1)
  {
    v7 = @"KT_TRANSCRIPT_STATUS_TURNED_OFF";
  }

  else
  {
    v7 = @"KT_TRANSCRIPT_STATUS_TURNED_OFF_PLURAL";
  }

LABEL_13:
  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v9 transcriptEmphasizedFontAttributes];

  v11 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v11 transcriptRegularFontAttributes];

  v13 = [v6 __imArrayByApplyingBlock:&__block_literal_global_137];
  v14 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v13];
  v15 = objc_alloc(MEMORY[0x1E696AD40]);
  v16 = MEMORY[0x1E696AEC0];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v19 = [v16 stringWithFormat:v18, v14];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v22 = @"\u200F";
  }

  else
  {
    v22 = @"\u200E";
  }

  v23 = [(__CFString *)v22 stringByAppendingString:v19];

  v24 = [v15 initWithString:v23 attributes:transcriptRegularFontAttributes];
  if (v14)
  {
    string = [v24 string];
    v26 = [string rangeOfString:v14];
    v28 = v27;

    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v24 setAttributes:transcriptEmphasizedFontAttributes range:{v26, v28}];
    }
  }

  v8 = [v24 copy];

LABEL_20:

  return v8;
}

@end