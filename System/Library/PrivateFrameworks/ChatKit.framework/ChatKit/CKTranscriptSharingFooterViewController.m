@interface CKTranscriptSharingFooterViewController
- (CKTranscriptSharingFooterViewController)initWithConversation:(id)a3;
- (void)configurePocketInteractionForScrollView:(id)a3;
- (void)loadView;
@end

@implementation CKTranscriptSharingFooterViewController

- (CKTranscriptSharingFooterViewController)initWithConversation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKTranscriptSharingFooterViewController;
  v6 = [(CKTranscriptSharingFooterViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, a3);
  }

  return v7;
}

- (void)loadView
{
  v52[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (v4)
  {
    v5 = [CKTranscriptSharingFooterView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v43 = [(CKTranscriptSharingFooterView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(CKTranscriptSharingFooterViewController *)self setView:v43];
    v10 = [(CKTranscriptSharingFooterViewController *)self conversation];
    v11 = [v10 chat];
    v12 = [v11 emergencyUserHandle];

    v13 = [(CKTranscriptSharingFooterViewController *)self conversation];
    v14 = [v13 chat];
    v47 = v12;
    v15 = [v12 displayNameForChat:v14];

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
    v25 = [v24 transcriptFooterNoteTitleFont];
    v52[0] = v25;
    v51 = *MEMORY[0x1E69DB650];
    v26 = v51;
    v27 = [MEMORY[0x1E69DC888] labelColor];
    v52[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v50 count:2];
    v29 = [v20 initWithString:v22 attributes:v28];

    v30 = objc_alloc(MEMORY[0x1E696AD40]);
    v48[0] = v23;
    v31 = +[CKUIBehavior sharedBehaviors];
    v32 = [v31 transcriptFooterNoteBodyFont];
    v48[1] = v26;
    v49[0] = v32;
    v33 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v49[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v45 = v19;
    v35 = [v30 initWithString:v19 attributes:v34];

    v36 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v31) = [v36 isEntryViewRefreshEnabled];

    if ((v31 & 1) == 0)
    {
      v37 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v6, v7, v8, v9}];
      v38 = [(CKTranscriptSharingFooterViewController *)v44 view];
      [v38 addSubview:v37];

      [(CKTranscriptSharingFooterView *)v43 setToolbar:v37];
    }

    v39 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v39 setAttributedText:v29];
    [v39 setNumberOfLines:0];
    v40 = [(CKTranscriptSharingFooterViewController *)v44 view];
    [v40 addSubview:v39];

    [(CKTranscriptSharingFooterView *)v43 setFooterTextViewTitle:v39];
    v41 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v41 setAttributedText:v35];
    [v41 setNumberOfLines:0];
    v42 = [(CKTranscriptSharingFooterViewController *)v44 view];
    [v42 addSubview:v41];

    [(CKTranscriptSharingFooterView *)v43 setFooterTextViewDesc:v41];
  }
}

- (void)configurePocketInteractionForScrollView:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isEntryViewRefreshEnabled];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v8 edge:4];
    v7 = [(CKTranscriptSharingFooterViewController *)self view];
    [v7 addInteraction:v6];
  }
}

@end