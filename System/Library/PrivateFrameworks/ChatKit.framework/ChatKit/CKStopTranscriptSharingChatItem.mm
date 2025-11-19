@interface CKStopTranscriptSharingChatItem
- (id)loadTranscriptText;
@end

@implementation CKStopTranscriptSharingChatItem

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 transcriptRegularFontAttributes];

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 transcriptEmphasizedFontAttributes];

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 stewieEnabled];

  if (v7)
  {
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"TS_STOP_SHARING_STATUS_ITEM" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v15 = CKAttributedFormatString(v3, v5, v9, v10, v11, v12, v13, v14, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end