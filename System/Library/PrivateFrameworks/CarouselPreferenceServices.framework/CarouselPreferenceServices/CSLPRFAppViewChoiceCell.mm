@interface CSLPRFAppViewChoiceCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CSLPRFAppViewChoiceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)bundleID;
- (id)bundle;
- (id)localize:(id)localize;
- (void)launcherViewModeSettingChanged;
- (void)layoutSubviews;
- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion;
- (void)watchChooser:(id)chooser madeChoice:(int64_t)choice;
@end

@implementation CSLPRFAppViewChoiceCell

- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4114;
  v19 = __Block_byref_object_dispose__4115;
  v20 = objc_alloc_init(CSLPRFAppViewImageProvider);
  v10 = v16[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__CSLPRFAppViewChoiceCell_retrieveImageForLauncherViewMode_size_completion___block_invoke;
  v12[3] = &unk_278745090;
  v12[4] = self;
  v14 = &v15;
  v11 = completionCopy;
  v13 = v11;
  [v10 retrieveImageForLauncherViewMode:mode size:v12 completion:{width, height}];

  _Block_object_dispose(&v15, 8);
}

void __76__CSLPRFAppViewChoiceCell_retrieveImageForLauncherViewMode_size_completion___block_invoke(void *a1, UIImage *image)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = UIImagePNGRepresentation(image);
  v4 = [MEMORY[0x277D755B8] imageWithData:v3 scale:2.0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ %@ retrieved %@", &v11, 0x20u);
  }

  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v4);
  }

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)launcherViewModeSettingChanged
{
  appViewChoiceView = self->_appViewChoiceView;
  launcherViewMode = [(CSLPRFLauncherViewModeSetting *)self->_appViewSetting launcherViewMode];

  [(CSLPRFAppViewChoiceView *)appViewChoiceView setWatchChoice:launcherViewMode];
}

- (void)watchChooser:(id)chooser madeChoice:(int64_t)choice
{
  v12 = *MEMORY[0x277D85DE8];
  chooserCopy = chooser;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = chooserCopy;
    v10 = 1024;
    choiceCopy = choice;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> watchChoiceProvider %@ madeChoice %d", &v8, 0x12u);
  }

  if ([(CSLPRFLauncherViewModeSetting *)self->_appViewSetting launcherViewMode]!= choice)
  {
    [(CSLPRFLauncherViewModeSetting *)self->_appViewSetting setLauncherViewMode:choice reason:2];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)bundleID
{
  bundle = [(CSLPRFAppViewChoiceCell *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)localize:(id)localize
{
  v17 = *MEMORY[0x277D85DE8];
  localizeCopy = localize;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bundle = [(CSLPRFAppViewChoiceCell *)self bundle];
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = localizeCopy;
    v15 = 2112;
    v16 = bundle;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> %@ bundle for %@ is %@", &v11, 0x20u);
  }

  bundle2 = [(CSLPRFAppViewChoiceCell *)self bundle];
  v7 = [bundle2 localizedStringForKey:localizeCopy value:0 table:@"CarouselAppViewChoice"];

  if (!v7)
  {
    bundle3 = [(CSLPRFAppViewChoiceCell *)self bundle];
    v7 = [bundle3 localizedStringForKey:localizeCopy value:0 table:@"CompanionAppViewSetup"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CSLPRFAppViewChoiceCell;
  [(PSTableCell *)&v9 layoutSubviews];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  contentView = [(CSLPRFAppViewChoiceCell *)self contentView];
  [contentView bounds];
  v8 = (v5 - v7) * 0.5;

  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setHorizontalOffset:v8];
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setNeedsLayout];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView systemLayoutSizeFittingSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CSLPRFAppViewChoiceCell *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CSLPRFAppViewChoiceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = CSLPRFAppViewChoiceCell;
  v4 = [(PSTableCell *)&v36 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(CSLPRFLauncherViewModeSetting);
    appViewSetting = v4->_appViewSetting;
    v4->_appViewSetting = v5;

    [(CSLPRFLauncherViewModeSetting *)v4->_appViewSetting setDelegate:v4];
    v32 = +[CSLPRFWatchChoice watchChoices];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__CSLPRFAppViewChoiceCell_initWithStyle_reuseIdentifier___block_invoke;
    v34[3] = &unk_278745068;
    v7 = v4;
    v35 = v7;
    [v32 enumerateObjectsUsingBlock:v34];
    v8 = [[CSLPRFAppViewChoiceView alloc] initWithDelegate:v7 horizontalOffset:v32 choices:0.0];
    v9 = v7[151];
    v7[151] = v8;

    [v7[151] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 contentView];
    v10 = v33 = v4;
    [v10 addSubview:v7[151]];

    contentView = [v7 contentView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [contentView setBackgroundColor:blackColor];

    topAnchor = [v7[151] topAnchor];
    contentView2 = [v7 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[0] = v28;
    leadingAnchor = [v7[151] leadingAnchor];
    contentView3 = [v7 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[1] = v24;
    trailingAnchor = [v7[151] trailingAnchor];
    contentView4 = [v7 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[2] = v16;
    bottomAnchor = [v7[151] bottomAnchor];
    contentView5 = [v7 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

    v4 = v33;
    [MEMORY[0x277CCAAD0] activateConstraints:v21];
    [v7 launcherViewModeSettingChanged];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

void __57__CSLPRFAppViewChoiceCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[CSLPRFAppViewImageCache getImageForLauncherMode:](CSLPRFAppViewImageCache, "getImageForLauncherMode:", [v4 choice]);
  if (v3)
  {
    [v4 setScreenImage:v3];
  }

  if ([v4 choice] == 2)
  {
    [v4 setImageProvider:*(a1 + 32)];
  }
}

@end