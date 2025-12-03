@interface CKStewieStoppedSharingChatItem
- (id)_transcriptText;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKStewieStoppedSharingChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  if (index < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [items objectAtIndex:{index - 1, override.width, override.height}];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 mediumTranscriptSpace];
  v11 = v10;

  v12 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v8 topSpacing:v11 bottomSpacing:0.0];

  return v12;
}

- (id)loadTranscriptText
{
  _transcriptText = [(CKStewieStoppedSharingChatItem *)self _transcriptText];
  v3 = _transcriptText;
  v4 = &stru_1F04268F8;
  if (_transcriptText)
  {
    v4 = _transcriptText;
  }

  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  transcriptEmphasizedFontAttributes = [v6 transcriptEmphasizedFontAttributes];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:transcriptEmphasizedFontAttributes];

  return v8;
}

- (id)_transcriptText
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    iMChatItem = [(CKChatItem *)self IMChatItem];
    iMChatItem2 = [(CKChatItem *)self IMChatItem];
    handle = [iMChatItem2 handle];
    chat = [iMChatItem chat];
    v9 = [handle displayNameForChat:chat];

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