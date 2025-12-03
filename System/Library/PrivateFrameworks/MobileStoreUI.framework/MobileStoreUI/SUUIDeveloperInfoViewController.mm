@interface SUUIDeveloperInfoViewController
- (SUUIDeveloperInfoViewController)initWithDeveloperInfo:(id)info;
- (void)loadView;
@end

@implementation SUUIDeveloperInfoViewController

- (SUUIDeveloperInfoViewController)initWithDeveloperInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = SUUIDeveloperInfoViewController;
  v5 = [(SUUIDeveloperInfoViewController *)&v9 init];
  if (v5)
  {
    v6 = [infoCopy copy];
    developerInfo = v5->_developerInfo;
    v5->_developerInfo = v6;
  }

  return v5;
}

- (void)loadView
{
  clientContext = [(SUUIViewController *)self clientContext];
  v3 = SUUIUserInterfaceIdiom(clientContext);
  v4 = v3;
  if (self->_infoView)
  {
    p_scrollView = &self->_scrollView;
    scrollView = self->_scrollView;
    if (scrollView)
    {
      goto LABEL_13;
    }

    if (v3 != 1)
    {
LABEL_9:
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v10 = v12;

      goto LABEL_10;
    }
  }

  else
  {
    v7 = [[SUUIDeveloperInfoView alloc] initWithDeveloperInfo:self->_developerInfo clientContext:clientContext];
    infoView = self->_infoView;
    self->_infoView = v7;

    v9 = self->_infoView;
    if (v4 != 1)
    {
      [(SUUIDeveloperInfoView *)v9 setAutoresizingMask:18];
      p_scrollView = &self->_scrollView;
      scrollView = self->_scrollView;
      if (scrollView)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    [(SUUIDeveloperInfoView *)v9 setAutoresizingMask:5];
    p_scrollView = &self->_scrollView;
    scrollView = self->_scrollView;
    if (scrollView)
    {
      goto LABEL_13;
    }
  }

  v10 = 370.0;
LABEL_10:
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  [(SUUIDeveloperInfoView *)self->_infoView sizeThatFits:v10, 1.79769313e308];
  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v13, v14, v10, v15}];
  v18 = *p_scrollView;
  *p_scrollView = v17;

  [*p_scrollView setContentSize:{v10, v16}];
  v19 = *p_scrollView;
  v20 = [MEMORY[0x277D75348] colorWithWhite:0.921568627 alpha:1.0];
  [v19 setBackgroundColor:v20];

  if (v4 == 1)
  {
    [*p_scrollView setContentInset:{140.0, 0.0, 0.0, 0.0}];
  }

  v21 = self->_infoView;
  backgroundColor = [*p_scrollView backgroundColor];
  [(SUUIDeveloperInfoView *)v21 setBackgroundColor:backgroundColor];

  v23 = self->_infoView;
  [*p_scrollView bounds];
  [(SUUIDeveloperInfoView *)v23 setFrame:?];
  [*p_scrollView addSubview:self->_infoView];
  scrollView = *p_scrollView;
LABEL_13:
  [(SUUIDeveloperInfoViewController *)self setView:scrollView];
  [(SUUIViewController *)self showDefaultNavigationItems];
}

@end