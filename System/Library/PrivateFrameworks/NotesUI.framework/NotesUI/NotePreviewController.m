@interface NotePreviewController
- (NotePreviewController)initWithNote:(id)a3 searchResult:(id)a4;
- (NotesBackgroundView)backgroundView;
- (id)attachmentContentIDs;
- (id)attachmentPresentationForContentID:(id)a3;
- (id)noteContentLayer:(id)a3 fileURLForAttachmentWithContentID:(id)a4;
- (void)dealloc;
- (void)registerForTraitChanges;
- (void)setupPreviewWithInitialFrame:(CGRect)a3;
- (void)updateForceLightContentIfNecessary;
@end

@implementation NotePreviewController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NotePreviewController;
  [(NotePreviewController *)&v4 dealloc];
}

- (NotePreviewController)initWithNote:(id)a3 searchResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NotePreviewController;
  v9 = [(NotePreviewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_searchResult, a4);
    [(NotePreviewController *)v10 registerForTraitChanges];
  }

  return v10;
}

- (void)setupPreviewWithInitialFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v77[4] = *MEMORY[0x1E69E9840];
  v8 = [[NotesBackgroundView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NotePreviewController *)self setView:v8];

  v9 = [MEMORY[0x1E69DC888] ICBackgroundColor];
  v10 = [(NotePreviewController *)self view];
  [v10 setBackgroundColor:v9];

  v11 = [[NoteContentLayer alloc] initWithFrame:1 forPreview:x, y, width, height];
  [(NotePreviewController *)self setContentLayer:v11];

  v12 = [(NotePreviewController *)self contentLayer];
  [v12 setAttachmentPresentationDelegate:self];

  v13 = [(NotePreviewController *)self contentLayer];
  [v13 setAllowsAttachments:1];

  v14 = [(NotePreviewController *)self backgroundView];
  [v14 setPreviewing:1];

  v15 = [(NotePreviewController *)self backgroundView];
  v16 = [(NotePreviewController *)self contentLayer];
  [v15 setContentView:v16 useSafeAreaLayoutGuide:0 topMargin:0 bottomMargin:0 leadingMargin:0.0 trailingMargin:0.0 standalone:0.0 force:0.0];

  v17 = [(NotePreviewController *)self contentLayer];
  [v17 scrollToTopAnimated:0];

  v18 = [(NotePreviewController *)self contentLayer];
  v19 = [v18 noteHTMLEditorView];
  [v19 setUserInteractionEnabled:0];

  v20 = [(NotePreviewController *)self contentLayer];
  v21 = [v20 noteHTMLEditorView];
  v22 = [v21 webView];

  v23 = [v22 leftAnchor];
  v24 = [(NotePreviewController *)self view];
  v25 = [v24 leftAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  v27 = [v22 rightAnchor];
  v28 = [(NotePreviewController *)self view];
  v29 = [v28 rightAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  v31 = [v22 topAnchor];
  v32 = [(NotePreviewController *)self view];
  v33 = [v32 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];

  v35 = [v22 bottomAnchor];
  v36 = [(NotePreviewController *)self view];
  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];

  v39 = MEMORY[0x1E696ACD8];
  v69 = v30;
  v70 = v26;
  v77[0] = v26;
  v77[1] = v30;
  v67 = v38;
  v68 = v34;
  v77[2] = v34;
  v77[3] = v38;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:4];
  [v39 activateConstraints:v40];

  v41 = [(NotePreviewController *)self note];
  v65 = [v41 isPlainText];

  v42 = [(NotePreviewController *)self note];
  v66 = [v42 content];

  v43 = [(NotePreviewController *)self note];
  v44 = [v43 attachments];
  v45 = [v44 allObjects];
  v46 = [NoteAttachmentPresentation attachmentPresentationsForAttachments:v45];
  [(NotePreviewController *)self setAttachmentPresentations:v46];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v47 = [(NotePreviewController *)self attachmentPresentations];
  v48 = [v47 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v73;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v73 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v72 + 1) + 8 * i);
        v53 = [v52 contentIDURL];
        [NotesCIDURLProtocol registerDataProvider:v52 forCIDURL:v53];
      }

      v49 = [v47 countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v49);
  }

  v54 = [(NotePreviewController *)self contentLayer];
  v55 = [(NotePreviewController *)self note];
  v56 = [v55 attachments];
  v57 = [v56 allObjects];
  [v54 setContent:v66 isPlainText:v65 attachments:v57];

  v58 = [(NotePreviewController *)self note];
  v59 = [v58 modificationDate];

  v60 = [(NotePreviewController *)self contentLayer];
  [v60 setTimestampDate:v59];

  v61 = [(NotePreviewController *)self attachmentContentIDs];
  v62 = [(NotePreviewController *)self attachmentPresentations];
  v71 = 0;
  [NoteAttachmentPresentation prepareDocumentForPresentationWithAttachmentContentIDs:v61 withAttachmentPresentations:v62 occurences:&v71];
  v63 = v71;

  [(NotePreviewController *)self updateForceLightContentIfNecessary];
  v64 = [MEMORY[0x1E696AD88] defaultCenter];
  [v64 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (id)attachmentContentIDs
{
  v2 = [(NotePreviewController *)self contentLayer];
  v3 = [v2 noteHTMLEditorView];
  v4 = [v3 attachmentContentIDs];

  return v4;
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  v3 = [(NotePreviewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)registerForTraitChanges
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(NotePreviewController *)self registerForTraitChanges:v3 withAction:sel_updateForceLightContentIfNecessary];
}

- (id)noteContentLayer:(id)a3 fileURLForAttachmentWithContentID:(id)a4
{
  v4 = [(NotePreviewController *)self attachmentPresentationForContentID:a4];
  v5 = [v4 dataFileURL];

  return v5;
}

- (id)attachmentPresentationForContentID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NotePreviewController *)self attachmentPresentations];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 contentID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateForceLightContentIfNecessary
{
  v3 = [MEMORY[0x1E69DD1B8] ic_alwaysShowLightContent];
  v4 = v3;
  v5 = [(NotePreviewController *)self traitOverrides];
  v6 = v5;
  if (v3)
  {
    [v5 setUserInterfaceStyle:v3];
  }

  else
  {
    v7 = [v5 containsTrait:objc_opt_class()];

    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [(NotePreviewController *)self traitOverrides];
    [v6 removeTrait:objc_opt_class()];
  }

LABEL_6:
  v8 = [(NotePreviewController *)self view];
  [v8 _setOverrideUserInterfaceStyle:v4];

  v9 = [(NotePreviewController *)self contentLayer];
  [v9 _setOverrideUserInterfaceStyle:v4];
}

@end