@interface CKBlockContactChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (NSAttributedString)transcriptButtonText;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadTranscriptText;
@end

@implementation CKBlockContactChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  width = a3.width;
  v7 = [CKUIBehavior sharedBehaviors:a3.width];
  +[CKTranscriptBlockContactCell titleToButtonVerticalSpacing];
  v30 = v8;
  [v7 transcriptBoldTextAlignmentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = width - (v11 + v15);
  v18 = [(CKBlockContactChatItem *)self loadTranscriptText];
  [v18 boundingRectWithSize:1 options:0 context:{v17, 1.79769313e308}];
  v20 = v19;

  v21 = +[CKTranscriptBlockContactCell blockContactButton];
  v22 = [(CKBlockContactChatItem *)self transcriptButtonText];
  [v21 setAttributedTitle:v22 forState:0];

  [v21 sizeThatFits:{v17, 1.79769313e308}];
  v24 = v23;
  [v7 transcriptButtonContentEdgeInsets];
  if (a4)
  {
    a4->top = v10;
    a4->left = v12;
    a4->bottom = v14;
    a4->right = v16;
  }

  v27 = fmax(v30 - (v14 + v10), 0.0) + v20 + v24 + v25 + v26;

  v28 = width;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)loadTranscriptText
{
  v2 = IMSharedUtilitiesFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"GET_HELP_STATUS" value:&stru_1F04268F8 table:@"CommSafetyLocalizable"];

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 transcriptEmphasizedFontAttributes];

  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v5];

  return v6;
}

- (NSAttributedString)transcriptButtonText
{
  v3 = IMSharedUtilitiesFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"GET_HELP_BUTTON_TITLE" value:&stru_1F04268F8 table:@"CommSafetyLocalizable"];

  transcriptButtonText = self->_transcriptButtonText;
  if (!transcriptButtonText)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 centerTranscriptButtonTextAttributes];

    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v7];
    v9 = self->_transcriptButtonText;
    self->_transcriptButtonText = v8;

    transcriptButtonText = self->_transcriptButtonText;
  }

  v10 = transcriptButtonText;

  return transcriptButtonText;
}

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [a5 objectAtIndexedSubscript:{a4 - 1, a7.width, a7.height}];
  }

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 largeTranscriptSpace];
  v11 = v10;

  v12 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v8 topSpacing:v11 bottomSpacing:0.0];

  return v12;
}

@end