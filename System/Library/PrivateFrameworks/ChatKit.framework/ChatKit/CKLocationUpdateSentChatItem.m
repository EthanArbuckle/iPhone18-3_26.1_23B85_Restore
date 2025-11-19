@interface CKLocationUpdateSentChatItem
- (id)loadTranscriptText;
@end

@implementation CKLocationUpdateSentChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = [(CKLocationUpdateSentChatItem *)self imLocationUpdateSentChatItem];
  v6 = [v5 chatIdentifier];

  if (IMIsStringStewieRoadside())
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"ROADSIDE_LOCATION_UPDATE_SENT" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
    v10 = [MEMORY[0x1E69A5B00] sharedInstance];
    v11 = [v10 roadsideProviderNameForChatIdentifier:v6];
    v12 = [v7 localizedStringWithFormat:v9, v11];
  }

  else
  {
    v8 = CKFrameworkBundle();
    v12 = [v8 localizedStringForKey:@"EMERGENCY_LOCATION_UPDATE_SENT" value:&stru_1F04268F8 table:@"ChatKit-SYDROB_FEATURES"];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:0];
  [v13 replaceCharactersInRange:0 withString:{0, @" "}];
  v14 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 locationShareActionIcon];
  [v14 setImage:v16];

  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v14];
  [v13 insertAttributedString:v17 atIndex:0];

  [v13 addAttributes:v4 range:{0, objc_msgSend(v13, "length")}];

  return v13;
}

@end