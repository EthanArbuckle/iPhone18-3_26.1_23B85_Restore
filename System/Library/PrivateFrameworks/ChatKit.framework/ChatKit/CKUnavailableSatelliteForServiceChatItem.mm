@interface CKUnavailableSatelliteForServiceChatItem
+ (id)newComposeTranscriptTextForiMessage:(BOOL)message isGroupChat:(BOOL)chat;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKUnavailableSatelliteForServiceChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  loadTranscriptText = [(CKUnavailableSatelliteForServiceChatItem *)self loadTranscriptText];
  [loadTranscriptText boundingRectWithSize:1 options:0 context:{width, height}];
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
  service = [iMChatItem service];
  isGroupChat = [iMChatItem isGroupChat];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];

  v10 = CKFrameworkBundle();
  v11 = v10;
  if (service == iMessageService)
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
  }

  else
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS";
  }

  if (service == iMessageService)
  {
    v13 = @"IMESSAGE_SATELLITE_NOT_AVAILABLE";
  }

  else
  {
    v13 = @"SMS_SATELLITE_NOT_AVAILABLE";
  }

  v14 = [v10 localizedStringForKey:v12 value:&stru_1F04268F8 table:{@"ChatKit-CarrierPigeon", transcriptEmphasizedFontAttributes}];

  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14 attributes:transcriptEmphasizedFontAttributes];
  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = CKFrameworkBundle();
  v19 = v18;
  if (isGroupChat)
  {
    v20 = @"GROUP_CHATS_SENDING_DISABLED";
  }

  else
  {
    v20 = v13;
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v22 = [v17 initWithString:v21 attributes:transcriptRegularFontAttributes];

  [v15 appendLocalizedFormat:v16];
  [v15 appendLocalizedFormat:v22];

  return v15;
}

+ (id)newComposeTranscriptTextForiMessage:(BOOL)message isGroupChat:(BOOL)chat
{
  chatCopy = chat;
  messageCopy = message;
  v6 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v6 transcriptEmphasizedFontAttributes];

  v8 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v8 transcriptRegularFontAttributes];

  v10 = CKFrameworkBundle();
  v11 = v10;
  if (messageCopy)
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
  }

  else
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:transcriptEmphasizedFontAttributes];
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  if (chatCopy)
  {
    v17 = @"GROUP_CHATS_SENDING_DISABLED";
  }

  else
  {
    v17 = @"IMESSAGE_SATELLITE_NOT_AVAILABLE";
  }

  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v20 = [v16 initWithString:v19 attributes:transcriptRegularFontAttributes];

  [v14 appendAttributedString:v15];
  [v14 appendAttributedString:v20];

  return v14;
}

@end