@interface CKTranscriptGroupHeaderViewController
- (UIButton)headerButton;
- (id)_groupHeaderComposeRecipients;
- (void)_handleConversationRecipientsChanged:(id)a3;
- (void)dealloc;
- (void)loadView;
@end

@implementation CKTranscriptGroupHeaderViewController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKTranscriptGroupHeaderViewController;
  [(CKTranscriptGroupHeaderViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CKTranscriptGroupHeaderView alloc];
  v4 = [(CKTranscriptHeaderViewController *)self conversation];
  v10 = [(CKTranscriptGroupHeaderView *)v3 initWithFrame:v4 conversation:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CKTranscriptGroupHeaderViewController *)self setView:v10];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(CKTranscriptHeaderViewController *)self conversation];
  [v5 addObserver:self selector:sel__handleConversationRecipientsChanged_ name:@"CKConversationParticipantsDidChangeNotification" object:v6];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__handleConversationRecipientsChanged_ name:*MEMORY[0x1E69A6828] object:0];

  v8 = [(CKTranscriptGroupHeaderView *)v10 textView];
  v9 = [(CKTranscriptGroupHeaderViewController *)self _groupHeaderComposeRecipients];
  [v8 setRecipients:v9];
}

- (UIButton)headerButton
{
  v2 = [(CKTranscriptGroupHeaderViewController *)self view];
  v3 = [v2 actionButton];

  return v3;
}

- (id)_groupHeaderComposeRecipients
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(CKTranscriptHeaderViewController *)self conversation];
  v5 = [v4 handles];
  v6 = [v3 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(CKTranscriptHeaderViewController *)self conversation];
  v8 = [v7 handles];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CKTranscriptGroupHeaderViewController__groupHeaderComposeRecipients__block_invoke;
  v13[3] = &unk_1E72F6348;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [v8 enumerateObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __70__CKTranscriptGroupHeaderViewController__groupHeaderComposeRecipients__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [(CKIMComposeRecipient *)[CKIMGroupHeaderRecipient alloc] initWithHandle:v3];
  v4 = [*(a1 + 32) conversation];
  v5 = [v4 chat];
  v6 = [v3 displayNameForChat:v5];

  [(CKIMGroupHeaderRecipient *)v7 setDisplayString:v6];
  [*(a1 + 40) addObject:v7];
}

- (void)_handleConversationRecipientsChanged:(id)a3
{
  v6 = [(CKTranscriptGroupHeaderViewController *)self view];
  v4 = [v6 textView];
  v5 = [(CKTranscriptGroupHeaderViewController *)self _groupHeaderComposeRecipients];
  [v4 setRecipients:v5];
}

@end