@interface CKReaderViewController
+ (id)readerScrollPositionCache;
+ (id)readerViewControllerForAudioChatItem:(id)a3;
+ (id)readerViewControllerForChatItem:(id)a3;
+ (id)readerViewControllerForRichCard:(id)a3;
- (CKReaderViewController)init;
- (CKReaderViewControllerDelegate)delegate;
- (NSAttributedString)text;
- (UITextView)textView;
- (_NSRange)textRangeToRestore;
- (_NSRange)visibleRange;
- (void)_restoreScrollPositionIfNeeded;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setText:(id)a3;
- (void)updateEdgeInsets:(UIEdgeInsets)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKReaderViewController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKReaderViewController;
  [(CKReaderViewController *)&v4 dealloc];
}

- (CKReaderViewController)init
{
  v9.receiver = self;
  v9.super_class = CKReaderViewController;
  v2 = [(CKReaderViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_scrollPositionRestored = 0;
    v2->_textRangeToRestore = xmmword_190DD1BD0;
    [(CKReaderViewController *)v2 setPreferredContentSize:325.0, 425.0];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E69DD168]);
    [v5 setMarginTop:0];
    [v5 setEditable:0];
    v6 = [v5 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 readerContentInset];
    [v6 setLineFragmentPadding:?];

    [(CKReaderViewController *)v3 setTextView:v5];
  }

  return v3;
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = CKReaderViewController;
  [(CKReaderViewController *)&v26 loadView];
  v3 = [(CKReaderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(CKReaderViewController *)self preferredContentSize];
  v9 = v8;
  v11 = v10;
  v12 = [(CKReaderViewController *)self view];
  [v12 setBounds:{v5, v7, v9, v11}];

  v13 = [(CKReaderViewController *)self view];
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 readerInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(CKReaderViewController *)self textView];
  [v23 setContentInset:{v16, v18, v20, v22}];
  [v13 addSubview:v23];
  v24 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v25 = [(CKReaderViewController *)self view];
  [v25 setBackgroundColor:v24];

  [v23 setBackgroundColor:v24];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKReaderViewController;
  [(CKReaderViewController *)&v4 viewDidAppear:a3];
  [(CKReaderViewController *)self _restoreScrollPositionIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKReaderViewController;
  [(CKReaderViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CKReaderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 readerViewControllerWillDismiss:self];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CKReaderViewController_contentSizeCategoryDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CKReaderViewController_contentSizeCategoryDidChange___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) textView];
  v2 = [v1 textStorage];

  v6 = *MEMORY[0x1E69DB648];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 readerFont];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 addAttributes:v5 range:{0, objc_msgSend(v2, "length")}];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = CKReaderViewController;
  [(CKReaderViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(CKReaderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKReaderViewController *)self view];
  [v12 safeAreaInsets];
  v14 = v13;
  v16 = v15;

  v17 = [(CKReaderViewController *)self textView];
  [v17 setFrame:{v5 + v14, v7 + 0.0, v9 - (v14 + v16), v11}];
}

- (void)updateEdgeInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  v6 = [(CKReaderViewController *)self textView:a3.top];
  [v6 textContainerInset];
  v8 = v7;
  v10 = v9;

  v11 = [(CKReaderViewController *)self textView];
  [v11 setTextContainerInset:{top, v8, bottom, v10}];
}

+ (id)readerViewControllerForChatItem:(id)a3
{
  v3 = a3;
  if ([v3 isCorrupt])
  {
    v4 = [v3 fallbackCorruptText];
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    v6 = [v4 string];
    v7 = [v5 initWithString:v6];
  }

  else
  {
    v8 = [v3 text];
    v9 = [v8 mutableCopy];
    v10 = [v8 length];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__CKReaderViewController_readerViewControllerForChatItem___block_invoke;
    v21[3] = &unk_1E72F46D8;
    v4 = v8;
    v22 = v4;
    v23 = v3;
    v7 = v9;
    v24 = v7;
    [v4 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v21}];
  }

  v11 = [v3 message];
  v12 = [v11 guid];

  v13 = objc_alloc_init(CKReaderViewController);
  [(CKReaderViewController *)v13 setMessageGUID:v12];
  [(CKReaderViewController *)v13 setText:v7];
  v14 = [objc_opt_class() readerScrollPositionCache];
  v15 = [v14 objectForKey:v12];

  if (v15)
  {
    v16 = [v15 rangeValue];
    [(CKReaderViewController *)v13 setVisibleRange:v16, v17];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [(CKReaderViewController *)v13 navigationItem];
    v19 = [v3 title];
    [v18 setTitle:v19];
  }

  return v13;
}

void __58__CKReaderViewController_readerViewControllerForChatItem___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = [v19 objectForKey:*MEMORY[0x1E69A5F68]];
  if (v7)
  {
    v8 = [a1[4] string];
    v9 = [v8 substringWithRange:{a3, a4}];

    if ([v9 isEqualToString:*MEMORY[0x1E69A5F00]])
    {
      v10 = +[CKMediaObjectManager sharedInstance];
      v11 = [a1[5] message];
      v12 = [v10 mediaObjectWithTransferGUID:v7 imMessage:v11];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 imageData];
        v14 = [v13 image];

        v15 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        [v15 setImage:v14];
        [v15 bounds];
        [v15 setBounds:?];
        [a1[6] addAttribute:*MEMORY[0x1E69DB5F8] value:v15 range:{a3, a4}];
      }
    }
  }

  v16 = [v19 objectForKey:*MEMORY[0x1E69A5FB0]];
  v17 = [v16 scheme];
  v18 = [v17 isEqualToString:@"http"];

  if (v18)
  {
    [a1[6] addAttribute:*MEMORY[0x1E69DB670] value:v16 range:{a3, a4}];
  }
}

+ (id)readerViewControllerForAudioChatItem:(id)a3
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 audioTranscriptionText];
  v7 = [v5 initWithString:v6];

  v8 = [v4 message];

  v9 = [v8 guid];

  v10 = objc_alloc_init(CKReaderViewController);
  [(CKReaderViewController *)v10 setMessageGUID:v9];
  [(CKReaderViewController *)v10 setText:v7];
  if (v9)
  {
    v11 = [objc_opt_class() readerScrollPositionCache];
    v12 = [v11 objectForKey:v9];

    if (v12)
    {
      v13 = [v12 rangeValue];
      [(CKReaderViewController *)v10 setVisibleRange:v13, v14];
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKReaderViewController readerViewControllerForAudioChatItem:v12];
    }
  }

  v15 = [(CKReaderViewController *)v10 navigationItem];
  v16 = CKFrameworkBundle();
  v17 = [v16 localizedStringForKey:@"AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v15 setTitle:v17];

  return v10;
}

+ (id)readerViewControllerForRichCard:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v5 = [v3 title];

  if (v5)
  {
    v27 = *MEMORY[0x1E69A7CF0];
    v28[0] = &unk_1F04E8538;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [v3 title];
    v9 = [v7 initWithString:v8 attributes:v6];

    [v4 appendAttributedString:v9];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n\n"];
    [v4 appendAttributedString:v10];
  }

  v11 = [v3 cardDescription];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = [v3 cardDescription];
    v14 = [v12 initWithString:v13];
    [v4 appendAttributedString:v14];
  }

  v15 = objc_alloc_init(CKReaderViewController);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"richCard-%ld", objc_msgSend(v3, "hash")];
  [(CKReaderViewController *)v15 setMessageGUID:v16];

  [(CKReaderViewController *)v15 setText:v4];
  v17 = [objc_opt_class() readerScrollPositionCache];
  v18 = [(CKReaderViewController *)v15 messageGUID];
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    v20 = [v19 rangeValue];
    [(CKReaderViewController *)v15 setVisibleRange:v20, v21];
  }

  v22 = [(CKReaderViewController *)v15 navigationItem];
  v23 = [v3 title];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1F04268F8;
  }

  [v22 setTitle:v25];

  return v15;
}

+ (id)readerScrollPositionCache
{
  if (readerScrollPositionCache_once != -1)
  {
    +[CKReaderViewController readerScrollPositionCache];
  }

  v3 = readerScrollPositionCache_sReaderScrollPositionCache;

  return v3;
}

void __51__CKReaderViewController_readerScrollPositionCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B690]) initWithMaximumCapacity:8];
  v1 = readerScrollPositionCache_sReaderScrollPositionCache;
  readerScrollPositionCache_sReaderScrollPositionCache = v0;
}

- (void)setText:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKReaderViewController *)self textView];
  v6 = [v4 mutableCopy];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 readerFont];

  v9 = [MEMORY[0x1E69DC888] labelColor];
  v31 = *MEMORY[0x1E69DB650];
  v32[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v6 addAttributes:v10 range:{0, objc_msgSend(v6, "length")}];

  v29 = *MEMORY[0x1E69DB648];
  v30 = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v6 addAttributes:v11 range:{0, objc_msgSend(v6, "length")}];

  [v6 ck_addDisplayableAttributesForIMTextStyleAttributes];
  v12 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v13 = [v12 mutableCopy];

  [v13 setAlignment:1];
  v14 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v15 = [v6 length];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __34__CKReaderViewController_setText___block_invoke;
  v23 = &unk_1E72F7C68;
  v24 = v6;
  v25 = @"\n\n";
  v26 = v14;
  v27 = v13;
  v28 = v5;
  v16 = v5;
  v17 = v13;
  v18 = v14;
  v19 = v6;
  CKEnumerateSearchRange(0, v15, 2, &v20);
  [v16 setAttributedText:{v19, v20, v21, v22, v23}];
}

void __34__CKReaderViewController_setText___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = [*(a1 + 32) string];
  v8 = [v51 rangeOfString:*MEMORY[0x1E69A5F00] options:4 range:{a2, a3}];
  *a4 = v8;
  a4[1] = v9;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = [*(a1 + 40) length];
    v12 = (v10 - v11) & ~((v10 - v11) >> 63);
    v13 = [v51 __ck_rangeOfSequenceOfCharactersFromSet:*(a1 + 48) options:4 range:{v12, *a4 - v12}];
    v15 = v14;
    v16 = [v51 length];
    v17 = a4[1];
    if (v16 - 1 >= (v17 + *a4))
    {
      v18 = v17 + *a4;
    }

    else
    {
      v18 = v16 - 1;
    }

    v19 = [v51 length] - v18;
    v20 = [*(a1 + 40) length];
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v51 __ck_rangeOfSequenceOfCharactersFromSet:*(a1 + 48) options:0 range:{v18, v21}];
    v24 = v23;
    v26 = *a4;
    v25 = a4[1];
    if (v22 + v23 != [v51 length] && v25 + v26 != objc_msgSend(v51, "length"))
    {
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = a4[1] + *a4;
      }

      [*(a1 + 32) replaceCharactersInRange:v22 withString:{v24, *(a1 + 40)}];
    }

    if (v13)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = *a4;
      }

      [*(a1 + 32) replaceCharactersInRange:v13 withString:{v15, *(a1 + 40)}];
      v26 = [*(a1 + 40) length] + v13;
    }

    [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB688] value:*(a1 + 56) range:{v26, v25}];
    v28 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB5F8] atIndex:v26 effectiveRange:0];
    if (v28)
    {
      [*(a1 + 64) bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = [v28 image];
      [v37 size];
      v39 = v38;
      v41 = v40;

      v42 = +[CKUIBehavior sharedBehaviors];
      [v42 readerContentInset];
      v44 = v43;

      v45 = v34 - (v44 + v44);
      v46 = v36 - (v44 + v44);
      if (v45 < v39 || v46 < v41)
      {
        v48 = v45 / v39;
        if (v39 == 0.0)
        {
          v48 = 0.0;
        }

        v49 = v46 / v41;
        if (v41 == 0.0)
        {
          v49 = 0.0;
        }

        v50 = fmin(v48, v49);
        v39 = v39 * v50;
        v41 = v41 * v50;
      }

      [v28 setBounds:{v30, v32, v39, v41}];
    }
  }
}

- (NSAttributedString)text
{
  v2 = [(CKReaderViewController *)self textView];
  v3 = [v2 attributedText];

  return v3;
}

- (_NSRange)visibleRange
{
  v2 = [(CKReaderViewController *)self textView];
  [v2 bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v9 = [v2 closestPositionToPoint:{x, y}];
  v10 = [v2 closestPositionToPoint:{MaxX, MaxY}];
  v11 = [v2 beginningOfDocument];
  v12 = [v2 offsetFromPosition:v11 toPosition:v9];

  v13 = [v2 offsetFromPosition:v9 toPosition:v10];
  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (void)_restoreScrollPositionIfNeeded
{
  if ([(CKReaderViewController *)self isViewLoaded]&& ![(CKReaderViewController *)self isScrollPositionRestored]&& self->_textRangeToRestore.length != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CKReaderViewController *)self setScrollPositionRestored:1];
    v3 = [(CKReaderViewController *)self textView];
    [v3 scrollRangeToVisible:{self->_textRangeToRestore.location, self->_textRangeToRestore.length}];
  }
}

- (UITextView)textView
{
  v3 = [(CKReaderViewController *)self view];
  textView = self->_textView;

  return textView;
}

- (CKReaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_NSRange)textRangeToRestore
{
  p_textRangeToRestore = &self->_textRangeToRestore;
  location = self->_textRangeToRestore.location;
  length = p_textRangeToRestore->length;
  result.length = length;
  result.location = location;
  return result;
}

@end