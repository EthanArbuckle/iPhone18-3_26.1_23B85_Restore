@interface CKUnavailableSatelliteForServiceChatItem
+ (id)newComposeTranscriptTextForiMessage:(BOOL)a3 isGroupChat:(BOOL)a4;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)loadTranscriptText;
@end

@implementation CKUnavailableSatelliteForServiceChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [(CKUnavailableSatelliteForServiceChatItem *)self loadTranscriptText];
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
  v25 = [v5 transcriptRegularFontAttributes];

  v6 = [(CKChatItem *)self IMChatItem];
  v7 = [v6 service];
  v8 = [v6 isGroupChat];
  v9 = [MEMORY[0x1E69A5CA0] iMessageService];

  v10 = CKFrameworkBundle();
  v11 = v10;
  if (v7 == v9)
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
  }

  else
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS";
  }

  if (v7 == v9)
  {
    v13 = @"IMESSAGE_SATELLITE_NOT_AVAILABLE";
  }

  else
  {
    v13 = @"SMS_SATELLITE_NOT_AVAILABLE";
  }

  v14 = [v10 localizedStringForKey:v12 value:&stru_1F04268F8 table:{@"ChatKit-CarrierPigeon", v4}];

  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14 attributes:v4];
  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = CKFrameworkBundle();
  v19 = v18;
  if (v8)
  {
    v20 = @"GROUP_CHATS_SENDING_DISABLED";
  }

  else
  {
    v20 = v13;
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v22 = [v17 initWithString:v21 attributes:v25];

  [v15 appendLocalizedFormat:v16];
  [v15 appendLocalizedFormat:v22];

  return v15;
}

+ (id)newComposeTranscriptTextForiMessage:(BOOL)a3 isGroupChat:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 transcriptEmphasizedFontAttributes];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 transcriptRegularFontAttributes];

  v10 = CKFrameworkBundle();
  v11 = v10;
  if (v5)
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
  }

  else
  {
    v12 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:v7];
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  if (v4)
  {
    v17 = @"GROUP_CHATS_SENDING_DISABLED";
  }

  else
  {
    v17 = @"IMESSAGE_SATELLITE_NOT_AVAILABLE";
  }

  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v20 = [v16 initWithString:v19 attributes:v9];

  [v14 appendAttributedString:v15];
  [v14 appendAttributedString:v20];

  return v14;
}

@end