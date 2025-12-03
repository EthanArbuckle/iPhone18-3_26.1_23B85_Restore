@interface ICBrickTextAttachmentView
- (BOOL)shouldForceLightContent;
- (CGSize)attachmentSizeForTextContainer:(id)container;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)imageForPrinting;
- (id)quickLookTransitionView;
- (void)dealloc;
- (void)didChangeAttachment;
- (void)didChangeAttachmentTitle;
- (void)requestAttachmentContentUpdate;
- (void)setHighlightColor:(id)color;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setupConstraints;
- (void)sharedInit:(BOOL)init;
- (void)updateCornerRadius;
@end

@implementation ICBrickTextAttachmentView

- (id)accessibilityLabel
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  accessibilityLabel = [attachmentBrickView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  accessibilityValue = [attachmentBrickView accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityHint
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  accessibilityHint = [attachmentBrickView accessibilityHint];

  return accessibilityHint;
}

- (id)accessibilityUserInputLabels
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  accessibilityUserInputLabels = [attachmentBrickView accessibilityUserInputLabels];

  return accessibilityUserInputLabels;
}

- (CGSize)attachmentSizeForTextContainer:(id)container
{
  containerCopy = container;
  [containerCopy size];
  if (v5 <= 0.0)
  {
    v15 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [containerCopy size];
    v7 = v6;
    attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
    [attachmentBrickView computedSize];
    v10 = v9;
    v12 = v11;

    [containerCopy lineFragmentPadding];
    v14 = v7 + v13 * -2.0;
    if (v14 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }
  }

  v16 = v15;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)sharedInit:(BOOL)init
{
  v9.receiver = self;
  v9.super_class = ICBrickTextAttachmentView;
  [(ICAttachmentView *)&v9 sharedInit:init];
  v4 = [objc_alloc(MEMORY[0x277D366A0]) initWithType:2];
  [(ICBrickTextAttachmentView *)self setAttachmentBrickView:v4];

  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView setTranslatesAutoresizingMaskIntoConstraints:0];

  insideSystemPaper = [(ICAttachmentView *)self insideSystemPaper];
  attachmentBrickView2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView2 setInsideSystemPaper:insideSystemPaper];

  attachmentBrickView3 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [(ICBrickTextAttachmentView *)self addSubview:attachmentBrickView3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = ICBrickTextAttachmentView;
  [(ICAttachmentView *)&v4 dealloc];
}

- (void)setupConstraints
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCAAD0];
  v11 = @"brick";
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v12[0] = attachmentBrickView;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v4 constraintsWithVisualFormat:@"H:|-0-[brick]-0-|" options:0 metrics:0 views:v6];
  [v3 addObjectsFromArray:v7];

  v8 = MEMORY[0x277CCAAD0];
  attachmentBrickView2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v10 = [v8 constraintWithItem:attachmentBrickView2 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v10];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (void)requestAttachmentContentUpdate
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView reloadData];

  [(ICBrickTextAttachmentView *)self updateCornerRadius];
}

- (void)didChangeAttachment
{
  attachment = [(ICBrickTextAttachmentView *)self attachment];
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView setAttachment:attachment];

  v5.receiver = self;
  v5.super_class = ICBrickTextAttachmentView;
  [(ICBrickTextAttachmentView *)&v5 didChangeAttachment];
  [(ICBrickTextAttachmentView *)self updateCornerRadius];
}

- (void)didChangeAttachmentTitle
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView updateTitle];
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v6.receiver = self;
  v6.super_class = ICBrickTextAttachmentView;
  finderCopy = finder;
  [(ICBrickTextAttachmentView *)&v6 setHighlightPatternRegexFinder:finderCopy];
  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView:v6.receiver];
  [v5 setHighlightPatternRegexFinder:finderCopy];
}

- (void)setHighlightColor:(id)color
{
  v6.receiver = self;
  v6.super_class = ICBrickTextAttachmentView;
  colorCopy = color;
  [(ICBrickTextAttachmentView *)&v6 setHighlightColor:colorCopy];
  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView:v6.receiver];
  [v5 setHighlightColor:colorCopy];
}

- (id)quickLookTransitionView
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  quickLookTransitionView = [attachmentBrickView quickLookTransitionView];

  return quickLookTransitionView;
}

- (id)imageForPrinting
{
  attachment = [(ICBrickTextAttachmentView *)self attachment];
  usesLinkPresentation = [attachment usesLinkPresentation];

  if (usesLinkPresentation)
  {
    v5 = objc_alloc(MEMORY[0x277D36810]);
    attachment2 = [(ICBrickTextAttachmentView *)self attachment];
    v7 = [v5 initWithAttachment:attachment2];

    [v7 setForcesLightMode:{-[ICBrickTextAttachmentView shouldForceLightContent](self, "shouldForceLightContent")}];
    snapshot = [v7 snapshot];
  }

  else
  {
    [(ICBrickTextAttachmentView *)self layoutIfNeeded];
    v9 = [(ICBrickTextAttachmentView *)self snapshotViewAfterScreenUpdates:1];
    snapshot = [(ICBrickTextAttachmentView *)self ic_imageRenderedFromLayer];
  }

  return snapshot;
}

- (void)updateCornerRadius
{
  attachmentBrickView = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [attachmentBrickView effectiveLayoutCornerRadius];
  v4 = v3;
  layer = [(ICBrickTextAttachmentView *)self layer];
  [layer setCornerRadius:v4];
}

- (BOOL)shouldForceLightContent
{
  textContainer = [(ICAttachmentView *)self textContainer];
  tk2TextView = [textContainer tk2TextView];

  objc_opt_class();
  if (tk2TextView)
  {
    textStorage = [tk2TextView textStorage];
    v6 = ICDynamicCast();

    styler = [v6 styler];
    isForPrint = [styler isForPrint];
  }

  else
  {
    textContainer2 = [(ICAttachmentView *)self textContainer];
    layoutManager = [textContainer2 layoutManager];
    v6 = ICDynamicCast();

    isForPrint = [v6 isRenderingImageForPrint];
  }

  return isForPrint;
}

@end