@interface TabBarItemView
- (BOOL)_hasRoomForIconAndCloseButton;
- (BOOL)_isHovering;
- (BOOL)_isHoveringOverCloseButton;
- (BOOL)_showsCloseButton;
- (BOOL)_showsParticipants;
- (BOOL)_showsUnreadIndicator;
- (CGRect)_closeButtonFrame;
- (CGRect)_titleBoundingBox;
- (CGRect)_titleBounds;
- (TabBarItemView)initWithTabBar:(id)a3;
- (double)_contentWidthIgnoringCollaborationViews;
- (id)accessibilityIdentifier;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_iconPosition;
- (int64_t)_physicalEdgeForLogicalEdge:(int64_t)a3;
- (void)_hover:(id)a3;
- (void)_layOutParticipantsView;
- (void)_layOutUnreadIndicator;
- (void)_layoutCloseButton;
- (void)_layoutEdges;
- (void)_layoutMediaStateIndicator;
- (void)_layoutTitleClipperView;
- (void)_layoutTitleLabel;
- (void)_layoutTitleLabelUsingCachedTruncation;
- (void)_showOrHideCloseButton;
- (void)_updateCloseButtonAlpha;
- (void)_updateCloseButtonEffect;
- (void)_updateCloseButtonImage;
- (void)_updateHighlightAlpha;
- (void)_updateIconViewVisibility;
- (void)_updateMediaStateButtonButtonAlpha;
- (void)_updateMediaStateIndicator;
- (void)_updateShowsParticipants;
- (void)_updateShowsUnreadIndicator;
- (void)configureForDragPreview;
- (void)setActive:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentOffset:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidesTitleText:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setIsPlaceholder:(BOOL)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setPinned:(BOOL)a3;
- (void)setShareParticipants:(id)a3;
- (void)setTitleAnchorAdditionalOffset:(double)a3;
- (void)setTitleLayoutWidth:(double)a3;
- (void)setTitleText:(id)a3;
- (void)setUnread:(BOOL)a3;
- (void)setVisibleEdge:(int64_t)a3;
- (void)updateTabBarStyle;
@end

@implementation TabBarItemView

- (int64_t)_physicalEdgeForLogicalEdge:(int64_t)a3
{
  if (a3 == 2)
  {
    if ([(TabBarItemView *)self _sf_usesLeftToRightLayout])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (a3 == 1)
  {
    if ([(TabBarItemView *)self _sf_usesLeftToRightLayout])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

- (CGRect)_titleBounds
{
  [(TabBarItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  titleLayoutWidth = v7;
  v10 = v9;
  if (self->_titleLayoutWidth != 0.0)
  {
    v11 = [(TabBarItemView *)self _physicalEdgeForLogicalEdge:self->_titleAnchorEdge];
    if (v11 == 2)
    {
      v4 = v4 - (self->_titleLayoutWidth - titleLayoutWidth);
      titleLayoutWidth = self->_titleLayoutWidth;
    }

    else if (v11 == 1)
    {
      titleLayoutWidth = self->_titleLayoutWidth;
    }
  }

  v12 = v4;
  v13 = v6;
  v14 = titleLayoutWidth;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_titleBoundingBox
{
  [(TabBarItemView *)self _titleBounds];
  height = v28.size.height;
  v29 = CGRectInset(v28, 12.0, 12.0);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  v7 = [(TabBarItemView *)self _sf_usesLeftToRightLayout];
  if ([(TabBarItemView *)self _showsCloseButton]|| self->_icon || _SFDeviceIsPad())
  {
    [(TabBarItemView *)self _closeButtonFrame];
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v7)
    {
      MaxX = CGRectGetMaxX(*&v8);
    }

    else
    {
      [(TabBarItemView *)self bounds];
      v27 = height;
      v17 = y;
      v18 = CGRectGetWidth(v30);
      v31.origin.x = v12;
      v31.origin.y = v13;
      v31.size.width = v14;
      v31.size.height = v15;
      MaxX = v18 - CGRectGetMinX(v31);
      y = v17;
      height = v27;
    }

    v19 = MaxX + -12.0;
    if (v7)
    {
      x = x + v19;
    }

    width = width - v19;
  }

  if (self->_mediaStateIcon)
  {
    [(UIButton *)self->_mediaStateMuteButton frame];
    if (!v7)
    {
      x = x + v20 + 6.0;
    }

    width = width - (v20 + 6.0);
  }

  if ([(TabBarItemView *)self _showsParticipants])
  {
    [(SFAvatarStackView *)self->_participantsView bounds];
    v21 = CGRectGetWidth(v32) + 6.0;
    if (!v7)
    {
      x = x + v21;
    }

    width = width - v21;
  }

  if ([(TabBarItemView *)self _showsUnreadIndicator])
  {
    [(SFUnreadIndicator *)self->_unreadIndicator bounds];
    v22 = CGRectGetWidth(v33) + 6.0;
    if (!v7)
    {
      x = x + v22;
    }

    width = width - v22;
  }

  v23 = height + -12.0;
  v24 = x;
  v25 = y;
  v26 = width;
  result.size.height = v23;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_layoutTitleLabel
{
  truncatedTitleText = self->_truncatedTitleText;
  self->_truncatedTitleText = 0;

  [(TabBarItemView *)self _layoutTitleLabelUsingCachedTruncation];
}

- (void)_layoutTitleLabelUsingCachedTruncation
{
  [(TabBarItemView *)self _titleBounds];
  v81 = v4;
  v83 = v3;
  v6 = v5;
  v8 = v7;
  [(TabBarItemView *)self _titleBoundingBox];
  v85 = v9;
  v80 = v10;
  v12 = v11;
  v14 = v13;
  v15 = +[TabIconAndTitleView defaultTabIconSize];
  rect_24 = v16;
  v17 = [(TabBarItemView *)self _iconPosition];
  v79 = v15;
  rect_16 = v15 + 4.0;
  if (v17 == 1)
  {
    v18 = v15 + 4.0;
  }

  else
  {
    v18 = 0.0;
  }

  if (!self->_truncatedTitleText)
  {
    v19 = [(UILabel *)self->_titleLabel font];
    *v87 = *MEMORY[0x277CBF3A8];
    WeakRetained = objc_loadWeakRetained(&self->_tabBar);
    v21 = [WeakRetained items];
    v22 = [v21 safari_mapObjectsUsingBlock:&__block_literal_global_53];

    v23 = MEMORY[0x277CBEB70];
    v24 = [v22 sortedArrayUsingComparator:&__block_literal_global_4_0];
    v25 = [v23 orderedSetWithArray:v24];

    v26 = [(NSString *)self->_titleText truncatedTitleWithFont:v19 desiredWidth:v87 truncatedSize:v25 sortedTabBarItemTitles:v12 - v18];
    truncatedTitleText = self->_truncatedTitleText;
    self->_truncatedTitleText = v26;

    [(NSString *)self->_truncatedTitleText _legacy_sizeWithFont:v19 constrainedToSize:4 lineBreakMode:v12 - v18, v14];
    self->_truncatedTitleTextSize.width = v28;
    self->_truncatedTitleTextSize.height = v29;
    v30 = v87[0];
    self->_titleWasTruncated = v87[0] > v12;
    [(UILabel *)self->_titleLabel setText:self->_truncatedTitleText, v30];
  }

  _SFCeilingFloatToPixels();
  v32 = v31;
  v72 = v8;
  _SFRoundFloatToPixels();
  v34 = v83 + v33;
  rect = v83 + v33;
  _SFRoundFloatToPixels();
  v74 = v6;
  v36 = v6 + v35;
  _SFCeilingFloatToPixels();
  v38 = v37;
  v39 = [(TabBarItemView *)self _sf_usesLeftToRightLayout];
  v88.origin.x = v34;
  v88.origin.y = v36;
  v88.size.width = v38;
  v88.size.height = v32;
  rect_8 = CGRectGetMinX(v88);
  v89.origin.x = v85;
  v89.origin.y = v80;
  v89.size.width = v12;
  v89.size.height = v14;
  MinX = CGRectGetMinX(v89);
  v90.origin.x = v85;
  v41 = v38;
  v90.origin.y = v80;
  v90.size.width = v12;
  v90.size.height = v14;
  MaxX = CGRectGetMaxX(v90);
  v91.origin.x = rect;
  v91.origin.y = v36;
  v91.size.width = v41;
  v86 = v32;
  v91.size.height = v32;
  v43 = fmax(MinX, fmin(MaxX - CGRectGetWidth(v91), rect_8));
  if (v17 == 3)
  {
    v44 = v79;
    v45 = v79 * 0.5 + 4.0;
    v46 = [(TabBarItemView *)self _sf_usesLeftToRightLayout];
    [(TabBarItemView *)self bounds];
    MidX = CGRectGetMidX(v92);
    if (v46)
    {
      v43 = v45 + MidX;
    }

    else
    {
      v48 = MidX - v45;
      v93.origin.x = v43;
      v93.origin.y = v36;
      v93.size.width = v41;
      v93.size.height = v32;
      v43 = v48 - CGRectGetWidth(v93);
    }
  }

  else
  {
    v44 = v79;
  }

  contentOffset = self->_contentOffset;
  v50 = [(TabBarItemView *)self _physicalEdgeForLogicalEdge:self->_titleAnchorEdge, v72];
  if (v50 == 2)
  {
    contentOffset = contentOffset - self->_titleAnchorAdditionalOffset;
  }

  else if (v50 == 1)
  {
    contentOffset = contentOffset + self->_titleAnchorAdditionalOffset;
  }

  if (v17 == 1)
  {
    v41 = v41 - rect_16;
  }

  if (((v17 == 1) & v39) != 0)
  {
    v51 = rect_16 + v43 + contentOffset;
  }

  else
  {
    v51 = v43 + contentOffset;
  }

  [(UIImageView *)self->_iconView setAlpha:(v17 != 0 && !self->_hidesTitleText)];
  [(UIImageView *)self->_iconView setBounds:0.0, 0.0, v44, rect_24];
  v52 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UIImageView *)self->_iconView setTintColor:v52];

  LODWORD(v52) = [(TabBarItemView *)self _hasRoomForIconAndCloseButton];
  [(TabBarItemView *)self bounds];
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  if (v52)
  {
    v94.origin.x = v51;
    v94.origin.y = v36;
    v94.size.width = v41;
    v94.size.height = v86;
    CGRectGetMidY(v94);
    if (v17 != 3)
    {
      v61 = v51;
      v62 = v36;
      v63 = v41;
      v64 = v86;
      if (v39)
      {
        CGRectGetMinX(*&v61);
      }

      else
      {
        CGRectGetMaxX(*&v61);
      }

      goto LABEL_30;
    }

LABEL_27:
    v98.origin.x = v57;
    v98.origin.y = v58;
    v98.size.width = v59;
    v98.size.height = v60;
    CGRectGetMidX(v98);
    goto LABEL_30;
  }

  CGRectGetMidY(*&v53);
  if (v17 == 3)
  {
    goto LABEL_27;
  }

  v95.size.height = v81;
  v95.origin.x = v83;
  v95.size.width = v73;
  v95.origin.y = v74;
  v96 = CGRectOffset(v95, contentOffset, 0.0);
  x = v96.origin.x;
  y = v96.origin.y;
  width = v96.size.width;
  height = v96.size.height;
  v67 = v51;
  v68 = v36;
  v69 = v41;
  v70 = v86;
  if (v39)
  {
    CGRectGetMinX(*&v67);
    v97.origin.x = x;
    v97.origin.y = y;
    v97.size.width = width;
    v97.size.height = height;
    CGRectGetMinX(v97);
  }

  else
  {
    CGRectGetMaxX(*&v67);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    CGRectGetMaxX(v99);
  }

LABEL_30:
  _SFRoundPointToPixels();
  [(UIImageView *)self->_iconView setCenter:?];
  _SFRoundRectToPixels();
  [(UILabel *)self->_titleLabel setFrame:?];
  v71 = 0.0;
  if (v17 != 3)
  {
    v71 = 1.0;
  }

  [(UILabel *)self->_titleLabel setAlpha:v71];
  [(TabBarItemView *)self _updateCloseButtonAlpha];
  [(TabBarItemView *)self _updateMediaStateButtonButtonAlpha];
}

uint64_t __56__TabBarItemView__layoutTitleLabelUsingCachedTruncation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = a2;
  v7 = [v6 compare:v5 options:{objc_msgSend(v4, "tabBarTitleTruncationCompareOptions")}];

  return v7;
}

- (BOOL)_hasRoomForIconAndCloseButton
{
  [(TabBarItemView *)self bounds];
  Width = CGRectGetWidth(v8);
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  [WeakRetained minimumTabWidth];
  v6 = Width > v5 + +[TabIconAndTitleView defaultTabIconSize]+ 4.0;

  return v6;
}

- (int64_t)_iconPosition
{
  if ([(TabBarItemView *)self _isPinnedAndNarrow])
  {
    return 3;
  }

  if (!self->_icon)
  {
    return 0;
  }

  if ([(TabBarItemView *)self _hasRoomForIconAndCloseButton])
  {
    return 1;
  }

  if (self->_icon && ![(TabBarItemView *)self _showsCloseButton])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_updateMediaStateIndicator
{
  mediaStateIcon = self->_mediaStateIcon;
  if (mediaStateIcon)
  {
    [(UIButton *)self->_mediaStateMuteButton setUserInteractionEnabled:(mediaStateIcon != 4) | self->_active];
    v4 = _SFImageForMediaStateIcon();
    v8 = [v4 imageWithRenderingMode:2];

    [(UIButton *)self->_mediaStateMuteButton setImage:v8 forState:0];
    v5 = [(UIButton *)self->_mediaStateMuteButton superview];

    if (!v5)
    {
      v6 = [(UIVisualEffectView *)self->_contentEffectsView contentView];
      [v6 addSubview:self->_mediaStateMuteButton];
    }

    [(TabBarItemView *)self _layoutMediaStateIndicator];
  }

  else
  {
    mediaStateMuteButton = self->_mediaStateMuteButton;

    [(UIButton *)mediaStateMuteButton removeFromSuperview];
  }
}

- (void)setHidesTitleText:(BOOL)a3
{
  self->_hidesTitleText = a3;
  [(UILabel *)self->_titleLabel setHidden:?];
  [(TabBarItemView *)self _updateIconViewVisibility];

  [(TabBarItemView *)self _showOrHideCloseButton];
}

- (void)_updateIconViewVisibility
{
  v3 = self->_hidesTitleText || [(TabBarItemView *)self _iconPosition]== 0;
  iconView = self->_iconView;

  [(UIImageView *)iconView setHidden:v3];
}

- (void)updateTabBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v4 = [WeakRetained tintStyle];

  v5 = [MEMORY[0x277D75D00] _sf_effectWithStyle:6 forBarTintStyle:v4];
  [(UIVisualEffectView *)self->_borderEffectsView setEffect:v5];

  if (self->_active)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  v7 = [MEMORY[0x277D75D00] _sf_effectWithStyle:v6 forBarTintStyle:v4];
  [(UIVisualEffectView *)self->_contentEffectsView setEffect:v7];

  if (!mediaStateIconColor_colorForLightBars)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.25 alpha:1.0];
    v9 = mediaStateIconColor_colorForLightBars;
    mediaStateIconColor_colorForLightBars = v8;
  }

  if (_SFIsDarkTintStyle())
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v10 = mediaStateIconColor_colorForLightBars;
  }

  v11 = v10;
  [(UIButton *)self->_mediaStateMuteButton setTintColor:v10];

  [(TabBarItemView *)self _updateCloseButtonEffect];
}

- (void)_layoutTitleClipperView
{
  [(TabBarItemView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  _SFOnePixel();
  v10 = v9;
  v11 = [(TabBarItemView *)self _physicalEdgeForLogicalEdge:self->_visibleEdge];
  v12 = width - v10;
  v13 = x + v10;
  v14 = MidX + v10 * 0.5;
  if (v11 == 1)
  {
    v15 = width - v10;
  }

  else
  {
    v13 = x;
    v14 = MidX;
    v15 = width;
  }

  if (v11 == 2)
  {
    v16 = MidX + v10 * -0.5;
  }

  else
  {
    x = v13;
    v16 = v14;
  }

  if (v11 == 2)
  {
    v17 = v12;
  }

  else
  {
    v17 = v15;
  }

  [(UIView *)self->_titleClipperView setBounds:x, y, v17, height, y, v15];
  [(UIView *)self->_titleClipperView setPosition:v16, MidY];
  [(UIView *)self->_iconClipperView setBounds:x, y, v17, height];
  iconClipperView = self->_iconClipperView;

  [(UIView *)iconClipperView setPosition:v16, MidY];
}

- (void)_layoutEdges
{
  [(TabBarItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TabBarItemView *)self _physicalEdgeForLogicalEdge:self->_visibleEdge];
  if (v11)
  {
    v12 = v11;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    if (!CGRectEqualToRect(v23, *MEMORY[0x277CBF3A0]))
    {
      _SFOnePixel();
      v15 = v14;
      v16 = 0.0;
      if (v12 != 1)
      {
        v24.origin.x = v4;
        v24.origin.y = v6;
        v24.size.width = v8;
        v24.size.height = v10;
        v16 = CGRectGetMaxX(v24) - v15;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __30__TabBarItemView__layoutEdges__block_invoke;
      aBlock[3] = &unk_2781D9738;
      aBlock[4] = self;
      *&aBlock[5] = v16;
      *&aBlock[6] = v15;
      *&aBlock[7] = v4;
      *&aBlock[8] = v6;
      *&aBlock[9] = v8;
      *&aBlock[10] = v10;
      v17 = _Block_copy(aBlock);
      [(UIVisualEffectView *)self->_borderEffectsView frame];
      MinX = CGRectGetMinX(v25);
      if (MinX != 0.0 && v16 != 0.0 && MinX != v16)
      {
        WeakRetained = objc_loadWeakRetained(&self->_tabBar);
        if ([WeakRetained isDraggingItem])
        {
        }

        else
        {
          v20 = [(UIVisualEffectView *)self->_borderEffectsView isHidden];

          if ((v20 & 1) == 0)
          {
            v17[2](v17);
            goto LABEL_15;
          }
        }
      }

      [MEMORY[0x277D75D18] performWithoutAnimation:v17];
LABEL_15:

      return;
    }
  }

  borderEffectsView = self->_borderEffectsView;

  [(UIVisualEffectView *)borderEffectsView setHidden:1];
}

uint64_t __30__TabBarItemView__layoutEdges__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setHidden:0];
  CGRectGetHeight(*(a1 + 56));
  _SFRoundRectToPixels();
  v2 = *(*(a1 + 32) + 416);

  return [v2 setFrame:?];
}

- (void)_layoutCloseButton
{
  [(TabBarItemView *)self _closeButtonFrame];
  v9 = CGRectOffset(v8, self->_contentOffset, 0.0);
  [(UIButton *)self->_closeButton setFrame:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
  [(UIImageView *)self->_closeButtonImageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(UIVisualEffectView *)self->_closeButtonEffectsView setBounds:0.0, 0.0, v3, v4];
  [(UIButton *)self->_closeButton bounds];
  Height = CGRectGetHeight(v10);
  [(UIVisualEffectView *)self->_closeButtonEffectsView setCenter:Height * 0.5, Height * 0.5];
  [(UIVisualEffectView *)self->_closeButtonEffectsView frame];
  _SFRoundRectToPixels();
  [(UIVisualEffectView *)self->_closeButtonEffectsView setFrame:?];
  [(UIVisualEffectView *)self->_closeButtonEffectsView bounds];
  closeButtonImageView = self->_closeButtonImageView;

  [(UIImageView *)closeButtonImageView setFrame:?];
}

- (CGRect)_closeButtonFrame
{
  [(TabBarItemView *)self bounds];
  [(TabBarItemView *)self _sf_usesLeftToRightLayout];

  _SFRoundRectToPixels();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_layoutMediaStateIndicator
{
  v3 = [(UIButton *)self->_mediaStateMuteButton superview];

  if (v3)
  {
    [(TabBarItemView *)self bounds];
    [(TabBarItemView *)self _sf_usesLeftToRightLayout];
    v4 = [(UIButton *)self->_mediaStateMuteButton imageForState:0];
    [v4 size];

    _SFRoundRectToPixels();
    mediaStateMuteButton = self->_mediaStateMuteButton;

    [(UIButton *)mediaStateMuteButton setFrame:?];
  }
}

- (void)_updateMediaStateButtonButtonAlpha
{
  [(TabBarItemView *)self bounds];
  v3 = 0.0;
  if (CGRectGetWidth(v6) >= self->_titleLayoutWidth)
  {
    v3 = ([(TabBarItemView *)self _isPinnedAndNarrow]^ 1);
  }

  [(UIButton *)self->_mediaStateMuteButton alpha];
  if (v4 != v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__TabBarItemView__updateMediaStateButtonButtonAlpha__block_invoke;
    v5[3] = &unk_2781D78C8;
    v5[4] = self;
    *&v5[5] = v3;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
  }
}

- (void)_layOutUnreadIndicator
{
  [(TabBarItemView *)self _titleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFUnreadIndicator *)self->_unreadIndicator intrinsicContentSize];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetHeight(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  Width = CGRectGetWidth(v17);
  if (self->_mediaStateIcon)
  {
    [(UIButton *)self->_mediaStateMuteButton bounds];
    Width = CGRectGetWidth(v18);
    v12 = 6.0;
  }

  v13 = [(TabBarItemView *)self shareParticipants:Width];
  if ([v13 count])
  {
    [(SFAvatarStackView *)self->_participantsView bounds];
    CGRectGetWidth(v19);
  }

  [(TabBarItemView *)self _sf_usesLeftToRightLayout];
  _SFFlipRectInCoordinateSpace();
  _SFRoundRectToPixels();
  unreadIndicator = self->_unreadIndicator;

  [(SFUnreadIndicator *)unreadIndicator ss_setUntransformedFrame:?];
}

- (void)_updateShowsUnreadIndicator
{
  v3 = [(TabBarItemView *)self _showsUnreadIndicator];
  v4 = v3 ^ [(SFUnreadIndicator *)self->_unreadIndicator isHidden];
  if (v3 && [(SFUnreadIndicator *)self->_unreadIndicator isHidden])
  {
    [(SFUnreadIndicator *)self->_unreadIndicator setHidden:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke;
    v9[3] = &unk_2781D4D40;
    v9[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v9];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke_2;
  v7[3] = &unk_2781D51B8;
  v7[4] = self;
  v8 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke_3;
  v6[3] = &unk_2781D4B18;
  v6[4] = self;
  [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:50331648 animations:v7 completion:v6];
  if ((v4 & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke_4;
    v5[3] = &unk_2781D4D40;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }
}

uint64_t __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.5, 0.5);
  v2 = *(*(a1 + 32) + 544);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) _layOutUnreadIndicator];
}

uint64_t __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke_2(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  [*(*(a1 + 32) + 544) setAlpha:*&a2];
  v3 = 0.5;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  CGAffineTransformMakeScale(&v7, v3, v3);
  v4 = *(*(a1 + 32) + 544);
  v6 = v7;
  return [v4 setTransform:&v6];
}

uint64_t __45__TabBarItemView__updateShowsUnreadIndicator__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _showsUnreadIndicator] ^ 1;
  v3 = *(*(a1 + 32) + 544);

  return [v3 setHidden:v2];
}

- (BOOL)_showsUnreadIndicator
{
  if ([(TabBarItemView *)self _isPinnedAndNarrow]|| !self->_unread)
  {
    return 0;
  }

  [(TabBarItemView *)self _contentWidthIgnoringCollaborationViews];
  v4 = v3;
  v5 = [(TabBarItemView *)self shareParticipants];
  if ([v5 count])
  {
    [(SFAvatarStackView *)self->_participantsView sizeForParticipantCount:[(NSArray *)self->_shareParticipants count]];
    v7 = v6 + 6.0;
  }

  else
  {
    v7 = 0.0;
  }

  v9 = v4 + v7;
  [(SFUnreadIndicator *)self->_unreadIndicator intrinsicContentSize];
  v11 = v9 + v10 + 6.0;

  return self->_titleLayoutWidth >= v11;
}

- (void)_layOutParticipantsView
{
  [(TabBarItemView *)self _titleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFAvatarStackView *)self->_participantsView intrinsicContentSize];
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  CGRectGetHeight(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetWidth(v14);
  if (self->_mediaStateIcon)
  {
    [(UIButton *)self->_mediaStateMuteButton bounds];
    CGRectGetWidth(v15);
  }

  [(TabBarItemView *)self _sf_usesLeftToRightLayout];
  _SFFlipRectInCoordinateSpace();
  _SFRoundRectToPixels();
  participantsView = self->_participantsView;

  [(SFAvatarStackView *)participantsView setFrame:?];
}

- (void)_updateShowsParticipants
{
  v3 = [(TabBarItemView *)self _showsParticipants];
  if (v3)
  {
    shareParticipants = self->_shareParticipants;
  }

  else
  {
    shareParticipants = MEMORY[0x277CBEBF8];
  }

  v5 = shareParticipants;
  if (v3 == [(SFAvatarStackView *)self->_participantsView isHidden])
  {
    v8 = 1;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = [(SFAvatarStackView *)self->_participantsView shareParticipants];
  v7 = [v6 count];
  v8 = v7 != [(NSArray *)v5 count];

  if (v3)
  {
LABEL_8:
    [(SFAvatarStackView *)self->_participantsView setHidden:0];
  }

LABEL_9:
  [(SFAvatarStackView *)self->_participantsView setShareParticipants:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__TabBarItemView__updateShowsParticipants__block_invoke;
  v11[3] = &unk_2781D4D40;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__TabBarItemView__updateShowsParticipants__block_invoke_2;
  v10[3] = &unk_2781D4B18;
  v10[4] = self;
  [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:1 animations:v11 completion:v10];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__TabBarItemView__updateShowsParticipants__block_invoke_3;
    v9[3] = &unk_2781D4D40;
    v9[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v9];
  }
}

uint64_t __42__TabBarItemView__updateShowsParticipants__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layOutParticipantsView];
  [*(a1 + 32) _layOutUnreadIndicator];
  v2 = *(*(a1 + 32) + 536);

  return [v2 layoutIfNeeded];
}

uint64_t __42__TabBarItemView__updateShowsParticipants__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _showsParticipants] ^ 1;
  v3 = *(*(a1 + 32) + 536);

  return [v3 setHidden:v2];
}

- (BOOL)_showsParticipants
{
  if ([(TabBarItemView *)self _isPinnedAndNarrow])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(NSArray *)self->_shareParticipants count];
    if (v3)
    {
      [(TabBarItemView *)self _contentWidthIgnoringCollaborationViews];
      v5 = v4;
      [(SFAvatarStackView *)self->_participantsView sizeForParticipantCount:[(NSArray *)self->_shareParticipants count]];
      LOBYTE(v3) = self->_titleLayoutWidth >= v5 + v6 + 6.0;
    }
  }

  return v3;
}

- (double)_contentWidthIgnoringCollaborationViews
{
  [(TabBarItemView *)self _closeButtonFrame];
  Width = CGRectGetWidth(v7);
  if (minimumTitleWidth_onceToken != -1)
  {
    [TabBarItemView _contentWidthIgnoringCollaborationViews];
  }

  v4 = *&minimumTitleWidth_minimumTitleWidth;
  if (self->_mediaStateIcon)
  {
    [(UIButton *)self->_mediaStateMuteButton bounds];
    v5 = CGRectGetWidth(v8) + 6.0;
  }

  else
  {
    v5 = 0.0;
  }

  return Width + 4.0 + v4 + v5;
}

- (TabBarItemView)initWithTabBar:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = TabBarItemView;
  v5 = [(TabBarItemView *)&v54 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    objc_initWeak(&location, v5);
    objc_storeWeak(&v5->_tabBar, v4);
    v6 = [(TabBarItemView *)v5 layer];
    [v6 setAllowsGroupBlending:0];

    v7 = objc_alloc_init(MEMORY[0x277D75220]);
    closeButton = v5->_closeButton;
    v5->_closeButton = v7;

    [(UIButton *)v5->_closeButton setAccessibilityIdentifier:@"CloseTabBarItemButton"];
    [(UIButton *)v5->_closeButton setAlpha:0.0];
    v49 = [MEMORY[0x277D755D0] _sf_staticConfigurationWithTextStyle:*MEMORY[0x277D76918] scale:1];
    v48 = v4;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __33__TabBarItemView_initWithTabBar___block_invoke;
    v51[3] = &unk_2781D5D50;
    objc_copyWeak(&v52, &location);
    [(UIButton *)v5->_closeButton setPointerStyleProvider:v51];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = [MEMORY[0x277D755B8] imageNamed:@"xmark.noshape"];
    v11 = [v9 initWithImage:v10];
    closeButtonImageView = v5->_closeButtonImageView;
    v5->_closeButtonImageView = v11;

    [(UIImageView *)v5->_closeButtonImageView setPreferredSymbolConfiguration:v49];
    v13 = objc_alloc_init(MEMORY[0x277D75220]);
    mediaStateMuteButton = v5->_mediaStateMuteButton;
    v5->_mediaStateMuteButton = v13;

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v15;

    v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    [(UILabel *)v5->_titleLabel setFont:v17];

    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [MEMORY[0x277D28F20] fallbackFavicon];
    v20 = [v18 initWithImage:v19];
    iconView = v5->_iconView;
    v5->_iconView = v20;

    [(UIImageView *)v5->_iconView setContentMode:1];
    v22 = objc_alloc_init(MEMORY[0x277D28EB0]);
    unreadIndicator = v5->_unreadIndicator;
    v5->_unreadIndicator = v22;

    [(SFUnreadIndicator *)v5->_unreadIndicator setHidden:1];
    v24 = [MEMORY[0x277D75348] systemBlueColor];
    [(SFUnreadIndicator *)v5->_unreadIndicator setTintColor:v24];

    v25 = objc_alloc_init(MEMORY[0x277D28BC8]);
    participantsView = v5->_participantsView;
    v5->_participantsView = v25;

    [(SFAvatarStackView *)v5->_participantsView setHidden:1];
    v27 = objc_alloc_init(MEMORY[0x277D75D18]);
    titleClipperView = v5->_titleClipperView;
    v5->_titleClipperView = v27;

    [(UIView *)v5->_titleClipperView setClipsToBounds:1];
    [(UIView *)v5->_titleClipperView addSubview:v5->_titleLabel];
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"TabBarItemView.content.%p", v48];
    v29 = objc_alloc_init(MEMORY[0x277D75D68]);
    borderEffectsView = v5->_borderEffectsView;
    v5->_borderEffectsView = v29;

    v31 = [MEMORY[0x277D75348] blackColor];
    v32 = [(UIVisualEffectView *)v5->_borderEffectsView contentView];
    [v32 setBackgroundColor:v31];

    [(UIVisualEffectView *)v5->_borderEffectsView _setGroupName:v50];
    [(TabBarItemView *)v5 addSubview:v5->_borderEffectsView];
    v33 = objc_alloc_init(MEMORY[0x277D75D68]);
    contentEffectsView = v5->_contentEffectsView;
    v5->_contentEffectsView = v33;

    [(TabBarItemView *)v5 bounds];
    [(UIVisualEffectView *)v5->_contentEffectsView setFrame:?];
    [(UIVisualEffectView *)v5->_contentEffectsView setAutoresizingMask:18];
    [(UIVisualEffectView *)v5->_contentEffectsView _setGroupName:v50];
    [(TabBarItemView *)v5 addSubview:v5->_contentEffectsView];
    v35 = objc_alloc_init(MEMORY[0x277D75D68]);
    closeButtonEffectsView = v5->_closeButtonEffectsView;
    v5->_closeButtonEffectsView = v35;

    [(UIVisualEffectView *)v5->_closeButtonEffectsView _setGroupName:v50];
    [(UIVisualEffectView *)v5->_closeButtonEffectsView setUserInteractionEnabled:0];
    v37 = [(UIVisualEffectView *)v5->_closeButtonEffectsView contentView];
    [v37 addSubview:v5->_closeButtonImageView];

    [(UIButton *)v5->_closeButton addSubview:v5->_closeButtonEffectsView];
    [(TabBarItemView *)v5 addSubview:v5->_closeButton];
    v38 = [(UIVisualEffectView *)v5->_contentEffectsView contentView];
    [v38 addSubview:v5->_titleClipperView];

    v39 = objc_alloc_init(MEMORY[0x277D75D18]);
    iconClipperView = v5->_iconClipperView;
    v5->_iconClipperView = v39;

    [(UIView *)v5->_iconClipperView setClipsToBounds:1];
    [(UIView *)v5->_iconClipperView setUserInteractionEnabled:0];
    [(UIView *)v5->_iconClipperView addSubview:v5->_iconView];
    [(UIView *)v5->_iconClipperView addSubview:v5->_unreadIndicator];
    [(UIView *)v5->_iconClipperView addSubview:v5->_participantsView];
    [(TabBarItemView *)v5 addSubview:v5->_iconClipperView];
    [(TabBarItemView *)v5 _layoutEdges];
    [(TabBarItemView *)v5 _layoutTitleClipperView];
    [(TabBarItemView *)v5 _layoutTitleLabel];
    [(TabBarItemView *)v5 updateTabBarStyle];
    v41 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v5 action:sel__hover_];
    hoverRecognizer = v5->_hoverRecognizer;
    v5->_hoverRecognizer = v41;

    [(TabBarItemView *)v5 addGestureRecognizer:v5->_hoverRecognizer];
    v43 = objc_alloc(MEMORY[0x277D75D18]);
    [(TabBarItemView *)v5 bounds];
    v44 = [v43 initWithFrame:?];
    highlightView = v5->_highlightView;
    v5->_highlightView = v44;

    [(UIView *)v5->_highlightView setAutoresizingMask:18];
    v46 = [MEMORY[0x277D75348] sf_separateTabBarHighlightColor];
    [(UIView *)v5->_highlightView setBackgroundColor:v46];

    [(UIView *)v5->_highlightView setAlpha:0.0];
    [(UIView *)v5->_highlightView setUserInteractionEnabled:0];
    [(TabBarItemView *)v5 insertSubview:v5->_highlightView atIndex:0];

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
    v4 = v48;
  }

  return v5;
}

id __33__TabBarItemView_initWithTabBar___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[53];
    v11 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v10];
    if ([v9 isActive])
    {
      v12 = [MEMORY[0x277D75878] effectWithPreview:v11];
      v13 = MEMORY[0x277D75888];
      [v10 frame];
      [v13 shapeWithRoundedRect:?];
    }

    else
    {
      [v10 frame];
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      v19 = CGRectGetWidth(v30) + 8.0;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v20 = fmax(fmax(v19, CGRectGetHeight(v31) + 8.0), 16.0);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v21 = fmin((CGRectGetWidth(v32) - v20) * 0.5, 0.0);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v22 = fmin((CGRectGetHeight(v33) - v20) * 0.5, 0.0);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v35 = CGRectInset(v34, v21, v22);
      v23 = v35.origin.x;
      v24 = v35.origin.y;
      v25 = v35.size.width;
      v26 = v35.size.height;
      v12 = [MEMORY[0x277D75858] effectWithPreview:v11];
      [MEMORY[0x277D75888] shapeWithRoundedRect:v23 cornerRadius:{v24, v25, v26, 3.0}];
    }
    v27 = ;
    v14 = [MEMORY[0x277D75890] styleWithEffect:v12 shape:v27];
  }

  else
  {
    v14 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v7];
  }

  return v14;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(TabBarItemView *)self bounds];
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v15, v14))
  {
    v12.receiver = self;
    v12.super_class = TabBarItemView;
    v8 = [(TabBarItemView *)&v12 hitTest:v7 withEvent:x, y];
    v9 = v8;
    if (v8 == self)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TabBarItemView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = TabBarItemView;
  [(TabBarItemView *)&v20 setBounds:x, y, width, height];
  [(TabBarItemView *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(TabBarItemView *)self _layoutCloseButton];
    [(TabBarItemView *)self _layoutEdges];
    [(TabBarItemView *)self _layoutTitleClipperView];
    [(TabBarItemView *)self _layoutMediaStateIndicator];
    [(TabBarItemView *)self _updateShowsParticipants];
    [(TabBarItemView *)self _updateShowsUnreadIndicator];
    if ([(TabBarItemView *)self _canUseCachedTitleTruncationOnBoundsChange])
    {
      [(TabBarItemView *)self _layoutTitleLabelUsingCachedTruncation];
    }

    else
    {
      [(TabBarItemView *)self _layoutTitleLabel];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TabBarItemView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = TabBarItemView;
  [(TabBarItemView *)&v20 setFrame:x, y, width, height];
  [(TabBarItemView *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(TabBarItemView *)self _layoutCloseButton];
    [(TabBarItemView *)self _layoutEdges];
    [(TabBarItemView *)self _layoutTitleClipperView];
    [(TabBarItemView *)self _layoutMediaStateIndicator];
    [(TabBarItemView *)self _updateShowsParticipants];
    [(TabBarItemView *)self _updateShowsUnreadIndicator];
    if ([(TabBarItemView *)self _canUseCachedTitleTruncationOnBoundsChange])
    {
      [(TabBarItemView *)self _layoutTitleLabelUsingCachedTruncation];
    }

    else
    {
      [(TabBarItemView *)self _layoutTitleLabel];
    }
  }
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleText != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      titleText = self->_titleText;
      self->_titleText = v7;

      [(TabBarItemView *)self _layoutTitleLabel];
      v5 = v9;
    }
  }
}

- (void)setVisibleEdge:(int64_t)a3
{
  if (self->_visibleEdge != a3)
  {
    self->_visibleEdge = a3;
    [(TabBarItemView *)self _layoutEdges];

    [(TabBarItemView *)self _layoutTitleClipperView];
  }
}

- (void)setTitleLayoutWidth:(double)a3
{
  if (self->_titleLayoutWidth != a3)
  {
    self->_titleLayoutWidth = a3;
    truncatedTitleText = self->_truncatedTitleText;
    self->_truncatedTitleText = 0;

    [(TabBarItemView *)self _updateIconViewVisibility];
  }
}

- (void)setTitleAnchorAdditionalOffset:(double)a3
{
  if (self->_titleAnchorAdditionalOffset != a3)
  {
    self->_titleAnchorAdditionalOffset = a3;
    [(TabBarItemView *)self setNeedsLayout];
  }
}

- (void)setContentOffset:(double)a3
{
  if (self->_contentOffset != a3)
  {
    self->_contentOffset = a3;
    [(TabBarItemView *)self setNeedsLayout];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_active = a3;
    [(TabBarItemView *)self setClipsToBounds:?];
    WeakRetained = objc_loadWeakRetained(&self->_tabBar);

    if (WeakRetained)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __28__TabBarItemView_setActive___block_invoke;
      v7[3] = &unk_2781D4D40;
      v7[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v7];
      [(UIButton *)self->_closeButton setPointerInteractionEnabled:0];
      [(UIButton *)self->_closeButton setPointerInteractionEnabled:1];
    }
  }
}

uint64_t __28__TabBarItemView_setActive___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateHighlightAlpha];
  [*(a1 + 32) _updateCloseButtonImage];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));
  v3 = [WeakRetained tintStyle];

  if (*(*(a1 + 32) + 552))
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  v5 = [MEMORY[0x277D75D00] _sf_effectWithStyle:v4 forBarTintStyle:v3];
  [*(*(a1 + 32) + 408) setEffect:v5];

  [*(a1 + 32) _showOrHideCloseButton];
  v6 = *(a1 + 32);

  return [v6 _updateMediaStateIndicator];
}

- (void)setIsPlaceholder:(BOOL)a3
{
  if (self->_isPlaceholder != a3)
  {
    self->_isPlaceholder = a3;
    [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:!a3];
  }
}

- (void)_showOrHideCloseButton
{
  [(TabBarItemView *)self _layoutTitleLabel];
  [(TabBarItemView *)self _layoutEdges];
  [(TabBarItemView *)self _layoutCloseButton];
  [(TabBarItemView *)self _updateCloseButtonAlpha];

  [(TabBarItemView *)self _updateIconViewVisibility];
}

- (void)_updateCloseButtonAlpha
{
  [(TabBarItemView *)self bounds];
  v4 = v3;
  [(UILabel *)self->_titleLabel frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(TabBarItemView *)self _sf_usesLeftToRightLayout])
  {
    v13 = v6 + 1.0 - v4;
  }

  else
  {
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    v13 = -1.0 - CGRectGetMaxX(v17);
  }

  v14 = 0.0;
  if (v13 <= 0.0)
  {
    v14 = [(TabBarItemView *)self _showsCloseButton];
  }

  [(UIButton *)self->_closeButton alpha];
  if (v15 != v14)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__TabBarItemView__updateCloseButtonAlpha__block_invoke;
    v16[3] = &unk_2781D78C8;
    v16[4] = self;
    *&v16[5] = v14;
    [MEMORY[0x277D75D18] animateWithDuration:v16 animations:0.2];
  }
}

- (void)_updateCloseButtonImage
{
  if (self->_pinned)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = @"pin.fill";
LABEL_5:
    v6 = [v3 systemImageNamed:v4];
    goto LABEL_7;
  }

  active = self->_active;
  v3 = MEMORY[0x277D755B8];
  if (active)
  {
    v4 = @"xmark.square.fill";
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D755B8] imageNamed:@"xmark.noshape"];
LABEL_7:
  v7 = v6;
  [(UIImageView *)self->_closeButtonImageView setImage:v6];
}

- (void)_updateCloseButtonEffect
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v4 = [WeakRetained tintStyle];

  if (v4)
  {
    if (self->_pinned)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }

    v6 = [MEMORY[0x277D75D00] _sf_effectWithStyle:v5 forBarTintStyle:v4];
    [(UIVisualEffectView *)self->_closeButtonEffectsView setEffect:v6];
  }
}

- (BOOL)_showsCloseButton
{
  if (self->_pinned && !self->_hidesTitleText)
  {
    return ![(TabBarItemView *)self _isPinnedAndNarrow];
  }

  else
  {
    return [(TabBarItemView *)self _isHovering]|| self->_active;
  }
}

- (void)_hover:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__TabBarItemView__hover___block_invoke;
  v5[3] = &unk_2781D4D40;
  v5[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__TabBarItemView__hover___block_invoke_2;
  v4[3] = &unk_2781D4D40;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v4 options:0 animations:0.2 completion:0.0];
}

uint64_t __25__TabBarItemView__hover___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateHighlightAlpha];
  v2 = *(a1 + 32);

  return [v2 _showOrHideCloseButton];
}

- (BOOL)_isHovering
{
  if (([(UIHoverGestureRecognizer *)self->_hoverRecognizer state]- 1) > 1)
  {
    return 0;
  }

  [(TabBarItemView *)self bounds];
  return CGRectGetWidth(v4) >= self->_titleLayoutWidth;
}

- (BOOL)_isHoveringOverCloseButton
{
  v3 = [(TabBarItemView *)self _isHovering];
  if (v3)
  {
    [(UIButton *)self->_closeButton bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIHoverGestureRecognizer *)self->_hoverRecognizer locationInView:self->_closeButton];
    v13 = v12;
    v15 = v14;
    v16 = v5;
    v17 = v7;
    v18 = v9;
    v19 = v11;

    LOBYTE(v3) = CGRectContainsPoint(*&v16, *&v13);
  }

  return v3;
}

- (void)_updateHighlightAlpha
{
  v3 = 0.0;
  if (!self->_active)
  {
    v3 = [(TabBarItemView *)self _isHovering];
  }

  highlightView = self->_highlightView;

  [(UIView *)highlightView setAlpha:v3];
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  if (self->_icon != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_icon, a3);
    if (self->_icon)
    {
      [(UIImageView *)self->_iconView setImage:?];
    }

    else
    {
      v6 = [MEMORY[0x277D28F20] fallbackFavicon];
      [(UIImageView *)self->_iconView setImage:v6];
    }

    [(TabBarItemView *)self _layoutTitleLabel];
    [(TabBarItemView *)self _updateIconViewVisibility];
    v5 = v7;
  }
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  if (self->_mediaStateIcon != a3)
  {
    self->_mediaStateIcon = a3;
    [(TabBarItemView *)self _updateMediaStateIndicator];
    [(TabBarItemView *)self _updateShowsParticipants];
    [(TabBarItemView *)self _updateShowsUnreadIndicator];

    [(TabBarItemView *)self _layoutTitleLabel];
  }
}

- (void)setPinned:(BOOL)a3
{
  if (self->_pinned != a3)
  {
    self->_pinned = a3;
    [(UIButton *)self->_closeButton setEnabled:!a3];
    [(TabBarItemView *)self _updateCloseButtonImage];
    [(TabBarItemView *)self _updateCloseButtonEffect];
    [(TabBarItemView *)self _updateCloseButtonAlpha];
    [(TabBarItemView *)self _layoutCloseButton];

    [(TabBarItemView *)self setNeedsLayout];
  }
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    self->_unread = a3;
    [(TabBarItemView *)self _updateShowsUnreadIndicator];
  }
}

- (void)setShareParticipants:(id)a3
{
  v8 = a3;
  v4 = [(TabBarItemView *)self shareParticipants];
  v5 = [v4 isEqualToArray:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v6;

    [(TabBarItemView *)self _updateShowsUnreadIndicator];
    [(TabBarItemView *)self _updateShowsParticipants];
  }
}

- (void)configureForDragPreview
{
  [(TabBarItemView *)self _updateIconViewVisibility];
  [(UIVisualEffectView *)self->_contentEffectsView setEffect:0];
  if (self->_active)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v3 = ;
  [(UILabel *)self->_titleLabel setColor:v3];

  [(UIVisualEffectView *)self->_closeButtonEffectsView setEffect:0];
  v4 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UIButton *)self->_closeButton setTintColor:v4];

  [(TabBarItemView *)self _showOrHideCloseButton];
  self->_titleAnchorEdge = 0;
  [(TabBarItemView *)self setNeedsLayout];

  [(TabBarItemView *)self layoutIfNeeded];
}

- (id)accessibilityIdentifier
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = !self->_active;
  v8[0] = @"isActive";
  v8[1] = @"isPinned";
  if (v2)
  {
    v3 = @"false";
  }

  else
  {
    v3 = @"true";
  }

  if (self->_pinned)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = WBSMakeAccessibilityIdentifier();

  return v6;
}

@end