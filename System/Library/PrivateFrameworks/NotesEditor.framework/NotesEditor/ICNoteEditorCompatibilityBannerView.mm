@interface ICNoteEditorCompatibilityBannerView
+ (id)compatibilityAttributedString;
+ (void)checkShouldShowCompatibilityBannerViewForNote:(id)note parentViewController:(id)controller completion:(id)completion;
- (BOOL)accessibilityActivate;
- (ICNoteEditorCompatibilityBannerView)initWithFrame:(CGRect)frame parentViewController:(id)controller;
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

- (ICNoteEditorCompatibilityBannerView)initWithFrame:(CGRect)frame parentViewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  v27.receiver = self;
  v27.super_class = ICNoteEditorCompatibilityBannerView;
  height = [(ICNoteEditorCompatibilityBannerView *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [objc_alloc(MEMORY[0x277D367F8]) initWithFrame:{x, y, width, height}];
    [(ICNoteEditorCompatibilityBannerView *)height setLearnMoreTextView:v11];

    learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    [learnMoreTextView setParentViewController:controllerCopy];

    learnMoreTextView2 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    [learnMoreTextView2 setContentInsetAdjustmentBehavior:2];

    v14 = *MEMORY[0x277D768C8];
    v15 = *(MEMORY[0x277D768C8] + 8);
    v16 = *(MEMORY[0x277D768C8] + 16);
    v17 = *(MEMORY[0x277D768C8] + 24);
    learnMoreTextView3 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    [learnMoreTextView3 setTextContainerInset:{v14, v15, v16, v17}];

    learnMoreTextView4 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    textContainer = [learnMoreTextView4 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    learnMoreTextView5 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    [(ICNoteEditorCompatibilityBannerView *)height addSubview:learnMoreTextView5];

    v22 = *MEMORY[0x277D36510];
    learnMoreTextView6 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    [learnMoreTextView6 setHelpTopic:v22];

    learnMoreTextView7 = [(ICNoteEditorCompatibilityBannerView *)height learnMoreTextView];
    compatibilityAttributedString = [objc_opt_class() compatibilityAttributedString];
    [learnMoreTextView7 setAttributedText:compatibilityAttributedString addLearnMore:1];
  }

  return height;
}

+ (id)compatibilityAttributedString
{
  v12[2] = *MEMORY[0x277D85DE8];
  ic_preferredFontForCompatibilityBannerText = [MEMORY[0x277D74300] ic_preferredFontForCompatibilityBannerText];
  v3 = *MEMORY[0x277D740C0];
  v11[0] = *MEMORY[0x277D740A8];
  v11[1] = v3;
  v12[0] = ic_preferredFontForCompatibilityBannerText;
  ic_noteEditorSecondaryLabelColor = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  v12[1] = ic_noteEditorSecondaryLabelColor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"This note is not supported on some of your devices." value:&stru_282757698 table:0];

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
  learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [learnMoreTextView ic_addAnchorsToFillSuperview];
}

- (double)preferredHeight
{
  v3 = 0.0;
  if (([(ICNoteEditorCompatibilityBannerView *)self isHidden]& 1) == 0)
  {
    [(ICNoteEditorCompatibilityBannerView *)self availableWidth];
    if (v4 != 0.0)
    {
      learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
      attributedText = [learnMoreTextView attributedText];

      v7 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:attributedText];
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

+ (void)checkShouldShowCompatibilityBannerViewForNote:(id)note parentViewController:(id)controller completion:(id)completion
{
  noteCopy = note;
  controllerCopy = controller;
  completionCopy = completion;
  hasVisibleInlineAttachments = [noteCopy hasVisibleInlineAttachments];
  folder = [noteCopy folder];
  account = [folder account];

  if (hasVisibleInlineAttachments && account)
  {
    objc_initWeak(&location, controllerCopy);
    v13 = MEMORY[0x277D36780];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __117__ICNoteEditorCompatibilityBannerView_checkShouldShowCompatibilityBannerViewForNote_parentViewController_completion___block_invoke;
    v14[3] = &unk_2781AF6A0;
    objc_copyWeak(&v16, &location);
    v15 = completionCopy;
    [v13 showCompatibilityAlertForInlineAttachmentsInAccountIfNeeded:account parentViewController:controllerCopy completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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
  ic_preferredFontForCompatibilityBannerText = [MEMORY[0x277D74300] ic_preferredFontForCompatibilityBannerText];
  learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [learnMoreTextView setFont:ic_preferredFontForCompatibilityBannerText];
}

- (id)accessibilityLabel
{
  learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  text = [learnMoreTextView text];

  return text;
}

- (id)accessibilityHint
{
  learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  accessibilityHint = [learnMoreTextView accessibilityHint];

  return accessibilityHint;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Learn More" value:&stru_282757698 table:0];
  [v3 addObject:v5];

  v9.receiver = self;
  v9.super_class = ICNoteEditorCompatibilityBannerView;
  accessibilityUserInputLabels = [(ICNoteEditorCompatibilityBannerView *)&v9 accessibilityUserInputLabels];
  if (accessibilityUserInputLabels)
  {
    [v3 addObjectsFromArray:accessibilityUserInputLabels];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)accessibilityActivate
{
  learnMoreTextView = [(ICNoteEditorCompatibilityBannerView *)self learnMoreTextView];
  [learnMoreTextView didTapLearnMore];

  return 1;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorCompatibilityBannerView;
  accessibilityContainer = [(ICNoteEditorCompatibilityBannerView *)&v7 accessibilityContainer];
  v3 = accessibilityContainer;
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      accessibilityContainer2 = [v4 accessibilityContainer];

      v4 = accessibilityContainer2;
      if (!accessibilityContainer2)
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
    nextResponder = [(ICNoteEditorCompatibilityBannerView *)self nextResponder];
    if (nextResponder)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v3NextResponder = [nextResponder nextResponder];

        nextResponder = v3NextResponder;
        if (!v3NextResponder)
        {
          goto LABEL_7;
        }
      }

      nextResponder = nextResponder;
    }

LABEL_7:
    [nextResponder showOverscrollContentAndScrollToTop];
  }
}

@end