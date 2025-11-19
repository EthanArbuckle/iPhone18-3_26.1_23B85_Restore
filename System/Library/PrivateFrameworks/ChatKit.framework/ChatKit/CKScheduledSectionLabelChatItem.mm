@interface CKScheduledSectionLabelChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)loadTranscriptText;
@end

@implementation CKScheduledSectionLabelChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKScheduledSectionLabelChatItem *)self loadTranscriptText];
  [v6 boundingRectWithSize:1 options:0 context:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 transcriptEmphasizedFontAttributes];

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SEND_LATER_TRANSCRIPT" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v3];

  return v6;
}

@end