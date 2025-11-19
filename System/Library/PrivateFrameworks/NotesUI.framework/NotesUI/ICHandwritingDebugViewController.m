@interface ICHandwritingDebugViewController
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugViewController)initWithDelegate:(id)a3;
- (OS_dispatch_queue)recognitionQueue;
- (void)close;
- (void)refresh;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICHandwritingDebugViewController

- (ICHandwritingDebugViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICHandwritingDebugViewController;
  v5 = [(ICHandwritingDebugViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)viewDidLoad
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ICHandwritingDebugViewController;
  [(ICHandwritingDebugViewController *)&v22 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [(ICHandwritingDebugViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(ICHandwritingDebugViewController *)self setTextView:v5];

  v6 = [(ICHandwritingDebugViewController *)self textView];
  [v6 setEditable:0];

  v7 = [(ICHandwritingDebugViewController *)self textView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(ICHandwritingDebugViewController *)self view];
  v9 = [(ICHandwritingDebugViewController *)self textView];
  [v8 addSubview:v9];

  v10 = [(ICHandwritingDebugViewController *)self textView];
  [v10 ic_addAnchorsToFillSuperview];

  v11 = [(ICHandwritingDebugViewController *)self textView];
  [v11 setTextContainerInset:{0.0, 12.0, 0.0, 12.0}];

  v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(ICHandwritingDebugViewController *)self setActivityIndicator:v12];

  v13 = [(ICHandwritingDebugViewController *)self activityIndicator];
  [v13 setHidesWhenStopped:1];

  v14 = objc_alloc(MEMORY[0x1E69DC708]);
  v15 = [(ICHandwritingDebugViewController *)self activityIndicator];
  v16 = [v14 initWithCustomView:v15];

  [v16 setEnabled:0];
  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:13 target:self action:sel_refresh];
  v23[0] = v17;
  v23[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [(ICHandwritingDebugViewController *)self navigationItem];
  [v19 setRightBarButtonItems:v18];

  v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_close];
  v21 = [(ICHandwritingDebugViewController *)self navigationItem];
  [v21 setLeftBarButtonItem:v20];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ICHandwritingDebugViewController;
  [(ICHandwritingDebugViewController *)&v6 viewWillAppear:?];
  v5 = [(ICHandwritingDebugViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:v3];

  [(ICHandwritingDebugViewController *)self refresh];
}

- (OS_dispatch_queue)recognitionQueue
{
  recognitionQueue = self->_recognitionQueue;
  if (!recognitionQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.notes.debug-recognition-queue", v4);
    v6 = self->_recognitionQueue;
    self->_recognitionQueue = v5;

    recognitionQueue = self->_recognitionQueue;
  }

  return recognitionQueue;
}

- (void)refresh
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(ICHandwritingDebugViewController *)self delegate];
  v4 = [v3 drawingsForHandwritingDebug];
  [(ICHandwritingDebugViewController *)self setDrawings:v4];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(ICHandwritingDebugViewController *)self drawings];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 visualizationManager];
        v12 = [v11 recognitionStatusReportingEnabled];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 visualizationManager];
          [v13 setRecognitionStatusReportingEnabled:1];

          v14 = [v10 visualizationManager];
          [v14 setDelegate:self];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(ICHandwritingDebugViewController *)self drawings];
    v17 = [v16 count];
    *buf = 134217984;
    v29 = v17;
    _os_log_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEFAULT, "Refreshing handwriting debug view with %ld drawings", buf, 0xCu);
  }

  v18 = [(ICHandwritingDebugViewController *)self drawings];
  v19 = [v18 copy];

  v20 = [(ICHandwritingDebugViewController *)self recognitionQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __43__ICHandwritingDebugViewController_refresh__block_invoke;
  v22[3] = &unk_1E8468F80;
  v22[4] = self;
  v23 = v19;
  v21 = v19;
  dispatch_async(v20, v22);
}

void __43__ICHandwritingDebugViewController_refresh__block_invoke(uint64_t a1)
{
  v70[3] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICHandwritingDebugViewController_refresh__block_invoke_2;
  block[3] = &unk_1E8468BA0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v45 = [*(a1 + 40) count];
  v69[0] = *MEMORY[0x1E69DB648];
  v2 = v69[0];
  v3 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:16.0];
  v4 = [v3 ic_fontWithSingleLineA];
  v5 = *MEMORY[0x1E69DB758];
  v70[0] = v4;
  v70[1] = &unk_1F4FC3F78;
  v6 = *MEMORY[0x1E69DB650];
  v69[1] = v5;
  v69[2] = v6;
  v7 = [MEMORY[0x1E69DC888] labelColor];
  v70[2] = v7;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:3];

  v67[0] = v2;
  v8 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
  v9 = [v8 ic_fontWithSingleLineA];
  v67[1] = v6;
  v68[0] = v9;
  v10 = [MEMORY[0x1E69DC888] labelColor];
  v68[1] = v10;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];

  v65[0] = v2;
  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  v12 = [v11 ic_fontWithSingleLineA];
  v65[1] = v6;
  v66[0] = v12;
  v13 = [MEMORY[0x1E69DC888] labelColor];
  v66[1] = v13;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];

  v63[0] = v2;
  v14 = [MEMORY[0x1E69DB878] italicSystemFontOfSize:14.0];
  v15 = [v14 ic_fontWithSingleLineA];
  v63[1] = v6;
  v64[0] = v15;
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v64[1] = v16;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];

  v17 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v40 = a1;
  obj = *(a1 + 40);
  v46 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v46)
  {
    v44 = *v57;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        if (([v19 recognitionEnabled] & 1) == 0)
        {
          [v19 setRecognitionEnabled:1];
        }

        if (v45 >= 2)
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = [v19 uuid];
          v22 = [v20 localizedStringWithFormat:@"%@:\n\n", v21];

          v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v22 attributes:v41];
          [v17 appendAttributedString:v23];
        }

        v24 = [v19 visualizationManager];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v25 = [MEMORY[0x1E6978578] availableRecognitionStatusKeys];
        v26 = [v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (!v26)
        {

LABEL_27:
          v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"No results" attributes:v43];
          [v17 appendAttributedString:v36];

          goto LABEL_28;
        }

        v27 = v26;
        v47 = i;
        v28 = 0;
        v29 = *v53;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v52 + 1) + 8 * j);
            v32 = [MEMORY[0x1E6978578] localizedNameForRecognitionStatusKey:v31];
            if (v32)
            {
              v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v32 attributes:v49];
            }

            else
            {
              v33 = 0;
            }

            v34 = [v24 valueForRecognitionStatusKey:v31];
            if (v34)
            {
              v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v34 attributes:v48];
              if (v33)
              {
                [v17 appendAttributedString:v33];
                [v17 ic_appendString:@"\n"];
              }

              [v17 appendAttributedString:v35];
              [v17 ic_appendString:@"\n\n"];

              v28 = 1;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v27);

        i = v47;
        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_28:
        [v17 ic_appendString:@"\n\n"];
      }

      v46 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v46);
  }

  if (![*(v40 + 40) count] || !objc_msgSend(v17, "length"))
  {
    v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"No inline drawings" attributes:v43];
    [v17 appendAttributedString:v37];
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __43__ICHandwritingDebugViewController_refresh__block_invoke_45;
  v50[3] = &unk_1E8468F80;
  v50[4] = *(v40 + 32);
  v51 = v17;
  v38 = v17;
  v39 = MEMORY[0x1E69E96A0];
  dispatch_sync(MEMORY[0x1E69E96A0], v50);
}

void __43__ICHandwritingDebugViewController_refresh__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicator];
  [v1 startAnimating];
}

void __43__ICHandwritingDebugViewController_refresh__block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) textView];
  [v3 setAttributedText:v2];

  v4 = [*(a1 + 32) activityIndicator];
  [v4 stopAnimating];
}

- (void)close
{
  v2 = [(ICHandwritingDebugViewController *)self delegate];
  [v2 handwritingDebugShouldClose];
}

- (ICHandwritingDebugDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end