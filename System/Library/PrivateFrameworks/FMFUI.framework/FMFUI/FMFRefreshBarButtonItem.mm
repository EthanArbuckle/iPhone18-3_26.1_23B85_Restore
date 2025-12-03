@interface FMFRefreshBarButtonItem
- (BOOL)anyLocationIsUpdating;
- (BOOL)isAnimating;
- (FMFRefreshBarButtonItem)initWithTarget:(id)target action:(SEL)action;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)_updateLocateInProgress;
- (void)addLocation:(id)location;
- (void)dealloc;
- (void)localTapped;
- (void)locatingInProgressChanged:(id)changed;
- (void)removeLocationForHandle:(id)handle;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setLocations:(id)locations;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation FMFRefreshBarButtonItem

- (FMFRefreshBarButtonItem)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  v43.receiver = self;
  v43.super_class = FMFRefreshBarButtonItem;
  v8 = [(FMFRefreshBarButtonItem *)&v43 initWithCustomView:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277D755D0] configurationWithScale:-1];
    v10 = [MEMORY[0x277D755B8] _systemImageNamed:@"arrow.clockwise"];
    v11 = [v10 imageByApplyingSymbolConfiguration:v9];

    v12 = [[FMFTintedActivityIndicatorView alloc] initWithActivityIndicatorStyle:1];
    [(FMFRefreshBarButtonItem *)v8 setAiv:v12];

    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    [(FMFRefreshBarButtonItem *)v8 setImageView:v13];

    v14 = [FMFRefreshWrapperButton alloc];
    imageView = [(FMFRefreshBarButtonItem *)v8 imageView];
    [imageView bounds];
    v16 = [(FMFRefreshWrapperButton *)v14 initWithFrame:?];
    [(FMFRefreshBarButtonItem *)v8 setWrapperButton:v16];

    wrapperButton = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    [wrapperButton setTranslatesAutoresizingMaskIntoConstraints:0];

    wrapperButton2 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    [wrapperButton2 addTarget:targetCopy action:action forControlEvents:64];

    wrapperButton3 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    [wrapperButton3 addTarget:v8 action:sel_localTapped forControlEvents:64];

    wrapperButton4 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    [(FMFRefreshBarButtonItem *)v8 setCustomView:wrapperButton4];

    wrapperButton5 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    v22 = [(FMFRefreshBarButtonItem *)v8 aiv];
    [wrapperButton5 addSubview:v22];

    v23 = [(FMFRefreshBarButtonItem *)v8 aiv];
    v24 = [(FMFRefreshBarButtonItem *)v8 aiv];
    superview = [v24 superview];
    [v23 centerHorizontalInView:superview];

    v26 = [(FMFRefreshBarButtonItem *)v8 aiv];
    v27 = [(FMFRefreshBarButtonItem *)v8 aiv];
    superview2 = [v27 superview];
    [v26 centerVerticalInView:superview2];

    wrapperButton6 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    imageView2 = [(FMFRefreshBarButtonItem *)v8 imageView];
    [wrapperButton6 addSubview:imageView2];

    wrapperButton7 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    widthAnchor = [wrapperButton7 widthAnchor];
    imageView3 = [(FMFRefreshBarButtonItem *)v8 imageView];
    [imageView3 bounds];
    v35 = [widthAnchor constraintEqualToConstant:v34];
    [v35 setActive:1];

    wrapperButton8 = [(FMFRefreshBarButtonItem *)v8 wrapperButton];
    heightAnchor = [wrapperButton8 heightAnchor];
    imageView4 = [(FMFRefreshBarButtonItem *)v8 imageView];
    [imageView4 bounds];
    v40 = [heightAnchor constraintEqualToConstant:v39];
    [v40 setActive:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_locatingInProgressChanged_ name:@"locatingInProgressChanged" object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"locatingInProgressChanged" object:0];

  v4.receiver = self;
  v4.super_class = FMFRefreshBarButtonItem;
  [(FMFRefreshBarButtonItem *)&v4 dealloc];
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v9.receiver = self;
  v9.super_class = FMFRefreshBarButtonItem;
  [(FMFRefreshBarButtonItem *)&v9 setImageInsets:?];
  wrapperButton = [(FMFRefreshBarButtonItem *)self wrapperButton];
  [wrapperButton setWrapperInsets:{-top, -left, -bottom, -right}];
}

- (void)startAnimating
{
  if (![(FMFRefreshBarButtonItem *)self isAnimating])
  {
    imageView = [(FMFRefreshBarButtonItem *)self imageView];
    [imageView setHidden:1];

    v4 = [(FMFRefreshBarButtonItem *)self aiv];
    [v4 startAnimating];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"ACCESSIBILITY_REFRESH_BUTTON_VALUE_REFRESHING" value:&stru_285D99658 table:@"LocalizableUI"];
    [(FMFRefreshBarButtonItem *)self setAccessibilityValue:v5];
  }
}

- (void)stopAnimating
{
  if ([(FMFRefreshBarButtonItem *)self isAnimating])
  {
    imageView = [(FMFRefreshBarButtonItem *)self imageView];
    [imageView setHidden:0];

    v4 = [(FMFRefreshBarButtonItem *)self aiv];
    [v4 stopAnimating];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"ACCESSIBILITY_REFRESH_BUTTON_VALUE_NOT_REFRESHING" value:&stru_285D99658 table:@"LocalizableUI"];
    [(FMFRefreshBarButtonItem *)self setAccessibilityValue:v5];
  }
}

- (BOOL)isAnimating
{
  v2 = [(FMFRefreshBarButtonItem *)self aiv];
  isAnimating = [v2 isAnimating];

  return isAnimating;
}

- (void)setLocations:(id)locations
{
  objc_storeStrong(&self->_locations, locations);

  [(FMFRefreshBarButtonItem *)self _updateLocateInProgress];
}

- (void)addLocation:(id)location
{
  v23 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  locations = [(FMFRefreshBarButtonItem *)self locations];
  v6 = [locations mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  locations2 = [(FMFRefreshBarButtonItem *)self locations];
  v8 = [locations2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(locations2);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        handle = [v12 handle];
        handle2 = [locationCopy handle];
        v15 = [handle isEqual:handle2];

        if (v15)
        {
          [v6 removeObject:v12];
          goto LABEL_13;
        }
      }

      v9 = [locations2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [v6 addObject:locationCopy];
  [(FMFRefreshBarButtonItem *)selfCopy setLocations:v6];
  [(FMFRefreshBarButtonItem *)selfCopy _updateLocateInProgress];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeLocationForHandle:(id)handle
{
  v22 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  locations = [(FMFRefreshBarButtonItem *)self locations];
  v6 = [locations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(locations);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      handle = [v10 handle];
      v12 = [handle isEqual:handleCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [locations countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    locations2 = [(FMFRefreshBarButtonItem *)self locations];
    v15 = [locations2 mutableCopy];

    [v15 removeObject:v13];
    [(FMFRefreshBarButtonItem *)self setLocations:v15];

    locations = v13;
  }

LABEL_12:

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)localTapped
{
  [(FMFRefreshBarButtonItem *)self _updateLocateInProgress];
  [(FMFRefreshBarButtonItem *)self startAnimating];
  v3 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__FMFRefreshBarButtonItem_localTapped__block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)locatingInProgressChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FMFRefreshBarButtonItem_locatingInProgressChanged___block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__FMFRefreshBarButtonItem_locatingInProgressChanged___block_invoke(uint64_t a1)
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A4E3000, v2, OS_LOG_TYPE_DEFAULT, "locatingInProgressChanged in FMFRefreshBarButtonItem", v4, 2u);
  }

  return [*(a1 + 32) performSelector:sel__updateLocateInProgress withObject:0 afterDelay:0.200000003];
}

- (void)_updateLocateInProgress
{
  locations = [(FMFRefreshBarButtonItem *)self locations];

  if (locations && [(FMFRefreshBarButtonItem *)self anyLocationIsUpdating])
  {

    [(FMFRefreshBarButtonItem *)self startAnimating];
  }

  else
  {

    [(FMFRefreshBarButtonItem *)self stopAnimating];
  }
}

- (BOOL)anyLocationIsUpdating
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  locations = [(FMFRefreshBarButtonItem *)self locations];
  v3 = [locations countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(locations);
        }

        if ([*(*(&v8 + 1) + 8 * i) isLocatingInProgress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [locations countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCESSIBILITY_REFRESH_BUTTON_LABEL" value:&stru_285D99658 table:@"LocalizableUI"];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCESSIBILITY_REFRESH_BUTTON_HINT" value:&stru_285D99658 table:@"LocalizableUI"];

  return v3;
}

@end