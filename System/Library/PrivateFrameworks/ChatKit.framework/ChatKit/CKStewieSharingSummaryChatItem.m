@interface CKStewieSharingSummaryChatItem
- (id)_transcriptText;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKStewieSharingSummaryChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v12 objectAtIndex:a4 - 1];
  }

  v15 = [v14 layoutType];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = v16;
  if (v15 == 20)
  {
    [v16 mediumTranscriptSpace];
  }

  else
  {
    [v16 largeTranscriptSpace];
  }

  v19 = v18;

  v20 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v19 bottomSpacing:v19];

  return v20;
}

- (id)loadTranscriptText
{
  v2 = [(CKStewieSharingSummaryChatItem *)self _transcriptText];
  v3 = v2;
  v4 = &stru_1F04268F8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 transcriptEmphasizedFontAttributes];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v7];

  return v8;
}

- (id)_transcriptText
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (v4)
  {
    v5 = [(CKChatItem *)self IMChatItem];
    v6 = [(CKChatItem *)self IMChatItem];
    v7 = [v6 handle];
    v8 = [v5 chat];
    v9 = [v7 displayNameForChat:v8];

    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"TS_DESCRIPTION_SUMMARY_TEXT" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v13 = [v10 localizedStringWithFormat:v12, v9, v9];
  }

  else
  {
    v13 = &stru_1F04268F8;
  }

  return v13;
}

@end