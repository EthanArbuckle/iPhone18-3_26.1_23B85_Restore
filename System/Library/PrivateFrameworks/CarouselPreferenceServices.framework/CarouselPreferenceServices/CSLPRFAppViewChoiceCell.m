@interface CSLPRFAppViewChoiceCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CSLPRFAppViewChoiceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)bundleID;
- (id)bundle;
- (id)localize:(id)a3;
- (void)launcherViewModeSettingChanged;
- (void)layoutSubviews;
- (void)retrieveImageForLauncherViewMode:(int64_t)a3 size:(CGSize)a4 completion:(id)a5;
- (void)watchChooser:(id)a3 madeChoice:(int64_t)a4;
@end

@implementation CSLPRFAppViewChoiceCell

- (void)retrieveImageForLauncherViewMode:(int64_t)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
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
  v11 = v9;
  v13 = v11;
  [v10 retrieveImageForLauncherViewMode:a3 size:v12 completion:{width, height}];

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
  v3 = [(CSLPRFLauncherViewModeSetting *)self->_appViewSetting launcherViewMode];

  [(CSLPRFAppViewChoiceView *)appViewChoiceView setWatchChoice:v3];
}

- (void)watchChooser:(id)a3 madeChoice:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = a4;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> watchChoiceProvider %@ madeChoice %d", &v8, 0x12u);
  }

  if ([(CSLPRFLauncherViewModeSetting *)self->_appViewSetting launcherViewMode]!= a4)
  {
    [(CSLPRFLauncherViewModeSetting *)self->_appViewSetting setLauncherViewMode:a4 reason:2];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)bundleID
{
  v2 = [(CSLPRFAppViewChoiceCell *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)localize:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSLPRFAppViewChoiceCell *)self bundle];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> %@ bundle for %@ is %@", &v11, 0x20u);
  }

  v6 = [(CSLPRFAppViewChoiceCell *)self bundle];
  v7 = [v6 localizedStringForKey:v4 value:0 table:@"CarouselAppViewChoice"];

  if (!v7)
  {
    v8 = [(CSLPRFAppViewChoiceCell *)self bundle];
    v7 = [v8 localizedStringForKey:v4 value:0 table:@"CompanionAppViewSetup"];
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
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v6 = [(CSLPRFAppViewChoiceCell *)self contentView];
  [v6 bounds];
  v8 = (v5 - v7) * 0.5;

  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setHorizontalOffset:v8];
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView setNeedsLayout];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(CSLPRFAppViewChoiceView *)self->_appViewChoiceView systemLayoutSizeFittingSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CSLPRFAppViewChoiceCell *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CSLPRFAppViewChoiceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = CSLPRFAppViewChoiceCell;
  v4 = [(PSTableCell *)&v36 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [v7 contentView];
    v12 = [MEMORY[0x277D75348] blackColor];
    [v11 setBackgroundColor:v12];

    v30 = [v7[151] topAnchor];
    v31 = [v7 contentView];
    v29 = [v31 topAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v37[0] = v28;
    v26 = [v7[151] leadingAnchor];
    v27 = [v7 contentView];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v37[1] = v24;
    v13 = [v7[151] trailingAnchor];
    v14 = [v7 contentView];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v37[2] = v16;
    v17 = [v7[151] bottomAnchor];
    v18 = [v7 contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
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