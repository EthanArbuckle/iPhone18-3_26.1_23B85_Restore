@interface ICNoteEditorCompatibilityBannerView
+ (id)compatibilityAttributedString;
+ (void)checkShouldShowCompatibilityBannerViewForNote:(id)a3 parentViewController:(id)a4 completion:(id)a5;
- (BOOL)accessibilityActivate;
- (ICNoteEditorCompatibilityBannerView)initWithFrame:(CGRect)a3 parentViewController:(id)a4;
- (double)preferredHeight;
- (id)accessibilityContainer;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (void)accessibilityElementDidBecomeFocused;
- (void)contentSizeCategoryDidChange;
- (void)updateConstraints;
@end

@implementation ICNoteEditorCompatibilityBannerView

- (ICNoteEditorCompatibilityBannerView)initWithFrame:(CGRect)a3 parentViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = ICNoteEditorCompatibilityBannerView;
  v10 = [(ICNoteEditorCompatibilityBannerView *)&v27 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D367F8]) initWithFrame:{x, y, width, height}];
    [(ICNoteEditorCompatibilityBannerView *)v10 setLearnMoreTextView:v11];

    v12 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    [v12 setParentViewController:v9];

    v13 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    [v13 setContentInsetAdjustmentBehavior:2];

    v14 = *MEMORY[0x277D768C8];
    v15 = *(MEMORY[0x277D768C8] + 8);
    v16 = *(MEMORY[0x277D768C8] + 16);
    v17 = *(MEMORY[0x277D768C8] + 24);
    v18 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    [v18 setTextContainerInset:{v14, v15, v16, v17}];

    v19 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    v20 = [v19 textContainer];
    [v20 setLineFragmentPadding:0.0];

    v21 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    [(ICNoteEditorCompatibilityBannerView *)v10 addSubview:v21];

    v22 = *MEMORY[0x277D36510];
    v23 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    [v23 setHelpTopic:v22];

    v24 = [(ICNoteEditorCompatibilityBannerView *)v10 learnMoreTextView];
    v25 = [objc_opt_class() compatibilityAttributedString];
    [v24 setAttributedText:v25 addLearnMore:1];
  }

  return v10;
}

+ (id)compatibilityAttributedString
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74300] ic_preferredFontForCompatibilityBannerText];
  v3 = *MEMORY[0x277D740C0];
  v11[0] = *MEMORY[0x277D740A8];
  v11[1] = v3;
  v12[0] = v2;
  v4 = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"This note is not supported on some of your devices." value:&stru_282757698 table:0];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7 attributes:v5];
  v9 = objc_alloc_init(MEMORY[0x277D74240]);
  [v9 setAlignment:1];
  [v8 addAttribute:*MEMORY[0x277D74118] value:v9 range:{0, objc_msgSend(v8, "length")}];

  return v8;
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorCompatibilityBannerView;
  [(ICNoteEditorCompatibilityBannerView *)&v4 updateConstraints];
  v3 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [v3 ic_addAnchorsToFillSuperview];
}

- (double)preferredHeight
{
  v3 = 0.0;
  if (([(ICNoteEditorCompatibilityBannerView *)self isHidden]& 1) == 0)
  {
    [(ICNoteEditorCompatibilityBannerView *)self availableWidth];
    if (v4 != 0.0)
    {
      v5 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
      v6 = [v5 attributedText];

      v7 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:v6];
      v8 = objc_alloc(MEMORY[0x277D74278]);
      [(ICNoteEditorCompatibilityBannerView *)self availableWidth];
      v9 = [v8 initWithSize:?];
      v10 = objc_alloc_init(MEMORY[0x277D74238]);
      [v10 addTextContainer:v9];
      [v7 addLayoutManager:v10];
      [v9 setLineFragmentPadding:0.0];
      [v10 glyphRangeForTextContainer:v9];
      [v10 usedRectForTextContainer:v9];
      v12 = v11;
      v3 = ceilf(v12);
    }
  }

  return v3;
}

+ (void)checkShouldShowCompatibilityBannerViewForNote:(id)a3 parentViewController:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 hasVisibleInlineAttachments];
  v11 = [v7 folder];
  v12 = [v11 account];

  if (v10 && v12)
  {
    objc_initWeak(&location, v8);
    v13 = MEMORY[0x277D36780];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __117__ICNoteEditorCompatibilityBannerView_checkShouldShowCompatibilityBannerViewForNote_parentViewController_completion___block_invoke;
    v14[3] = &unk_2781AF6A0;
    objc_copyWeak(&v16, &location);
    v15 = v9;
    [v13 showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:v12 parentViewController:v8 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __117__ICNoteEditorCompatibilityBannerView_checkShouldShowCompatibilityBannerViewForNote_parentViewController_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      [MEMORY[0x277D367B8] presentWithTopic:*MEMORY[0x277D36510] presentingViewController:WeakRetained];
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)contentSizeCategoryDidChange
{
  v4 = [MEMORY[0x277D74300] ic_preferredFontForCompatibilityBannerText];
  v3 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [v3 setFont:v4];
}

- (id)accessibilityLabel
{
  v2 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  v3 = [v2 text];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Learn More" value:&stru_282757698 table:0];
  [v3 addObject:v5];

  v9.receiver = self;
  v9.super_class = ICNoteEditorCompatibilityBannerView;
  v6 = [(ICNoteEditorCompatibilityBannerView *)&v9 accessibilityUserInputLabels];
  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)accessibilityActivate
{
  v2 = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [v2 didTapLearnMore];

  return 1;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorCompatibilityBannerView;
  v2 = [(ICNoteEditorCompatibilityBannerView *)&v7 accessibilityContainer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      v5 = [v4 accessibilityContainer];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v4 = v4;

    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v3;
}

- (void)accessibilityElementDidBecomeFocused
{
  v5.receiver = self;
  v5.super_class = ICNoteEditorCompatibilityBannerView;
  [(ICNoteEditorCompatibilityBannerView *)&v5 accessibilityElementDidBecomeFocused];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(ICNoteEditorCompatibilityBannerView *)self nextResponder];
    if (v3)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v4 = [v3 nextResponder];

        v3 = v4;
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v3 = v3;
    }

LABEL_7:
    [v3 showOverscrollContentAndScrollToTop];
  }
}

@end