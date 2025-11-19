@interface CKTranscriptSharingSuggestion
+ (id)bannerWithState:(int64_t)a3;
- (CKTranscriptSharingSuggestion)initWithState:(int64_t)a3;
- (CKTranscriptSharingSuggestionDelegate)delegate;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)suggestionCategoryId;
- (id)suggestionDismissAction;
- (id)suggestionImageSGView;
- (id)suggestionPrimaryAction;
- (id)suggestionTitle;
@end

@implementation CKTranscriptSharingSuggestion

+ (id)bannerWithState:(int64_t)a3
{
  v3 = [[CKTranscriptSharingSuggestion alloc] initWithState:a3];

  return v3;
}

- (CKTranscriptSharingSuggestion)initWithState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKTranscriptSharingSuggestion;
  result = [(CKTranscriptSharingSuggestion *)&v5 init];
  if (result)
  {
    result->_state = a3;
  }

  return result;
}

- (id)suggestionPrimaryAction
{
  if (self->_state == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__CKTranscriptSharingSuggestion_suggestionPrimaryAction__block_invoke;
    aBlock[3] = &unk_1E72F4D88;
    aBlock[4] = self;
    v2 = _Block_copy(aBlock);
    v3 = MEMORY[0x1E6999348];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"TS_STOP_SHARING_ACTION_BANNER" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v6 = [v3 actionWithTitle:v5 handler:v2];
  }

  else
  {
    v6 = 0;
    v2 = 0;
  }

  return v6;
}

void __56__CKTranscriptSharingSuggestion_suggestionPrimaryAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 transcriptStopSharingButtonTapped:*(a1 + 32)];
  }
}

- (id)suggestionDismissAction
{
  if (self->_state == 3)
  {
    v9[9] = v2;
    v10 = v3;
    v5 = [(CKTranscriptSharingSuggestion *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__CKTranscriptSharingSuggestion_suggestionDismissAction__block_invoke;
      v9[3] = &unk_1E72F4D88;
      v9[4] = self;
      v7 = [MEMORY[0x1E6999348] actionWithTitle:&stru_1F04268F8 handler:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __56__CKTranscriptSharingSuggestion_suggestionDismissAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptSharingBannerWillDismiss:*(a1 + 32)];
}

- (id)suggestionImageSGView
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.fill"];
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v2];
  v4 = [MEMORY[0x1E69DC888] systemGray2Color];
  [v3 setTintColor:v4];

  return v3;
}

- (id)suggestionTitle
{
  v2 = [(CKTranscriptSharingSuggestion *)self state]- 1;
  if (v2 > 2)
  {
    v5 = &stru_1F04268F8;
  }

  else
  {
    v3 = off_1E72F4DA8[v2];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
  }

  return v5;
}

- (id)suggestionCategoryId
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->suggestionDelegate);

  return WeakRetained;
}

- (CKTranscriptSharingSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end