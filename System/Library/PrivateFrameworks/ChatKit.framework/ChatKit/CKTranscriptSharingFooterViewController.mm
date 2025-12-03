@interface CKTranscriptSharingFooterViewController
- (CKTranscriptSharingFooterViewController)initWithConversation:(id)conversation;
- (void)configurePocketInteractionForScrollView:(id)view;
- (void)loadView;
@end

@implementation CKTranscriptSharingFooterViewController

- (CKTranscriptSharingFooterViewController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v9.receiver = self;
  v9.super_class = CKTranscriptSharingFooterViewController;
  v6 = [(CKTranscriptSharingFooterViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, conversation);
  }

  return v7;
}

- (void)loadView
{
  v52[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    v5 = [CKTranscriptSharingFooterView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v43 = [(CKTranscriptSharingFooterView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(CKTranscriptSharingFooterViewController *)self setView:v43];
    conversation = [(CKTranscriptSharingFooterViewController *)self conversation];
    chat = [conversation chat];
    emergencyUserHandle = [chat emergencyUserHandle];

    conversation2 = [(CKTranscriptSharingFooterViewController *)self conversation];
    chat2 = [conversation2 chat];
    v47 = emergencyUserHandle;
    v15 = [emergencyUserHandle displayNameForChat:chat2];

    v16 = MEMORY[0x1E696AEC0];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"TS_DESCRIPTION_INPUT_DISABLED_DESCRIPTION" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v46 = v15;
    [v16 localizedStringWithFormat:v18, v15];
    v19 = v44 = self;

    v20 = objc_alloc(MEMORY[0x1E696AD40]);
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"TS_DESCRIPTION_INPUT_DISABLED_TITLE" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
    v50 = *MEMORY[0x1E69DB648];
    v23 = v50;
    v24 = +[CKUIBehavior sharedBehaviors];
    transcriptFooterNoteTitleFont = [v24 transcriptFooterNoteTitleFont];
    v52[0] = transcriptFooterNoteTitleFont;
    v51 = *MEMORY[0x1E69DB650];
    v26 = v51;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v52[1] = labelColor;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v50 count:2];
    v29 = [v20 initWithString:v22 attributes:v28];

    v30 = objc_alloc(MEMORY[0x1E696AD40]);
    v48[0] = v23;
    v31 = +[CKUIBehavior sharedBehaviors];
    transcriptFooterNoteBodyFont = [v31 transcriptFooterNoteBodyFont];
    v48[1] = v26;
    v49[0] = transcriptFooterNoteBodyFont;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v49[1] = secondaryLabelColor;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v45 = v19;
    v35 = [v30 initWithString:v19 attributes:v34];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v31) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if ((v31 & 1) == 0)
    {
      v37 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v6, v7, v8, v9}];
      view = [(CKTranscriptSharingFooterViewController *)v44 view];
      [view addSubview:v37];

      [(CKTranscriptSharingFooterView *)v43 setToolbar:v37];
    }

    v39 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v39 setAttributedText:v29];
    [v39 setNumberOfLines:0];
    view2 = [(CKTranscriptSharingFooterViewController *)v44 view];
    [view2 addSubview:v39];

    [(CKTranscriptSharingFooterView *)v43 setFooterTextViewTitle:v39];
    v41 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v41 setAttributedText:v35];
    [v41 setNumberOfLines:0];
    view3 = [(CKTranscriptSharingFooterViewController *)v44 view];
    [view3 addSubview:v41];

    [(CKTranscriptSharingFooterView *)v43 setFooterTextViewDesc:v41];
  }
}

- (void)configurePocketInteractionForScrollView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:viewCopy edge:4];
    view = [(CKTranscriptSharingFooterViewController *)self view];
    [view addInteraction:v6];
  }
}

@end