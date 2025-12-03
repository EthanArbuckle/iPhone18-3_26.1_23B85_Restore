@interface CKLocationUpdateSentChatItem
- (id)loadTranscriptText;
@end

@implementation CKLocationUpdateSentChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  imLocationUpdateSentChatItem = [(CKLocationUpdateSentChatItem *)self imLocationUpdateSentChatItem];
  chatIdentifier = [imLocationUpdateSentChatItem chatIdentifier];

  if (IMIsStringStewieRoadside())
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"ROADSIDE_LOCATION_UPDATE_SENT" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    v11 = [mEMORY[0x1E69A5B00] roadsideProviderNameForChatIdentifier:chatIdentifier];
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
  locationShareActionIcon = [v15 locationShareActionIcon];
  [v14 setImage:locationShareActionIcon];

  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v14];
  [v13 insertAttributedString:v17 atIndex:0];

  [v13 addAttributes:transcriptEmphasizedFontAttributes range:{0, objc_msgSend(v13, "length")}];

  return v13;
}

@end