@interface CKSMSSpamChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)getTranscriptTextForExtensionName:(id)name;
- (id)loadTranscriptText;
@end

@implementation CKSMSSpamChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  loadTranscriptText = [(CKSMSSpamChatItem *)self loadTranscriptText];
  [loadTranscriptText boundingRectWithSize:1 options:0 context:{width, height}];
  v11 = v10;

  [v8 transcriptBoldTextAlignmentInsets];
  if (insets)
  {
    insets->top = v12;
    insets->left = v13;
    insets->bottom = v14;
    insets->right = v15;
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
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  iMChatItem = [(CKChatItem *)self IMChatItem];
  extensionName = [iMChatItem extensionName];

  v7 = [(CKSMSSpamChatItem *)self getTranscriptTextForExtensionName:extensionName];
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:transcriptEmphasizedFontAttributes];

  return v8;
}

- (id)getTranscriptTextForExtensionName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"FILTERED_BY_APP_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [v5 stringWithFormat:v7, v4];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
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