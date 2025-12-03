@interface SFUnifiedTabBarItem
- (BOOL)hasOverlayConfiguration;
- (SFMenuConfiguring)menuButtonConfigurator;
- (SFUnifiedTabBarItem)init;
- (SFUnifiedTabBarItemView)itemView;
- (id)bestButtonForExtensionPopoverSource:(id)source;
- (id)menuElementRepresentationWithSelectionHandler:(id)handler;
- (id)tabEntityUUIDForView:(id)view;
- (void)_configureItemView:(id)view isPreview:(BOOL)preview;
- (void)configureItemView:(id)view isPreview:(BOOL)preview;
- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display;
- (void)navigationBarItemDidUpdateExtensionButtonConfiguration:(id)configuration;
- (void)navigationBarItemDidUpdateFormatButtonSelected:(id)selected;
- (void)navigationBarItemDidUpdateHasHiddenElements:(id)elements;
- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)configuration;
- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)annotation;
- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)indicator;
- (void)navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:(id)icon;
- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)buttons;
- (void)navigationBarItemDidUpdateShowsTranslationIcon:(id)icon;
- (void)navigationBarItemDidUpdateShowsVoiceSearchButton:(id)button;
- (void)navigationBarItemDidUpdateStopReloadButtonShowsStop:(id)stop;
- (void)navigationBarItemDidUpdateText:(id)text;
- (void)setDownloadProgress:(double)progress animated:(BOOL)animated;
- (void)setGlobalMediaStateIcon:(unint64_t)icon;
- (void)setIcon:(id)icon;
- (void)setLastReloadDate:(id)date;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setMenuButtonBadges:(unint64_t)badges;
- (void)setMenuButtonConfigurator:(id)configurator;
- (void)setNavigationBarItem:(id)item;
- (void)setReusableView:(id)view;
- (void)setShareParticipants:(id)participants;
- (void)setShowsBadgeOnExtensionsButton:(BOOL)button;
- (void)setTitle:(id)title;
- (void)setTitleWhenCollapsed:(id)collapsed;
- (void)setUnread:(BOOL)unread;
- (void)updateTitleWhenCollapsedWithItemTitles:(id)titles;
@end

@implementation SFUnifiedTabBarItem

- (SFUnifiedTabBarItemView)itemView
{
  reusableView = [(SFUnifiedBarItem *)self reusableView];
  if (reusableView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = reusableView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SFUnifiedTabBarItem)init
{
  v7.receiver = self;
  v7.super_class = SFUnifiedTabBarItem;
  v2 = [(SFUnifiedTabBarItem *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_downloadProgress = -2.0;
    shareParticipants = v2->_shareParticipants;
    v2->_shareParticipants = MEMORY[0x1E695E0F0];

    [(SFUnifiedBarItem *)v3 setViewReuseIdentifier:@"SFUnifiedTabBarItem"];
    v5 = v3;
  }

  return v3;
}

- (void)setNavigationBarItem:(id)item
{
  itemCopy = item;
  navigationBarItem = self->_navigationBarItem;
  if (navigationBarItem != itemCopy)
  {
    v8 = itemCopy;
    [(SFNavigationBarItem *)navigationBarItem removeObserver:self];
    objc_storeStrong(&self->_navigationBarItem, item);
    [(SFNavigationBarItem *)v8 addObserver:self];
    itemView = [(SFUnifiedTabBarItem *)self itemView];
    if (itemView)
    {
      [(SFUnifiedTabBarItem *)self _configureItemView:itemView isPreview:0];
      [itemView setContentOptions:-[SFNavigationBarItem contentOptions](v8 resetDisplay:{"contentOptions"), 1}];
    }

    itemCopy = v8;
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, icon);
    itemView = [(SFUnifiedTabBarItem *)self itemView];
    [itemView setIcon:iconCopy];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setTitle:titleCopy];
}

- (void)setTitleWhenCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  v5 = [collapsedCopy copy];
  titleWhenCollapsed = self->_titleWhenCollapsed;
  self->_titleWhenCollapsed = v5;

  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setTitleWhenCollapsed:collapsedCopy];
}

- (void)setLastReloadDate:(id)date
{
  objc_storeStrong(&self->_lastReloadDate, date);
  dateCopy = date;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setLastReloadDate:dateCopy];
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  self->_mediaStateIcon = icon;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setMediaStateIcon:icon];
}

- (void)setGlobalMediaStateIcon:(unint64_t)icon
{
  self->_globalMediaStateIcon = icon;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setGlobalMediaStateIcon:icon];
}

- (void)setDownloadProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_downloadProgress = progress;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setDownloadProgress:animatedCopy animated:progress];
}

- (void)setMenuButtonBadges:(unint64_t)badges
{
  self->_menuButtonBadges = badges;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setMenuButtonBadges:badges];
}

- (void)setShowsBadgeOnExtensionsButton:(BOOL)button
{
  buttonCopy = button;
  self->_showsBadgeOnExtensionsButton = button;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setShowsBadgeOnExtensionsButton:buttonCopy];
}

- (id)bestButtonForExtensionPopoverSource:(id)source
{
  sourceCopy = source;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  extensionButtonConfiguration = [itemView extensionButtonConfiguration];
  buttons = [extensionButtonConfiguration buttons];

  firstObject = [buttons firstObject];
  extension = [firstObject extension];

  if (extension == sourceCopy)
  {
    itemView2 = [(SFUnifiedTabBarItem *)self itemView];
    firstExtensionButton = [itemView2 firstExtensionButton];
    v12 = firstExtensionButton;
    if (firstExtensionButton)
    {
      multipleExtensionsButton2 = firstExtensionButton;
      v12 = multipleExtensionsButton2;
LABEL_9:
      multipleExtensionsButton3 = multipleExtensionsButton2;
      goto LABEL_16;
    }

    itemView3 = [(SFUnifiedTabBarItem *)self itemView];
    multipleExtensionsButton = [itemView3 multipleExtensionsButton];
  }

  else
  {
    if ([buttons count] < 2)
    {
      itemView2 = 0;
    }

    else
    {
      itemView2 = [buttons objectAtIndexedSubscript:1];
    }

    extension2 = [itemView2 extension];

    itemView4 = [(SFUnifiedTabBarItem *)self itemView];
    v12 = itemView4;
    if (extension2 != sourceCopy)
    {
      multipleExtensionsButton2 = [itemView4 multipleExtensionsButton];
      goto LABEL_9;
    }

    secondExtensionButton = [itemView4 secondExtensionButton];
    itemView3 = secondExtensionButton;
    if (!secondExtensionButton)
    {
      itemView5 = [(SFUnifiedTabBarItem *)self itemView];
      multipleExtensionsButton3 = [itemView5 multipleExtensionsButton];

      goto LABEL_15;
    }

    multipleExtensionsButton = secondExtensionButton;
  }

  multipleExtensionsButton3 = multipleExtensionsButton;
LABEL_15:

LABEL_16:

  return multipleExtensionsButton3;
}

- (void)setUnread:(BOOL)unread
{
  if (self->_unread != unread)
  {
    unreadCopy = unread;
    self->_unread = unread;
    itemView = [(SFUnifiedTabBarItem *)self itemView];
    [itemView setUnread:unreadCopy];
  }
}

- (void)setShareParticipants:(id)participants
{
  participantsCopy = participants;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [participantsCopy copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    itemView = [(SFUnifiedTabBarItem *)self itemView];
    [itemView setShareParticipants:participantsCopy];
  }
}

- (void)setReusableView:(id)view
{
  viewCopy = view;
  reusableView = [(SFUnifiedBarItem *)self reusableView];

  if (reusableView != viewCopy)
  {
    v6.receiver = self;
    v6.super_class = SFUnifiedTabBarItem;
    [(SFUnifiedBarItem *)&v6 setReusableView:viewCopy];
    [viewCopy safari_setTabEntityProviderWithInfoProvider:self];
  }
}

- (void)setMenuButtonConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  objc_storeWeak(&self->_menuButtonConfigurator, configuratorCopy);
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setFormatMenuButtonConfigurator:configuratorCopy];
}

- (void)configureItemView:(id)view isPreview:(BOOL)preview
{
  previewCopy = preview;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFUnifiedTabBarItem *)self _configureItemView:viewCopy isPreview:previewCopy];
  }
}

- (void)_configureItemView:(id)view isPreview:(BOOL)preview
{
  viewCopy = view;
  v17 = viewCopy;
  if (self->_icon)
  {
    [viewCopy setIcon:?];
  }

  else
  {
    v7 = +[_SFFaviconProvider fallbackFavicon];
    [v17 setIcon:v7];
  }

  [v17 setTitle:self->_title];
  text = [(SFNavigationBarItem *)self->_navigationBarItem text];
  [v17 setTitleWhenActive:text];

  titleWhenCollapsed = self->_titleWhenCollapsed;
  if (!titleWhenCollapsed)
  {
    titleWhenCollapsed = self->_title;
  }

  [v17 setTitleWhenCollapsed:titleWhenCollapsed];
  textWhenExpanded = [(SFNavigationBarItem *)self->_navigationBarItem textWhenExpanded];
  [v17 setTextWhenExpanded:textWhenExpanded];

  [v17 setStartIndexOfTitleInTextWhenExpanded:{-[SFNavigationBarItem startIndexOfTextInExpandedText](self->_navigationBarItem, "startIndexOfTextInExpandedText")}];
  [v17 setShowsSearchIcon:{-[SFNavigationBarItem showsSearchIndicator](self->_navigationBarItem, "showsSearchIndicator")}];
  [v17 setShowsVoiceSearchButton:{-[SFNavigationBarItem showsVoiceSearchButton](self->_navigationBarItem, "showsVoiceSearchButton")}];
  [v17 setSecurityAnnotation:{-[SFNavigationBarItem securityAnnotation](self->_navigationBarItem, "securityAnnotation")}];
  [v17 setHasFocusedSensitiveInputField:{-[SFNavigationBarItem hasFocusedSensitiveFieldOnCurrentPage](self->_navigationBarItem, "hasFocusedSensitiveFieldOnCurrentPage")}];
  [v17 setMenuButtonSelected:{-[SFNavigationBarItem menuButtonSelected](self->_navigationBarItem, "menuButtonSelected")}];
  [v17 setShowsTranslationIcon:{-[SFNavigationBarItem showsTranslationIcon](self->_navigationBarItem, "showsTranslationIcon")}];
  [v17 setShowsStopReloadButton:{-[SFNavigationBarItem showsStopReloadButtons](self->_navigationBarItem, "showsStopReloadButtons")}];
  [v17 setStopReloadButtonShowsStop:{-[SFNavigationBarItem stopReloadButtonShowsStop](self->_navigationBarItem, "stopReloadButtonShowsStop")}];
  [v17 setLastReloadDate:self->_lastReloadDate];
  [v17 setMediaStateIcon:self->_mediaStateIcon];
  [v17 setGlobalMediaStateIcon:self->_globalMediaStateIcon];
  extensionButtonConfiguration = [(SFNavigationBarItem *)self->_navigationBarItem extensionButtonConfiguration];
  [v17 setExtensionButtonConfiguration:extensionButtonConfiguration];

  [v17 setMenuButtonBadges:self->_menuButtonBadges];
  [v17 setShowsBadgeOnExtensionsButton:self->_showsBadgeOnExtensionsButton];
  [v17 setUnread:self->_unread];
  [v17 setShareParticipants:self->_shareParticipants];
  [v17 setShowsSiriReaderPlayingIcon:{-[SFNavigationBarItem showsSiriReaderPlayingIcon](self->_navigationBarItem, "showsSiriReaderPlayingIcon")}];
  [v17 setHasHiddenElements:{-[SFNavigationBarItem hasHiddenElements](self->_navigationBarItem, "hasHiddenElements")}];
  overlayConfiguration = [(SFNavigationBarItem *)self->_navigationBarItem overlayConfiguration];
  [v17 setOverlayConfiguration:overlayConfiguration];

  downloadProgress = -2.0;
  if (!preview)
  {
    fluidProgressController = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressController];
    fluidProgressStateSource = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressStateSource];
    progressState = [fluidProgressStateSource progressState];
    [v17 setFluidProgressController:fluidProgressController withCurrentState:progressState];

    downloadProgress = self->_downloadProgress;
  }

  [v17 setDownloadProgress:0 animated:downloadProgress];
}

- (id)menuElementRepresentationWithSelectionHandler:(id)handler
{
  handlerCopy = handler;
  title = self->_title;
  v6 = MEMORY[0x1E69DC628];
  icon = self->_icon;
  v8 = icon;
  if (!icon)
  {
    v8 = +[_SFFaviconProvider fallbackFavicon];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SFUnifiedTabBarItem_menuElementRepresentationWithSelectionHandler___block_invoke;
  v12[3] = &unk_1E721AEE8;
  v12[4] = self;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v6 actionWithTitle:title image:v8 identifier:0 handler:v12];

  if (!icon)
  {
  }

  return v10;
}

- (BOOL)hasOverlayConfiguration
{
  overlayConfiguration = [(SFNavigationBarItem *)self->_navigationBarItem overlayConfiguration];
  if (overlayConfiguration)
  {
    v4 = 1;
  }

  else
  {
    overlayNarrowConfiguration = [(SFNavigationBarItem *)self->_navigationBarItem overlayNarrowConfiguration];
    v4 = overlayNarrowConfiguration != 0;
  }

  return v4;
}

- (void)updateTitleWhenCollapsedWithItemTitles:(id)titles
{
  titlesCopy = titles;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  v5 = itemView;
  if (itemView)
  {
    [itemView titleContainerWidthAccountingForInset];
    v7 = v6;
    titleTextStyle = [v5 titleTextStyle];
    p_titleTruncationInfo = &self->_titleTruncationInfo;
    v10 = WBSIsEqual() && WBSIsEqual() && self->_titleTruncationInfo.titleTextStyle == titleTextStyle && self->_titleTruncationInfo.titleContainerWidthAccountingForInset == v7;
    v11 = [titlesCopy copy];
    itemTitles = p_titleTruncationInfo->itemTitles;
    p_titleTruncationInfo->itemTitles = v11;

    v13 = [(NSString *)self->_title copy];
    title = self->_titleTruncationInfo.title;
    self->_titleTruncationInfo.title = v13;

    self->_titleTruncationInfo.titleContainerWidthAccountingForInset = v7;
    objc_storeStrong(&self->_titleTruncationInfo.titleTextStyle, titleTextStyle);
    if (v10)
    {
      [v5 setTitleWhenCollapsed:self->_titleWhenCollapsed];
    }

    else
    {
      v15 = self->_title;
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:titleTextStyle];
      v17 = [(NSString *)v15 truncatedTitleWithFont:v16 desiredWidth:titlesCopy sortedTabBarItemTitles:v7];
      [(SFUnifiedTabBarItem *)self setTitleWhenCollapsed:v17];
    }
  }
}

- (void)navigationBarItemDidUpdateText:(id)text
{
  textCopy = text;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  text = [textCopy text];
  [itemView setTitleWhenActive:text];

  textWhenExpanded = [textCopy textWhenExpanded];
  [itemView setTextWhenExpanded:textWhenExpanded];

  startIndexOfTextInExpandedText = [textCopy startIndexOfTextInExpandedText];
  [itemView setStartIndexOfTitleInTextWhenExpanded:startIndexOfTextInExpandedText];
}

- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)indicator
{
  showsSearchIndicator = [indicator showsSearchIndicator];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setShowsSearchIcon:showsSearchIndicator];
}

- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)buttons
{
  showsStopReloadButtons = [buttons showsStopReloadButtons];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setShowsStopReloadButton:showsStopReloadButtons];
}

- (void)navigationBarItemDidUpdateStopReloadButtonShowsStop:(id)stop
{
  stopReloadButtonShowsStop = [stop stopReloadButtonShowsStop];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setStopReloadButtonShowsStop:stopReloadButtonShowsStop];
}

- (void)navigationBarItemDidUpdateFormatButtonSelected:(id)selected
{
  selectedCopy = selected;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setMenuButtonSelected:{objc_msgSend(selectedCopy, "menuButtonSelected")}];
  readerButtonSelected = [selectedCopy readerButtonSelected];

  [itemView setShowsReaderIcon:readerButtonSelected];
}

- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)annotation
{
  annotationCopy = annotation;
  securityAnnotation = [annotationCopy securityAnnotation];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setSecurityAnnotation:securityAnnotation];

  hasFocusedSensitiveFieldOnCurrentPage = [annotationCopy hasFocusedSensitiveFieldOnCurrentPage];
  itemView2 = [(SFUnifiedTabBarItem *)self itemView];
  [itemView2 setHasFocusedSensitiveInputField:hasFocusedSensitiveFieldOnCurrentPage];
}

- (void)navigationBarItemDidUpdateExtensionButtonConfiguration:(id)configuration
{
  extensionButtonConfiguration = [configuration extensionButtonConfiguration];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setExtensionButtonConfiguration:extensionButtonConfiguration];
}

- (void)navigationBarItemDidUpdateShowsTranslationIcon:(id)icon
{
  iconCopy = icon;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  showsTranslationIcon = [iconCopy showsTranslationIcon];
  menuButtonSelected = [iconCopy menuButtonSelected];

  [itemView setMenuButtonSelected:menuButtonSelected];
  [itemView setShowsTranslationIcon:showsTranslationIcon];
}

- (void)navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:(id)icon
{
  iconCopy = icon;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setMenuButtonSelected:{objc_msgSend(iconCopy, "menuButtonSelected")}];
  showsSiriReaderPlayingIcon = [iconCopy showsSiriReaderPlayingIcon];

  [itemView setShowsSiriReaderPlayingIcon:showsSiriReaderPlayingIcon];
}

- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display
{
  displayCopy = display;
  optionsCopy = options;
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setMenuButtonSelected:{objc_msgSend(optionsCopy, "menuButtonSelected")}];
  contentOptions = [optionsCopy contentOptions];

  [itemView setContentOptions:contentOptions resetDisplay:displayCopy];
}

- (void)navigationBarItemDidUpdateHasHiddenElements:(id)elements
{
  hasHiddenElements = [elements hasHiddenElements];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setHasHiddenElements:hasHiddenElements];
}

- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)configuration
{
  overlayConfiguration = [configuration overlayConfiguration];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setOverlayConfiguration:overlayConfiguration];
}

- (void)navigationBarItemDidUpdateShowsVoiceSearchButton:(id)button
{
  showsVoiceSearchButton = [button showsVoiceSearchButton];
  itemView = [(SFUnifiedTabBarItem *)self itemView];
  [itemView setShowsVoiceSearchButton:showsVoiceSearchButton];
}

- (id)tabEntityUUIDForView:(id)view
{
  viewCopy = view;
  itemView = [(SFUnifiedTabBarItem *)self itemView];

  if (itemView == viewCopy)
  {
    itemView2 = [(SFUnifiedTabBarItem *)self itemView];
    delegate = [itemView2 delegate];

    if ((objc_opt_respondsToSelector() & 1) != 0 && (-[SFUnifiedTabBarItem itemView](self, "itemView"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [delegate tabBarItemViewShouldAnnotateWithTabEntity:v9], v9, v10))
    {
      v6 = self->_UUID;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SFMenuConfiguring)menuButtonConfigurator
{
  WeakRetained = objc_loadWeakRetained(&self->_menuButtonConfigurator);

  return WeakRetained;
}

@end