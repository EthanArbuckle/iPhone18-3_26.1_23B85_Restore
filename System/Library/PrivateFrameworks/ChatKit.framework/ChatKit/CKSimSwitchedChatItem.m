@interface CKSimSwitchedChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)loadTranscriptText;
@end

@implementation CKSimSwitchedChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [(CKChatItem *)self transcriptText];
  [v9 boundingRectWithSize:1 options:0 context:{width, height}];
  v11 = v10;

  [v8 smallTranscriptSpace];
  v13 = v12;
  [v8 transcriptBoldTextAlignmentInsets];
  if (a4)
  {
    a4->top = v14;
    a4->left = v15;
    a4->bottom = v16;
    a4->right = v17;
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
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 transcriptRegularFontAttributes];

  v7 = [(CKChatItem *)self IMChatItem];
  v8 = [v7 sender];
  v9 = [v8 _stripFZIDPrefix];

  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"NUMBER_CHANGED" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = [v11 stringWithFormat:v13, v9];

  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  if (v16 == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  v18 = [(__CFString *)v17 stringByAppendingString:v14];

  v19 = [v10 initWithString:v18 attributes:v6];
  if (v9)
  {
    v20 = [v19 string];
    v21 = [v20 rangeOfString:v9];
    v23 = v22;

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v19 setAttributes:v4 range:{v21, v23}];
    }
  }

  return v19;
}

@end