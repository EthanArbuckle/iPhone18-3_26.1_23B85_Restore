@interface CKUnknownInternationalSenderChatItem
- (id)loadTranscriptText;
@end

@implementation CKUnknownInternationalSenderChatItem

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 transcriptEmphasizedFontAttributes];

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SENDER_IS_UNKNOWN_INTERNATIONAL_SENDER_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v3];

  return v6;
}

@end