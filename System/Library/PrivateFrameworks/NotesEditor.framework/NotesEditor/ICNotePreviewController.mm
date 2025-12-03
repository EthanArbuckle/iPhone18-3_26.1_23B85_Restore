@interface ICNotePreviewController
- (BOOL)shouldForceLightContent;
- (ICNotePreviewController)initWithNote:(id)note searchResult:(id)result;
- (NotesBackgroundView)backgroundView;
- (id)createTextViewUsingTextController:(id)controller stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering;
- (void)addPasswordEntryViewController;
- (void)registerForTraitChanges;
- (void)scrollToSearchResultIfNeeded;
- (void)setupPreviewWithInitialFrame:(CGRect)frame;
- (void)updateForceLightContentIfNecessary;
- (void)viewDidLoad;
@end

@implementation ICNotePreviewController

- (ICNotePreviewController)initWithNote:(id)note searchResult:(id)result
{
  noteCopy = note;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = ICNotePreviewController;
  v9 = [(ICNotePreviewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, note);
    objc_storeStrong(&v10->_searchResult, result);
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICNotePreviewController;
  [(ICNotePreviewController *)&v4 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D369C8]);
  [(ICNotePreviewController *)self setView:v3];

  [(ICNotePreviewController *)self registerForTraitChanges];
}

- (void)setupPreviewWithInitialFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsEmpty(frame))
  {
    view = [(ICNotePreviewController *)self view];
    [view setFrame:{x, y, width, height}];
  }

  note = [(ICNotePreviewController *)self note];
  isPasswordProtectedAndLocked = [note isPasswordProtectedAndLocked];

  if (isPasswordProtectedAndLocked)
  {
    [(ICNotePreviewController *)self addPasswordEntryViewController];
  }

  else
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      view2 = [(ICNotePreviewController *)self view];
      [view2 bounds];
      v13 = v12;

      v14 = [ICTK2TextView alloc];
      note2 = [(ICNotePreviewController *)self note];
      v16 = [(ICTK2TextView *)v14 initWithNote:note2 size:0 insideSystemPaper:0 insideSiriSnippet:v13, 1.79769313e308];
      [(ICNotePreviewController *)self setTextView:v16];

      textView = [(ICNotePreviewController *)self textView];
      [textView setDelegate:self];

      textView2 = [(ICNotePreviewController *)self textView];
      dateView = [textView2 dateView];
      [dateView setHidden:1];

      objc_opt_class();
      textView3 = [(ICNotePreviewController *)self textView];
      textLayoutManager = [textView3 textLayoutManager];
      textContainer = [textLayoutManager textContainer];
      textView4 = ICDynamicCast();

      [textView4 setWidthTracksTextView:1];
      [textView4 setInPreviewMode:1];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277D36968]);
      [(ICNotePreviewController *)self setTextController:v24];

      textController = [(ICNotePreviewController *)self textController];
      v26 = [(ICNotePreviewController *)self createTextViewUsingTextController:textController stylingTextUsingSeparateTextStorageForRendering:0];
      [(ICNotePreviewController *)self setTextView:v26];

      textView4 = [(ICNotePreviewController *)self textView];
      [textView4 setDelegate:self];
    }

    isEnabled = [MEMORY[0x277D368E8] isEnabled];
    textView5 = [(ICNotePreviewController *)self textView];
    v29 = textView5;
    if (isEnabled)
    {
      [textView5 setPaperEnabled:1];
    }

    else
    {
      [textView5 setStylusDrawingEnabled:1];
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    textView6 = [(ICNotePreviewController *)self textView];
    [textView6 setBackgroundColor:clearColor];

    note3 = [(ICNotePreviewController *)self note];
    ic_hasLightBackground = [note3 ic_hasLightBackground];

    v34 = [MEMORY[0x277D75348] ic_notePreviewBackgroundLightContent:ic_hasLightBackground];
    backgroundView = [(ICNotePreviewController *)self backgroundView];
    [backgroundView setBackgroundColor:v34];

    backgroundView2 = [(ICNotePreviewController *)self backgroundView];
    textView7 = [(ICNotePreviewController *)self textView];
    [backgroundView2 setContentView:textView7 useSafeAreaLayoutGuide:0 topMargin:0 bottomMargin:0 leadingMargin:12.0 trailingMargin:0.0 standalone:0.0 force:0.0];

    textView8 = [(ICNotePreviewController *)self textView];
    [textView8 setDataDetectorTypes:-1];

    textView9 = [(ICNotePreviewController *)self textView];
    [textView9 setTranslatesAutoresizingMaskIntoConstraints:0];

    textView10 = [(ICNotePreviewController *)self textView];
    textStorage = [textView10 textStorage];
    [textStorage fixupAfterEditing];

    backgroundView3 = [(ICNotePreviewController *)self backgroundView];
    ic_safeAreaLayoutGuide = [(ICNotePreviewController *)self ic_safeAreaLayoutGuide];
    backgroundView4 = [(ICNotePreviewController *)self backgroundView];
    [backgroundView3 addConstraintsForSafeAreaLayoutGuide:ic_safeAreaLayoutGuide toContainer:backgroundView4];

    textView11 = [(ICNotePreviewController *)self textView];
    [textView11 setUserInteractionEnabled:0];
  }

  [(ICNotePreviewController *)self scrollToSearchResultIfNeeded];
  [(ICNotePreviewController *)self updateForceLightContentIfNecessary];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
}

- (void)registerForTraitChanges
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [(ICNotePreviewController *)self registerForTraitChanges:v3 withAction:sel_updateForceLightContentIfNecessary];
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  view = [(ICNotePreviewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (id)createTextViewUsingTextController:(id)controller stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  controllerCopy = controller;
  view = [(ICNotePreviewController *)self view];
  [view bounds];
  v9 = v8;

  v10 = objc_alloc_init(ICLayoutManager);
  [(ICLayoutManager *)v10 setAllowsNonContiguousLayout:1];
  note = [(ICNotePreviewController *)self note];
  [controllerCopy setNote:note stylingTextUsingSeparateTextStorageForRendering:renderingCopy withLayoutManager:v10];

  v12 = [objc_alloc(MEMORY[0x277D36960]) initWithSize:{v9, 1.79769313e308}];
  [v12 setInPreviewMode:1];
  [v12 setWidthTracksTextView:1];
  [(ICLayoutManager *)v10 addTextContainer:v12];
  v13 = [ICTextView alloc];
  v14 = [(ICBaseTextView *)v13 initWithFrame:v12 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ICBaseLayoutManager *)v10 setTextView:v14];
  note2 = [(ICNotePreviewController *)self note];
  dateView = [(ICTextView *)v14 dateView];
  [dateView setNote:note2];

  return v14;
}

- (void)addPasswordEntryViewController
{
  v3 = objc_alloc(MEMORY[0x277D36898]);
  note = [(ICNotePreviewController *)self note];
  v19 = [v3 initWithNibName:0 bundle:0 note:note intent:0];

  view = [v19 view];
  [view setAutoresizingMask:18];

  view2 = [v19 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:1];

  view3 = [(ICNotePreviewController *)self view];
  [view3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view4 = [v19 view];
  [view4 setFrame:{v9, v11, v13, v15}];

  view5 = [(ICNotePreviewController *)self view];
  view6 = [v19 view];
  [view5 addSubview:view6];

  [(ICNotePreviewController *)self addChildViewController:v19];
}

- (void)scrollToSearchResultIfNeeded
{
  searchResult = [(ICNotePreviewController *)self searchResult];

  if (searchResult)
  {
    performBlockOnMainThreadAndWait();
  }
}

void __55__ICNotePreviewController_scrollToSearchResultIfNeeded__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) searchResult];
  v3 = [v2 object];
  v4 = ICDynamicCast();

  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v24 = 0;
  v25 = 0;
  v23 = &unk_21552D17E;
  if (v4)
  {
    v5 = [v4 note];
    v6 = [v5 textStorage];

    v7 = [v6 length];
    v8 = *MEMORY[0x277D74060];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__ICNotePreviewController_scrollToSearchResultIfNeeded__block_invoke_2;
    v17[3] = &unk_2781AD9B0;
    v18 = v4;
    v19 = &v20;
    [v6 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v17}];
    v9 = v18;
  }

  else
  {
    v6 = [*(a1 + 32) searchResult];
    v9 = [v6 firstMatchingRangeInNote];
    if (v9)
    {
      v10 = [*(a1 + 32) searchResult];
      v11 = [v10 firstMatchingRangeInNote];
      v12 = [v11 rangeValue];
      v13 = v21;
      v21[4] = v12;
      v13[5] = v14;
    }

    else
    {
      v15 = v21;
      v21[4] = 0;
      v15[5] = 0;
    }
  }

  v16 = [*(a1 + 32) textView];
  [v16 ic_scrollRangeToVisible:v21[4] consideringInsets:v21[5] animated:{1, 0}];

  _Block_object_dispose(&v20, 8);
}

void __55__ICNotePreviewController_scrollToSearchResultIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 attachment];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      v11 = *(*(a1 + 40) + 8);
      *(v11 + 32) = a3;
      *(v11 + 40) = a4;
      *a5 = 1;
    }
  }
}

- (BOOL)shouldForceLightContent
{
  note = [(ICNotePreviewController *)self note];
  prefersLightBackground = [note prefersLightBackground];

  if (prefersLightBackground)
  {
    return 1;
  }

  v5 = MEMORY[0x277D75C80];

  return [v5 ic_alwaysShowLightContent];
}

- (void)updateForceLightContentIfNecessary
{
  shouldForceLightContent = [(ICNotePreviewController *)self shouldForceLightContent];
  v4 = shouldForceLightContent;
  traitOverrides = [(ICNotePreviewController *)self traitOverrides];
  traitOverrides2 = traitOverrides;
  if (shouldForceLightContent)
  {
    [traitOverrides setUserInterfaceStyle:shouldForceLightContent];
  }

  else
  {
    v7 = [traitOverrides containsTrait:objc_opt_class()];

    if (!v7)
    {
      goto LABEL_6;
    }

    traitOverrides2 = [(ICNotePreviewController *)self traitOverrides];
    [traitOverrides2 removeTrait:objc_opt_class()];
  }

LABEL_6:
  view = [(ICNotePreviewController *)self view];
  [view setOverrideUserInterfaceStyle:v4];

  textView = [(ICNotePreviewController *)self textView];
  [textView setOverrideUserInterfaceStyle:v4];

  textView2 = [(ICNotePreviewController *)self textView];
  [textView2 setNeedsDisplay];
}

@end