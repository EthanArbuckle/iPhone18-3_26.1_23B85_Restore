@interface CKScheduledSectionLabelChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKScheduledSectionLabelChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  loadTranscriptText = [(CKScheduledSectionLabelChatItem *)self loadTranscriptText];
  [loadTranscriptText boundingRectWithSize:1 options:0 context:{width, height}];
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
  transcriptEmphasizedFontAttributes = [v2 transcriptEmphasizedFontAttributes];

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SEND_LATER_TRANSCRIPT" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:transcriptEmphasizedFontAttributes];

  return v6;
}

@end