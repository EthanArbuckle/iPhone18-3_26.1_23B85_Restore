@interface CKSMSSpamChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)getTranscriptTextForExtensionName:(id)a3;
- (id)loadTranscriptText;
@end

@implementation CKSMSSpamChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [(CKSMSSpamChatItem *)self loadTranscriptText];
  [v9 boundingRectWithSize:1 options:0 context:{width, height}];
  v11 = v10;

  [v8 transcriptBoldTextAlignmentInsets];
  if (a4)
  {
    a4->top = v12;
    a4->left = v13;
    a4->bottom = v14;
    a4->right = v15;
  }

  v16 = 0.0;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = [(CKChatItem *)self IMChatItem];
  v6 = [v5 extensionName];

  v7 = [(CKSMSSpamChatItem *)self getTranscriptTextForExtensionName:v6];
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v4];

  return v8;
}

- (id)getTranscriptTextForExtensionName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"FILTERED_BY_APP_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 stringWithFormat:v7, v4];

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v11 = @"\u200F";
    }

    else
    {
      v11 = @"\u200E";
    }

    v12 = [(__CFString *)v11 stringByAppendingString:v8];
  }

  else
  {
    v12 = &stru_1F04268F8;
  }

  return v12;
}

@end