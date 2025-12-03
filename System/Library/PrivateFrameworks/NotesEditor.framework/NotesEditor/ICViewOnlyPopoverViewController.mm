@interface ICViewOnlyPopoverViewController
+ (id)viewOnlyPopoverViewController:(id)controller sourceView:(id)view;
- (CGSize)preferredContentSize;
- (ICViewOnlyPopoverDelegate)popoverDelegate;
- (ICViewOnlyPopoverViewController)initWithDelegate:(id)delegate;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICViewOnlyPopoverViewController

- (ICViewOnlyPopoverViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = ICViewOnlyPopoverViewController;
  v5 = [(ICViewOnlyPopoverViewController *)&v23 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ICViewOnlyPopoverViewController *)v5 setPopoverDelegate:delegateCopy];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(ICViewOnlyPopoverViewController *)v6 setLabel:v7];

    label = [(ICViewOnlyPopoverViewController *)v6 label];
    [label setTextAlignment:1];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle localizedStringForKey:@"This document has been modified using a newer OS version. Upgrade to the latest OS to modify it on this device." value:&stru_282757698 table:0];

    label2 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label2 setText:v10];

    [(ICViewOnlyPopoverViewController *)v6 setAccessibilityLabel:v10];
    label3 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label3 setNumberOfLines:0];

    label4 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label4 setAdjustsFontForContentSizeCategory:1];

    v14 = *MEMORY[0x277D76800];
    label5 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label5 setMaximumContentSizeCategory:v14];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    ic_fontWithSingleLineA = [v16 ic_fontWithSingleLineA];
    label6 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label6 setFont:ic_fontWithSingleLineA];

    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    label7 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label7 setTextColor:darkGrayColor];

    label8 = [(ICViewOnlyPopoverViewController *)v6 label];
    [label8 setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

+ (id)viewOnlyPopoverViewController:(id)controller sourceView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  v7 = [[ICViewOnlyPopoverViewController alloc] initWithDelegate:controllerCopy];

  [(ICViewOnlyPopoverViewController *)v7 setModalPresentationStyle:7];
  popoverPresentationController = [(ICViewOnlyPopoverViewController *)v7 popoverPresentationController];
  [popoverPresentationController setDelegate:v7];
  [popoverPresentationController setPermittedArrowDirections:2];
  [popoverPresentationController setSourceView:viewCopy];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [popoverPresentationController setBackgroundColor:whiteColor];

  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  v21 = CGRectInset(v20, 0.0, -4.0);
  [popoverPresentationController setSourceRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];

  return v7;
}

- (CGSize)preferredContentSize
{
  label = [(ICViewOnlyPopoverViewController *)self label];
  [label sizeThatFits:{400.0, 1.79769313e308}];
  v4 = v3;
  v6 = v5;

  v7 = v4 + 24.0;
  v8 = v6 + 20.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ICViewOnlyPopoverViewController;
  [(ICViewOnlyPopoverViewController *)&v6 viewWillAppear:appear];
  label = [(ICViewOnlyPopoverViewController *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(ICViewOnlyPopoverViewController *)self view];
  [view addSubview:label];

  [label ic_addAnchorsToFillSuperviewWithLeadingPadding:1 trailingPadding:1 verticalPadding:12.0 usesSafeAreaLayoutGuideHorizontally:12.0 usesSafeAreaLayoutGuideVertically:10.0];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  popoverDelegate = [(ICViewOnlyPopoverViewController *)self popoverDelegate];
  [popoverDelegate popoverDidDismiss];
}

- (ICViewOnlyPopoverDelegate)popoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverDelegate);

  return WeakRetained;
}

@end