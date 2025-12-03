@interface CKStewieSharingSummaryChatItem
- (id)_transcriptText;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKStewieSharingSummaryChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndex:index - 1];
  }

  layoutType = [v14 layoutType];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = v16;
  if (layoutType == 20)
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
  _transcriptText = [(CKStewieSharingSummaryChatItem *)self _transcriptText];
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