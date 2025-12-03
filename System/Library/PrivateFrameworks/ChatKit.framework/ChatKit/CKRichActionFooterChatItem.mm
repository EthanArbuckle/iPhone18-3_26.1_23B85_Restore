@interface CKRichActionFooterChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)transcriptText;
@end

@implementation CKRichActionFooterChatItem

- (char)transcriptOrientation
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];

  if (isFromMe)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)contentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 20.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)transcriptText
{
  transcriptOrientation = [(CKRichActionFooterChatItem *)self transcriptOrientation];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (transcriptOrientation)
  {
    [v4 rightStatusTranscriptTextAttributes];
  }

  else
  {
    [v4 leftStatusTranscriptTextAttributes];
  }
  v6 = ;

  iMChatItem = [(CKChatItem *)self IMChatItem];
  handle = [iMChatItem handle];
  brand = [handle brand];
  name = [brand name];
  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  handle2 = [iMChatItem2 handle];
  v13 = handle2;
  if (name)
  {
    brand2 = [handle2 brand];
    name2 = [brand2 name];
  }

  else
  {
    name2 = [handle2 displayID];
  }

  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"SELECTED_ACTIONS_FOOTER_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = [v17 stringWithFormat:v19, name2];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v23 = @"\u200F";
  }

  else
  {
    v23 = @"\u200E";
  }

  v24 = [(__CFString *)v23 stringByAppendingString:v20];

  v25 = [v16 initWithString:v24 attributes:v6];

  return v25;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (insets)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v10;
    insets->left = v11;
    insets->bottom = v12;
    insets->right = v13;
  }

  createStampLabelView = [(objc_class *)[(CKRichActionFooterChatItem *)self cellClass] createStampLabelView];
  transcriptText = [(CKRichActionFooterChatItem *)self transcriptText];
  [createStampLabelView setAttributedText:transcriptText];

  [createStampLabelView sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end