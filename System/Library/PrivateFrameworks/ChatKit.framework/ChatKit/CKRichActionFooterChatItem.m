@interface CKRichActionFooterChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)transcriptText;
@end

@implementation CKRichActionFooterChatItem

- (char)transcriptOrientation
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 isFromMe];

  if (v3)
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
  v3 = [(CKRichActionFooterChatItem *)self transcriptOrientation];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (v3)
  {
    [v4 rightStatusTranscriptTextAttributes];
  }

  else
  {
    [v4 leftStatusTranscriptTextAttributes];
  }
  v6 = ;

  v7 = [(CKChatItem *)self IMChatItem];
  v8 = [v7 handle];
  v9 = [v8 brand];
  v10 = [v9 name];
  v11 = [(CKChatItem *)self IMChatItem];
  v12 = [v11 handle];
  v13 = v12;
  if (v10)
  {
    v14 = [v12 brand];
    v15 = [v14 name];
  }

  else
  {
    v15 = [v12 displayID];
  }

  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"SELECTED_ACTIONS_FOOTER_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = [v17 stringWithFormat:v19, v15];

  v21 = [MEMORY[0x1E69DC668] sharedApplication];
  v22 = [v21 userInterfaceLayoutDirection];

  if (v22 == 1)
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (a4)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    a4->top = v10;
    a4->left = v11;
    a4->bottom = v12;
    a4->right = v13;
  }

  v14 = [(objc_class *)[(CKRichActionFooterChatItem *)self cellClass] createStampLabelView];
  v15 = [(CKRichActionFooterChatItem *)self transcriptText];
  [v14 setAttributedText:v15];

  [v14 sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end