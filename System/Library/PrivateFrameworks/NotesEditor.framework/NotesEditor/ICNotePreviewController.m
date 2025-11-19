@interface ICNotePreviewController
- (BOOL)shouldForceLightContent;
- (ICNotePreviewController)initWithNote:(id)a3 searchResult:(id)a4;
- (NotesBackgroundView)backgroundView;
- (id)createTextViewUsingTextController:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4;
- (void)addPasswordEntryViewController;
- (void)registerForTraitChanges;
- (void)scrollToSearchResultIfNeeded;
- (void)setupPreviewWithInitialFrame:(CGRect)a3;
- (void)updateForceLightContentIfNecessary;
- (void)viewDidLoad;
@end

@implementation ICNotePreviewController

- (ICNotePreviewController)initWithNote:(id)a3 searchResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICNotePreviewController;
  v9 = [(ICNotePreviewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_searchResult, a4);
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

- (void)setupPreviewWithInitialFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v8 = [(ICNotePreviewController *)self view];
    [v8 setFrame:{x, y, width, height}];
  }

  v9 = [(ICNotePreviewController *)self note];
  v10 = [v9 isPasswordProtectedAndLocked];

  if (v10)
  {
    [(ICNotePreviewController *)self addPasswordEntryViewController];
  }

  else
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v11 = [(ICNotePreviewController *)self view];
      [v11 bounds];
      v13 = v12;

      v14 = [ICTK2TextView alloc];
      v15 = [(ICNotePreviewController *)self note];
      v16 = [(ICTK2TextView *)v14 initWithNote:v15 size:0 insideSystemPaper:0 insideSiriSnippet:v13, 1.79769313e308];
      [(ICNotePreviewController *)self setTextView:v16];

      v17 = [(ICNotePreviewController *)self textView];
      [v17 setDelegate:self];

      v18 = [(ICNotePreviewController *)self textView];
      v19 = [v18 dateView];
      [v19 setHidden:1];

      objc_opt_class();
      v20 = [(ICNotePreviewController *)self textView];
      v21 = [v20 textLayoutManager];
      v22 = [v21 textContainer];
      v23 = ICDynamicCast();

      [v23 setWidthTracksTextView:1];
      [v23 setInPreviewMode:1];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277D36968]);
      [(ICNotePreviewController *)self setTextController:v24];

      v25 = [(ICNotePreviewController *)self textController];
      v26 = [(ICNotePreviewController *)self createTextViewUsingTextController:v25 stylingTextUsingSeparateTextStorageForRendering:0];
      [(ICNotePreviewController *)self setTextView:v26];

      v23 = [(ICNotePreviewController *)self textView];
      [v23 setDelegate:self];
    }

    v27 = [MEMORY[0x277D368E8] isEnabled];
    v28 = [(ICNotePreviewController *)self textView];
    v29 = v28;
    if (v27)
    {
      [v28 setPaperEnabled:1];
    }

    else
    {
      [v28 setStylusDrawingEnabled:1];
    }

    v30 = [MEMORY[0x277D75348] clearColor];
    v31 = [(ICNotePreviewController *)self textView];
    [v31 setBackgroundColor:v30];

    v32 = [(ICNotePreviewController *)self note];
    v33 = [v32 ic_hasLightBackground];

    v34 = [MEMORY[0x277D75348] ic_notePreviewBackgroundLightContent:v33];
    v35 = [(ICNotePreviewController *)self backgroundView];
    [v35 setBackgroundColor:v34];

    v36 = [(ICNotePreviewController *)self backgroundView];
    v37 = [(ICNotePreviewController *)self textView];
    [v36 setContentView:v37 useSafeAreaLayoutGuide:0 topMargin:0 bottomMargin:0 leadingMargin:12.0 trailingMargin:0.0 standalone:0.0 force:0.0];

    v38 = [(ICNotePreviewController *)self textView];
    [v38 setDataDetectorTypes:-1];

    v39 = [(ICNotePreviewController *)self textView];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [(ICNotePreviewController *)self textView];
    v41 = [v40 textStorage];
    [v41 fixupAfterEditing];

    v42 = [(ICNotePreviewController *)self backgroundView];
    v43 = [(ICNotePreviewController *)self ic_safeAreaLayoutGuide];
    v44 = [(ICNotePreviewController *)self backgroundView];
    [v42 addConstraintsForSafeAreaLayoutGuide:v43 toContainer:v44];

    v45 = [(ICNotePreviewController *)self textView];
    [v45 setUserInteractionEnabled:0];
  }

  [(ICNotePreviewController *)self scrollToSearchResultIfNeeded];
  [(ICNotePreviewController *)self updateForceLightContentIfNecessary];
  v46 = [MEMORY[0x277CCAB98] defaultCenter];
  [v46 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
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
  v3 = [(ICNotePreviewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (id)createTextViewUsingTextController:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICNotePreviewController *)self view];
  [v7 bounds];
  v9 = v8;

  v10 = objc_alloc_init(ICLayoutManager);
  [(ICLayoutManager *)v10 setAllowsNonContiguousLayout:1];
  v11 = [(ICNotePreviewController *)self note];
  [v6 setNote:v11 stylingTextUsingSeparateTextStorageForRendering:v4 withLayoutManager:v10];

  v12 = [objc_alloc(MEMORY[0x277D36960]) initWithSize:{v9, 1.79769313e308}];
  [v12 setInPreviewMode:1];
  [v12 setWidthTracksTextView:1];
  [(ICLayoutManager *)v10 addTextContainer:v12];
  v13 = [ICTextView alloc];
  v14 = [(ICBaseTextView *)v13 initWithFrame:v12 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ICBaseLayoutManager *)v10 setTextView:v14];
  v15 = [(ICNotePreviewController *)self note];
  v16 = [(ICTextView *)v14 dateView];
  [v16 setNote:v15];

  return v14;
}

- (void)addPasswordEntryViewController
{
  v3 = objc_alloc(MEMORY[0x277D36898]);
  v4 = [(ICNotePreviewController *)self note];
  v19 = [v3 initWithNibName:0 bundle:0 note:v4 intent:0];

  v5 = [v19 view];
  [v5 setAutoresizingMask:18];

  v6 = [v19 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:1];

  v7 = [(ICNotePreviewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v19 view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(ICNotePreviewController *)self view];
  v18 = [v19 view];
  [v17 addSubview:v18];

  [(ICNotePreviewController *)self addChildViewController:v19];
}

- (void)scrollToSearchResultIfNeeded
{
  v2 = [(ICNotePreviewController *)self searchResult];

  if (v2)
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
  v2 = [(ICNotePreviewController *)self note];
  v3 = [v2 prefersLightBackground];

  if (v3)
  {
    return 1;
  }

  v5 = MEMORY[0x277D75C80];

  return [v5 ic_alwaysShowLightContent];
}

- (void)updateForceLightContentIfNecessary
{
  v3 = [(ICNotePreviewController *)self shouldForceLightContent];
  v4 = v3;
  v5 = [(ICNotePreviewController *)self traitOverrides];
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

    v6 = [(ICNotePreviewController *)self traitOverrides];
    [v6 removeTrait:objc_opt_class()];
  }

LABEL_6:
  v8 = [(ICNotePreviewController *)self view];
  [v8 setOverrideUserInterfaceStyle:v4];

  v9 = [(ICNotePreviewController *)self textView];
  [v9 setOverrideUserInterfaceStyle:v4];

  v10 = [(ICNotePreviewController *)self textView];
  [v10 setNeedsDisplay];
}

@end