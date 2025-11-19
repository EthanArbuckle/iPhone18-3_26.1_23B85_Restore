@interface BookmarksBarLabelButton
+ (id)labelButton;
+ (id)labelButtonWithButtonStyle:(int64_t)a3;
+ (id)labelButtonWithSiteIcon;
- (BOOL)_canShowIcon;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BookmarksBarLabelButton)initWithFrame:(CGRect)a3;
- (BookmarksBarLabelButtonDelegate)delegate;
- (CGRect)_bookmarksBarLabelButtonHitRect;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)cursorRegionInset;
- (id)accessibilityIdentifier;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)_editBookmark:(id)a3;
- (void)_handleLongPressGestureRecognizer:(id)a3;
- (void)_installFaviconView;
- (void)_openInNewTabs:(id)a3;
- (void)_setIcon:(id)a3;
- (void)_updateFaviconForURL:(id)a3;
- (void)setBookmark:(id)a3;
@end

@implementation BookmarksBarLabelButton

+ (id)labelButtonWithButtonStyle:(int64_t)a3
{
  v4 = [a1 buttonWithType:1];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v6 = [v4 titleLabel];
  [v6 setFont:v5];

  [v4 setButtonStyle:a3];
  if (a3 <= 1)
  {
    [v4 _installFaviconView];
  }

  return v4;
}

+ (id)labelButtonWithSiteIcon
{
  v2 = [a1 buttonWithType:1];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v4 = [v2 titleLabel];
  [v4 setFont:v3];

  [v2 _installFaviconView];

  return v2;
}

+ (id)labelButton
{
  v2 = [a1 buttonWithType:1];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v4 = [v2 titleLabel];
  [v4 setFont:v3];

  return v2;
}

- (BookmarksBarLabelButton)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = BookmarksBarLabelButton;
  v3 = [(BookmarksBarLabelButton *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__handleLongPressGestureRecognizer_];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v4;

    [(BookmarksBarLabelButton *)v3 addGestureRecognizer:v3->_longPressGestureRecognizer];
    v6 = [objc_alloc(MEMORY[0x277D75EB0]) initWithTarget:v3 action:sel__handleLongPressGestureRecognizer_];
    [(BookmarksBarLabelButton *)v3 addGestureRecognizer:v6];

    objc_initWeak(&location, v3);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __41__BookmarksBarLabelButton_initWithFrame___block_invoke;
    v16 = &unk_2781D5D50;
    objc_copyWeak(&v17, &location);
    [(BookmarksBarLabelButton *)v3 setPointerStyleProvider:&v13];
    v7 = objc_alloc(MEMORY[0x277D754C8]);
    v8 = [v7 initWithDelegate:{v3, v13, v14, v15, v16}];
    editMenuInteraction = v3->_editMenuInteraction;
    v3->_editMenuInteraction = v8;

    [(BookmarksBarLabelButton *)v3 addInteraction:v3->_editMenuInteraction];
    v10 = [objc_alloc(MEMORY[0x277D76220]) initWithStyle:0];
    [(BookmarksBarLabelButton *)v3 addInteraction:v10];

    v11 = v3;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __41__BookmarksBarLabelButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 bounds];
  [v3 contentRectForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 titleRectForContentRect:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v3 imageRectForContentRect:{v6, v8, v10, v12}];
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  if (!CGRectIsEmpty(v47))
  {
    v48.origin.x = v14;
    v48.origin.y = v16;
    v48.size.width = v18;
    v48.size.height = v20;
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v49 = CGRectUnion(v48, v54);
    v14 = v49.origin.x;
    v16 = v49.origin.y;
    v18 = v49.size.width;
    v20 = v49.size.height;
  }

  if ([WeakRetained _canShowIcon])
  {
    v25 = v14 + -33.0;
    v26 = v16 + -6.0;
    v27 = v18 + 45.0;
    v28 = v20 + 12.0;
  }

  else
  {
    v50.origin.x = v14;
    v50.origin.y = v16;
    v50.size.width = v18;
    v50.size.height = v20;
    v51 = CGRectInset(v50, -12.0, -6.0);
    v25 = v51.origin.x;
    v26 = v51.origin.y;
    v27 = v51.size.width;
    v28 = v51.size.height;
  }

  v29 = [v3 superview];
  [v29 convertRect:v3 fromView:{v25, v26, v27, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v3];
  v39 = [MEMORY[0x277D75860] effectWithPreview:v38];
  v40 = [MEMORY[0x277D49A08] isSolariumEnabled];
  v41 = MEMORY[0x277D75888];
  if (v40)
  {
    v52.origin.x = v31;
    v52.origin.y = v33;
    v52.size.width = v35;
    v52.size.height = v37;
    v42 = CGRectGetWidth(v52);
    v53.origin.x = v31;
    v53.origin.y = v33;
    v53.size.width = v35;
    v53.size.height = v37;
    [v41 shapeWithRoundedRect:v31 cornerRadius:{v33, v35, v37, fmin(v42, CGRectGetHeight(v53)) * 0.5}];
  }

  else
  {
    [MEMORY[0x277D75888] shapeWithRoundedRect:{v31, v33, v35, v37}];
  }
  v43 = ;
  v44 = [MEMORY[0x277D75890] styleWithEffect:v39 shape:v43];

  return v44;
}

- (BOOL)_canShowIcon
{
  faviconView = self->_faviconView;
  if (faviconView)
  {
    LOBYTE(faviconView) = !self->_hasLeadingEmoji;
  }

  return faviconView & 1;
}

- (void)_installFaviconView
{
  if (!self->_faviconView)
  {
    v3 = [objc_alloc(MEMORY[0x277D28C68]) initWithFrame:{0.0, 0.0, 18.0, 18.0}];
    faviconView = self->_faviconView;
    self->_faviconView = v3;

    [(SFFaviconView *)self->_faviconView setIconContentMode:1];
    [(SFFaviconView *)self->_faviconView setUserInteractionEnabled:0];
    [(BookmarksBarLabelButton *)self addSubview:self->_faviconView];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__BookmarksBarLabelButton__installFaviconView__block_invoke;
    v5[3] = &unk_2781D5598;
    objc_copyWeak(&v6, &location);
    [(SFFaviconView *)self->_faviconView setTrailingInsetChangeHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __46__BookmarksBarLabelButton__installFaviconView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)_handleLongPressGestureRecognizer:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    v4 = MEMORY[0x277D754C0];
    [v6 locationInView:self];
    v5 = [v4 configurationWithIdentifier:0 sourcePoint:?];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v5];
  }
}

- (void)_openInNewTabs:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksBarLabelButtonDidSelectOpenInNewTab:self];
  }
}

- (void)_editBookmark:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarksBarLabelButtonDidSelectEdit:self];
  }
}

- (void)_setIcon:(id)a3
{
  v5 = a3;
  if ([(BookmarksBarLabelButton *)self _canShowIcon])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(SFFaviconView *)self->_faviconView setIcon:v4];
}

- (void)_updateFaviconForURL:(id)a3
{
  v4 = a3;
  if (self->_faviconView)
  {
    v5 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:v4 iconSize:1 fallbackType:1 iconDownloadingEnabled:{16.0, 16.0}];
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__BookmarksBarLabelButton__updateFaviconForURL___block_invoke;
    v9[3] = &unk_2781D5D78;
    objc_copyWeak(&v10, &location);
    v7 = [v6 registerRequest:v5 priority:2 responseHandler:v9];
    faviconToken = self->_faviconToken;
    self->_faviconToken = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __48__BookmarksBarLabelButton__updateFaviconForURL___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 favicon];
    [WeakRetained _setIcon:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v12.receiver = self;
  v12.super_class = BookmarksBarLabelButton;
  [(BookmarksBarLabelButton *)&v12 sizeThatFits:a3.width, a3.height];
  v7 = v6;
  if (self->_buttonStyle == 1)
  {
    v8 = [(BookmarksBarLabelButton *)self imageForState:0];

    if (v8)
    {
      v9 = 25.0;
    }

    else
    {
      v9 = 21.0;
    }
  }

  else
  {
    v9 = v5;
    if ([(BookmarksBarLabelButton *)self _canShowIcon])
    {
      v9 = v9 + 21.0;
      if (width > 0.0)
      {
        v9 = fmax(width, v9);
      }
    }
  }

  v10 = v9;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setBookmark:(id)a3
{
  v5 = a3;
  if (self->_bookmark != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_bookmark, a3);
    v6 = [(WebBookmark *)self->_bookmark title];
    self->_hasLeadingEmoji = [(__CFString *)v6 safari_hasLeadingEmojiSafariIsRightToLeft:[(BookmarksBarLabelButton *)self _sf_usesLeftToRightLayout]^ 1];
    v7 = [(WebBookmark *)self->_bookmark showIconOnly];
    buttonStyle = self->_buttonStyle;
    if (v7)
    {
      if (buttonStyle != 2)
      {
        self->_buttonStyle = 1;
LABEL_6:
        if ([(WebBookmark *)self->_bookmark isFolder]&& !self->_hasLeadingEmoji)
        {
          self->_buttonStyle = 0;
        }

        else if (self->_buttonStyle == 1)
        {
          if (self->_hasLeadingEmoji)
          {
            v9 = [(__CFString *)v6 safari_leadingEmojiSafariIsRightToLeft:[(BookmarksBarLabelButton *)self _sf_usesLeftToRightLayout]^ 1];

            v6 = v9;
          }

          else
          {

            v6 = &stru_2827BF158;
          }
        }
      }
    }

    else if (buttonStyle == 1)
    {
      goto LABEL_6;
    }

    [(BookmarksBarLabelButton *)self setTitle:v6 forState:0];
    if ([(WebBookmark *)self->_bookmark isFolder])
    {
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
      [(BookmarksBarLabelButton *)self setImage:v10 forState:0];

      v11 = MEMORY[0x277D755D0];
      v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      v13 = [v11 configurationWithFont:v12 scale:1];
      [(BookmarksBarLabelButton *)self setPreferredSymbolConfiguration:v13 forImageInState:0];

      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"folder"];
      [(BookmarksBarLabelButton *)self _setIcon:v14];
    }

    else
    {
      v15 = [MEMORY[0x277D28F20] fallbackFavicon];
      [(BookmarksBarLabelButton *)self _setIcon:v15];

      v16 = objc_alloc(MEMORY[0x277CBEBC0]);
      v17 = [(WebBookmark *)self->_bookmark address];
      v14 = [v16 initWithString:v17];

      [(BookmarksBarLabelButton *)self _updateFaviconForURL:v14];
    }

    [(BookmarksBarLabelButton *)self setNeedsLayout];
    v5 = v18;
  }
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = BookmarksBarLabelButton;
  [(BookmarksBarLabelButton *)&v30 titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  if ([(BookmarksBarLabelButton *)self _canShowIcon])
  {
    [(SFFaviconView *)self->_faviconView frame];
    v9 = v8;
    [(SFFaviconView *)self->_faviconView frame];
    if (v7 >= v9)
    {
      v14 = v10;
      [(SFFaviconView *)self->_faviconView frame];
      v16 = (v7 - v15) * 0.5;
      [(SFFaviconView *)self->_faviconView frame];
      v18 = v17;
      [(SFFaviconView *)self->_faviconView frame];
      [(SFFaviconView *)self->_faviconView setFrame:v14, v16, v18];
      v12 = 0.0;
    }

    else
    {
      v12 = (v11 - v7) * 0.5;
    }

    [(SFFaviconView *)self->_faviconView trailingInset];
    v13 = 21.0 - v19;
    v20 = [(BookmarksBarLabelButton *)self imageForState:0];
    if (v20)
    {
      v21 = [(BookmarksBarLabelButton *)self _imageView];
      [v21 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v31.origin.x = v13;
    v31.origin.y = v12;
    v31.size.width = v5;
    v31.size.height = v7;
    Width = CGRectGetWidth(v31);
    [(BookmarksBarLabelButton *)self bounds];
    v25 = CGRectGetWidth(v32);
    v33.origin.x = v13;
    v33.origin.y = v12;
    v33.size.width = v5;
    v33.size.height = v7;
    v5 = fmin(Width, v25 - CGRectGetMinX(v33) - v23);
  }

  else
  {
    v13 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
  }

  v26 = v13;
  v27 = v12;
  v28 = v5;
  v29 = v7;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BookmarksBarLabelButton *)self titleRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v38.receiver = self;
  v38.super_class = BookmarksBarLabelButton;
  [(BookmarksBarLabelButton *)&v38 titleRectForContentRect:x, y, width, height];
  v35 = v17;
  v36 = v16;
  v33 = v19;
  v34 = v18;
  v37.receiver = self;
  v37.super_class = BookmarksBarLabelButton;
  [(BookmarksBarLabelButton *)&v37 imageRectForContentRect:x, y, width, height];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v39.origin.x = v9;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  CGRectGetMaxX(v39);
  _SFRoundFloatToPixels();
  v27 = v26;
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  MinY = CGRectGetMinY(v40);
  v41.origin.y = v35;
  v41.origin.x = v36;
  v41.size.height = v33;
  v41.size.width = v34;
  v29 = v21 + MinY - CGRectGetMinY(v41);
  v30 = v27;
  v31 = v23;
  v32 = v25;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

- (CGRect)_bookmarksBarLabelButtonHitRect
{
  [(BookmarksBarLabelButton *)self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  UIEdgeInsetsMin();
  v11 = v5 + v10;
  v14 = v7 - (v12 + v13);
  v16 = v9 - (v10 + v15);
  v17 = v3 + v12;
  v18 = v11;
  v19 = v14;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BookmarksBarLabelButton *)self _bookmarksBarLabelButtonHitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x277D75880];
  [(BookmarksBarLabelButton *)self _bookmarksBarLabelButtonHitRect:a3];

  return [v5 regionWithRect:@"BookmarksBarLabelButton" identifier:?];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v8 = [(BookmarksBarLabelButton *)self bookmark];
  v9 = [v7 bookmarkContainsLeafBookmark:v8];

  if (v9)
  {
    v10 = [(BookmarksBarLabelButton *)self bookmark];
    [v10 isFolder];
    v11 = SFOpenInNewTabTitle();

    v12 = MEMORY[0x277D75370];
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
    v14 = [v12 commandWithTitle:v11 image:v13 action:sel__openInNewTabs_ propertyList:0];

    [v14 setAccessibilityIdentifier:@"OpenInNewTab"];
    [v6 addObject:v14];
  }

  v15 = _WBSLocalizedString();
  v16 = MEMORY[0x277D75370];
  v17 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil"];
  v18 = [v16 commandWithTitle:v15 image:v17 action:sel__editBookmark_ propertyList:0];

  [v18 setAccessibilityIdentifier:@"Edit"];
  [v6 addObject:v18];
  v19 = [MEMORY[0x277D75710] menuWithChildren:v6];
  [v19 setAccessibilityIdentifier:@"SafariContextMenu"];

  return v19;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  [(BookmarksBarLabelButton *)self bounds:a3];
  if (self->_buttonStyle != 1)
  {
    goto LABEL_4;
  }

  if ([(BookmarksBarLabelButton *)self _canShowIcon])
  {
    [(SFFaviconView *)self->_faviconView bounds];
LABEL_4:
    v6 = v5;
    goto LABEL_6;
  }

  v7 = [(BookmarksBarLabelButton *)self titleLabel];
  [v7 bounds];
  v6 = v8;

LABEL_6:

  [(BookmarksBarLabelButton *)self convertRect:self fromView:0.0, 0.0, v6, 15.0];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)accessibilityIdentifier
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"Type";
  v3 = [(WebBookmark *)self->_bookmark isFolder];
  v4 = @"Bookmark";
  if (v3)
  {
    v4 = @"Folder";
  }

  v13[0] = v4;
  v12[1] = @"PerBookmarkShowTitle";
  v5 = [(WebBookmark *)self->_bookmark showIconOnly];
  v6 = @"true";
  if (v5)
  {
    v6 = @"false";
  }

  v13[1] = v6;
  v12[2] = @"ShowingIcon";
  v7 = [(BookmarksBarLabelButton *)self _canShowIcon];
  v8 = @"Emoji";
  if (v7)
  {
    v8 = @"Favicon";
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v10 = WBSMakeAccessibilityIdentifier();

  return v10;
}

- (BookmarksBarLabelButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)cursorRegionInset
{
  top = self->_cursorRegionInset.top;
  left = self->_cursorRegionInset.left;
  bottom = self->_cursorRegionInset.bottom;
  right = self->_cursorRegionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end