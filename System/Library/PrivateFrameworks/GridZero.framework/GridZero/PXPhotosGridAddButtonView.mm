@interface PXPhotosGridAddButtonView
- (CGRect)clippingRect;
- (PXPhotosGridAddButtonView)initWithFrame:(CGRect)a3;
- (id)actionHandler;
- (void)_handleButton:(id)a3;
- (void)_layoutCommon;
- (void)_updateBackgroundProperties;
- (void)_updateButtonImage;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
@end

@implementation PXPhotosGridAddButtonView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  if (self->_userData != a3)
  {
    v4 = [a3 copy];
    userData = self->_userData;
    self->_userData = v4;

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateButtonImage];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBackgroundProperties];
  }
}

- (id)actionHandler
{
  v2 = [(PXPhotosGridAddButtonView *)self userData];
  v3 = [v2 actionHandler];

  return v3;
}

- (void)_handleButton:(id)a3
{
  v3 = [(PXPhotosGridAddButtonView *)self actionHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  else
  {
    v5 = PXGridZeroGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ABF3000, v5, OS_LOG_TYPE_ERROR, "Missing action handler for photos grid add button", v6, 2u);
    }
  }
}

- (void)_updateButtonImage
{
  v3 = *MEMORY[0x277D76A20];
  v4 = [(PXPhotosGridAddButtonView *)self userData];
  v5 = [v4 style];

  if (v5 == 1)
  {
    v6 = [(PXPhotosGridAddButtonView *)self traitCollection];
    v8 = [v6 horizontalSizeClass];
    v9 = *MEMORY[0x277D76A08];
    if (v8 == 1)
    {
      v9 = v3;
    }

    v10 = v9;

    v7 = 3;
    v3 = v10;
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = [(PXPhotosGridAddButtonView *)self traitCollection];
    if ([v6 horizontalSizeClass] == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

LABEL_9:

    goto LABEL_11;
  }

  v7 = 3;
LABEL_11:
  v11 = [MEMORY[0x277D74300] px_preferredFontForTextStyle:v3 contentSizeCategory:*MEMORY[0x277D76840] withSymbolicTraits:2];
  v12 = [MEMORY[0x277D755D0] configurationWithFont:v11 scale:v7];
  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
  v14 = [v13 imageByApplyingSymbolConfiguration:v12];

  [(PXPhotosGridAddButtonView *)self setButtonImage:v14];
}

- (void)_updateBackgroundProperties
{
  v13 = [(PXPhotosGridAddButtonView *)self userData];
  v3 = [v13 preferredUserInterfaceStyle];
  switch(v3)
  {
    case 2:
      v5 = MEMORY[0x277D75C80];
      v6 = 2;
      goto LABEL_7;
    case 1:
      v5 = MEMORY[0x277D75C80];
      v6 = 1;
LABEL_7:
      v4 = [v5 traitCollectionWithUserInterfaceStyle:v6];
      goto LABEL_8;
    case 0:
      v4 = [MEMORY[0x277D75C80] currentTraitCollection];
LABEL_8:
      v7 = v4;
      goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v8 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v9 = [v8 resolvedColorWithTraitCollection:v7];
  [(PXPhotosGridAddButtonView *)self setBackgroundColor:v9];

  [v13 cornerRadius];
  v11 = v10;
  v12 = [(PXPhotosGridAddButtonView *)self layer];
  [v12 setCornerRadius:v11];
}

- (void)_layoutCommon
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  v3 = [(PXPhotosGridAddButtonView *)self buttonImage];
  button = self->_button;
  v7 = v3;
  if (!button)
  {
    v5 = [MEMORY[0x277D75220] systemButtonWithImage:v3 target:self action:sel__handleButton_];
    v6 = self->_button;
    self->_button = v5;

    [(PXPhotosGridAddButtonView *)self addSubview:self->_button];
    v3 = v7;
    button = self->_button;
  }

  [(UIButton *)button setImage:v3 forState:0];
  [(PXPhotosGridAddButtonView *)self bounds];
  [(UIButton *)self->_button setFrame:?];
}

- (void)layoutSubviews
{
  [(PXPhotosGridAddButtonView *)self _layoutCommon];
  v3.receiver = self;
  v3.super_class = PXPhotosGridAddButtonView;
  [(PXPhotosGridAddButtonView *)&v3 layoutSubviews];
}

- (PXPhotosGridAddButtonView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PXPhotosGridAddButtonView;
  v3 = [(PXPhotosGridAddButtonView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXPhotosGridAddButtonView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v4 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v4->_updater;
    v4->_updater = v6;

    [(PXUpdater *)v4->_updater addUpdateSelector:sel__updateButtonImage needsUpdate:1];
    [(PXUpdater *)v4->_updater addUpdateSelector:sel__updateBackgroundProperties needsUpdate:1];
    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [(PXPhotosGridAddButtonView *)v4 registerForTraitChanges:v8 withAction:sel_traitEnvironment_didChangePreviousTraitCollection_];

    [(PXPhotosGridAddButtonView *)v4 setAccessibilityIdentifier:@"PhotosGridAddButton"];
  }

  return v4;
}

@end