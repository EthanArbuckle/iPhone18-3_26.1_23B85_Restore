@interface ICViewOnlyPopoverViewController
+ (id)viewOnlyPopoverViewController:(id)a3 sourceView:(id)a4;
- (CGSize)preferredContentSize;
- (ICViewOnlyPopoverDelegate)popoverDelegate;
- (ICViewOnlyPopoverViewController)initWithDelegate:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICViewOnlyPopoverViewController

- (ICViewOnlyPopoverViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ICViewOnlyPopoverViewController;
  v5 = [(ICViewOnlyPopoverViewController *)&v23 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(ICViewOnlyPopoverViewController *)v5 setPopoverDelegate:v4];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(ICViewOnlyPopoverViewController *)v6 setLabel:v7];

    v8 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v8 setTextAlignment:1];

    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"This document has been modified using a newer OS version. Upgrade to the latest OS to modify it on this device." value:&stru_282757698 table:0];

    v11 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v11 setText:v10];

    [(ICViewOnlyPopoverViewController *)v6 setAccessibilityLabel:v10];
    v12 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v12 setNumberOfLines:0];

    v13 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v13 setAdjustsFontForContentSizeCategory:1];

    v14 = *MEMORY[0x277D76800];
    v15 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v15 setMaximumContentSizeCategory:v14];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v17 = [v16 ic_fontWithSingleLineA];
    v18 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v18 setFont:v17];

    v19 = [MEMORY[0x277D75348] darkGrayColor];
    v20 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v20 setTextColor:v19];

    v21 = [(ICViewOnlyPopoverViewController *)v6 label];
    [v21 setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

+ (id)viewOnlyPopoverViewController:(id)a3 sourceView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICViewOnlyPopoverViewController alloc] initWithDelegate:v6];

  [(ICViewOnlyPopoverViewController *)v7 setModalPresentationStyle:7];
  v8 = [(ICViewOnlyPopoverViewController *)v7 popoverPresentationController];
  [v8 setDelegate:v7];
  [v8 setPermittedArrowDirections:2];
  [v8 setSourceView:v5];
  v9 = [MEMORY[0x277D75348] whiteColor];
  [v8 setBackgroundColor:v9];

  [v5 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  v21 = CGRectInset(v20, 0.0, -4.0);
  [v8 setSourceRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];

  return v7;
}

- (CGSize)preferredContentSize
{
  v2 = [(ICViewOnlyPopoverViewController *)self label];
  [v2 sizeThatFits:{400.0, 1.79769313e308}];
  v4 = v3;
  v6 = v5;

  v7 = v4 + 24.0;
  v8 = v6 + 20.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICViewOnlyPopoverViewController;
  [(ICViewOnlyPopoverViewController *)&v6 viewWillAppear:a3];
  v4 = [(ICViewOnlyPopoverViewController *)self label];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(ICViewOnlyPopoverViewController *)self view];
  [v5 addSubview:v4];

  [v4 ic_addAnchorsToFillSuperviewWithLeadingPadding:1 trailingPadding:1 verticalPadding:12.0 usesSafeAreaLayoutGuideHorizontally:12.0 usesSafeAreaLayoutGuideVertically:10.0];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(ICViewOnlyPopoverViewController *)self popoverDelegate];
  [v3 popoverDidDismiss];
}

- (ICViewOnlyPopoverDelegate)popoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverDelegate);

  return WeakRetained;
}

@end