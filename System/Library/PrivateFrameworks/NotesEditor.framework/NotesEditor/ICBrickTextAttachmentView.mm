@interface ICBrickTextAttachmentView
- (BOOL)shouldForceLightContent;
- (CGSize)attachmentSizeForTextContainer:(id)a3;
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
- (void)setHighlightColor:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setupConstraints;
- (void)sharedInit:(BOOL)a3;
- (void)updateCornerRadius;
@end

@implementation ICBrickTextAttachmentView

- (id)accessibilityLabel
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v3 = [v2 accessibilityUserInputLabels];

  return v3;
}

- (CGSize)attachmentSizeForTextContainer:(id)a3
{
  v4 = a3;
  [v4 size];
  if (v5 <= 0.0)
  {
    v15 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [v4 size];
    v7 = v6;
    v8 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
    [v8 computedSize];
    v10 = v9;
    v12 = v11;

    [v4 lineFragmentPadding];
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

- (void)sharedInit:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ICBrickTextAttachmentView;
  [(ICAttachmentView *)&v9 sharedInit:a3];
  v4 = [objc_alloc(MEMORY[0x277D366A0]) initWithType:2];
  [(ICBrickTextAttachmentView *)self setAttachmentBrickView:v4];

  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ICAttachmentView *)self insideSystemPaper];
  v7 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v7 setInsideSystemPaper:v6];

  v8 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [(ICBrickTextAttachmentView *)self addSubview:v8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

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
  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v4 constraintsWithVisualFormat:@"H:|-0-[brick]-0-|" options:0 metrics:0 views:v6];
  [v3 addObjectsFromArray:v7];

  v8 = MEMORY[0x277CCAAD0];
  v9 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v10 = [v8 constraintWithItem:v9 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v10];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (void)requestAttachmentContentUpdate
{
  v3 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v3 reloadData];

  [(ICBrickTextAttachmentView *)self updateCornerRadius];
}

- (void)didChangeAttachment
{
  v3 = [(ICBrickTextAttachmentView *)self attachment];
  v4 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v4 setAttachment:v3];

  v5.receiver = self;
  v5.super_class = ICBrickTextAttachmentView;
  [(ICBrickTextAttachmentView *)&v5 didChangeAttachment];
  [(ICBrickTextAttachmentView *)self updateCornerRadius];
}

- (void)didChangeAttachmentTitle
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v2 updateTitle];
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICBrickTextAttachmentView;
  v4 = a3;
  [(ICBrickTextAttachmentView *)&v6 setHighlightPatternRegexFinder:v4];
  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView:v6.receiver];
  [v5 setHighlightPatternRegexFinder:v4];
}

- (void)setHighlightColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICBrickTextAttachmentView;
  v4 = a3;
  [(ICBrickTextAttachmentView *)&v6 setHighlightColor:v4];
  v5 = [(ICBrickTextAttachmentView *)self attachmentBrickView:v6.receiver];
  [v5 setHighlightColor:v4];
}

- (id)quickLookTransitionView
{
  v2 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  v3 = [v2 quickLookTransitionView];

  return v3;
}

- (id)imageForPrinting
{
  v3 = [(ICBrickTextAttachmentView *)self attachment];
  v4 = [v3 usesLinkPresentation];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D36810]);
    v6 = [(ICBrickTextAttachmentView *)self attachment];
    v7 = [v5 initWithAttachment:v6];

    [v7 setForcesLightMode:{-[ICBrickTextAttachmentView shouldForceLightContent](self, "shouldForceLightContent")}];
    v8 = [v7 snapshot];
  }

  else
  {
    [(ICBrickTextAttachmentView *)self layoutIfNeeded];
    v9 = [(ICBrickTextAttachmentView *)self snapshotViewAfterScreenUpdates:1];
    v8 = [(ICBrickTextAttachmentView *)self ic_imageRenderedFromLayer];
  }

  return v8;
}

- (void)updateCornerRadius
{
  v6 = [(ICBrickTextAttachmentView *)self attachmentBrickView];
  [v6 effectiveLayoutCornerRadius];
  v4 = v3;
  v5 = [(ICBrickTextAttachmentView *)self layer];
  [v5 setCornerRadius:v4];
}

- (BOOL)shouldForceLightContent
{
  v3 = [(ICAttachmentView *)self textContainer];
  v4 = [v3 tk2TextView];

  objc_opt_class();
  if (v4)
  {
    v5 = [v4 textStorage];
    v6 = ICDynamicCast();

    v7 = [v6 styler];
    v8 = [v7 isForPrint];
  }

  else
  {
    v9 = [(ICAttachmentView *)self textContainer];
    v10 = [v9 layoutManager];
    v6 = ICDynamicCast();

    v8 = [v6 isRenderingImageForPrint];
  }

  return v8;
}

@end