@interface NotePreviewController
- (NotePreviewController)initWithNote:(id)note searchResult:(id)result;
- (NotesBackgroundView)backgroundView;
- (id)attachmentContentIDs;
- (id)attachmentPresentationForContentID:(id)d;
- (id)noteContentLayer:(id)layer fileURLForAttachmentWithContentID:(id)d;
- (void)dealloc;
- (void)registerForTraitChanges;
- (void)setupPreviewWithInitialFrame:(CGRect)frame;
- (void)updateForceLightContentIfNecessary;
@end

@implementation NotePreviewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NotePreviewController;
  [(NotePreviewController *)&v4 dealloc];
}

- (NotePreviewController)initWithNote:(id)note searchResult:(id)result
{
  noteCopy = note;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = NotePreviewController;
  v9 = [(NotePreviewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeStrong(&v10->_searchResult, result);
    [(NotePreviewController *)v10 registerForTraitChanges];
  }

  return v10;
}

- (void)setupPreviewWithInitialFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v77[4] = *MEMORY[0x1E69E9840];
  v8 = [[NotesBackgroundView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(NotePreviewController *)self setView:v8];

  iCBackgroundColor = [MEMORY[0x1E69DC888] ICBackgroundColor];
  view = [(NotePreviewController *)self view];
  [view setBackgroundColor:iCBackgroundColor];

  height = [[NoteContentLayer alloc] initWithFrame:1 forPreview:x, y, width, height];
  [(NotePreviewController *)self setContentLayer:height];

  contentLayer = [(NotePreviewController *)self contentLayer];
  [contentLayer setAttachmentPresentationDelegate:self];

  contentLayer2 = [(NotePreviewController *)self contentLayer];
  [contentLayer2 setAllowsAttachments:1];

  backgroundView = [(NotePreviewController *)self backgroundView];
  [backgroundView setPreviewing:1];

  backgroundView2 = [(NotePreviewController *)self backgroundView];
  contentLayer3 = [(NotePreviewController *)self contentLayer];
  [backgroundView2 setContentView:contentLayer3 useSafeAreaLayoutGuide:0 topMargin:0 bottomMargin:0 leadingMargin:0.0 trailingMargin:0.0 standalone:0.0 force:0.0];

  contentLayer4 = [(NotePreviewController *)self contentLayer];
  [contentLayer4 scrollToTopAnimated:0];

  contentLayer5 = [(NotePreviewController *)self contentLayer];
  noteHTMLEditorView = [contentLayer5 noteHTMLEditorView];
  [noteHTMLEditorView setUserInteractionEnabled:0];

  contentLayer6 = [(NotePreviewController *)self contentLayer];
  noteHTMLEditorView2 = [contentLayer6 noteHTMLEditorView];
  webView = [noteHTMLEditorView2 webView];

  leftAnchor = [webView leftAnchor];
  view2 = [(NotePreviewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  rightAnchor = [webView rightAnchor];
  view3 = [(NotePreviewController *)self view];
  rightAnchor2 = [view3 rightAnchor];
  v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  topAnchor = [webView topAnchor];
  view4 = [(NotePreviewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [webView bottomAnchor];
  view5 = [(NotePreviewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

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

  note = [(NotePreviewController *)self note];
  isPlainText = [note isPlainText];

  note2 = [(NotePreviewController *)self note];
  content = [note2 content];

  note3 = [(NotePreviewController *)self note];
  attachments = [note3 attachments];
  allObjects = [attachments allObjects];
  v46 = [NoteAttachmentPresentation attachmentPresentationsForAttachments:allObjects];
  [(NotePreviewController *)self setAttachmentPresentations:v46];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  attachmentPresentations = [(NotePreviewController *)self attachmentPresentations];
  v48 = [attachmentPresentations countByEnumeratingWithState:&v72 objects:v76 count:16];
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
          objc_enumerationMutation(attachmentPresentations);
        }

        v52 = *(*(&v72 + 1) + 8 * i);
        contentIDURL = [v52 contentIDURL];
        [NotesCIDURLProtocol registerDataProvider:v52 forCIDURL:contentIDURL];
      }

      v49 = [attachmentPresentations countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v49);
  }

  contentLayer7 = [(NotePreviewController *)self contentLayer];
  note4 = [(NotePreviewController *)self note];
  attachments2 = [note4 attachments];
  allObjects2 = [attachments2 allObjects];
  [contentLayer7 setContent:content isPlainText:isPlainText attachments:allObjects2];

  note5 = [(NotePreviewController *)self note];
  modificationDate = [note5 modificationDate];

  contentLayer8 = [(NotePreviewController *)self contentLayer];
  [contentLayer8 setTimestampDate:modificationDate];

  attachmentContentIDs = [(NotePreviewController *)self attachmentContentIDs];
  attachmentPresentations2 = [(NotePreviewController *)self attachmentPresentations];
  v71 = 0;
  [NoteAttachmentPresentation prepareDocumentForPresentationWithAttachmentContentIDs:attachmentContentIDs withAttachmentPresentations:attachmentPresentations2 occurences:&v71];
  v63 = v71;

  [(NotePreviewController *)self updateForceLightContentIfNecessary];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (id)attachmentContentIDs
{
  contentLayer = [(NotePreviewController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  attachmentContentIDs = [noteHTMLEditorView attachmentContentIDs];

  return attachmentContentIDs;
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  view = [(NotePreviewController *)self view];
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

- (id)noteContentLayer:(id)layer fileURLForAttachmentWithContentID:(id)d
{
  v4 = [(NotePreviewController *)self attachmentPresentationForContentID:d];
  dataFileURL = [v4 dataFileURL];

  return dataFileURL;
}

- (id)attachmentPresentationForContentID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  attachmentPresentations = [(NotePreviewController *)self attachmentPresentations];
  v6 = [attachmentPresentations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        contentID = [v9 contentID];
        v11 = [contentID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [attachmentPresentations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  ic_alwaysShowLightContent = [MEMORY[0x1E69DD1B8] ic_alwaysShowLightContent];
  v4 = ic_alwaysShowLightContent;
  traitOverrides = [(NotePreviewController *)self traitOverrides];
  traitOverrides2 = traitOverrides;
  if (ic_alwaysShowLightContent)
  {
    [traitOverrides setUserInterfaceStyle:ic_alwaysShowLightContent];
  }

  else
  {
    v7 = [traitOverrides containsTrait:objc_opt_class()];

    if (!v7)
    {
      goto LABEL_6;
    }

    traitOverrides2 = [(NotePreviewController *)self traitOverrides];
    [traitOverrides2 removeTrait:objc_opt_class()];
  }

LABEL_6:
  view = [(NotePreviewController *)self view];
  [view _setOverrideUserInterfaceStyle:v4];

  contentLayer = [(NotePreviewController *)self contentLayer];
  [contentLayer _setOverrideUserInterfaceStyle:v4];
}

@end