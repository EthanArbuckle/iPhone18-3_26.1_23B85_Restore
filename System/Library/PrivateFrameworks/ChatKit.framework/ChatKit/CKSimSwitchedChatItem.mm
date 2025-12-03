@interface CKSimSwitchedChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKSimSwitchedChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  transcriptText = [(CKChatItem *)self transcriptText];
  [transcriptText boundingRectWithSize:1 options:0 context:{width, height}];
  v11 = v10;

  [v8 smallTranscriptSpace];
  v13 = v12;
  [v8 transcriptBoldTextAlignmentInsets];
  if (insets)
  {
    insets->top = v14;
    insets->left = v15;
    insets->bottom = v16;
    insets->right = v17;
  }

  v18 = v11 - v14 + v13 + v11 - v16;

  v19 = 0.0;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v5 transcriptRegularFontAttributes];

  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];
  _stripFZIDPrefix = [sender _stripFZIDPrefix];

  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"NUMBER_CHANGED" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = [v11 stringWithFormat:v13, _stripFZIDPrefix];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  v18 = [(__CFString *)v17 stringByAppendingString:v14];

  v19 = [v10 initWithString:v18 attributes:transcriptRegularFontAttributes];
  if (_stripFZIDPrefix)
  {
    string = [v19 string];
    v21 = [string rangeOfString:_stripFZIDPrefix];
    v23 = v22;

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v19 setAttributes:transcriptEmphasizedFontAttributes range:{v21, v23}];
    }
  }

  return v19;
}

@end