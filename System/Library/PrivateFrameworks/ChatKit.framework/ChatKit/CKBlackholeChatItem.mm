@interface CKBlackholeChatItem
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKBlackholeChatItem

- (id)loadTranscriptText
{
  v2 = objc_alloc(MEMORY[0x1E696AD40]);
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"HAWKING_WARNING_NON_CELLULAR" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [v2 initWithString:v4 attributes:0];

  [v5 replaceCharactersInRange:0 withString:{0, @" "}];
  v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v7 = +[CKUIBehavior sharedBehaviors];
  hawkingWarningIcon = [v7 hawkingWarningIcon];

  [v6 setImage:hawkingWarningIcon];
  [v6 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v9 = +[CKUIBehavior sharedBehaviors];
  transcriptBoldFont = [v9 transcriptBoldFont];
  [transcriptBoldFont pointSize];
  v12 = v11;

  [hawkingWarningIcon size];
  v14 = v13;
  [hawkingWarningIcon size];
  v16 = v12 * (v14 / v15);
  v17 = +[CKUIBehavior sharedBehaviors];
  transcriptBoldFont2 = [v17 transcriptBoldFont];
  [transcriptBoldFont2 capHeight];
  v20 = (v19 - v12) * 0.5;

  [v6 setBounds:{0.0, v20, v16, v12}];
  v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
  [v5 insertAttributedString:v21 atIndex:0];

  v22 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v22 transcriptEmphasizedFontAttributes];

  [v5 addAttributes:transcriptEmphasizedFontAttributes range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v9;
    insets->left = v10;
    insets->bottom = v11;
    insets->right = v12;
  }

  v13 = objc_opt_class();
  transcriptText = [(CKChatItem *)self transcriptText];
  [v13 sizeThatFits:transcriptText text:{width, height}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  [text boundingRectWithSize:1 options:0 context:{fits.width, fits.height}];
  v5 = v4;
  v7 = v6;
  if (CKMainScreenScale_once_67 != -1)
  {
    +[CKBlackholeChatItem sizeThatFits:text:];
  }

  v8 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_67 != 0.0)
  {
    v8 = *&CKMainScreenScale_sMainScreenScale_67;
  }

  v9 = ceil(v5 * v8) / v8;
  v10 = ceil(v7 * v8) / v8 + 16.0;
  result.height = v10;
  result.width = v9;
  return result;
}

@end