@interface CKStopTranscriptSharingChatItem
- (id)loadTranscriptText;
@end

@implementation CKStopTranscriptSharingChatItem

- (id)loadTranscriptText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFontAttributes = [v2 transcriptRegularFontAttributes];

  v4 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v4 transcriptEmphasizedFontAttributes];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"TS_STOP_SHARING_STATUS_ITEM" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v15 = CKAttributedFormatString(transcriptRegularFontAttributes, transcriptEmphasizedFontAttributes, v9, v10, v11, v12, v13, v14, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end