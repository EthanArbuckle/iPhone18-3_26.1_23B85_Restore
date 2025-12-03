@interface CKTranscriptGroupHeaderViewController
- (UIButton)headerButton;
- (id)_groupHeaderComposeRecipients;
- (void)_handleConversationRecipientsChanged:(id)changed;
- (void)dealloc;
- (void)loadView;
@end

@implementation CKTranscriptGroupHeaderViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKTranscriptGroupHeaderViewController;
  [(CKTranscriptGroupHeaderViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [CKTranscriptGroupHeaderView alloc];
  conversation = [(CKTranscriptHeaderViewController *)self conversation];
  v10 = [(CKTranscriptGroupHeaderView *)v3 initWithFrame:conversation conversation:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CKTranscriptGroupHeaderViewController *)self setView:v10];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  conversation2 = [(CKTranscriptHeaderViewController *)self conversation];
  [defaultCenter addObserver:self selector:sel__handleConversationRecipientsChanged_ name:@"CKConversationParticipantsDidChangeNotification" object:conversation2];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleConversationRecipientsChanged_ name:*MEMORY[0x1E69A6828] object:0];

  textView = [(CKTranscriptGroupHeaderView *)v10 textView];
  _groupHeaderComposeRecipients = [(CKTranscriptGroupHeaderViewController *)self _groupHeaderComposeRecipients];
  [textView setRecipients:_groupHeaderComposeRecipients];
}

- (UIButton)headerButton
{
  view = [(CKTranscriptGroupHeaderViewController *)self view];
  actionButton = [view actionButton];

  return actionButton;
}

- (id)_groupHeaderComposeRecipients
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  conversation = [(CKTranscriptHeaderViewController *)self conversation];
  handles = [conversation handles];
  v6 = [v3 initWithCapacity:{objc_msgSend(handles, "count")}];

  conversation2 = [(CKTranscriptHeaderViewController *)self conversation];
  handles2 = [conversation2 handles];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CKTranscriptGroupHeaderViewController__groupHeaderComposeRecipients__block_invoke;
  v13[3] = &unk_1E72F6348;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [handles2 enumerateObjectsUsingBlock:v13];

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

- (void)_handleConversationRecipientsChanged:(id)changed
{
  view = [(CKTranscriptGroupHeaderViewController *)self view];
  textView = [view textView];
  _groupHeaderComposeRecipients = [(CKTranscriptGroupHeaderViewController *)self _groupHeaderComposeRecipients];
  [textView setRecipients:_groupHeaderComposeRecipients];
}

@end