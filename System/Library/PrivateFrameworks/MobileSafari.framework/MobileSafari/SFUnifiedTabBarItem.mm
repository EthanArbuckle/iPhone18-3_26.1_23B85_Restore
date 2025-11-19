@interface SFUnifiedTabBarItem
- (BOOL)hasOverlayConfiguration;
- (SFMenuConfiguring)menuButtonConfigurator;
- (SFUnifiedTabBarItem)init;
- (SFUnifiedTabBarItemView)itemView;
- (id)bestButtonForExtensionPopoverSource:(id)a3;
- (id)menuElementRepresentationWithSelectionHandler:(id)a3;
- (id)tabEntityUUIDForView:(id)a3;
- (void)_configureItemView:(id)a3 isPreview:(BOOL)a4;
- (void)configureItemView:(id)a3 isPreview:(BOOL)a4;
- (void)navigationBarItemDidUpdateContentOptions:(id)a3 resetDisplay:(BOOL)a4;
- (void)navigationBarItemDidUpdateExtensionButtonConfiguration:(id)a3;
- (void)navigationBarItemDidUpdateFormatButtonSelected:(id)a3;
- (void)navigationBarItemDidUpdateHasHiddenElements:(id)a3;
- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)a3;
- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)a3;
- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)a3;
- (void)navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:(id)a3;
- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)a3;
- (void)navigationBarItemDidUpdateShowsTranslationIcon:(id)a3;
- (void)navigationBarItemDidUpdateShowsVoiceSearchButton:(id)a3;
- (void)navigationBarItemDidUpdateStopReloadButtonShowsStop:(id)a3;
- (void)navigationBarItemDidUpdateText:(id)a3;
- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4;
- (void)setGlobalMediaStateIcon:(unint64_t)a3;
- (void)setIcon:(id)a3;
- (void)setLastReloadDate:(id)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setMenuButtonBadges:(unint64_t)a3;
- (void)setMenuButtonConfigurator:(id)a3;
- (void)setNavigationBarItem:(id)a3;
- (void)setReusableView:(id)a3;
- (void)setShareParticipants:(id)a3;
- (void)setShowsBadgeOnExtensionsButton:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleWhenCollapsed:(id)a3;
- (void)setUnread:(BOOL)a3;
- (void)updateTitleWhenCollapsedWithItemTitles:(id)a3;
@end

@implementation SFUnifiedTabBarItem

- (SFUnifiedTabBarItemView)itemView
{
  v2 = [(SFUnifiedBarItem *)self reusableView];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
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

- (void)setNavigationBarItem:(id)a3
{
  v5 = a3;
  navigationBarItem = self->_navigationBarItem;
  if (navigationBarItem != v5)
  {
    v8 = v5;
    [(SFNavigationBarItem *)navigationBarItem removeObserver:self];
    objc_storeStrong(&self->_navigationBarItem, a3);
    [(SFNavigationBarItem *)v8 addObserver:self];
    v7 = [(SFUnifiedTabBarItem *)self itemView];
    if (v7)
    {
      [(SFUnifiedTabBarItem *)self _configureItemView:v7 isPreview:0];
      [v7 setContentOptions:-[SFNavigationBarItem contentOptions](v8 resetDisplay:{"contentOptions"), 1}];
    }

    v5 = v8;
  }
}

- (void)setIcon:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, a3);
    v5 = [(SFUnifiedTabBarItem *)self itemView];
    [v5 setIcon:v6];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;

  v7 = [(SFUnifiedTabBarItem *)self itemView];
  [v7 setTitle:v4];
}

- (void)setTitleWhenCollapsed:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  titleWhenCollapsed = self->_titleWhenCollapsed;
  self->_titleWhenCollapsed = v5;

  v7 = [(SFUnifiedTabBarItem *)self itemView];
  [v7 setTitleWhenCollapsed:v4];
}

- (void)setLastReloadDate:(id)a3
{
  objc_storeStrong(&self->_lastReloadDate, a3);
  v5 = a3;
  v6 = [(SFUnifiedTabBarItem *)self itemView];
  [v6 setLastReloadDate:v5];
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  self->_mediaStateIcon = a3;
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setMediaStateIcon:a3];
}

- (void)setGlobalMediaStateIcon:(unint64_t)a3
{
  self->_globalMediaStateIcon = a3;
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setGlobalMediaStateIcon:a3];
}

- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_downloadProgress = a3;
  v6 = [(SFUnifiedTabBarItem *)self itemView];
  [v6 setDownloadProgress:v4 animated:a3];
}

- (void)setMenuButtonBadges:(unint64_t)a3
{
  self->_menuButtonBadges = a3;
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setMenuButtonBadges:a3];
}

- (void)setShowsBadgeOnExtensionsButton:(BOOL)a3
{
  v3 = a3;
  self->_showsBadgeOnExtensionsButton = a3;
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setShowsBadgeOnExtensionsButton:v3];
}

- (id)bestButtonForExtensionPopoverSource:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  v6 = [v5 extensionButtonConfiguration];
  v7 = [v6 buttons];

  v8 = [v7 firstObject];
  v9 = [v8 extension];

  if (v9 == v4)
  {
    v10 = [(SFUnifiedTabBarItem *)self itemView];
    v11 = [v10 firstExtensionButton];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      v12 = v13;
LABEL_9:
      v16 = v13;
      goto LABEL_16;
    }

    v18 = [(SFUnifiedTabBarItem *)self itemView];
    v19 = [v18 multipleExtensionsButton];
  }

  else
  {
    if ([v7 count] < 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 objectAtIndexedSubscript:1];
    }

    v14 = [v10 extension];

    v15 = [(SFUnifiedTabBarItem *)self itemView];
    v12 = v15;
    if (v14 != v4)
    {
      v13 = [v15 multipleExtensionsButton];
      goto LABEL_9;
    }

    v17 = [v15 secondExtensionButton];
    v18 = v17;
    if (!v17)
    {
      v20 = [(SFUnifiedTabBarItem *)self itemView];
      v16 = [v20 multipleExtensionsButton];

      goto LABEL_15;
    }

    v19 = v17;
  }

  v16 = v19;
LABEL_15:

LABEL_16:

  return v16;
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    v4 = a3;
    self->_unread = a3;
    v5 = [(SFUnifiedTabBarItem *)self itemView];
    [v5 setUnread:v4];
  }
}

- (void)setShareParticipants:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [v7 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    v6 = [(SFUnifiedTabBarItem *)self itemView];
    [v6 setShareParticipants:v7];
  }
}

- (void)setReusableView:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedBarItem *)self reusableView];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = SFUnifiedTabBarItem;
    [(SFUnifiedBarItem *)&v6 setReusableView:v4];
    [v4 safari_setTabEntityProviderWithInfoProvider:self];
  }
}

- (void)setMenuButtonConfigurator:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_menuButtonConfigurator, v4);
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setFormatMenuButtonConfigurator:v4];
}

- (void)configureItemView:(id)a3 isPreview:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFUnifiedTabBarItem *)self _configureItemView:v6 isPreview:v4];
  }
}

- (void)_configureItemView:(id)a3 isPreview:(BOOL)a4
{
  v6 = a3;
  v17 = v6;
  if (self->_icon)
  {
    [v6 setIcon:?];
  }

  else
  {
    v7 = +[_SFFaviconProvider fallbackFavicon];
    [v17 setIcon:v7];
  }

  [v17 setTitle:self->_title];
  v8 = [(SFNavigationBarItem *)self->_navigationBarItem text];
  [v17 setTitleWhenActive:v8];

  titleWhenCollapsed = self->_titleWhenCollapsed;
  if (!titleWhenCollapsed)
  {
    titleWhenCollapsed = self->_title;
  }

  [v17 setTitleWhenCollapsed:titleWhenCollapsed];
  v10 = [(SFNavigationBarItem *)self->_navigationBarItem textWhenExpanded];
  [v17 setTextWhenExpanded:v10];

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
  v11 = [(SFNavigationBarItem *)self->_navigationBarItem extensionButtonConfiguration];
  [v17 setExtensionButtonConfiguration:v11];

  [v17 setMenuButtonBadges:self->_menuButtonBadges];
  [v17 setShowsBadgeOnExtensionsButton:self->_showsBadgeOnExtensionsButton];
  [v17 setUnread:self->_unread];
  [v17 setShareParticipants:self->_shareParticipants];
  [v17 setShowsSiriReaderPlayingIcon:{-[SFNavigationBarItem showsSiriReaderPlayingIcon](self->_navigationBarItem, "showsSiriReaderPlayingIcon")}];
  [v17 setHasHiddenElements:{-[SFNavigationBarItem hasHiddenElements](self->_navigationBarItem, "hasHiddenElements")}];
  v12 = [(SFNavigationBarItem *)self->_navigationBarItem overlayConfiguration];
  [v17 setOverlayConfiguration:v12];

  downloadProgress = -2.0;
  if (!a4)
  {
    v14 = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressController];
    v15 = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressStateSource];
    v16 = [v15 progressState];
    [v17 setFluidProgressController:v14 withCurrentState:v16];

    downloadProgress = self->_downloadProgress;
  }

  [v17 setDownloadProgress:0 animated:downloadProgress];
}

- (id)menuElementRepresentationWithSelectionHandler:(id)a3
{
  v4 = a3;
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
  v13 = v4;
  v9 = v4;
  v10 = [v6 actionWithTitle:title image:v8 identifier:0 handler:v12];

  if (!icon)
  {
  }

  return v10;
}

- (BOOL)hasOverlayConfiguration
{
  v3 = [(SFNavigationBarItem *)self->_navigationBarItem overlayConfiguration];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SFNavigationBarItem *)self->_navigationBarItem overlayNarrowConfiguration];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)updateTitleWhenCollapsedWithItemTitles:(id)a3
{
  v18 = a3;
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  v5 = v4;
  if (v4)
  {
    [v4 titleContainerWidthAccountingForInset];
    v7 = v6;
    v8 = [v5 titleTextStyle];
    p_titleTruncationInfo = &self->_titleTruncationInfo;
    v10 = WBSIsEqual() && WBSIsEqual() && self->_titleTruncationInfo.titleTextStyle == v8 && self->_titleTruncationInfo.titleContainerWidthAccountingForInset == v7;
    v11 = [v18 copy];
    itemTitles = p_titleTruncationInfo->itemTitles;
    p_titleTruncationInfo->itemTitles = v11;

    v13 = [(NSString *)self->_title copy];
    title = self->_titleTruncationInfo.title;
    self->_titleTruncationInfo.title = v13;

    self->_titleTruncationInfo.titleContainerWidthAccountingForInset = v7;
    objc_storeStrong(&self->_titleTruncationInfo.titleTextStyle, v8);
    if (v10)
    {
      [v5 setTitleWhenCollapsed:self->_titleWhenCollapsed];
    }

    else
    {
      v15 = self->_title;
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
      v17 = [(NSString *)v15 truncatedTitleWithFont:v16 desiredWidth:v18 sortedTabBarItemTitles:v7];
      [(SFUnifiedTabBarItem *)self setTitleWhenCollapsed:v17];
    }
  }
}

- (void)navigationBarItemDidUpdateText:(id)a3
{
  v4 = a3;
  v8 = [(SFUnifiedTabBarItem *)self itemView];
  v5 = [v4 text];
  [v8 setTitleWhenActive:v5];

  v6 = [v4 textWhenExpanded];
  [v8 setTextWhenExpanded:v6];

  v7 = [v4 startIndexOfTextInExpandedText];
  [v8 setStartIndexOfTitleInTextWhenExpanded:v7];
}

- (void)navigationBarItemDidUpdateShowsSearchIndicator:(id)a3
{
  v4 = [a3 showsSearchIndicator];
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setShowsSearchIcon:v4];
}

- (void)navigationBarItemDidUpdateShowsStopReloadButtons:(id)a3
{
  v4 = [a3 showsStopReloadButtons];
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setShowsStopReloadButton:v4];
}

- (void)navigationBarItemDidUpdateStopReloadButtonShowsStop:(id)a3
{
  v4 = [a3 stopReloadButtonShowsStop];
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setStopReloadButtonShowsStop:v4];
}

- (void)navigationBarItemDidUpdateFormatButtonSelected:(id)a3
{
  v4 = a3;
  v6 = [(SFUnifiedTabBarItem *)self itemView];
  [v6 setMenuButtonSelected:{objc_msgSend(v4, "menuButtonSelected")}];
  v5 = [v4 readerButtonSelected];

  [v6 setShowsReaderIcon:v5];
}

- (void)navigationBarItemDidUpdateSecurityAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 securityAnnotation];
  v6 = [(SFUnifiedTabBarItem *)self itemView];
  [v6 setSecurityAnnotation:v5];

  v7 = [v4 hasFocusedSensitiveFieldOnCurrentPage];
  v8 = [(SFUnifiedTabBarItem *)self itemView];
  [v8 setHasFocusedSensitiveInputField:v7];
}

- (void)navigationBarItemDidUpdateExtensionButtonConfiguration:(id)a3
{
  v5 = [a3 extensionButtonConfiguration];
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setExtensionButtonConfiguration:v5];
}

- (void)navigationBarItemDidUpdateShowsTranslationIcon:(id)a3
{
  v4 = a3;
  v7 = [(SFUnifiedTabBarItem *)self itemView];
  v5 = [v4 showsTranslationIcon];
  v6 = [v4 menuButtonSelected];

  [v7 setMenuButtonSelected:v6];
  [v7 setShowsTranslationIcon:v5];
}

- (void)navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:(id)a3
{
  v4 = a3;
  v6 = [(SFUnifiedTabBarItem *)self itemView];
  [v6 setMenuButtonSelected:{objc_msgSend(v4, "menuButtonSelected")}];
  v5 = [v4 showsSiriReaderPlayingIcon];

  [v6 setShowsSiriReaderPlayingIcon:v5];
}

- (void)navigationBarItemDidUpdateContentOptions:(id)a3 resetDisplay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(SFUnifiedTabBarItem *)self itemView];
  [v8 setMenuButtonSelected:{objc_msgSend(v6, "menuButtonSelected")}];
  v7 = [v6 contentOptions];

  [v8 setContentOptions:v7 resetDisplay:v4];
}

- (void)navigationBarItemDidUpdateHasHiddenElements:(id)a3
{
  v4 = [a3 hasHiddenElements];
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setHasHiddenElements:v4];
}

- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)a3
{
  v5 = [a3 overlayConfiguration];
  v4 = [(SFUnifiedTabBarItem *)self itemView];
  [v4 setOverlayConfiguration:v5];
}

- (void)navigationBarItemDidUpdateShowsVoiceSearchButton:(id)a3
{
  v4 = [a3 showsVoiceSearchButton];
  v5 = [(SFUnifiedTabBarItem *)self itemView];
  [v5 setShowsVoiceSearchButton:v4];
}

- (id)tabEntityUUIDForView:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedTabBarItem *)self itemView];

  if (v5 == v4)
  {
    v7 = [(SFUnifiedTabBarItem *)self itemView];
    v8 = [v7 delegate];

    if ((objc_opt_respondsToSelector() & 1) != 0 && (-[SFUnifiedTabBarItem itemView](self, "itemView"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 tabBarItemViewShouldAnnotateWithTabEntity:v9], v9, v10))
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