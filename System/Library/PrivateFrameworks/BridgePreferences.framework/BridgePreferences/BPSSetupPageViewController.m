@interface BPSSetupPageViewController
- (BPSBuddyControllerDelegate)delegate;
- (BPSSetupPageViewController)init;
- (CGRect)computedTitleFrame;
- (UIView)contentView;
- (id)_baseIdentifier;
- (id)localizedInformativeText;
- (id)localizedTitle;
- (void)addFollowUpForPageAndDevice:(id)a3 withCompletion:(id)a4;
- (void)addFollowUpForPageWithCompletion:(id)a3;
- (void)removeFollowupForPageWithCompletion:(id)a3;
- (void)updateTitleLabel;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BPSSetupPageViewController

- (BPSSetupPageViewController)init
{
  v3.receiver = self;
  v3.super_class = BPSSetupPageViewController;
  return [(BPSSetupPageViewController *)&v3 init];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = BPSSetupPageViewController;
  [(BPSSetupPageViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = self->_titleLabel;
  v7 = BPSRegularFontWithSize(24.0);
  [(UILabel *)v6 setFont:v7];

  v8 = self->_titleLabel;
  v9 = BPSTextColor();
  [(UILabel *)v8 setTextColor:v9];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v10 = [(BPSSetupPageViewController *)self view];
  [v10 addSubview:self->_titleLabel];

  [(BPSSetupPageViewController *)self updateTitleLabel];
}

- (void)updateTitleLabel
{
  v3 = [(BPSSetupPageViewController *)self titleString];

  if (v3)
  {
    titleLabel = self->_titleLabel;
    v5 = [(BPSSetupPageViewController *)self titleString];
    [(UILabel *)titleLabel setText:v5];
  }

  else
  {
    v6 = [(BPSSetupPageViewController *)self titleAttributedString];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = self->_titleLabel;
    v5 = [(BPSSetupPageViewController *)self titleAttributedString];
    [(UILabel *)v7 setAttributedText:v5];
  }

LABEL_6:
  v8 = [(BPSSetupPageViewController *)self view];
  [v8 setNeedsLayout];
}

- (CGRect)computedTitleFrame
{
  if ([(BPSSetupPageViewController *)self isViewLoaded])
  {
    [(UILabel *)self->_titleLabel frame];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = BPSSetupPageViewController;
  [(BPSSetupPageViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(BPSSetupPageViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];

  LODWORD(v6) = [(BPSSetupPageViewController *)self contentViewIsInAdjustedScrollView];
  [(UILabel *)self->_titleLabel sizeThatFits:v5 + -28.0, 1.79769313e308];
  titleLabel = self->_titleLabel;
  UIRectIntegralWithScale();
  [(UILabel *)titleLabel setFrame:?];
  v8 = self->_titleLabel;
  [(BPSSetupPageViewController *)self verticalTitleInset];
  v12[0] = xmmword_241EADD30;
  v12[1] = xmmword_241EADDC0;
  v13 = vdupq_n_s64(0x4058000000000000uLL);
  v14 = v13;
  v10 = v9 + BPSScreenValueGetRelevantValue(v12);
  v11 = 64.0;
  if (!v6)
  {
    v11 = 0.0;
  }

  [(UILabel *)v8 _setFirstLineBaselineFrameOriginY:v10 - v11];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [(BPSSetupPageViewController *)self view];
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [v4 bounds];
    v6 = [v5 initWithFrame:?];
    v7 = self->_contentView;
    self->_contentView = v6;

    [(UIView *)self->_contentView addSubview:self->_titleLabel];
    [v4 addSubview:self->_contentView];

    contentView = self->_contentView;
  }

  return contentView;
}

- (id)localizedTitle
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = bps_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSSetupPageViewController localizedTitle]";
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (id)localizedInformativeText
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = bps_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BPSSetupPageViewController localizedInformativeText]";
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (id)_baseIdentifier
{
  v3 = +[BPSFollowUpController baseDomainIdentifier];
  v4 = [(BPSSetupPageViewController *)self followUpIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFollowUpForPageAndDevice:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BPSSetupPageViewController *)self _baseIdentifier];
  if (v8)
  {
    v18 = v7;
    v9 = [v6 valueForProperty:*MEMORY[0x277D2BC30]];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v9];
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Add FollowUp for identifier %{public}@...", buf, 0xCu);
    }

    v12 = bps_setup_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_241E74000, v12, OS_LOG_TYPE_DEFAULT, "...for device: %{public}@", buf, 0xCu);
    }

    v21[0] = @"title";
    v13 = [(BPSSetupPageViewController *)self localizedTitle];
    v22[0] = v13;
    v21[1] = @"description";
    v14 = [(BPSSetupPageViewController *)self localizedInformativeText];
    v22[1] = v14;
    v21[2] = @"followUpActions";
    v15 = [(BPSSetupPageViewController *)self followUpActions];
    v22[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v17 = [BPSFollowUpAttributes attributeWithOptions:v16];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__BPSSetupPageViewController_addFollowUpForPageAndDevice_withCompletion___block_invoke;
    v19[3] = &unk_278D23430;
    v7 = v18;
    v20 = v18;
    [BPSFollowUpController addFollowUpForIdentifier:v10 withAttributes:v17 withCompletion:v19];
  }

  else
  {
    v9 = bps_setup_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v9, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
    }
  }
}

uint64_t __73__BPSSetupPageViewController_addFollowUpForPageAndDevice_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addFollowUpForPageWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSSetupPageViewController *)self _baseIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Add Global FollowUp for %{public}@", buf, 0xCu);
    }

    v14[0] = @"title";
    v8 = [(BPSSetupPageViewController *)self localizedTitle];
    v15[0] = v8;
    v14[1] = @"description";
    v9 = [(BPSSetupPageViewController *)self localizedInformativeText];
    v15[1] = v9;
    v14[2] = @"followUpActions";
    v10 = [(BPSSetupPageViewController *)self followUpActions];
    v15[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v7 = [BPSFollowUpAttributes attributeWithOptions:v11];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__BPSSetupPageViewController_addFollowUpForPageWithCompletion___block_invoke;
    v12[3] = &unk_278D23430;
    v13 = v4;
    [BPSFollowUpController addFollowUpForIdentifier:v5 withAttributes:v7 withCompletion:v12];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
  }
}

uint64_t __63__BPSSetupPageViewController_addFollowUpForPageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeFollowupForPageWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSSetupPageViewController *)self followUpIdentifier];
  v6 = bps_setup_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Remove identifier %{public}@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__BPSSetupPageViewController_removeFollowupForPageWithCompletion___block_invoke;
    v8[3] = &unk_278D23430;
    v9 = v4;
    [BPSFollowUpController removeFollowUpForIdentifier:v5 withCompletion:v8];
    v7 = v9;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Error!! Removing a FollowUp requires dictating an identifier!", buf, 2u);
  }
}

uint64_t __66__BPSSetupPageViewController_removeFollowupForPageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end