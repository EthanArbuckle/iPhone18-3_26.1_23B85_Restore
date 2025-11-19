@interface DDParsecNoDataViewController
- (id)initForSolarium:(BOOL)a3;
- (id)manageDictionariesURL;
- (void)loadView;
- (void)manageDictionaries:(id)a3;
- (void)searchWeb:(id)a3;
- (void)setReason:(id)a3;
- (void)updateStyle;
@end

@implementation DDParsecNoDataViewController

- (id)initForSolarium:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DDParsecNoDataViewController;
  result = [(DDParsecNoDataViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    *(result + 1016) = a3;
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
    v6 = [(UIView *)self->_container centerYAnchor];
    v7 = [v93 centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [(UIView *)self->_container centerXAnchor];
    v10 = [v93 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UIView *)self->_container widthAnchor];
    v13 = [v93 widthAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];
    [v14 setActive:1];

    v15 = objc_opt_new();
    errorLabel = self->_errorLabel;
    self->_errorLabel = v15;

    v17 = [(DDParsecNoDataViewController *)self reason];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
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
    v24 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_errorLabel setTextColor:v24];

    [(UIView *)self->_container addSubview:self->_errorLabel];
    [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_errorLabel setNumberOfLines:0];
    v25 = [(UILabel *)self->_errorLabel topAnchor];
    v26 = [(UIView *)self->_container topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:15.0];
    [v27 setActive:1];

    v28 = [(UILabel *)self->_errorLabel centerXAnchor];
    v29 = [(UIView *)self->_container centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(UILabel *)self->_errorLabel widthAnchor];
    v32 = [(UIView *)self->_container widthAnchor];
    v33 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:-15.0];
    [v33 setActive:1];

    v34 = [(DDParsecNoDataViewController *)self altURL];
    if (v34)
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
    v37 = [v35 titleLabel];
    [v37 setFont:v36];

    v38 = [MEMORY[0x277D75348] linkColor];
    v39 = [v35 titleLabel];
    [v39 setTextColor:v38];

    v40 = [v35 titleLabel];
    [v40 setLineBreakMode:0];

    v41 = [v35 titleLabel];
    [v41 setTextAlignment:1];

    v42 = [(DDParsecNoDataViewController *)self altURL];

    if (v42)
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
    v47 = [v35 topAnchor];
    v48 = [(UILabel *)self->_errorLabel bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:15.0];
    [v49 setActive:1];

    v50 = [v35 centerXAnchor];
    v51 = [(UIView *)self->_container centerXAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [v35 widthAnchor];
    v54 = [(UIView *)self->_container widthAnchor];
    v55 = [v53 constraintLessThanOrEqualToAnchor:v54 constant:-15.0];
    [v55 setActive:1];

    if (![(DDParsecNoDataViewController *)self lookup])
    {
      goto LABEL_20;
    }

LABEL_16:
    v56 = [(DDParsecNoDataViewController *)self manageDictionariesURL];

    if (v56)
    {
      v57 = [MEMORY[0x277D75220] buttonWithType:1];
      v58 = [MEMORY[0x277D74300] preferredFontForTextStyle:v21];
      v59 = [v57 titleLabel];
      [v59 setFont:v58];

      v60 = [MEMORY[0x277D75348] linkColor];
      v61 = [v57 titleLabel];
      [v61 setTextColor:v60];

      v62 = [v57 titleLabel];
      [v62 setLineBreakMode:0];

      v63 = [v57 titleLabel];
      [v63 setTextAlignment:1];

      v64 = DDLocalizedString(@"Manage Dictionaries");
      [v57 setTitle:v64 forState:0];

      [v57 addTarget:self action:sel_manageDictionaries_ forControlEvents:64];
      [(UIView *)self->_container addSubview:v57];
      [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (v35)
      {
        v65 = [v57 topAnchor];
        v66 = [v35 bottomAnchor];
        v67 = [v65 constraintEqualToAnchor:v66 constant:15.0];
        [v67 setActive:1];
      }

      v68 = [v57 centerXAnchor];
      v69 = [(UIView *)self->_container centerXAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];
      [v70 setActive:1];

      v71 = [v57 widthAnchor];
      v72 = [(UIView *)self->_container widthAnchor];
      v73 = [v71 constraintLessThanOrEqualToAnchor:v72 constant:-15.0];
      [v73 setActive:1];

      v74 = [v57 bottomAnchor];
      v75 = [(UIView *)self->_container bottomAnchor];
      v76 = [v74 constraintEqualToAnchor:v75 constant:-15.0];
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

    v57 = [v35 bottomAnchor];
    v74 = [(UIView *)self->_container bottomAnchor];
    v75 = [v57 constraintEqualToAnchor:v74 constant:-15.0];
    [v75 setActive:1];
LABEL_22:

    goto LABEL_23;
  }

  v77 = objc_alloc(MEMORY[0x277D75E78]);
  v78 = [(DDParsecNoDataViewController *)self reason];
  v79 = [v77 initWithFrame:v78 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  emptyNoContentView = self->_emptyNoContentView;
  self->_emptyNoContentView = v79;

  [(_UIContentUnavailableView *)self->_emptyNoContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v93 addSubview:self->_emptyNoContentView];
  v81 = [(_UIContentUnavailableView *)self->_emptyNoContentView topAnchor];
  v82 = [v93 topAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];
  [v83 setActive:1];

  v84 = [(_UIContentUnavailableView *)self->_emptyNoContentView bottomAnchor];
  v85 = [v93 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  [v86 setActive:1];

  v87 = [(_UIContentUnavailableView *)self->_emptyNoContentView leadingAnchor];
  v88 = [v93 leadingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  [v89 setActive:1];

  v90 = [(_UIContentUnavailableView *)self->_emptyNoContentView trailingAnchor];
  v91 = [v93 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];
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
    v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    p_container = &self->_container;
    [(UIView *)*p_container setBackgroundColor:v4];
  }

  v5 = [(UIView *)*p_container layer];
  [v5 setCornerRadius:14.0];
}

- (void)setReason:(id)a3
{
  objc_storeStrong(&self->_reason, a3);
  v5 = a3;
  v6 = [(DDParsecNoDataViewController *)self reason];
  v8 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_282C1E0A8;
  }

  [(UILabel *)self->_errorLabel setText:v7];
}

- (void)searchWeb:(id)a3
{
  v4 = [(DDParsecNoDataViewController *)self altURL];
  v5 = [(DDParsecNoDataViewController *)self searchWebQuery];
  if (v4 | v5)
  {
    v6 = [(DDParsecNoDataViewController *)self navigationController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DDParsecNoDataViewController *)self navigationController];
      [v8 interactionEndedWithPunchout:1];
    }

    v9 = dispatch_get_global_queue(33, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__DDParsecNoDataViewController_searchWeb___block_invoke;
    v10[3] = &unk_278290BC8;
    v11 = v4;
    v12 = v5;
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

- (void)manageDictionaries:(id)a3
{
  v4 = [(DDParsecNoDataViewController *)self manageDictionariesURL];
  if (v4)
  {
    v5 = [(DDParsecNoDataViewController *)self navigationController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DDParsecNoDataViewController *)self navigationController];
      [v7 interactionEndedWithPunchout:1];
    }

    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DDParsecNoDataViewController_manageDictionaries___block_invoke;
    block[3] = &unk_278290B50;
    v10 = v4;
    dispatch_async(v8, block);
  }
}

void __51__DDParsecNoDataViewController_manageDictionaries___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

@end