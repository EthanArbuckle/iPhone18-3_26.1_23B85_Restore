@interface CKStewieStoppedSharingChatItem
- (id)_transcriptText;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKStewieStoppedSharingChatItem

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [a5 objectAtIndex:{a4 - 1, a7.width, a7.height}];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 mediumTranscriptSpace];
  v11 = v10;

  v12 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v8 topSpacing:v11 bottomSpacing:0.0];

  return v12;
}

- (id)loadTranscriptText
{
  v2 = [(CKStewieStoppedSharingChatItem *)self _transcriptText];
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
    v12 = [v11 localizedStringForKey:@"TS_STOPPED_SHARING_NOTICE" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v13 = [v10 localizedStringWithFormat:v12, v9];
  }

  else
  {
    v13 = &stru_1F04268F8;
  }

  return v13;
}

@end