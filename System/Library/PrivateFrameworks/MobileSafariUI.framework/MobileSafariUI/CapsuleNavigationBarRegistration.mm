@interface CapsuleNavigationBarRegistration
- (BOOL)_isBarItemHidden:(int64_t)hidden;
- (BOOL)containsBarItem:(int64_t)item;
- (CapsuleNavigationBarRegistration)initWithBar:(id)bar barManager:(id)manager;
- (NSString)description;
- (SFCapsuleNavigationBar)bar;
- (id)_actionForBarItem:(int64_t)item;
- (id)_longPressActionForBarItem:(int64_t)item;
- (id)_progressView;
- (id)_touchDownActionForBarItem:(int64_t)item;
- (id)buttonTintColor;
- (id)popoverSourceInfoForItem:(int64_t)item;
- (id)viewForBarItem:(int64_t)item;
- (void)_updateDownloadState;
- (void)_updateFormatMenuButton;
- (void)_voiceSearchAvailabilityDidChange:(id)change;
- (void)dealloc;
- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden;
- (void)setBarItem:(int64_t)item menu:(id)menu;
- (void)setBarItem:(int64_t)item selected:(BOOL)selected;
- (void)setPageFormatItemState:(unint64_t)state;
- (void)setProgress:(double)progress forBarItem:(int64_t)item;
- (void)updateBarAnimated:(BOOL)animated;
@end

@implementation CapsuleNavigationBarRegistration

- (void)_updateFormatMenuButton
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);
  layoutStyle = [WeakRetained layoutStyle];
  layoutStyle2 = [WeakRetained layoutStyle];
  isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
  v6 = 10.0;
  if (layoutStyle2 == 2)
  {
    v6 = 5.0;
  }

  if (isSolariumEnabled)
  {
    v6 = 4.0;
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setMinimumSideMargin:v6];
  v7 = MEMORY[0x277D29138];
  if (layoutStyle != 2)
  {
    v7 = MEMORY[0x277D28FE0];
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setResizableBackgroundCornerRadius:*v7];
  if (objc_opt_respondsToSelector())
  {
    unclippedContainer = [WeakRetained unclippedContainer];
    [(SFNavigationBarToggleButton *)self->_formatMenuButton setPointerPreviewContainer:unclippedContainer];
  }
}

- (id)buttonTintColor
{
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [MEMORY[0x277D75348] tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v2 = ;

  return v2;
}

- (void)_updateDownloadState
{
  if (self->_hiddenBarItems[11])
  {
    goto LABEL_2;
  }

  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  if ([mEMORY[0x277CDB7A8] hasUnviewedDownloads])
  {
  }

  else
  {
    mEMORY[0x277CDB7A8]2 = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8]2 totalProgress];
    v7 = v6;

    if (v7 == -2.0)
    {
LABEL_2:
      v3 = [(CapsuleNavigationBarRegistration *)self pageFormatItemState]& 0xFFFFFFFFFFFFFF7FLL;
      goto LABEL_7;
    }
  }

  v3 = [(CapsuleNavigationBarRegistration *)self pageFormatItemState]| 0x80;
LABEL_7:

  [(CapsuleNavigationBarRegistration *)self setPageFormatItemState:v3];
}

- (CapsuleNavigationBarRegistration)initWithBar:(id)bar barManager:(id)manager
{
  barCopy = bar;
  managerCopy = manager;
  v34.receiver = self;
  v34.super_class = CapsuleNavigationBarRegistration;
  v8 = [(CapsuleNavigationBarRegistration *)&v34 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_bar, barCopy);
    objc_storeWeak(&v9->_manager, managerCopy);
    v9->_pageFormatItemState = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    buttonsByBarItem = v9->_buttonsByBarItem;
    v9->_buttonsByBarItem = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    menuByBarItem = v9->_menuByBarItem;
    v9->_menuByBarItem = dictionary2;

    leadingBarItems = v9->_leadingBarItems;
    v9->_leadingBarItems = &unk_2827FC628;

    trailingBarItems = v9->_trailingBarItems;
    v9->_trailingBarItems = &unk_2827FC640;

    v16 = objc_alloc(MEMORY[0x277D28CF0]);
    v17 = [MEMORY[0x277D28CF0] pageMenuImageWithIntelligence:0];
    v18 = [v16 initWithImage:v17 forInputMode:0];
    formatMenuButton = v9->_formatMenuButton;
    v9->_formatMenuButton = v18;

    [(CapsuleNavigationBarRegistration *)v9 _updateFormatMenuButton];
    buttonTintColor = [(CapsuleNavigationBarRegistration *)v9 buttonTintColor];
    [(SFNavigationBarToggleButton *)v9->_formatMenuButton setGlyphTintColor:buttonTintColor];

    [(SFNavigationBarToggleButton *)v9->_formatMenuButton setClipsToBounds:1];
    safari_URLFieldButtonConfiguration = [MEMORY[0x277D755D0] safari_URLFieldButtonConfiguration];
    [(SFNavigationBarToggleButton *)v9->_formatMenuButton setPreferredSymbolConfiguration:safari_URLFieldButtonConfiguration];

    [(SFNavigationBarToggleButton *)v9->_formatMenuButton setClickEnabled:1];
    pointerInteraction = [(SFNavigationBarToggleButton *)v9->_formatMenuButton pointerInteraction];
    [pointerInteraction setEnabled:0];

    [(SFNavigationBarToggleButton *)v9->_formatMenuButton sf_applyContentSizeCategoryLimitsForToolbarButton];
    [(SFNavigationBarToggleButton *)v9->_formatMenuButton sf_configureLargeContentViewerForBarItem:13];
    v23 = v9->_formatMenuButton;
    v24 = objc_alloc_init(MEMORY[0x277D756C8]);
    [(SFNavigationBarToggleButton *)v23 addInteraction:v24];

    v25 = v9->_formatMenuButton;
    v26 = [(CapsuleNavigationBarRegistration *)v9 _touchDownActionForBarItem:13];
    [(SFNavigationBarToggleButton *)v25 addAction:v26 forControlEvents:1];

    v27 = v9->_formatMenuButton;
    v28 = [(CapsuleNavigationBarRegistration *)v9 _actionForBarItem:13];
    [(SFNavigationBarToggleButton *)v27 addAction:v28 forControlEvents:0x2000];

    v29 = v9->_formatMenuButton;
    v30 = [(CapsuleNavigationBarRegistration *)v9 _longPressActionForBarItem:13];
    [(SFNavigationBarToggleButton *)v29 addAction:v30 forControlEvents:*MEMORY[0x277D28FE8]];

    [(NSMutableDictionary *)v9->_buttonsByBarItem setObject:v9->_formatMenuButton forKeyedSubscript:&unk_2827FC1C0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__voiceSearchAvailabilityDidChange_ name:*MEMORY[0x277D29198] object:0];

    v32 = v9;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CapsuleNavigationBarRegistration;
  [(CapsuleNavigationBarRegistration *)&v4 dealloc];
}

- (BOOL)_isBarItemHidden:(int64_t)hidden
{
  if (!self->_hiddenBarItems[hidden])
  {
    WeakRetained = objc_loadWeakRetained(&self->_bar);
    item = [WeakRetained item];
    showsStopReloadButtons = [item showsStopReloadButtons];

    item2 = [WeakRetained item];
    stopReloadButtonShowsStop = [item2 stopReloadButtonShowsStop];

    if (self->_disabledBarItems[4])
    {
      v3 = 1;
    }

    else
    {
      mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
      v3 = [mEMORY[0x277D28EB8] availability] == 0;
    }

    disabledBarItems = self->_disabledBarItems;
    if (hidden <= 12)
    {
      switch(hidden)
      {
        case 0:
          if (*disabledBarItems)
          {
            v3 = [(CapsuleNavigationBarRegistration *)self _isBarItemHidden:1];
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_23;
        case 4:
LABEL_23:

          return v3 & 1;
        case 6:
          v3 = self->_disabledBarItems[6];
          goto LABEL_23;
      }

LABEL_18:
      v3 = disabledBarItems[hidden];
      goto LABEL_23;
    }

    switch(hidden)
    {
      case 15:
        v14 = stopReloadButtonShowsStop | v3 ^ 1;
        break;
      case 14:
        v14 = stopReloadButtonShowsStop & v3 ^ 1;
        break;
      case 13:
        item3 = [WeakRetained item];
        v3 = [item3 showsPageFormatButton] ^ 1;

        goto LABEL_23;
      default:
        goto LABEL_18;
    }

    if (showsStopReloadButtons)
    {
      v3 = v14;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_23;
  }

  v3 = 1;
  return v3 & 1;
}

- (id)_progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = objc_alloc(MEMORY[0x277D28CE0]);
    v5 = [(CapsuleNavigationBarRegistration *)self _actionForBarItem:11];
    v6 = [v4 initWithFrame:v5 primaryAction:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_progressView;
    self->_progressView = v6;

    [(SFMoreMenuButton *)self->_progressView setUserInteractionEnabled:0];
    [(SFMoreMenuButton *)self->_progressView setProgressStyle:1];
    [(SFMoreMenuButton *)self->_progressView setSymbolScale:1];
    progressView = self->_progressView;
  }

  return progressView;
}

- (id)viewForBarItem:(int64_t)item
{
  buttonsByBarItem = self->_buttonsByBarItem;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:item];
  v5 = [(NSMutableDictionary *)buttonsByBarItem objectForKeyedSubscript:v4];

  return v5;
}

- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden
{
  self->_hiddenBarItems[item] = hidden;
  if (item == 11)
  {
    [(CapsuleNavigationBarRegistration *)self _updateDownloadState];
  }
}

- (void)setBarItem:(int64_t)item selected:(BOOL)selected
{
  if (item != 6 && item != 13)
  {
    selectedCopy = selected;
    buttonsByBarItem = self->_buttonsByBarItem;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:item];
    v12 = [(NSMutableDictionary *)buttonsByBarItem objectForKeyedSubscript:v6];

    v7 = SFSystemImageNameForBarItem();
    v8 = v7;
    if (!selectedCopy || (v9 = MEMORY[0x277D755B8], [v7 stringByAppendingString:@".fill"], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "systemImageNamed:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
    {
      v11 = [MEMORY[0x277D755B8] systemImageNamed:v8];
    }

    [v12 setImage:v11 forState:0];
  }
}

- (void)setPageFormatItemState:(unint64_t)state
{
  if ((state & 0x40) == 0 && self->_pageFormatItemState == state)
  {
    return;
  }

  self->_pageFormatItemState = state;
  v5 = ~state;
  WeakRetained = objc_loadWeakRetained(&self->_bar);
  item = [WeakRetained item];
  mediaStateIconToDisplay = [item mediaStateIconToDisplay];

  if ((v5 & 0x810) != 0)
  {
    if ((state & 0x11) == 1 || (state & 2) != 0)
    {
      translationImage = [MEMORY[0x277D28CF0] readerImageWithSummary:(state >> 12) & 1];
      v9 = @"ReaderButton";
    }

    else
    {
      if ((state & 0x14) != 4 && (state & 8) == 0)
      {
        v10 = [MEMORY[0x277D28CF0] pageMenuImageWithIntelligence:(state >> 13) & 1];
        [(SFNavigationBarToggleButton *)self->_formatMenuButton setImage:v10];

        v11 = _SFAccessibilityIdentifierForBarItem();
        [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessibilityIdentifier:v11];

        image = [(SFNavigationBarToggleButton *)self->_formatMenuButton image];
        [(SFNavigationBarToggleButton *)self->_formatMenuButton setLargeContentImage:image];

        v13 = 1;
        goto LABEL_13;
      }

      translationImage = [MEMORY[0x277D28CF0] translationImage];
      v9 = @"TranslationButton";
    }
  }

  else
  {
    translationImage = [MEMORY[0x277D28CF0] siriReaderPlayingImage];
    v9 = @"SiriReaderButton";
  }

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setImage:translationImage];

  [(SFNavigationBarToggleButton *)self->_formatMenuButton setAccessibilityIdentifier:v9];
  [(SFNavigationBarToggleButton *)self->_formatMenuButton sf_configureLargeContentViewerForBarItem:13];
  v13 = 0;
LABEL_13:
  if ((state & 0x3000) != 0)
  {
    previousWebpageIdentifier = self->_previousWebpageIdentifier;
    item2 = [WeakRetained item];
    webpageIdentifier = [item2 webpageIdentifier];
    LOBYTE(previousWebpageIdentifier) = [(NSString *)previousWebpageIdentifier isEqualToString:webpageIdentifier];

    if ((previousWebpageIdentifier & 1) == 0)
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didShowSparkleSBA];

      mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
      item3 = [WeakRetained item];
      webpageIdentifier2 = [item3 webpageIdentifier];
      [mEMORY[0x277D49E30] donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:webpageIdentifier2 componentType:0 componentIdentifier:&unk_2827FC220 tableOfContentsArrayLength:0];

      item4 = [WeakRetained item];
      webpageIdentifier3 = [item4 webpageIdentifier];
      v23 = self->_previousWebpageIdentifier;
      self->_previousWebpageIdentifier = webpageIdentifier3;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v25 = array;
  if (mediaStateIconToDisplay)
  {
    [array addObject:&unk_2827FC238];
    [(SFNavigationBarToggleButton *)self->_formatMenuButton setMediaStateIcon:mediaStateIconToDisplay];
  }

  if ((state & 0x100) != 0)
  {
    [v25 addObject:&unk_2827FC250];
  }

  if ((state & 0x4000) != 0)
  {
    [v25 addObject:&unk_2827FC208];
  }

  v26 = ([v25 count] + ((state & 0x80) >> 7)) & 0xFFFFFFFFFFFFFFFDLL;
  if (v26)
  {
    formatMenuBottomOnlyImage = [MEMORY[0x277D28CF0] formatMenuBottomOnlyImage];
    [(SFNavigationBarToggleButton *)self->_formatMenuButton setImage:formatMenuBottomOnlyImage];
  }

  if ((state & 0x80) != 0)
  {
    _progressView = [(CapsuleNavigationBarRegistration *)self _progressView];
    formatMenuButton = self->_formatMenuButton;
    p_formatMenuButton = &self->_formatMenuButton;
    [(SFNavigationBarToggleButton *)formatMenuButton setAccessoryView:_progressView];
  }

  else
  {
    v29 = self->_formatMenuButton;
    p_formatMenuButton = &self->_formatMenuButton;
    [(SFNavigationBarToggleButton *)v29 setAccessoryView:0];
  }

  [(SFNavigationBarToggleButton *)*p_formatMenuButton setAccessoryItems:v25];
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = v13 & (state >> 9);
  }

  [(SFNavigationBarToggleButton *)*p_formatMenuButton setShowsBadge:v32];
  [(SFNavigationBarToggleButton *)*p_formatMenuButton setSelected:(state >> 5) & 1];
  [(SFNavigationBarToggleButton *)*p_formatMenuButton setUsesInsetFromBackground:(state >> 10) & 1];
  [(SFNavigationBarToggleButton *)*p_formatMenuButton invalidateIntrinsicContentSize];
}

- (BOOL)containsBarItem:(int64_t)item
{
  if ([(CapsuleNavigationBarRegistration *)self _isBarItemHidden:?])
  {
    return 0;
  }

  leadingBarItems = self->_leadingBarItems;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:item];
  if ([(NSArray *)leadingBarItems containsObject:v7])
  {
    v5 = 1;
  }

  else
  {
    trailingBarItems = self->_trailingBarItems;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:item];
    v5 = [(NSArray *)trailingBarItems containsObject:v9];
  }

  return v5;
}

- (id)popoverSourceInfoForItem:(int64_t)item
{
  if (item == 13 || item == 11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_bar);
    layoutStyle = [WeakRetained layoutStyle];
    v6 = objc_alloc(MEMORY[0x277D28F68]);
    v7 = v6;
    if (layoutStyle == 1)
    {
      tiplessPopoverSourceView = [(SFNavigationBarToggleButton *)self->_formatMenuButton tiplessPopoverSourceView];
      v9 = [v7 initWithView:tiplessPopoverSourceView];

      [v9 setShouldPassthroughSuperview:1];
      [v9 setPermittedArrowDirections:2];
    }

    else
    {
      v9 = [v6 initWithView:self->_formatMenuButton];
    }

    [v9 setShouldHideArrow:1];
    if ([WeakRetained layoutStyle] == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v9 setProvenance:v10];
    if ([WeakRetained layoutStyle] == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = WeakRetained;
    }

    [v9 setZoomTransitionSourceView:v11];
  }

  else
  {
    buttonsByBarItem = self->_buttonsByBarItem;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    WeakRetained = [(NSMutableDictionary *)buttonsByBarItem objectForKeyedSubscript:v13];

    if (WeakRetained)
    {
      v9 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:WeakRetained];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)setBarItem:(int64_t)item menu:(id)menu
{
  menuByBarItem = self->_menuByBarItem;
  v6 = MEMORY[0x277CCABB0];
  menuCopy = menu;
  v8 = [v6 numberWithInteger:item];
  [(NSMutableDictionary *)menuByBarItem setObject:menuCopy forKeyedSubscript:v8];
}

- (void)setProgress:(double)progress forBarItem:(int64_t)item
{
  if (item == 11)
  {
    _progressView = [(CapsuleNavigationBarRegistration *)self _progressView];
    [_progressView setDownloadProgress:1 animated:progress];

    [(CapsuleNavigationBarRegistration *)self _updateDownloadState];
  }
}

- (void)updateBarAnimated:(BOOL)animated
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__CapsuleNavigationBarRegistration_updateBarAnimated___block_invoke;
  v12 = &unk_2781DBCD0;
  selfCopy = self;
  v14 = WeakRetained;
  v5 = WeakRetained;
  v6 = _Block_copy(&v9);
  selfCopy = [(NSArray *)self->_leadingBarItems safari_mapAndFilterObjectsUsingBlock:v6, v9, v10, v11, v12, selfCopy];
  [v5 setLeadingButtons:selfCopy];

  v8 = [(NSArray *)self->_trailingBarItems safari_mapAndFilterObjectsUsingBlock:v6];
  [v5 setTrailingButtons:v8];

  [(CapsuleNavigationBarRegistration *)self _voiceSearchAvailabilityDidChange:0];
  [(CapsuleNavigationBarRegistration *)self _updateFormatMenuButton];
}

id __54__CapsuleNavigationBarRegistration_updateBarAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerValue];
  if ([*(a1 + 32) _isBarItemHidden:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v3];
    if (!v5)
    {
      v6 = [MEMORY[0x277D75230] plainButtonConfiguration];
      v7 = [MEMORY[0x277D75348] clearColor];
      v8 = [v6 background];
      [v8 setBackgroundColor:v7];

      v9 = [v6 background];
      [v9 setCornerRadius:0.0];

      [v6 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
      [v6 setCornerStyle:-1];
      v10 = [MEMORY[0x277D755D0] safari_URLFieldButtonConfiguration];
      [v6 setPreferredSymbolConfigurationForImage:v10];

      v11 = MEMORY[0x277D28F18];
      v12 = [*(a1 + 32) _actionForBarItem:v4];
      v5 = [v11 buttonWithConfiguration:v6 primaryAction:v12];

      v20 = xmmword_215A95EF0;
      v13 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{CGPoint=dd}"];
      [v5 setTapTargetSideMargins:v13];

      [v5 sf_applyContentSizeCategoryLimitsForToolbarButton];
      [v5 sf_configureLargeContentViewerForBarItem:v4];
      v14 = objc_alloc_init(MEMORY[0x277D756C8]);
      [v5 addInteraction:v14];

      if (v4 == 8)
      {
        [v5 setAlwaysUsesUIMenuOrdering:1];
      }

      v15 = [*(a1 + 32) buttonTintColor];
      [v5 setTintColor:v15];

      [*(*(a1 + 32) + 32) setObject:v5 forKeyedSubscript:v3];
    }

    v16 = _SFAccessibilityIdentifierForBarItem();
    [v5 setAccessibilityIdentifier:v16];

    [v5 setEnabled:(*(*(a1 + 32) + v4 + 65) & 1) == 0];
    v17 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v3];
    [v5 setMenu:v17];

    if (objc_opt_respondsToSelector())
    {
      v18 = [*(a1 + 40) buttonPointerStyleProvider];
      [v5 setPointerStyleProvider:v18];
    }
  }

  return v5;
}

- (void)_voiceSearchAvailabilityDidChange:(id)change
{
  mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
  availability = [mEMORY[0x277D28EB8] availability];

  v7 = [(NSMutableDictionary *)self->_buttonsByBarItem objectForKeyedSubscript:&unk_2827FC208];
  [v7 setEnabled:availability == 1];
  if (availability == 1)
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] quaternaryLabelColor];
  }
  v6 = ;
  [v7 setTintColor:v6];
}

- (id)_actionForBarItem:(int64_t)item
{
  if (item == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = SFSystemImageNameForBarItem();
    v5 = [v6 systemImageNamed:v7];

    if (item == 11)
    {
      v8 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.circle.fill"];

      v5 = v8;
    }
  }

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__CapsuleNavigationBarRegistration__actionForBarItem___block_invoke;
  v12[3] = &unk_2781DBCF8;
  objc_copyWeak(v13, &location);
  v13[1] = item;
  v10 = [v9 actionWithTitle:&stru_2827BF158 image:v5 identifier:0 handler:v12];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v10;
}

void __54__CapsuleNavigationBarRegistration__actionForBarItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained pageFormatItemState];
    if (*(a1 + 40) != 13 || (v3 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    v6 = v3;
    v5 = [v9 bar];
    v7 = [v5 delegate];
    v8 = v7;
    if (v6)
    {
      [v7 navigationBarReaderButtonWasTapped:v5];
    }

    else
    {
      if ((v6 & 4) == 0)
      {

LABEL_6:
        v5 = objc_loadWeakRetained(v9 + 1);
        [v5 barRegistration:v9 didReceiveTapForBarItem:*(a1 + 40)];
LABEL_13:

        WeakRetained = v9;
        goto LABEL_14;
      }

      [v7 navigationBarTranslateButtonWasTapped:v5];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)_touchDownActionForBarItem:(int64_t)item
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D750C8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CapsuleNavigationBarRegistration__touchDownActionForBarItem___block_invoke;
  v7[3] = &unk_2781DBCF8;
  objc_copyWeak(v8, &location);
  v8[1] = item;
  v5 = [v4 actionWithTitle:&stru_2827BF158 image:0 identifier:0 handler:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

void __63__CapsuleNavigationBarRegistration__touchDownActionForBarItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    [v3 barRegistration:v4 didReceiveTouchDownForBarItem:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (id)_longPressActionForBarItem:(int64_t)item
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D750C8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CapsuleNavigationBarRegistration__longPressActionForBarItem___block_invoke;
  v7[3] = &unk_2781DBCF8;
  objc_copyWeak(v8, &location);
  v8[1] = item;
  v5 = [v4 actionWithTitle:&stru_2827BF158 image:0 identifier:0 handler:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

void __63__CapsuleNavigationBarRegistration__longPressActionForBarItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    if ([v3 barRegistration:v4 canHandleLongPressForBarItem:*(a1 + 40)])
    {
      [v3 barRegistration:v4 didReceiveLongPressForBarItem:*(a1 + 40)];
    }

    WeakRetained = v4;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = stringForBarItems(self->_disabledBarItems);
  v7 = stringForBarItems(self->_hiddenBarItems);
  v8 = [v3 stringWithFormat:@"<%@ %p: disabled = %@ hidden = %@>", v5, self, v6, v7];;

  return v8;
}

- (SFCapsuleNavigationBar)bar
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);

  return WeakRetained;
}

@end