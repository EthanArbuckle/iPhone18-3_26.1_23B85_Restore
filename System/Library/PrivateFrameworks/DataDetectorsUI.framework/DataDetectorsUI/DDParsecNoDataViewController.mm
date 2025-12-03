@interface DDParsecNoDataViewController
- (id)initForSolarium:(BOOL)solarium;
- (id)manageDictionariesURL;
- (void)loadView;
- (void)manageDictionaries:(id)dictionaries;
- (void)searchWeb:(id)web;
- (void)setReason:(id)reason;
- (void)updateStyle;
@end

@implementation DDParsecNoDataViewController

- (id)initForSolarium:(BOOL)solarium
{
  v5.receiver = self;
  v5.super_class = DDParsecNoDataViewController;
  result = [(DDParsecNoDataViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 1016) = solarium;
  }

  return result;
}

- (void)loadView
{
  v93 = objc_opt_new();
  if (self->_lookup || ([(DDParsecNoDataViewController *)self altURL], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = objc_opt_new();
    container = self->_container;
    self->_container = v4;

    [(UIView *)self->_container setTranslatesAutoresizingMaskIntoConstraints:0];
    [v93 addSubview:self->_container];
    centerYAnchor = [(UIView *)self->_container centerYAnchor];
    centerYAnchor2 = [v93 centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v8 setActive:1];

    centerXAnchor = [(UIView *)self->_container centerXAnchor];
    centerXAnchor2 = [v93 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v11 setActive:1];

    widthAnchor = [(UIView *)self->_container widthAnchor];
    widthAnchor2 = [v93 widthAnchor];
    v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-16.0];
    [v14 setActive:1];

    v15 = objc_opt_new();
    errorLabel = self->_errorLabel;
    self->_errorLabel = v15;

    reason = [(DDParsecNoDataViewController *)self reason];
    v18 = reason;
    if (reason)
    {
      v19 = reason;
    }

    else
    {
      v19 = &stru_282C1E0A8;
    }

    [(UILabel *)self->_errorLabel setText:v19];

    v20 = MEMORY[0x277D74300];
    v21 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    [v22 pointSize];
    v23 = [v20 boldSystemFontOfSize:?];
    [(UILabel *)self->_errorLabel setFont:v23];

    [(UILabel *)self->_errorLabel setLineBreakMode:0];
    [(UILabel *)self->_errorLabel setTextAlignment:1];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_errorLabel setTextColor:labelColor];

    [(UIView *)self->_container addSubview:self->_errorLabel];
    [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_errorLabel setNumberOfLines:0];
    topAnchor = [(UILabel *)self->_errorLabel topAnchor];
    topAnchor2 = [(UIView *)self->_container topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    [v27 setActive:1];

    centerXAnchor3 = [(UILabel *)self->_errorLabel centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_container centerXAnchor];
    v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v30 setActive:1];

    widthAnchor3 = [(UILabel *)self->_errorLabel widthAnchor];
    widthAnchor4 = [(UIView *)self->_container widthAnchor];
    v33 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:-15.0];
    [v33 setActive:1];

    altURL = [(DDParsecNoDataViewController *)self altURL];
    if (altURL)
    {
    }

    else if (!-[DDParsecNoDataViewController lookup](self, "lookup") || ([MEMORY[0x277D262A0] sharedConnection], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "effectiveBoolValueForSetting:", *MEMORY[0x277D26028]), v44, v45 == 2))
    {
      v35 = 0;
      if (![(DDParsecNoDataViewController *)self lookup])
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v35 = [MEMORY[0x277D75220] buttonWithType:1];
    v36 = [MEMORY[0x277D74300] preferredFontForTextStyle:v21];
    titleLabel = [v35 titleLabel];
    [titleLabel setFont:v36];

    linkColor = [MEMORY[0x277D75348] linkColor];
    titleLabel2 = [v35 titleLabel];
    [titleLabel2 setTextColor:linkColor];

    titleLabel3 = [v35 titleLabel];
    [titleLabel3 setLineBreakMode:0];

    titleLabel4 = [v35 titleLabel];
    [titleLabel4 setTextAlignment:1];

    altURL2 = [(DDParsecNoDataViewController *)self altURL];

    if (altURL2)
    {
      v43 = @"Settings";
    }

    else
    {
      v43 = @"Search Web";
    }

    v46 = DDLocalizedString(v43);
    [v35 setTitle:v46 forState:0];

    [v35 addTarget:self action:sel_searchWeb_ forControlEvents:64];
    [(UIView *)self->_container addSubview:v35];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor3 = [v35 topAnchor];
    bottomAnchor = [(UILabel *)self->_errorLabel bottomAnchor];
    v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
    [v49 setActive:1];

    centerXAnchor5 = [v35 centerXAnchor];
    centerXAnchor6 = [(UIView *)self->_container centerXAnchor];
    v52 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v52 setActive:1];

    widthAnchor5 = [v35 widthAnchor];
    widthAnchor6 = [(UIView *)self->_container widthAnchor];
    v55 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6 constant:-15.0];
    [v55 setActive:1];

    if (![(DDParsecNoDataViewController *)self lookup])
    {
      goto LABEL_20;
    }

LABEL_16:
    manageDictionariesURL = [(DDParsecNoDataViewController *)self manageDictionariesURL];

    if (manageDictionariesURL)
    {
      bottomAnchor5 = [MEMORY[0x277D75220] buttonWithType:1];
      v58 = [MEMORY[0x277D74300] preferredFontForTextStyle:v21];
      titleLabel5 = [bottomAnchor5 titleLabel];
      [titleLabel5 setFont:v58];

      linkColor2 = [MEMORY[0x277D75348] linkColor];
      titleLabel6 = [bottomAnchor5 titleLabel];
      [titleLabel6 setTextColor:linkColor2];

      titleLabel7 = [bottomAnchor5 titleLabel];
      [titleLabel7 setLineBreakMode:0];

      titleLabel8 = [bottomAnchor5 titleLabel];
      [titleLabel8 setTextAlignment:1];

      v64 = DDLocalizedString(@"Manage Dictionaries");
      [bottomAnchor5 setTitle:v64 forState:0];

      [bottomAnchor5 addTarget:self action:sel_manageDictionaries_ forControlEvents:64];
      [(UIView *)self->_container addSubview:bottomAnchor5];
      [bottomAnchor5 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (v35)
      {
        topAnchor4 = [bottomAnchor5 topAnchor];
        bottomAnchor2 = [v35 bottomAnchor];
        v67 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
        [v67 setActive:1];
      }

      centerXAnchor7 = [bottomAnchor5 centerXAnchor];
      centerXAnchor8 = [(UIView *)self->_container centerXAnchor];
      v70 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      [v70 setActive:1];

      widthAnchor7 = [bottomAnchor5 widthAnchor];
      widthAnchor8 = [(UIView *)self->_container widthAnchor];
      v73 = [widthAnchor7 constraintLessThanOrEqualToAnchor:widthAnchor8 constant:-15.0];
      [v73 setActive:1];

      bottomAnchor3 = [bottomAnchor5 bottomAnchor];
      bottomAnchor4 = [(UIView *)self->_container bottomAnchor];
      v76 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-15.0];
      [v76 setActive:1];

      goto LABEL_22;
    }

LABEL_20:
    if (!v35)
    {
LABEL_23:
      [(DDParsecNoDataViewController *)self setView:v93];

      goto LABEL_24;
    }

    bottomAnchor5 = [v35 bottomAnchor];
    bottomAnchor3 = [(UIView *)self->_container bottomAnchor];
    bottomAnchor4 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:-15.0];
    [bottomAnchor4 setActive:1];
LABEL_22:

    goto LABEL_23;
  }

  v77 = objc_alloc(MEMORY[0x277D75E78]);
  reason2 = [(DDParsecNoDataViewController *)self reason];
  v79 = [v77 initWithFrame:reason2 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  emptyNoContentView = self->_emptyNoContentView;
  self->_emptyNoContentView = v79;

  [(_UIContentUnavailableView *)self->_emptyNoContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v93 addSubview:self->_emptyNoContentView];
  topAnchor5 = [(_UIContentUnavailableView *)self->_emptyNoContentView topAnchor];
  topAnchor6 = [v93 topAnchor];
  v83 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v83 setActive:1];

  bottomAnchor6 = [(_UIContentUnavailableView *)self->_emptyNoContentView bottomAnchor];
  bottomAnchor7 = [v93 bottomAnchor];
  v86 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [v86 setActive:1];

  leadingAnchor = [(_UIContentUnavailableView *)self->_emptyNoContentView leadingAnchor];
  leadingAnchor2 = [v93 leadingAnchor];
  v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v89 setActive:1];

  trailingAnchor = [(_UIContentUnavailableView *)self->_emptyNoContentView trailingAnchor];
  trailingAnchor2 = [v93 trailingAnchor];
  v92 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v92 setActive:1];

  [(DDParsecNoDataViewController *)self setView:v93];
LABEL_24:
}

- (void)updateStyle
{
  [(DDParsecNoDataViewController *)self loadViewIfNeeded];
  if (self->_solarium)
  {
    p_container = &self->_container;
    [(UIView *)*p_container setBackgroundColor:0];
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    p_container = &self->_container;
    [(UIView *)*p_container setBackgroundColor:systemGroupedBackgroundColor];
  }

  layer = [(UIView *)*p_container layer];
  [layer setCornerRadius:14.0];
}

- (void)setReason:(id)reason
{
  objc_storeStrong(&self->_reason, reason);
  reasonCopy = reason;
  reason = [(DDParsecNoDataViewController *)self reason];
  v8 = reason;
  if (reason)
  {
    v7 = reason;
  }

  else
  {
    v7 = &stru_282C1E0A8;
  }

  [(UILabel *)self->_errorLabel setText:v7];
}

- (void)searchWeb:(id)web
{
  altURL = [(DDParsecNoDataViewController *)self altURL];
  searchWebQuery = [(DDParsecNoDataViewController *)self searchWebQuery];
  if (altURL | searchWebQuery)
  {
    navigationController = [(DDParsecNoDataViewController *)self navigationController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      navigationController2 = [(DDParsecNoDataViewController *)self navigationController];
      [navigationController2 interactionEndedWithPunchout:1];
    }

    v9 = dispatch_get_global_queue(33, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__DDParsecNoDataViewController_searchWeb___block_invoke;
    v10[3] = &unk_278290BC8;
    v11 = altURL;
    v12 = searchWebQuery;
    dispatch_async(v9, v10);
  }
}

void __42__DDParsecNoDataViewController_searchWeb___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 openSensitiveURL:*(a1 + 32) withOptions:0];
  }

  else
  {
    v2 = *(a1 + 40);

    DDPerformWebSearchFromQuery(v2);
  }
}

- (id)manageDictionariesURL
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=DICTIONARY"];
  if (v2 && ([MEMORY[0x277CCA8D8] mainBundle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"com.apple.datadetectors.DDActionsService"), v4, v3, v5))
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)manageDictionaries:(id)dictionaries
{
  manageDictionariesURL = [(DDParsecNoDataViewController *)self manageDictionariesURL];
  if (manageDictionariesURL)
  {
    navigationController = [(DDParsecNoDataViewController *)self navigationController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      navigationController2 = [(DDParsecNoDataViewController *)self navigationController];
      [navigationController2 interactionEndedWithPunchout:1];
    }

    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DDParsecNoDataViewController_manageDictionaries___block_invoke;
    block[3] = &unk_278290B50;
    v10 = manageDictionariesURL;
    dispatch_async(v8, block);
  }
}

void __51__DDParsecNoDataViewController_manageDictionaries___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

@end