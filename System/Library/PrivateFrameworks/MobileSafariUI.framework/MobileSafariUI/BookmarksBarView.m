@interface BookmarksBarView
- (BookmarksBarView)initWithFrame:(CGRect)a3;
- (BookmarksBarViewDelegate)delegate;
- (BrowserController)browserController;
- (CGSize)preferredSize;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)preferredBottomSpacing;
- (id)_rootBookmark;
- (id)_rootList;
- (void)_buttonTapped:(id)a3;
- (void)_clearBookmarksNavigationController;
- (void)_createAllLabelButtonsIfNeeded;
- (void)_didChangeHorizontalSizeClass;
- (void)_dismissCurrentBookmarksPopover;
- (void)_presentCurrentBookmarksPopoverFromButton:(uint64_t)a3 animated:;
- (void)_receivedBookmarksChangedNotification:(id)a3;
- (void)_repositionBookmarksNavigationController;
- (void)_setButtonUsedToShowNavigationController:(uint64_t)a1;
- (void)bookmarksBarLabelButtonDidSelectEdit:(id)a3;
- (void)bookmarksBarLabelButtonDidSelectOpenInNewTab:(id)a3;
- (void)bookmarksNavigationControllerDidReload:(id)a3;
- (void)bookmarksNavigationControllerReloadDidFail:(id)a3;
- (void)bookmarksNavigationControllerViewDidAppear:(id)a3;
- (void)bookmarksNavigationControllerViewDidDisappear:(id)a3;
- (void)dealloc;
- (void)dispatchNavigationIntent:(id)a3;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setButtonStyle:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setShowsIcons:(BOOL)a3;
- (void)setShowsSeparator:(BOOL)a3;
- (void)setThemeColor:(id)a3;
- (void)updateAccessibilityIdentifier;
@end

@implementation BookmarksBarView

- (void)_buttonTapped:(id)a3
{
  v12 = a3;
  if (!self->_isShowingNavigationController || (v10 = [(BookmarksBarView *)self _buttonTapped:v12], v9 = v12, (v10 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);
    if (self->_moreBookmarksButton == v12)
    {
      [(BookmarksBarView *)self _buttonTapped:&v14];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 480;
LABEL_17:
        [*(&self->super.super.super.isa + v11) setNavigationIntentHandler:{self, v12}];
        [(BookmarksBarView *)self _presentCurrentBookmarksPopoverFromButton:v13 animated:1];
        [(BookmarksBarView *)self _setButtonUsedToShowNavigationController:v13];
        goto LABEL_7;
      }

      v5 = [(UIButton *)v12 bookmark];
      if (![v5 isFolder] || objc_msgSend(MEMORY[0x277D28F40], "shouldOpenBookmarkFolderAsTabs"))
      {
        v6 = [MEMORY[0x277D28F40] builder];
        v7 = [v6 navigationIntentWithBookmark:v5];

        v8 = objc_loadWeakRetained(&self->_navigationIntentHandler);
        [v8 dispatchNavigationIntent:v7];

LABEL_7:
        v9 = v13;
        goto LABEL_8;
      }

      [(BookmarksBarView *)self _buttonTapped:v5, &v14];
    }

    v11 = v14;
    goto LABEL_17;
  }

LABEL_8:
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!self->_isShowingNavigationController)
  {
    goto LABEL_12;
  }

  buttonUsedToShowNavigationController = self->_buttonUsedToShowNavigationController;
  moreBookmarksButton = self->_moreBookmarksButton;
  if (buttonUsedToShowNavigationController == moreBookmarksButton)
  {
LABEL_6:
    if (buttonUsedToShowNavigationController == moreBookmarksButton)
    {
      v22 = a4;
      v23 = v7;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = self->_bookmarkBarLabels;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            [v17 alpha];
            if (v18 != 0.0)
            {
              v19 = [v17 bookmark];
              if ([v19 isFolder])
              {
                bookmarksNavigationController = self->_bookmarksNavigationController;
                v21 = [v17 bookmark];
                LODWORD(bookmarksNavigationController) = [(BookmarksNavigationController *)bookmarksNavigationController rebaseOnDescendentBookmark:v21];

                if (bookmarksNavigationController)
                {
                  [(BookmarksBarView *)self popoverPresentationController:v17 willRepositionPopoverToRect:v22 inView:v11];
                  v7 = v23;
                  goto LABEL_4;
                }
              }

              else
              {
              }
            }
          }

          v14 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      a4 = v22;
      moreBookmarksButton = self->_moreBookmarksButton;
      v7 = v23;
    }

    [(UIButton *)moreBookmarksButton alpha];
    if (v13 != 0.0 && [(BookmarksNavigationController *)self->_bookmarksNavigationController rebaseOnAncestorBookmark:self->_moreBookmarksParent skipOffset:self->_moreBookmarksOffset])
    {
      [BookmarksBarView popoverPresentationController:a4 willRepositionPopoverToRect:self inView:?];
      goto LABEL_4;
    }

LABEL_12:
    [(BookmarksBarView *)self _dismissCurrentBookmarksPopover];
    goto LABEL_4;
  }

  [(UIButton *)self->_buttonUsedToShowNavigationController alpha];
  if (v10 == 0.0)
  {
    buttonUsedToShowNavigationController = self->_buttonUsedToShowNavigationController;
    moreBookmarksButton = self->_moreBookmarksButton;
    goto LABEL_6;
  }

LABEL_4:
}

void __60__BookmarksBarView__repositionBookmarksNavigationController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 480))
  {
    __60__BookmarksBarView__repositionBookmarksNavigationController__block_invoke_cold_1(a1, v1, (a1 + 32));
  }
}

- (void)_receivedBookmarksChangedNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 name];
  if (([v4 isEqualToString:*MEMORY[0x277D7B608]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D7B640]))
  {
    [(BookmarksBarView *)self setNeedsReloadData];
  }

  else if ([v4 isEqualToString:*MEMORY[0x277D7B618]])
  {
    v5 = [v7 userInfo];
    v6 = [v5 valueForKey:*MEMORY[0x277D7B5E8]];

    if (v6 && [v6 intValue] == self->_bookmarkBarID)
    {
      [(BookmarksBarView *)self setNeedsReloadData];
    }
  }
}

- (BookmarksBarView)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = BookmarksBarView;
  v3 = [(BookmarksBarView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    moreBookmarksButton = v3->_moreBookmarksButton;
    v3->_moreBookmarksButton = v4;

    v6 = v3->_moreBookmarksButton;
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis"];
    [(UIButton *)v6 setImage:v7 forState:0];

    v8 = v3->_moreBookmarksButton;
    v9 = MEMORY[0x277D755D0];
    v10 = bookmarksBarLabelButtonFont();
    v11 = [v9 configurationWithFont:v10 scale:3];
    [(UIButton *)v8 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = v3->_moreBookmarksButton;
    _SFRoundEdgeInsetsToPixels();
    [(UIButton *)v12 setImageEdgeInsets:?];
    [(UIButton *)v3->_moreBookmarksButton addTarget:v3 action:sel__buttonTapped_ forControlEvents:64];
    [(UIButton *)v3->_moreBookmarksButton setPointerStyleProvider:&__block_literal_global_3];
    [(BookmarksBarView *)v3 addSubview:v3->_moreBookmarksButton];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v3 selector:sel__receivedBookmarksChangedNotification_ name:*MEMORY[0x277D7B618] object:0];
    [v13 addObserver:v3 selector:sel__receivedBookmarksChangedNotification_ name:*MEMORY[0x277D7B608] object:0];
    [v13 addObserver:v3 selector:sel__receivedBookmarksChangedNotification_ name:*MEMORY[0x277D7B640] object:0];
    v18[0] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v15 = [(BookmarksBarView *)v3 registerForTraitChanges:v14 withTarget:v3 action:sel__didChangeHorizontalSizeClass];
  }

  return v3;
}

id __34__BookmarksBarView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 superview];
  [v5 bounds];
  [v5 contentRectForBounds:?];
  [v5 imageRectForContentRect:?];
  [v6 convertRect:v5 fromView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  v15 = fmin((CGRectGetWidth(v25) + -42.0) * 0.5, -3.0);
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v16 = fmin((CGRectGetHeight(v26) + -24.0) * 0.5, -3.0);
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v28 = CGRectInset(v27, v15, v16);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    [MEMORY[0x277D75888] shapeWithRoundedRect:x cornerRadius:{y, width, height, CGRectGetHeight(v29) * 0.5}];
  }

  else
  {
    [MEMORY[0x277D75888] shapeWithRoundedRect:{x, y, width, height}];
  }
  v21 = ;
  v22 = [MEMORY[0x277D75890] styleWithEffect:v4 shape:v21];

  return v22;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(BookmarksBarView *)self setNeedsReloadData];
}

- (void)setShowsIcons:(BOOL)a3
{
  if (self->_showsIcons != a3)
  {
    self->_showsIcons = a3;
    [(BookmarksBarView *)self setNeedsReloadData];
  }
}

- (void)setButtonStyle:(int64_t)a3
{
  if (self->_buttonStyle != a3)
  {
    self->_buttonStyle = a3;
    [(BookmarksBarView *)self setNeedsReloadData];
  }
}

- (void)_didChangeHorizontalSizeClass
{
  v3 = [(BookmarksBarView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {

    [(BookmarksBarView *)self _dismissCurrentBookmarksPopover];
  }
}

- (void)dealloc
{
  [(BookmarksNavigationController *)self->_bookmarksNavigationController setBookmarksNavigationControllerDelegate:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BookmarksBarView;
  [(BookmarksBarView *)&v4 dealloc];
}

- (void)setShowsSeparator:(BOOL)a3
{
  v24[4] = *MEMORY[0x277D85DE8];
  separator = self->_separator;
  if (a3)
  {
    if (!separator)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_separator;
      self->_separator = v5;

      v7 = [MEMORY[0x277D75348] sf_tabSeparatorColor];
      [(UIView *)self->_separator setBackgroundColor:v7];

      v8 = [(UIView *)self->_separator layer];
      [v8 setCornerRadius:0.5];

      [(UIView *)self->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
      [(BookmarksBarView *)self addSubview:self->_separator];
      v9 = [(BookmarksBarView *)self layoutMarginsGuide];
      v20 = MEMORY[0x277CCAAD0];
      v23 = [(UIView *)self->_separator leadingAnchor];
      v22 = [v9 leadingAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v24[0] = v21;
      v10 = [(UIView *)self->_separator bottomAnchor];
      v11 = [(BookmarksBarView *)self bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];
      v24[1] = v12;
      v13 = [v9 trailingAnchor];
      v14 = [(UIView *)self->_separator trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v24[2] = v15;
      v16 = [(UIView *)self->_separator heightAnchor];
      v17 = [v16 constraintEqualToConstant:1.0];
      v24[3] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
      [v20 activateConstraints:v18];
    }
  }

  else if (separator)
  {
    [(UIView *)separator removeFromSuperview];
    v19 = self->_separator;
    self->_separator = 0;
  }
}

- (void)handleNavigationIntent:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained handleNavigationIntent:v7 completion:v6];
}

- (void)setThemeColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_themeColor, a3);
    if (!self->_needsReloadBookmarkLabels)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = self->_bookmarkBarLabels;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) setThemeColor:{v5, v11}];
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)bookmarksNavigationControllerReloadDidFail:(id)a3
{
  if (self->_isShowingNavigationController)
  {
    [BookmarksBarView bookmarksNavigationControllerReloadDidFail:?];
  }
}

- (void)bookmarksNavigationControllerViewDidAppear:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksBarView:self bookmarksNavigationControllerViewDidAppear:v5];
  }
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained tabGroupProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)bookmarksBarLabelButtonDidSelectOpenInNewTab:(id)a3
{
  v7 = [a3 bookmark];
  v4 = [MEMORY[0x277D28F40] builder];
  [v4 setPrefersOpenInNewTab:1];
  v5 = [v4 navigationIntentWithBookmark:v7];
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:v5];
}

- (void)bookmarksBarLabelButtonDidSelectEdit:(id)a3
{
  v4 = a3;
  v6 = [(BookmarksBarView *)self browserController];
  v5 = [v4 bookmark];

  [v6 editBookmark:v5];
}

- (CGSize)preferredSize
{
  v2 = 23.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (double)preferredBottomSpacing
{
  v3 = [MEMORY[0x277D49A08] isSolariumEnabled];
  result = 10.0;
  if ((v3 & 1) == 0)
  {
    v5 = 8.0;
    if (!self->_separator)
    {
      v5 = 0.0;
    }

    return v5 + 3.0;
  }

  return result;
}

- (BookmarksBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (void)_setButtonUsedToShowNavigationController:(uint64_t)a1
{
  v4 = a2;
  if (a1 && *(a1 + 464) != v4)
  {
    v5 = v4;
    objc_storeStrong((a1 + 464), a2);
    v4 = v5;
  }
}

- (void)_clearBookmarksNavigationController
{
  if (a1)
  {
    [*(a1 + 480) setBookmarksNavigationControllerDelegate:0];
    v2 = *(a1 + 480);
    *(a1 + 480) = 0;

    *(a1 + 472) = 0;
  }
}

- (void)_presentCurrentBookmarksPopoverFromButton:(uint64_t)a3 animated:
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = *(a1 + 480);
    v6 = a2;
    v7 = [v5 presentingViewController];

    if (v7)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 480);
        v22 = v8;
        v23 = [v21 presentingViewController];
        *buf = 138543362;
        v26 = v23;
        _os_log_error_impl(&dword_215819000, v22, OS_LOG_TYPE_ERROR, "Trying to present bookmarks from popover button when it is already presented by: %{public}@", buf, 0xCu);
      }
    }

    [*(a1 + 480) setAllowsEditing:0];
    [*(a1 + 480) setModalPresentationStyle:7];
    v9 = [*(a1 + 480) popoverPresentationController];
    [v6 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v9 setSourceRect:{v11, v13, v15, v17}];
    [v9 setSourceView:a1];
    [v9 setDelegate:a1];
    [v9 setPermittedArrowDirections:1];
    v24 = a1;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v9 setPassthroughViews:v18];

    v19 = [a1 window];
    v20 = [v19 rootViewController];
    [v20 presentViewController:*(a1 + 480) animated:a3 completion:0];

    *(a1 + 472) = 1;
  }
}

- (void)_dismissCurrentBookmarksPopover
{
  if (a1)
  {
    [*(a1 + 480) dismissViewControllerAnimated:0 completion:0];
    v1 = OUTLINED_FUNCTION_0_1();

    [(BookmarksBarView *)v1 _setButtonUsedToShowNavigationController:v2];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  [(BookmarksBarView *)self _clearBookmarksNavigationController];
  v3 = OUTLINED_FUNCTION_0_1();

  [(BookmarksBarView *)v3 _setButtonUsedToShowNavigationController:v4];
}

- (id)_rootList
{
  if (a1)
  {
    v1 = [(BookmarksBarView *)a1 _rootBookmark];
    v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v3 = [v2 listWithID:{objc_msgSend(v1, "identifier")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_rootBookmark
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    WeakRetained = objc_loadWeakRetained(v1 + 62);
    if ([WeakRetained isPrivateBrowsingEnabled])
    {
    }

    else
    {
      v4 = [v1 tabGroupProvider];
      v5 = [v4 activeProfile];
      v6 = [v5 customFavoritesFolderServerID];

      if (v6)
      {
        v7 = [v1[68] serverID];
        v8 = WBSIsEqual();

        if (v8)
        {
          goto LABEL_11;
        }

        v9 = [v2 bookmarkWithServerID:v6 excludeDeletedBookmarks:1];
        goto LABEL_8;
      }
    }

    v10 = [v1[68] identifier];
    v9 = 0;
    v6 = 0;
    if (v10 == *(v1 + 115))
    {
LABEL_9:
      v12 = v1[68];
      if (v12)
      {
LABEL_12:
        v1 = v12;

        goto LABEL_13;
      }

      v13 = [v2 bookmarksBarBookmark];
      v14 = v1[68];
      v1[68] = v13;

      *(v1 + 115) = [v1[68] identifier];
LABEL_11:
      v12 = v1[68];
      goto LABEL_12;
    }

LABEL_8:
    v11 = v1[68];
    v1[68] = v9;

    goto LABEL_9;
  }

LABEL_13:

  return v1;
}

- (void)_createAllLabelButtonsIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 416) == 1)
  {
    *(a1 + 416) = 0;
    if (*(a1 + 472) == 1 && *(a1 + 464) == *(a1 + 440))
    {
      v2 = [*(a1 + 480) viewControllers];
      v22 = [v2 count] == 1;
    }

    else
    {
      v22 = 0;
    }

    v3 = OUTLINED_FUNCTION_0_1();
    [(BookmarksBarView *)v3 _setButtonUsedToShowNavigationController:v4];
    v5 = [(BookmarksBarView *)a1 _rootList];
    *(a1 + 432) = [v5 folderID];
    v6 = *(a1 + 408);
    if (v6)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v23 + 1) + 8 * v11++) removeFromSuperview];
          }

          while (v9 != v11);
          v9 = OUTLINED_FUNCTION_3_0(v12, v13, &v23, v27);
        }

        while (v9);
      }
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(a1 + 408);
    *(a1 + 408) = v14;

    v16 = [v5 bookmarkCount];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      do
      {
        v19 = [v5 bookmarkAtIndex:v18];
        v20 = [BookmarksBarLabelButton labelButtonWithButtonStyle:*(a1 + 536)];
        [v20 setBookmark:v19];
        [v20 addTarget:a1 action:sel__buttonTapped_ forControlEvents:64];
        [v20 setDelegate:a1];
        [v20 setThemeColor:*(a1 + 528)];
        [*(a1 + 408) addObject:v20];
        [a1 addSubview:v20];

        v18 = (v18 + 1);
      }

      while (v17 != v18);
    }

    if ((*(a1 + 473) & 1) == 0)
    {
      [a1 layoutIfNeeded];
    }

    if (*(a1 + 472) == 1)
    {
      if (v22 && ([*(a1 + 440) alpha], v21 == 1.0))
      {
        [*(a1 + 480) setRootBookmark:*(a1 + 448) skipOffset:*(a1 + 456)];
        [(BookmarksBarView *)a1 _setButtonUsedToShowNavigationController:?];
      }

      else
      {
        [*(a1 + 480) reloadViewControllers];
      }
    }
  }
}

- (void)_repositionBookmarksNavigationController
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 474);
  *(a1 + 474) = 0;
  if (v2 != 1)
  {
    return;
  }

  v3 = 0x27CA74000uLL;
  v4 = *(a1 + 480);
  if (!v4)
  {
    return;
  }

  v20 = [v4 rootBookmark];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 408);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *v24;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v23 + 1) + 8 * i);
      [v9 alpha];
      if (v10 != 0.0)
      {
        v11 = [v9 bookmark];
        if ([v11 isFolder])
        {
          v12 = [v20 identifier];
          v13 = [v9 bookmark];
          v14 = [v13 identifier];

          if (v12 == v14)
          {
            v3 = 0x27CA74000uLL;
LABEL_19:
            v6 = v9;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v15 = [v9 alpha];
      if (v17 == 0.0)
      {
        v3 = 0x27CA74000uLL;
        [*(a1 + 480) rebaseOnAncestorBookmark:*(a1 + 448) skipOffset:*(a1 + 456)];
        v9 = *(a1 + 440);
        goto LABEL_19;
      }
    }

    v6 = OUTLINED_FUNCTION_3_0(v15, v16, &v23, v27);
    if (v6)
    {
      continue;
    }

    break;
  }

  v3 = 0x27CA74000;
LABEL_20:

  v18 = *(a1 + *(v3 + 3764));
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__BookmarksBarView__repositionBookmarksNavigationController__block_invoke;
  v21[3] = &unk_2781D4C88;
  v21[4] = a1;
  v22 = v6;
  v19 = v6;
  [v18 dismissViewControllerAnimated:0 completion:v21];
}

- (void)layoutSubviews
{
  v82 = *MEMORY[0x277D85DE8];
  j = 473;
  self->_isPerformingLayout = 1;
  v79.receiver = self;
  v79.super_class = BookmarksBarView;
  [(BookmarksBarView *)&v79 layoutSubviews];
  [(BookmarksBarView *)self _createAllLabelButtonsIfNeeded];
  [(BookmarksBarView *)self bounds];
  v5 = v4;
  v70 = v6;
  [(BookmarksBarView *)self layoutMargins];
  v8 = v7;
  v10 = v9;
  v11 = 440;
  v12 = [(UIButton *)self->_moreBookmarksButton imageView];
  v13 = [v12 image];
  [v13 size];
  v15 = v14 + 30.0;

  v16 = fmax(v10 + -15.0, 0.0) + v15;
  v67 = v5 - v16;
  v17 = fmax(v8, 18.0);
  v18 = [(NSMutableArray *)self->_bookmarkBarLabels count];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v19 = self->_bookmarkBarLabels;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (!v20)
  {

    LODWORD(v21) = v18;
LABEL_3:
    [(BookmarksBarView *)self bounds];
    CGRectGetWidth(v83);
    _SFRoundFloatToPixels();
    v23 = v22;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v24 = self->_bookmarkBarLabels;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v71 objects:v80 count:16];
    v26 = 0.0;
    if (v25)
    {
      v27 = v25;
      v28 = v18;
      v29 = *v72;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v72 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v71 + 1) + 8 * i);
          [v31 frame];
          v33 = [v31 setFrame:v23 + v32];
        }

        v27 = OUTLINED_FUNCTION_3_0(v33, v34, &v71, v80);
      }

      while (v27);
      LODWORD(v18) = v28;
    }

LABEL_36:

    goto LABEL_37;
  }

  v35 = v20;
  v61 = v16;
  v62 = v5;
  v64 = v15;
  v65 = 440;
  v66 = 473;
  v11 = 0;
  LOBYTE(v36) = 0;
  v37 = *v76;
  v68 = *(MEMORY[0x277D768C8] + 8);
  v69 = *MEMORY[0x277D768C8];
  v38 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v63 = v18;
  v21 = v18;
  do
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v76 != v37)
      {
        objc_enumerationMutation(v19);
      }

      v18 = *(*(&v75 + 1) + 8 * j);
      [v18 sizeToFit];
      [v18 frame];
      v40 = v39;
      _SFRoundFloatToPixels();
      v41 = fmin(v40, 150.0);
      if (v36)
      {
        v42 = v21;
LABEL_18:
        v26 = 0.0;
        v36 = 1;
        v21 = v42;
        goto LABEL_20;
      }

      v84.origin.x = OUTLINED_FUNCTION_2_1();
      MaxX = CGRectGetMaxX(v84);
      v42 = v11;
      if (MaxX > v67)
      {
        goto LABEL_18;
      }

      v36 = 0;
      v26 = 1.0;
LABEL_20:
      v44 = OUTLINED_FUNCTION_2_1();
      [v45 setFrame:v44];
      [v18 setAlpha:v26];
      if (v11)
      {
        v46 = -9.0;
      }

      else
      {
        v46 = v68;
      }

      v11 = (v11 + 1);
      if ([(NSMutableArray *)self->_bookmarkBarLabels count]<= v11)
      {
        v47 = v15;
      }

      else
      {
        v47 = -9.0;
      }

      v48 = [v18 setCursorRegionInset:{v69, v46, v38, v47}];
      v17 = v17 + v41 + 18.0;
    }

    v35 = OUTLINED_FUNCTION_3_0(v48, v49, &v75, v81);
  }

  while (v35);

  if (v21)
  {
    v50 = v36;
  }

  else
  {
    v50 = 0;
  }

  if (v50 == 1)
  {
    v24 = [(NSMutableArray *)self->_bookmarkBarLabels objectAtIndexedSubscript:(v21 - 1)];
    [(NSMutableArray *)v24 cursorRegionInset];
    v52 = v51;
    v26 = v53;
    v55 = v54;
    [(NSMutableArray *)v24 frame];
    v56 = v61 + CGRectGetMaxX(v85) - v62;
    if (v56 >= -44.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0.0;
    }

    [(NSMutableArray *)v24 setCursorRegionInset:v52, v26, v55, v57];
    OUTLINED_FUNCTION_1_2();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1_2();
  if ((v36 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_37:
  [*(&self->super.super.super.isa + v11) setFrame:{v67, 0.0, v15, v70}];
  [*(&self->super.super.super.isa + v11) setAlpha:v26];
  if (v21 < v18)
  {
    v58 = [(BookmarksBarView *)&self->super.super.super.isa _rootBookmark];
    moreBookmarksParent = self->_moreBookmarksParent;
    self->_moreBookmarksParent = v58;

    v60 = _WBSLocalizedString();
    [(WebBookmark *)self->_moreBookmarksParent setTitle:v60];

    self->_moreBookmarksOffset = v21;
  }

  [(BookmarksBarView *)self _repositionBookmarksNavigationController];
  [(BookmarksBarView *)self updateAccessibilityIdentifier];
  *(&self->super.super.super.isa + j) = 0;
}

- (void)updateAccessibilityIdentifier
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1[67], @"DisplayMode"];
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v4 = WBSMakeAccessibilityIdentifier();
    [a1 setAccessibilityIdentifier:v4];
  }
}

- (void)dispatchNavigationIntent:(id)a3
{
  v7 = a3;
  if (self->_isShowingNavigationController)
  {
    [(BookmarksNavigationController *)self->_bookmarksNavigationController dismissViewControllerAnimated:1 completion:0];
    [(BookmarksBarView *)self _clearBookmarksNavigationController];
  }

  v4 = OUTLINED_FUNCTION_0_1();
  [(BookmarksBarView *)v4 _setButtonUsedToShowNavigationController:v5];
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained dispatchNavigationIntent:v7];
}

- (void)bookmarksNavigationControllerDidReload:(id)a3
{
  [(BookmarksBarView *)self _createAllLabelButtonsIfNeeded];
  self->_needsRepositionNavigationController = 1;
  if (!self->_isPerformingLayout)
  {

    [(BookmarksBarView *)self _repositionBookmarksNavigationController];
  }
}

- (void)bookmarksNavigationControllerViewDidDisappear:(id)a3
{
  v7 = a3;
  self->_isShowingNavigationController = 0;
  v4 = OUTLINED_FUNCTION_0_1();
  [(BookmarksBarView *)v4 _setButtonUsedToShowNavigationController:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksBarView:self bookmarksNavigationControllerViewDidDisappear:v7];
  }
}

- (uint64_t)_buttonTapped:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 464);
  v5 = 1;
  [*(a1 + 480) dismissViewControllerAnimated:1 completion:0];
  [(BookmarksBarView *)a1 _clearBookmarksNavigationController];
  if (v4 == a2)
  {
    v7 = OUTLINED_FUNCTION_0_1();
    [(BookmarksBarView *)v7 _setButtonUsedToShowNavigationController:v8];
    return 0;
  }

  return v5;
}

- (void)_buttonTapped:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = [[BookmarksNavigationController alloc] initWithBookmarksDelegate:a1 linkPreviewProvider:a2 topBookmark:a3 skipOffset:0];
  *a4 = 480;
  v7 = *(a1 + 480);
  *(a1 + 480) = v6;
}

- (void)_buttonTapped:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [[BookmarksNavigationController alloc] initWithBookmarksDelegate:a1 linkPreviewProvider:a2 topBookmark:*(a1 + 448) skipOffset:*(a1 + 456)];
  *a3 = 480;
  v6 = *(a1 + 480);
  *(a1 + 480) = v5;
}

- (void)popoverPresentationController:(void *)a3 willRepositionPopoverToRect:(void *)a4 inView:.cold.1(uint64_t a1, void *a2, void *a3, void *a4)
{
  [(BookmarksBarView *)a1 _setButtonUsedToShowNavigationController:a2];
  [a2 frame];
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
}

- (void)popoverPresentationController:(id *)a1 willRepositionPopoverToRect:(void *)a2 inView:(uint64_t)a3 .cold.2(id *a1, void *a2, uint64_t a3)
{
  [*a1 frame];
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  [(BookmarksBarView *)a3 _setButtonUsedToShowNavigationController:?];
}

void __60__BookmarksBarView__repositionBookmarksNavigationController__block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  [(BookmarksBarView *)a2 _presentCurrentBookmarksPopoverFromButton:0 animated:?];
  v5 = *a3;
  v6 = *(a1 + 40);

  [(BookmarksBarView *)v5 _setButtonUsedToShowNavigationController:v6];
}

- (void)bookmarksNavigationControllerReloadDidFail:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [(BookmarksBarView *)a1 _setButtonUsedToShowNavigationController:?];
  [*(a1 + 480) dismissViewControllerAnimated:1 completion:0];

  [(BookmarksBarView *)a1 _clearBookmarksNavigationController];
}

@end