@interface DMCActivityViewController
- (DMCActivityViewController)initWithActivityTitle:(id)title activityText:(id)text showBottomView:(BOOL)view;
- (id)_clearImage;
- (id)_textFont;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DMCActivityViewController

- (DMCActivityViewController)initWithActivityTitle:(id)title activityText:(id)text showBottomView:(BOOL)view
{
  textCopy = text;
  titleCopy = title;
  _clearImage = [(DMCActivityViewController *)self _clearImage];
  v13.receiver = self;
  v13.super_class = DMCActivityViewController;
  v11 = [(DMCEnrollmentTemplateTableViewController *)&v13 initWithIconName:0 iconImage:_clearImage title:titleCopy subTitle:textCopy layoutStyle:0];

  if (v11)
  {
    v11->_showBottomView = view;
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = DMCActivityViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v13 viewWillAppear:appear];
  if (([(DMCActivityViewController *)self isBeingPresented]& 1) != 0 || [(DMCActivityViewController *)self isMovingToParentViewController])
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(DMCActivityViewController *)self setSpinnerView:v4];

    spinnerView = [(DMCActivityViewController *)self spinnerView];
    [spinnerView startAnimating];

    view = [(DMCActivityViewController *)self view];
    spinnerView2 = [(DMCActivityViewController *)self spinnerView];
    [view addSubview:spinnerView2];

    [(DMCActivityViewController *)self setModalInPresentation:1];
    if ([(DMCActivityViewController *)self showBottomView])
    {
      v8 = [DMCEnrollmentLinkLabelView alloc];
      v9 = DMCLocalizedString();
      v10 = [(DMCEnrollmentLinkLabelView *)v8 initWithIcon:@"gear" message:v9 linkMessage:0 linkHandler:0];

      [(DMCEnrollmentLinkLabelView *)v10 setUserInteractionEnabled:0];
      [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v10];
    }

    view2 = [(DMCActivityViewController *)self view];
    [view2 setNeedsDisplay];
  }

  navigationItem = [(DMCActivityViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = DMCActivityViewController;
  [(DMCActivityViewController *)&v13 viewDidLayoutSubviews];
  spinnerView = [(DMCActivityViewController *)self spinnerView];
  [spinnerView frame];
  v5 = v4;
  v7 = v6;

  view = [(DMCActivityViewController *)self view];
  [view bounds];
  v9 = (CGRectGetWidth(v14) - v5) * 0.5;
  view2 = [(DMCActivityViewController *)self view];
  [view2 bounds];
  v11 = (CGRectGetHeight(v15) - v5) * 0.5;
  spinnerView2 = [(DMCActivityViewController *)self spinnerView];
  [spinnerView2 setFrame:{v9, v11, v5, v7}];
}

- (id)_textFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)_clearImage
{
  v5.width = 50.0;
  v5.height = 50.0;
  UIGraphicsBeginImageContextWithOptions(v5, 0, 0.0);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

@end