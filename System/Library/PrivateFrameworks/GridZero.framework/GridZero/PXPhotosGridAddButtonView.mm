@interface PXPhotosGridAddButtonView
- (CGRect)clippingRect;
- (PXPhotosGridAddButtonView)initWithFrame:(CGRect)frame;
- (id)actionHandler;
- (void)_handleButton:(id)button;
- (void)_layoutCommon;
- (void)_updateBackgroundProperties;
- (void)_updateButtonImage;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  if (self->_userData != data)
  {
    v4 = [data copy];
    userData = self->_userData;
    self->_userData = v4;

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateButtonImage];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBackgroundProperties];
  }
}

- (id)actionHandler
{
  userData = [(PXPhotosGridAddButtonView *)self userData];
  actionHandler = [userData actionHandler];

  return actionHandler;
}

- (void)_handleButton:(id)button
{
  actionHandler = [(PXPhotosGridAddButtonView *)self actionHandler];
  v4 = actionHandler;
  if (actionHandler)
  {
    (*(actionHandler + 16))(actionHandler);
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
  userData = [(PXPhotosGridAddButtonView *)self userData];
  style = [userData style];

  if (style == 1)
  {
    traitCollection = [(PXPhotosGridAddButtonView *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    v9 = *MEMORY[0x277D76A08];
    if (horizontalSizeClass == 1)
    {
      v9 = v3;
    }

    v10 = v9;

    v7 = 3;
    v3 = v10;
    goto LABEL_9;
  }

  if (!style)
  {
    traitCollection = [(PXPhotosGridAddButtonView *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
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
  userData = [(PXPhotosGridAddButtonView *)self userData];
  preferredUserInterfaceStyle = [userData preferredUserInterfaceStyle];
  switch(preferredUserInterfaceStyle)
  {
    case 2:
      v5 = MEMORY[0x277D75C80];
      v6 = 2;
      goto LABEL_7;
    case 1:
      v5 = MEMORY[0x277D75C80];
      v6 = 1;
LABEL_7:
      currentTraitCollection = [v5 traitCollectionWithUserInterfaceStyle:v6];
      goto LABEL_8;
    case 0:
      currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
LABEL_8:
      v7 = currentTraitCollection;
      goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v9 = [secondarySystemBackgroundColor resolvedColorWithTraitCollection:v7];
  [(PXPhotosGridAddButtonView *)self setBackgroundColor:v9];

  [userData cornerRadius];
  v11 = v10;
  layer = [(PXPhotosGridAddButtonView *)self layer];
  [layer setCornerRadius:v11];
}

- (void)_layoutCommon
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  buttonImage = [(PXPhotosGridAddButtonView *)self buttonImage];
  button = self->_button;
  v7 = buttonImage;
  if (!button)
  {
    v5 = [MEMORY[0x277D75220] systemButtonWithImage:buttonImage target:self action:sel__handleButton_];
    v6 = self->_button;
    self->_button = v5;

    [(PXPhotosGridAddButtonView *)self addSubview:self->_button];
    buttonImage = v7;
    button = self->_button;
  }

  [(UIButton *)button setImage:buttonImage forState:0];
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

- (PXPhotosGridAddButtonView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PXPhotosGridAddButtonView;
  v3 = [(PXPhotosGridAddButtonView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PXPhotosGridAddButtonView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

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