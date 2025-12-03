@interface CKNavigationBarCanvasView
- (BOOL)_canShowAvatarView;
- (CGRect)_calculateFrameForButton:(id)button shouldOffset:(BOOL)offset;
- (CGSize)_baseBarItemViewSizeForView:(id)view proposedSize:(CGSize)size minSize:(double)minSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKNavigationBarCanvasView)initWithFrame:(CGRect)frame;
- (CKNavigationBarCanvasViewDelegate)delegate;
- (UIEdgeInsets)safeAreaInsets;
- (UIEdgeInsets)systemMinimumLayoutMarginsFromDelegate;
- (double)_calculateYOriginForButtonWithHeight:(double)height;
- (double)_preferredHeightFromSubviewMetrics;
- (double)_preferredHeightWithSubviewLayout:(id)layout;
- (double)_updatedPreferredHeight;
- (id)_subviewLayoutWithBounds:(CGRect)bounds;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addLaserEffectToButton:(id)button;
- (void)_updateJoinButtonStyle;
- (void)clearAllItemViews;
- (void)didHoverOverTitleView:(id)view;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)layoutTitleViewIfNeeded:(CGRect)needed;
- (void)removeButtonViewsIfNeeded;
- (void)removeFromSuperview;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setIsBusinessChat:(BOOL)chat;
- (void)setIsInEditingMode:(BOOL)mode;
- (void)setJoinButtonStyle:(int64_t)style;
- (void)setLeftItemView:(id)view;
- (void)setMultiwayAudioButtonHidden:(BOOL)hidden;
- (void)setRightItemView:(id)view;
- (void)setStatusIndicatorType:(int64_t)type;
- (void)setSubtitleView:(id)view;
- (void)setTitleView:(id)view;
- (void)setTitleViewContextMenu:(id)menu;
- (void)setVideoEnabled:(BOOL)enabled;
@end

@implementation CKNavigationBarCanvasView

- (CKNavigationBarCanvasView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKNavigationBarCanvasView;
  v3 = [(CKNavigationBarCanvasView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKNavigationBarCanvasView *)v3 setShouldAnimateAvatarLayoutChanges:0];
    [(CKNavigationBarCanvasView *)v4 setIsInEditingMode:0];
    [(CKNavigationBarCanvasView *)v4 setIsAnimatingAvatars:0];
    [(CKNavigationBarCanvasView *)v4 setIgnoreNextWidthChange:0];
    [(CKNavigationBarCanvasView *)v4 setAudioEnabled:1];
    [(CKNavigationBarCanvasView *)v4 setVideoEnabled:1];
    [(CKNavigationBarCanvasView *)v4 setExpanseEnabled:1];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (setFrame__onceToken != -1)
  {
    [CKNavigationBarCanvasView setFrame:];
  }

  if (setFrame__isPad == 1)
  {
    v8 = MEMORY[0x1E696AD98];
    [(CKNavigationBarCanvasView *)self frame];
    v10 = [v8 numberWithDouble:v9];
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = CKNavigationBarCanvasView;
  [(CKNavigationBarCanvasView *)&v13 setFrame:x, y, width, height];
  if (setFrame__isPad == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    v12 = [v10 isEqualToNumber:v11];

    if ((v12 & 1) == 0)
    {
      [(CKNavigationBarCanvasView *)self setIgnoreNextWidthChange:1];
    }
  }
}

void __38__CKNavigationBarCanvasView_setFrame___block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  setFrame__isPad = (v1 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)removeFromSuperview
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      superview = [(CKNavigationBarCanvasView *)self superview];
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = superview;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKNavigationBarCanvasView instance\n {%@} is being removed from its superview\n {%@}.", buf, 0x16u);
    }
  }

  v5.receiver = self;
  v5.super_class = CKNavigationBarCanvasView;
  [(CKNavigationBarCanvasView *)&v5 removeFromSuperview];
}

- (void)didMoveToSuperview
{
  v10 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CKNavigationBarCanvasView;
  [(CKNavigationBarCanvasView *)&v5 didMoveToSuperview];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      superview = [(CKNavigationBarCanvasView *)self superview];
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = superview;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "CKNavigationBarCanvasView instance\n {%@} did move to superview\n {%@}.", buf, 0x16u);
    }
  }
}

- (void)setIsInEditingMode:(BOOL)mode
{
  self->_isInEditingMode = mode;
  titleView = [(CKNavigationBarCanvasView *)self titleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    titleView2 = [(CKNavigationBarCanvasView *)self titleView];
    collectionViewLayout = [titleView2 collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)setIsBusinessChat:(BOOL)chat
{
  if (self->_isBusinessChat != chat)
  {
    self->_isBusinessChat = chat;
    [(CKNavigationBarCanvasView *)self setNeedsLayout];
  }
}

- (void)setMultiwayAudioButtonHidden:(BOOL)hidden
{
  if (self->_multiwayAudioButtonHidden != hidden)
  {
    self->_multiwayAudioButtonHidden = hidden;
    if ([(CKNavigationBarCanvasView *)self multiwayAudioButtonHidden])
    {
      buttonViewFaceTimeAudio = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];

      if (buttonViewFaceTimeAudio)
      {
        buttonsToDisplay = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
        buttonViewFaceTimeAudio2 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
        [buttonsToDisplay removeObject:buttonViewFaceTimeAudio2];

        buttonViewFaceTimeAudio3 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
        [buttonViewFaceTimeAudio3 removeFromSuperview];

        [(CKNavigationBarCanvasView *)self setButtonViewFaceTimeAudio:0];
      }
    }

    [(CKNavigationBarCanvasView *)self setNeedsLayout];

    [(CKNavigationBarCanvasView *)self layoutIfNeeded];
  }
}

- (void)setJoinButtonStyle:(int64_t)style
{
  if (self->_joinButtonStyle != style)
  {
    self->_joinButtonStyle = style;
    [(CKNavigationBarCanvasView *)self _updateJoinButtonStyle];
  }
}

- (void)setAudioEnabled:(BOOL)enabled
{
  if (self->_audioEnabled != enabled)
  {
    self->_audioEnabled = enabled;
    [(CKNavigationButtonView *)self->_buttonViewFaceTimeAudio setEnabled:?];
  }
}

- (void)setVideoEnabled:(BOOL)enabled
{
  if (self->_videoEnabled != enabled)
  {
    self->_videoEnabled = enabled;
    [(CKNavigationButtonView *)self->_buttonViewFaceTimeVideo setEnabled:?];
  }
}

- (void)_updateJoinButtonStyle
{
  joinButtonStyle = self->_joinButtonStyle;
  if (joinButtonStyle <= 2)
  {
    if (joinButtonStyle)
    {
      if (joinButtonStyle != 1)
      {
        return;
      }

      buttonViewFaceTimeAudio = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
      v8 = buttonViewFaceTimeAudio;
      v9 = 4;
    }

    else
    {
      buttonViewFaceTimeAudio = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
      v8 = buttonViewFaceTimeAudio;
      v9 = 0;
    }
  }

  else
  {
    if (joinButtonStyle == 3)
    {
      buttonViewFaceTimeAudio2 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
      [buttonViewFaceTimeAudio2 setJoinButtonStyle:0];

      if (CKJoinPillTextMetrics() <= 70.0)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      buttonViewFaceTimeVideo = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeVideo];
      [buttonViewFaceTimeVideo setJoinButtonStyle:v11];

      buttonViewFaceTimeVideo2 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeVideo];
      [buttonViewFaceTimeVideo2 setWantsVibrancy:1];
      goto LABEL_17;
    }

    if (joinButtonStyle != 4)
    {
      if (joinButtonStyle != 6)
      {
        return;
      }

      buttonViewFaceTimeAudio3 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
      [buttonViewFaceTimeAudio3 setJoinButtonStyle:0];

      buttonViewFaceTimeVideo3 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeVideo];
      buttonViewFaceTimeVideo2 = buttonViewFaceTimeVideo3;
      v6 = 3;
      goto LABEL_16;
    }

    buttonViewFaceTimeAudio = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeAudio];
    v8 = buttonViewFaceTimeAudio;
    v9 = 5;
  }

  [buttonViewFaceTimeAudio setJoinButtonStyle:v9];

  buttonViewFaceTimeVideo3 = [(CKNavigationBarCanvasView *)self buttonViewFaceTimeVideo];
  buttonViewFaceTimeVideo2 = buttonViewFaceTimeVideo3;
  v6 = 0;
LABEL_16:
  [buttonViewFaceTimeVideo3 setJoinButtonStyle:v6];
LABEL_17:
}

- (void)removeButtonViewsIfNeeded
{
  [(CKNavigationButtonView *)self->_buttonViewFaceTimeAudio removeFromSuperview];
  [(CKNavigationButtonView *)self->_buttonViewFaceTimeVideo removeFromSuperview];
  [(CKNavigationButtonView *)self->_buttonViewInfo removeFromSuperview];
  [(CKNavigationBarCanvasView *)self setButtonViewFaceTimeAudio:0];
  [(CKNavigationBarCanvasView *)self setButtonViewFaceTimeVideo:0];

  [(CKNavigationBarCanvasView *)self setButtonViewInfo:0];
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_titleView != viewCopy)
  {
    v11 = viewCopy;
    [(UIView *)viewCopy setAutoresizingMask:0];
    [(UIView *)self->_titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    v6 = v11;
    titleView = self->_titleView;
    if (titleView)
    {
      [(UIView *)titleView sizeToFit];
      [(CKNavigationBarCanvasView *)self addSubview:self->_titleView];
      v8 = CKIsRunningInMacCatalyst();
      v6 = v11;
      if (v8)
      {
        titleView = [(CKNavigationBarCanvasView *)self titleView];
        backgroundColor = [titleView backgroundColor];
        [(CKNavigationBarCanvasView *)self setTitleDefaultBackgroundColor:backgroundColor];

        v6 = v11;
      }
    }
  }
}

- (void)setSubtitleView:(id)view
{
  viewCopy = view;
  if (self->_subtitleView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)viewCopy setAutoresizingMask:0];
    [(UIView *)self->_subtitleView removeFromSuperview];
    objc_storeStrong(&self->_subtitleView, view);
    subtitleView = self->_subtitleView;
    if (subtitleView)
    {
      [(UIView *)subtitleView sizeToFit];
      [(CKNavigationBarCanvasView *)self addSubview:self->_subtitleView];
    }

    [(CKNavigationBarCanvasView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setTitleViewContextMenu:(id)menu
{
  menuCopy = menu;
  objc_storeStrong(&self->_titleViewContextMenu, menu);
  invisibleContextMenuButton = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];

  if (!invisibleContextMenuButton)
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CKNavigationBarCanvasView *)self setInvisibleContextMenuButton:v6];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    invisibleContextMenuButton2 = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];
    [invisibleContextMenuButton2 setBackgroundColor:clearColor];
  }

  invisibleContextMenuButton3 = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];
  [invisibleContextMenuButton3 setMenu:menuCopy];

  invisibleContextMenuButton4 = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];
  [invisibleContextMenuButton4 setContextMenuIsPrimary:1];

  v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(CKNavigationBarCanvasView *)self setSecondaryTitleInteraction:v11];

  invisibleContextMenuButton5 = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];
  secondaryTitleInteraction = [(CKNavigationBarCanvasView *)self secondaryTitleInteraction];
  [invisibleContextMenuButton5 addInteraction:secondaryTitleInteraction];

  v14 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_didHoverOverTitleView_];
  invisibleContextMenuButton6 = [(CKNavigationBarCanvasView *)self invisibleContextMenuButton];
  [invisibleContextMenuButton6 addGestureRecognizer:v14];

  [(CKNavigationBarCanvasView *)self setNeedsLayout];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  secondaryTitleInteraction = [(CKNavigationBarCanvasView *)self secondaryTitleInteraction];
  v9 = secondaryTitleInteraction;
  if (secondaryTitleInteraction == interactionCopy)
  {
    titleView = [(CKNavigationBarCanvasView *)self titleView];
    v12 = [titleView pointInside:0 withEvent:{x, y}];

    v10 = 0;
    if (v12)
    {
      objc_initWeak(&location, self);
      v13 = MEMORY[0x1E69DC8D8];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __83__CKNavigationBarCanvasView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
      v15[3] = &unk_1E72F5980;
      objc_copyWeak(&v16, &location);
      v10 = [v13 configurationWithIdentifier:0 previewProvider:0 actionProvider:v15];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

id __83__CKNavigationBarCanvasView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleViewContextMenu];

  return v2;
}

- (void)didHoverOverTitleView:(id)view
{
  state = [view state];
  if (state == 3)
  {
    titleView = [(CKNavigationBarCanvasView *)self titleView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    titleView2 = [(CKNavigationBarCanvasView *)self titleView];
    titleDefaultBackgroundColor = [(CKNavigationBarCanvasView *)self titleDefaultBackgroundColor];
    [titleView2 setBackgroundColor:titleDefaultBackgroundColor];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    titleView3 = [(CKNavigationBarCanvasView *)self titleView];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      return;
    }

    titleView2 = [(CKNavigationBarCanvasView *)self titleView];
    titleDefaultBackgroundColor = +[CKUIBehavior sharedBehaviors];
    theme = [titleDefaultBackgroundColor theme];
    conversationListSelectedCellColor = [theme conversationListSelectedCellColor];
    v10 = [conversationListSelectedCellColor colorWithAlphaComponent:0.5];
    [titleView2 setBackgroundColor:v10];
  }
}

- (void)setLeftItemView:(id)view
{
  viewCopy = view;
  leftItemView = self->_leftItemView;
  if (leftItemView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)leftItemView removeFromSuperview];
    objc_storeStrong(&self->_leftItemView, view);
    viewCopy = v8;
    if (v8)
    {
      [(UIView *)self->_leftItemView sizeToFit];
      [(CKNavigationBarCanvasView *)self addSubview:self->_leftItemView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      viewCopy = v8;
      if (isKindOfClass)
      {
        [(CKNavigationBarCanvasView *)self _addLaserEffectToButton:self->_leftItemView];
        viewCopy = v8;
      }
    }
  }
}

- (void)setRightItemView:(id)view
{
  viewCopy = view;
  rightItemView = self->_rightItemView;
  v8 = viewCopy;
  if (rightItemView != viewCopy)
  {
    [(UIView *)rightItemView removeFromSuperview];
    objc_storeStrong(&self->_rightItemView, view);
    v7 = self->_rightItemView;
    if (v7)
    {
      [(UIView *)v7 sizeToFit];
      [(CKNavigationBarCanvasView *)self addSubview:self->_rightItemView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CKNavigationBarCanvasView *)self _addLaserEffectToButton:self->_rightItemView];
      }
    }
  }
}

- (void)setStatusIndicatorType:(int64_t)type
{
  if (setStatusIndicatorType__onceToken != -1)
  {
    [CKNavigationBarCanvasView setStatusIndicatorType:];
  }

  if (self->_statusIndicatorType != type)
  {
    self->_statusIndicatorType = type;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_2;
    aBlock[3] = &unk_1E72F59D0;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    if (self->_statusIndicatorType || ([(CKNavigationBarCanvasView *)self statusIndicatorImageView], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v6 = &setStatusIndicatorType__expanseIndicatorImage;
      v7 = &setStatusIndicatorType__videoIndicatorImage;
      if (type != 2)
      {
        v7 = &setStatusIndicatorType__audioIndicatorImage;
      }

      if (type != 3)
      {
        v6 = v7;
      }

      v8 = *v6;
      statusIndicatorImageView = [(CKNavigationBarCanvasView *)self statusIndicatorImageView];

      if (statusIndicatorImageView)
      {
        statusIndicatorImageView2 = [(CKNavigationBarCanvasView *)self statusIndicatorImageView];
        [statusIndicatorImageView2 setImage:v8];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
        [(CKNavigationBarCanvasView *)self setStatusIndicatorImageView:v12];

        statusIndicatorImageView2 = [(CKNavigationBarCanvasView *)self statusIndicatorImageView];
        [(CKNavigationBarCanvasView *)self addSubview:statusIndicatorImageView2];
      }

      statusIndicatorImageView3 = [(CKNavigationBarCanvasView *)self statusIndicatorImageView];
      [statusIndicatorImageView3 setContentMode:1];

      v14 = +[CKUIBehavior sharedBehaviors];
      theme = [v14 theme];
      navBarGrayColor = [theme navBarGrayColor];
      statusIndicatorImageView4 = [(CKNavigationBarCanvasView *)self statusIndicatorImageView];
      [statusIndicatorImageView4 setTintColor:navBarGrayColor];

      [(CKNavigationBarCanvasView *)self setNeedsLayout];
      [(CKNavigationBarCanvasView *)self layoutIfNeeded];
      v5[2](v5, 1, 0);
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_5;
      v18[3] = &unk_1E72EBA18;
      v18[4] = self;
      (v5)[2](v5, 0, v18);
    }
  }
}

void __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke()
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 navBarHeaderVideoImage];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 navBarGrayColor];
  v5 = [v1 _flatImageWithColor:v4];
  v6 = setStatusIndicatorType__videoIndicatorImage;
  setStatusIndicatorType__videoIndicatorImage = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 navBarHeaderAudioImage];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 navBarGrayColor];
  v12 = [v8 _flatImageWithColor:v11];
  v13 = setStatusIndicatorType__audioIndicatorImage;
  setStatusIndicatorType__audioIndicatorImage = v12;

  v20 = +[CKUIBehavior sharedBehaviors];
  v14 = [v20 navBarHeaderExpanseImage];
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 theme];
  v17 = [v16 navBarGrayColor];
  v18 = [v14 _flatImageWithColor:v17];
  v19 = setStatusIndicatorType__expanseIndicatorImage;
  setStatusIndicatorType__expanseIndicatorImage = v18;
}

void __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) statusIndicatorImageView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  v15 = CGRectGetWidth(v32) * -0.33;
  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  v34 = CGRectOffset(v33, v15, 0.0);
  v26 = v34;
  v16 = 1.0;
  if (a2)
  {
    v16 = 0.0;
    height = v34.size.height;
  }

  else
  {
    height = v14;
  }

  if (a2)
  {
    width = v34.size.width;
  }

  else
  {
    width = v12;
  }

  if (a2)
  {
    y = v34.origin.y;
  }

  else
  {
    y = v10;
  }

  if (a2)
  {
    x = v34.origin.x;
  }

  else
  {
    x = v8;
  }

  v21 = [*(a1 + 32) statusIndicatorImageView];
  [v21 setFrame:{x, y, width, height}];

  v22 = [*(a1 + 32) statusIndicatorImageView];
  [v22 setAlpha:v25];

  v23 = MEMORY[0x1E69DD250];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_3;
  v29[3] = &unk_1E72F59A8;
  v29[4] = *(a1 + 32);
  v31 = a2;
  *&v29[5] = v8;
  *&v29[6] = v10;
  *&v29[7] = v12;
  *&v29[8] = v14;
  v30 = v26;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_4;
  v27[3] = &unk_1E72ED1F0;
  v28 = v5;
  v24 = v5;
  [v23 animateWithDuration:v29 animations:v27 completion:0.3];
}

void __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_3(uint64_t a1)
{
  v2 = 72;
  if (*(a1 + 104))
  {
    v2 = 40;
  }

  v3 = 80;
  v4 = 88;
  if (*(a1 + 104))
  {
    v4 = 56;
  }

  v5 = 96;
  if (*(a1 + 104))
  {
    v5 = 64;
  }

  v6 = *(a1 + v5);
  v7 = *(a1 + v4);
  if (*(a1 + 104))
  {
    v3 = 48;
  }

  v8 = *(a1 + v3);
  v9 = *(a1 + v2);
  v10 = [*(a1 + 32) statusIndicatorImageView];
  [v10 setFrame:{v9, v8, v7, v6}];

  if (*(a1 + 104))
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [*(a1 + 32) statusIndicatorImageView];
  [v12 setAlpha:v11];
}

uint64_t __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __52__CKNavigationBarCanvasView_setStatusIndicatorType___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) statusIndicatorImageView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setStatusIndicatorImageView:0];
}

- (void)clearAllItemViews
{
  [(CKNavigationBarCanvasView *)self setLeftItemView:0];
  [(CKNavigationBarCanvasView *)self setRightItemView:0];

  [(CKNavigationBarCanvasView *)self setTitleView:0];
}

- (void)_addLaserEffectToButton:(id)button
{
  buttonCopy = button;
  [buttonCopy setPointerInteractionEnabled:1];
  [buttonCopy setPointerStyleProvider:&__block_literal_global_269_1];
}

id __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 frame];
  [v4 bounds];
  v7 = v6;
  [v4 frame];
  v9 = v8;
  [v4 frame];
  v11 = v10;
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v12 = *&CKMainScreenScale_sMainScreenScale_80;
  [v4 frame];
  v14 = v13;
  [v4 frame];
  v16 = v15;
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v17 = 1.0;
  if (v12 == 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v12;
  }

  v19 = round((v9 + v11 * 0.5 - (v7 + 16.0) * 0.5) * v18) / v18;
  if (*&CKMainScreenScale_sMainScreenScale_80 != 0.0)
  {
    v17 = *&CKMainScreenScale_sMainScreenScale_80;
  }

  v20 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:{v19, round((v14 + v16 * 0.5 + -18.5) * v17) / v17, v7 + 16.0, 37.0}];
  v21 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:v20];

  return v21;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v10.receiver = self;
  v10.super_class = CKNavigationBarCanvasView;
  v5 = [(CKNavigationBarCanvasView *)&v10 hitTest:event withEvent:test.x, test.y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    superview = [(CKNavigationBarCanvasView *)v5 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        selfCopy = v5;
      }
    }
  }

  v8 = selfCopy;

  return selfCopy;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v9.receiver = self;
  v9.super_class = CKNavigationBarCanvasView;
  [(CKNavigationBarCanvasView *)&v9 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  [(CKNavigationBarCanvasView *)self _updatedPreferredHeight];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (double)_updatedPreferredHeight
{
  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldConfigureForJunkModal = [delegate shouldConfigureForJunkModal];

  if (shouldConfigureForJunkModal)
  {
    return 85.0;
  }

  delegate2 = [(CKNavigationBarCanvasView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate3 = [(CKNavigationBarCanvasView *)self delegate];
    [delegate3 preferredHeightOverride];
    v9 = v8;

    if (v9 > 0.0)
    {
      delegate4 = [(CKNavigationBarCanvasView *)self delegate];
      [delegate4 preferredHeightOverride];
      v12 = v11;

      return v12;
    }
  }

  else
  {
  }

  [(CKNavigationBarCanvasView *)self _preferredHeightFromSubviewMetrics];
  return result;
}

- (double)_preferredHeightFromSubviewMetrics
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  window = [(CKNavigationBarCanvasView *)self window];
  if (!window || ((v6 = window, [(CKNavigationBarCanvasView *)self frame], v8 = v7, v10 = v9, v11 = *MEMORY[0x1E695F060], v12 = *(MEMORY[0x1E695F060] + 8), v6, v8 == v11) ? (v13 = v10 == v12) : (v13 = 0), v13))
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    [keyWindow frame];
    v15 = v17;
  }

  else
  {
    [(CKNavigationBarCanvasView *)self frame];
    v15 = v14;
  }

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 navigationBarDefaultHeight];
  v20 = v19;

  v21 = [(CKNavigationBarCanvasView *)self _subviewLayoutWithBounds:v3, v4, v15, v20];
  [(CKNavigationBarCanvasView *)self _preferredHeightWithSubviewLayout:v21];
  v23 = v22;

  return v23;
}

- (double)_preferredHeightWithSubviewLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy titleFrame];
  v6 = v5;
  [layoutCopy subtitleFrame];
  v8 = v7;
  [layoutCopy leftItemFrame];
  v10 = v9;
  [layoutCopy rightItemFrame];
  v12 = v11;

  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldConfigureForJunkModal = [delegate shouldConfigureForJunkModal];

  v15 = v10 + 17.0;
  if (!shouldConfigureForJunkModal)
  {
    v15 = v10;
  }

  v16 = v6 + v8;
  if (v15 >= v12)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if ([(CKNavigationBarCanvasView *)self _canShowAvatarView])
  {
    delegate2 = [(CKNavigationBarCanvasView *)self delegate];
    shouldUseMinimumSafeAreas = [delegate2 shouldUseMinimumSafeAreas];

    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 navigationBarTitleViewVerticalOffsetWantsMinimumSafeAreas:shouldUseMinimumSafeAreas];
    v22 = v16 + v21;
  }

  else
  {
    if (v17 >= v16 + 8.0)
    {
      v23 = v16;
    }

    else
    {
      v23 = v16 + 8.0;
    }

    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 defaultNavigationBarNoContactPhotoCollapsedHeightValue];
    v22 = v25;

    if (v23 >= v22)
    {
      v22 = v23;
    }
  }

  if (v17 >= v22)
  {
    return v17;
  }

  else
  {
    return v22;
  }
}

- (BOOL)_canShowAvatarView
{
  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldShowAvatarView = [delegate shouldShowAvatarView];

  return shouldShowAvatarView;
}

- (UIEdgeInsets)safeAreaInsets
{
  superview = [(CKNavigationBarCanvasView *)self superview];
  v3Superview = [superview superview];
  [v3Superview safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v8 > 0.0 || v12 > 0.0)
  {
    window = [(CKNavigationBarCanvasView *)self window];
    windowScene = [window windowScene];

    if (windowScene && ([windowScene interfaceOrientation] - 3) <= 1)
    {
      v15 = +[CKUIBehavior sharedBehaviors];
      [v15 landscapeKeyboardInsets];
      v17 = v16;
      v19 = v18;

      if (v8 > 0.0)
      {
        v8 = v17;
      }

      if (v12 > 0.0)
      {
        v12 = v19;
      }
    }
  }

  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (UIEdgeInsets)systemMinimumLayoutMarginsFromDelegate
{
  delegate = [(CKNavigationBarCanvasView *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKNavigationBarCanvasView *)self delegate];
    [delegate2 systemMinimumLayoutMarginsForView:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    effectiveUserInterfaceLayoutDirection = [(CKNavigationBarCanvasView *)self effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection)
    {
      v14 = v12;
    }

    else
    {
      v14 = v8;
    }

    if (!effectiveUserInterfaceLayoutDirection)
    {
      v8 = v12;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v14 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v15 = v6;
  v16 = v14;
  v17 = v10;
  v18 = v8;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)layoutTitleViewIfNeeded:(CGRect)needed
{
  height = needed.size.height;
  width = needed.size.width;
  y = needed.origin.y;
  x = needed.origin.x;
  titleView = [(CKNavigationBarCanvasView *)self titleView];

  if (titleView)
  {
    titleView2 = [(CKNavigationBarCanvasView *)self titleView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = ![(CKNavigationBarCanvasView *)self shouldAnimateAvatarLayoutChanges];
    }

    else
    {
      v11 = 1;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke;
    v30[3] = &unk_1E72F5A18;
    v30[4] = self;
    *&v30[5] = x;
    *&v30[6] = y;
    *&v30[7] = width;
    *&v30[8] = height;
    v12 = __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke(v30);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:CKNavigationBarCollectionViewShouldAdustForEditingModeNotification object:0 userInfo:v12];

    titleView3 = [(CKNavigationBarCanvasView *)self titleView];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(CKNavigationBarCanvasView *)self ignoreNextWidthChange])
    {
      v17 = ![(CKNavigationBarCanvasView *)self isInEditingMode];
    }

    else
    {
      v17 = 0;
    }

    if ((v11 | v17))
    {
      if (([(CKNavigationBarCanvasView *)self isInEditingMode]& isKindOfClass) == 1 && ![(CKNavigationBarCanvasView *)self isAnimatingAvatars])
      {
        collectionViewLayout = [titleView3 collectionViewLayout];
        [collectionViewLayout invalidateLayout];

        if (CKMainScreenScale_once_80 != -1)
        {
          [CKNavigationBarCanvasView layoutTitleViewIfNeeded:];
        }

        v20 = *&CKMainScreenScale_sMainScreenScale_80;
        if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
        {
          v20 = 1.0;
        }

        v21 = round(x * v20) / v20;
        v22 = round(y * v20) / v20;
        v23 = round(width * v20) / v20;
        v24 = round(height * v20) / v20;
        titleView4 = [(CKNavigationBarCanvasView *)self titleView];
        [titleView4 setFrame:{v21, v22, v23, v24}];

        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (![(CKNavigationBarCanvasView *)self isAnimatingAvatars])
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_4;
        v26[3] = &unk_1E72EC7B0;
        v26[4] = self;
        *&v26[5] = x;
        *&v26[6] = y;
        *&v26[7] = width;
        *&v26[8] = height;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v26];
        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      [(CKNavigationBarCanvasView *)self setIsAnimatingAvatars:1];
      v18 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_2;
      v28[3] = &unk_1E72EBA18;
      v29 = titleView3;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_3;
      v27[3] = &unk_1E72EB9C8;
      v27[4] = self;
      [v18 animateWithDuration:v28 animations:v27 completion:0.3];
    }

    if (!v17)
    {
LABEL_18:

      return;
    }

LABEL_17:
    [(CKNavigationBarCanvasView *)self setIgnoreNextWidthChange:0];
    goto LABEL_18;
  }
}

id __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isInEditingMode])
  {
    v10[0] = kCKNavigationBarCollectionViewKey;
    v2 = [*(a1 + 32) titleView];
    v11[0] = v2;
    v10[1] = kCKNavigationBarEditFrameKey;
    v3 = *(a1 + 56);
    v7[0] = *(a1 + 40);
    v7[1] = v3;
    v4 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v10[2] = kCKNavigationBarIsInEditingModeKey;
    v11[1] = v4;
    v11[2] = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v8[0] = kCKNavigationBarCollectionViewKey;
    v2 = [*(a1 + 32) titleView];
    v8[1] = kCKNavigationBarIsInEditingModeKey;
    v9[0] = v2;
    v9[1] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  return v5;
}

void __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

uint64_t __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setShouldAnimateAvatarLayoutChanges:0];
  v2 = *(a1 + 32);

  return [v2 setIsAnimatingAvatars:0];
}

void __53__CKNavigationBarCanvasView_layoutTitleViewIfNeeded___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v6 = *&CKMainScreenScale_sMainScreenScale_80;
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v6 = 1.0;
  }

  v7 = round(v2 * v6) / v6;
  v8 = round(v3 * v6) / v6;
  v9 = round(v4 * v6) / v6;
  v10 = round(v5 * v6) / v6;
  v11 = [*(a1 + 32) titleView];
  [v11 setFrame:{v7, v8, v9, v10}];

  v12 = [*(a1 + 32) titleView];
  [v12 setNeedsLayout];

  v13 = [*(a1 + 32) titleView];
  [v13 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKNavigationBarCanvasView;
  [(CKNavigationBarCanvasView *)&v19 layoutSubviews];
  [(CKNavigationBarCanvasView *)self bounds];
  v3 = [(CKNavigationBarCanvasView *)self _subviewLayoutWithBounds:?];
  v4 = MEMORY[0x1E69DD250];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __43__CKNavigationBarCanvasView_layoutSubviews__block_invoke;
  v16 = &unk_1E72EB8D0;
  selfCopy = self;
  v5 = v3;
  v18 = v5;
  [v4 performWithoutAnimation:&v13];
  if (self->_statusIndicatorImageView)
  {
    [v5 statusIndicatorFrame];
    [(UIImageView *)self->_statusIndicatorImageView setFrame:?];
  }

  [(CKNavigationBarCanvasView *)self _preferredHeightWithSubviewLayout:v5, v13, v14, v15, v16, selfCopy];
  v7 = v6;
  [(CKNavigationBarCanvasView *)self lastLayoutPreferredHeight];
  v9 = vabdd_f64(v8, v7);
  [v5 titleFrame];
  [(CKNavigationBarCanvasView *)self layoutTitleViewIfNeeded:?];
  if (v9 >= 0.00000999999975)
  {
    delegate = [(CKNavigationBarCanvasView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CKNavigationBarCanvasView *)self delegate];
      [delegate2 canvasViewPreferredHeightChanged];
    }
  }

  [(CKNavigationBarCanvasView *)self setLastLayoutPreferredHeight:v7];
}

void __43__CKNavigationBarCanvasView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 40) leftItemFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) leftItemView];
  [v10 setFrame:{v3, v5, v7, v9}];

  [*(a1 + 40) rightItemFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 32) rightItemView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [*(a1 + 32) subtitleView];
  [*(a1 + 40) subtitleFrame];
  [v20 setFrame:?];
}

- (id)_subviewLayoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  rect1_24 = bounds.origin.y;
  x = bounds.origin.x;
  _shouldReverseLayoutDirection = [(CKNavigationBarCanvasView *)self _shouldReverseLayoutDirection];
  _canShowAvatarView = [(CKNavigationBarCanvasView *)self _canShowAvatarView];
  leftItemView = [(CKNavigationBarCanvasView *)self leftItemView];
  rightItemView = [(CKNavigationBarCanvasView *)self rightItemView];
  [leftItemView sizeThatFits:{width, height}];
  v11 = v10;
  v13 = v12;
  rect2 = height;
  v214 = width;
  [rightItemView sizeThatFits:{width, height}];
  rect1_8 = v14;
  v16 = v15;
  v17 = fmax(v13, v15);
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_80;
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v18 = 1.0;
  }

  v19 = round(v17 * v18) / v18;
  v20 = fmax(v11, 44.0);
  [(CKNavigationBarCanvasView *)self safeAreaInsets];
  v22 = v21;
  v24 = v23;
  [(CKNavigationBarCanvasView *)self systemMinimumLayoutMarginsFromDelegate];
  v26 = v25;
  v28 = v27;
  leftItemView2 = [(CKNavigationBarCanvasView *)self leftItemView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v200 = v24;
  rect1_16 = v28;
  rect1 = v26;
  if (_shouldReverseLayoutDirection)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v24 = v24 + v28;
    }

    v229.origin.y = rect1_24;
    v229.origin.x = x;
    v229.size.height = rect2;
    v229.size.width = v214;
    v31 = CGRectGetWidth(v229) - (v20 + v24);
  }

  else if (isKindOfClass)
  {
    v31 = v22;
  }

  else
  {
    v31 = v22 + v26;
  }

  v32 = v20;
  v33 = fmax(v19, 44.0);
  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldConfigureForJunkModal = [delegate shouldConfigureForJunkModal];

  v36 = 17.0;
  if ((shouldConfigureForJunkModal & 1) == 0)
  {
    [(CKNavigationBarCanvasView *)self _calculateYOriginForButtonWithHeight:v33];
    v36 = v37;
  }

  rightItemView2 = [(CKNavigationBarCanvasView *)self rightItemView];
  [(CKNavigationBarCanvasView *)self _baseBarItemViewSizeForView:rightItemView2 proposedSize:rect1_8 minSize:v16, 44.0];
  v40 = v39;
  v42 = v41;

  rightItemView3 = [(CKNavigationBarCanvasView *)self rightItemView];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if (v44)
  {
    rightItemView4 = [(CKNavigationBarCanvasView *)self rightItemView];
    v46 = [rightItemView4 buttonStyle] == 0;
  }

  else
  {
    v46 = 1;
  }

  rightItemView5 = [(CKNavigationBarCanvasView *)self rightItemView];
  objc_opt_class();
  v48 = objc_opt_isKindOfClass();

  if (v44)
  {
    v49 = +[CKUIBehavior sharedBehaviors];
    [v49 tuConversationBalloonJoinButtonHeight];
    v42 = v50;
  }

  v51 = 0.0;
  if ((v44 & v46 | v48))
  {
    rightItemView6 = [(CKNavigationBarCanvasView *)self rightItemView];
    [rightItemView6 frame];
    v53 = CGRectGetWidth(v230);
    imageView = [rightItemView6 imageView];
    [imageView frame];
    v51 = (v53 - CGRectGetWidth(v231)) * 0.5;
  }

  if (_shouldReverseLayoutDirection)
  {
    v55 = v22 + rect1 - v51;
  }

  else
  {
    v232.origin.y = rect1_24;
    v232.origin.x = x;
    v232.size.height = rect2;
    v232.size.width = v214;
    v55 = CGRectGetWidth(v232) - (v200 + rect1_16 + v40 - v51);
  }

  v199 = v22;
  [(CKNavigationBarCanvasView *)self _calculateYOriginForButtonWithHeight:v42];
  v226 = 0;
  v227[0] = &v226;
  v227[1] = 0x4010000000;
  v227[2] = &unk_190F92BB2;
  *&v227[3] = v31;
  *&v227[4] = v36;
  *&v227[5] = v32;
  *&v227[6] = v33;
  v224 = 0;
  v225[0] = &v224;
  v225[1] = 0x4010000000;
  v225[2] = &unk_190F92BB2;
  *&v225[3] = v55;
  v225[4] = v56;
  *&v225[5] = v40;
  *&v225[6] = v42;
  subtitleView = [(CKNavigationBarCanvasView *)self subtitleView];
  [subtitleView sizeThatFits:{v214, rect2}];
  rect1_8a = v58;
  rect = v59;

  subtitleView2 = [(CKNavigationBarCanvasView *)self subtitleView];
  [subtitleView2 frame];
  v62 = v61;
  v64 = v63;

  titleView = [(CKNavigationBarCanvasView *)self titleView];
  [titleView frame];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  if (_canShowAvatarView)
  {
    delegate2 = [(CKNavigationBarCanvasView *)self delegate];
    shouldUseMinimumSafeAreas = [delegate2 shouldUseMinimumSafeAreas];

    v76 = +[CKUIBehavior sharedBehaviors];
    [v76 navigationBarTitleViewVerticalOffsetWantsMinimumSafeAreas:shouldUseMinimumSafeAreas];
    v78 = v77;

    v79 = +[CKUIBehavior sharedBehaviors];
    delegate3 = [(CKNavigationBarCanvasView *)self delegate];
    [v79 defaultNavigationBarHeightValueWantsMinimumSafeAreas:{objc_msgSend(delegate3, "shouldUseMinimumSafeAreas")}];
    v82 = v81;
  }

  else
  {
    v233.origin.x = v67;
    v233.origin.y = v69;
    v233.size.width = v71;
    v233.size.height = v73;
    v83 = CGRectGetHeight(v233);
    v234.origin.x = v62;
    v234.origin.y = v64;
    v234.size.width = rect1_8a;
    v234.size.height = rect;
    v84 = CGRectGetHeight(v234);
    v79 = +[CKUIBehavior sharedBehaviors];
    [v79 defaultNavigationBarNoContactPhotoCollapsedHeightValue];
    v82 = v85;
    v78 = (rect2 - v83 - v84) * 0.5;
  }

  v86 = v225;
  if ([(CKNavigationBarCanvasView *)self keepTitleViewCentered])
  {
    v198 = v78;
    if (_shouldReverseLayoutDirection)
    {
      v87 = CGRectGetWidth(*(v225[0] + 32));
      v88 = CGRectGetWidth(*(v227[0] + 32));
      v89 = v200 + rect1;
      v90 = v200 + rect1_16 + v87;
    }

    else
    {
      v99 = CGRectGetWidth(*(v227[0] + 32));
      v100 = CGRectGetWidth(*(v225[0] + 32));
      v89 = v200;
      v90 = v199 + rect1 + v99;
      v88 = rect1_16 + v100;
    }

    v101 = v89 + v88;
    if (v90 >= v101)
    {
      v101 = v90;
    }

    v222[0] = MEMORY[0x1E69E9820];
    v222[1] = 3221225472;
    v222[2] = __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke;
    v222[3] = &unk_1E72F5A40;
    v223 = _canShowAvatarView;
    v102 = v101 + v101;
    *&v222[5] = x;
    *&v222[6] = rect1_24;
    *&v222[7] = v214;
    *&v222[8] = rect2;
    *&v222[9] = v101 + v101;
    v222[4] = self;
    v103 = __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke(v222);
    titleView2 = [(CKNavigationBarCanvasView *)self titleView];
    objc_opt_class();
    v105 = objc_opt_isKindOfClass();

    titleView3 = [(CKNavigationBarCanvasView *)self titleView];
    if (v105)
    {
      collectionViewLayout = [titleView3 collectionViewLayout];
      [collectionViewLayout collectionViewContentSize];
      v109 = v108;
      v111 = v110;
    }

    else
    {
      [titleView3 intrinsicContentSize];
      v109 = v134;
      v111 = v135;
    }

    v136 = *MEMORY[0x1E695F060];
    if (v109 == *MEMORY[0x1E695F060])
    {
      v137 = *(MEMORY[0x1E695F060] + 8);
      if (v111 == v137)
      {
        titleView4 = [(CKNavigationBarCanvasView *)self titleView];
        [titleView4 sizeThatFits:{v136, v137}];
        v111 = v139;
      }
    }

    if (v111 > 0.0)
    {
      v82 = v111;
    }

    if (CKMainScreenScale_once_80 != -1)
    {
      [CKNavigationBarCanvasView layoutTitleViewIfNeeded:];
    }

    if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
    {
      v140 = 1.0;
    }

    else
    {
      v140 = *&CKMainScreenScale_sMainScreenScale_80;
    }

    v236.origin.y = rect1_24;
    v236.origin.x = x;
    v236.size.height = rect2;
    v236.size.width = v214;
    MidX = CGRectGetMidX(v236);
    delegate4 = [(CKNavigationBarCanvasView *)self delegate];
    shouldConfigureForJunkModal2 = [delegate4 shouldConfigureForJunkModal];

    v220[0] = MEMORY[0x1E69E9820];
    v220[1] = 3221225472;
    v220[2] = __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke_2;
    v220[3] = &unk_1E72F5A40;
    v221 = _canShowAvatarView;
    *&v220[5] = x;
    *&v220[6] = rect1_24;
    *&v220[7] = v214;
    *&v220[8] = rect2;
    *&v220[9] = v102;
    v220[4] = self;
    __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke_2(v220);
    rect1_8a = v144;
    v96 = ceil(v103 * v140) / v140;
    rect1_16a = ceil(v82 * v140) / v140;
    v128 = MidX + v96 * -0.5;
    if (shouldConfigureForJunkModal2)
    {
      v124 = 8.0;
    }

    else
    {
      v124 = v198;
    }

    goto LABEL_86;
  }

  titleView5 = [(CKNavigationBarCanvasView *)self titleView];
  objc_opt_class();
  v92 = objc_opt_isKindOfClass();

  titleView6 = [(CKNavigationBarCanvasView *)self titleView];
  if (v92)
  {
    collectionViewLayout2 = [titleView6 collectionViewLayout];
    [collectionViewLayout2 collectionViewContentSize];
    v96 = v95;
    v98 = v97;
  }

  else
  {
    [titleView6 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v96 = v112;
    v98 = v113;
  }

  if (v98 <= 0.0)
  {
    v114 = v82;
  }

  else
  {
    v114 = v98;
  }

  rect1_16a = v114;
  rightItemView7 = [(CKNavigationBarCanvasView *)self rightItemView];

  v116 = v225;
  if (rightItemView7 || ([(CKNavigationBarCanvasView *)self leftItemView], v117 = objc_claimAutoreleasedReturnValue(), v117, v116 = v227, v118 = rect1_24, v119 = rect2, v117))
  {
    v120 = *v116;
    v118 = *(v120 + 40);
    v119 = *(v120 + 56);
  }

  if (CKMainScreenScale_once_80 != -1)
  {
    [CKNavigationBarCanvasView layoutTitleViewIfNeeded:];
  }

  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v121 = 1.0;
  }

  else
  {
    v121 = *&CKMainScreenScale_sMainScreenScale_80;
  }

  titleView7 = [(CKNavigationBarCanvasView *)self titleView];
  objc_opt_class();
  v123 = objc_opt_isKindOfClass();
  v124 = floor((v118 + (v119 - rect1_16a) * 0.5) * v121) / v121;

  if (v123)
  {
    titleView8 = [(CKNavigationBarCanvasView *)self titleView];
    [titleView8 _baselineOffsetFromBottom];
    v124 = v124 + v126 * 0.5;
  }

  if (CKMainScreenScale_once_80 != -1)
  {
    [CKNavigationBarCanvasView layoutTitleViewIfNeeded:];
  }

  v127 = *&CKMainScreenScale_sMainScreenScale_80;
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v127 = 1.0;
  }

  v128 = floor((x + (v214 - v96) * 0.5) * v127) / v127;
  v235.origin.x = v128;
  v235.origin.y = v124;
  v235.size.width = v96;
  v235.size.height = rect1_16a;
  if (!CGRectIntersectsRect(v235, *(v225[0] + 32)))
  {
    v237.origin.x = v128;
    v237.origin.y = v124;
    v237.size.width = v96;
    v237.size.height = rect1_16a;
    if (!CGRectIntersectsRect(v237, *(v227[0] + 32)))
    {
      goto LABEL_86;
    }

    v129 = *(v227[0] + 32);
    v130 = *(v227[0] + 40);
    v131 = *(v227[0] + 48);
    v132 = *(v227[0] + 56);
    if (!_shouldReverseLayoutDirection)
    {
      MaxX = CGRectGetMaxX(*&v129);
      v146 = 14.0;
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v129 = *(v225[0] + 32);
  v130 = *(v225[0] + 40);
  v131 = *(v225[0] + 48);
  v132 = *(v225[0] + 56);
  if (!_shouldReverseLayoutDirection)
  {
LABEL_74:
    MinX = CGRectGetMinX(*&v129);
    v238.origin.x = v128;
    v238.origin.y = v124;
    v238.size.width = v96;
    v238.size.height = rect1_16a;
    MaxX = MinX - CGRectGetWidth(v238);
    goto LABEL_75;
  }

  MaxX = CGRectGetMaxX(*&v129);
LABEL_75:
  v146 = -14.0;
LABEL_76:
  v239.origin.x = MaxX + v146;
  v239.origin.y = v124;
  v239.size.width = v96;
  v239.size.height = rect1_16a;
  v96 = CGRectGetWidth(v239);
  v240.origin.y = rect1_24;
  v240.origin.x = x;
  v240.size.height = rect2;
  v240.size.width = v214;
  v147 = CGRectGetWidth(v240);
  if (_shouldReverseLayoutDirection)
  {
    v148 = CGRectGetMaxX(*(v225[0] + 32));
    v241.origin.y = rect1_24;
    v241.origin.x = x;
    v241.size.height = rect2;
    v241.size.width = v214;
    v149 = CGRectGetWidth(v241);
    v150 = *(v227[0] + 32);
    v151 = *(v227[0] + 40);
    v152 = *(v227[0] + 48);
    v153 = *(v227[0] + 56);
  }

  else
  {
    v148 = CGRectGetMaxX(*(v227[0] + 32));
    v242.origin.y = rect1_24;
    v242.origin.x = x;
    v242.size.height = rect2;
    v242.size.width = v214;
    v149 = CGRectGetWidth(v242);
    v150 = *(v225[0] + 32);
    v151 = *(v225[0] + 40);
    v152 = *(v225[0] + 48);
    v153 = *(v225[0] + 56);
  }

  v154 = v147 - (v148 + v149 - CGRectGetMinX(*&v150)) + -16.0;
  if (v154 < v96)
  {
    v96 = v154;
  }

  if (CKMainScreenScale_once_80 != -1)
  {
    [CKNavigationBarCanvasView layoutTitleViewIfNeeded:];
  }

  v155 = *&CKMainScreenScale_sMainScreenScale_80;
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v155 = 1.0;
  }

  v128 = floor((x + (v214 - v96) * 0.5) * v155) / v155;
LABEL_86:
  v215 = v124;
  statusIndicatorImageView = self->_statusIndicatorImageView;
  if (statusIndicatorImageView)
  {
    image = [(UIImageView *)statusIndicatorImageView image];
    [image size];

    v158 = self->_statusIndicatorType & 0xFFFFFFFFFFFFFFFELL;
    v159 = 17.0;
    if (v158 == 2)
    {
      v160 = 12.0;
    }

    else
    {
      v160 = 17.0;
    }

    if (v158 == 2)
    {
      v159 = 19.0;
    }

    rect2a = v159;
    objc_opt_class();
    v161 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v162 = self->_titleView;
      v163 = v162;
      if (v162)
      {
        [(UIView *)v162 _firstLineBaseline];
        v161 = v164;
      }
    }

    else
    {
      v163 = 0;
    }

    v170 = v215;
    v171 = v215 + 0.5 - v160 + v161;
    rect1_24a = v160;
    v211 = v171;
    if (_shouldReverseLayoutDirection)
    {
      v172 = v128;
      v173 = v96;
      v174 = rect1_16a;
      v165 = CGRectGetMaxX(*(&v170 - 1)) + 2.0;
      v175 = v128;
      v168 = v128;
      v176 = v96;
    }

    else
    {
      v175 = v128;
      v177 = rect2a;
      v178 = v128 + -2.0 - rect2a;
      v243.origin.x = *(v227[0] + 32);
      v179 = *(v227[0] + 40);
      v180 = *(v227[0] + 56);
      v181 = *(v227[0] + 48) + 2.0;
      rect1a = v243.origin.x;
      v243.origin.y = v179;
      v243.size.width = v181;
      v243.size.height = v180;
      v165 = v178;
      v182 = v160;
      v168 = v175;
      v176 = v96;
      if (CGRectIntersectsRect(v243, *(&v171 - 1)))
      {
        v244.origin.x = rect1a;
        v244.origin.y = v179;
        v244.size.width = v181;
        v244.size.height = v180;
        v245.origin.x = CGRectGetMaxX(v244);
        v165 = v245.origin.x;
        v245.origin.y = v211;
        v245.size.width = rect2a;
        v245.size.height = rect1_24a;
        v183 = CGRectGetMaxX(v245) + 2.0 - v175;
        v168 = v175 + v183;
        v96 = v96 - v183;
      }
    }

    v167 = v96;
    v96 = v176;
    v166 = rect1_24a;
    v128 = v175;
    if (_shouldReverseLayoutDirection)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v165 = *MEMORY[0x1E695F058];
    v166 = *(MEMORY[0x1E695F058] + 24);
    v211 = *(MEMORY[0x1E695F058] + 8);
    rect2a = *(MEMORY[0x1E695F058] + 16);
    v167 = v96;
    v168 = v128;
    if (_shouldReverseLayoutDirection)
    {
LABEL_103:
      leftItemView3 = [(CKNavigationBarCanvasView *)self leftItemView];
      v86 = v227;
      goto LABEL_104;
    }
  }

  leftItemView3 = [(CKNavigationBarCanvasView *)self rightItemView];
LABEL_104:
  v184 = *(*v86 + 32);
  v219 = *(*v86 + 48);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      titleView9 = [(CKNavigationBarCanvasView *)self titleView];
      objc_opt_class();
      v186 = objc_opt_isKindOfClass();

      if (v186)
      {
        titleView10 = [(CKNavigationBarCanvasView *)self titleView];
        titleLabel = [leftItemView3 titleLabel];
        [leftItemView3 setNeedsLayout];
        [leftItemView3 layoutIfNeeded];
        text = [titleLabel text];
        v190 = [text length];

        if (v190)
        {
          [titleView10 _firstLineBaseline];
          v192 = v191;
          [titleLabel _lastLineBaselineFrameOriginY];
          v194 = v215 + v192;
        }

        else
        {
          [leftItemView3 bounds];
          v194 = rect1_16a * 0.5 + v215;
          v193 = v195 * 0.5;
        }

        v216[0] = MEMORY[0x1E69E9820];
        v216[1] = 3221225472;
        v216[2] = __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke_3;
        v216[3] = &unk_1E72F5A68;
        v218 = _shouldReverseLayoutDirection;
        v216[6] = v184;
        *&v216[7] = v194 - v193;
        v217 = v219;
        v216[4] = &v226;
        v216[5] = &v224;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v216];
      }
    }
  }

  v196 = [CKNavBarCanvasSubviewLayout layoutWithTitleFrame:v168 subtitleFrame:v215 leftItemFrame:v167 rightItemFrame:rect1_16a statusIndicatorFrame:v96 * 0.5 + v128 - rect1_8a * 0.5, rect1_16a + v215, rect1_8a, rect, *(v227[0] + 32), *(v227[0] + 40), *(v227[0] + 48), *(v227[0] + 56), *(v225[0] + 32), *(v225[0] + 40), *(v225[0] + 48), *(v225[0] + 56), *&v165, *&v211, *&rect2a, *&v166];

  _Block_object_dispose(&v224, 8);
  _Block_object_dispose(&v226, 8);

  return v196;
}

double __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  Width = CGRectGetWidth(*(a1 + 40));
  v4 = *(a1 + 72);
  if (v2 == 1)
  {
    return Width - v4;
  }

  v6 = Width - (v4 + 14.0 + 14.0);
  v7 = [*(a1 + 32) titleView];
  [v7 sizeThatFits:{v6, v6}];
  v5 = v8;

  return v5;
}

void __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 80);
  Width = CGRectGetWidth(*(a1 + 40));
  if (v2 != 1)
  {
    v4 = Width - (*(a1 + 72) + 14.0 + 14.0);
    v5 = [*(a1 + 32) subtitleView];
    [v5 sizeThatFits:{v4, v4}];
  }
}

float64x2_t __54__CKNavigationBarCanvasView__subviewLayoutWithBounds___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  if (*(a1 + 80) == 1)
  {
    if (CKMainScreenScale_once_80 != -1)
    {
      v11 = *(a1 + 48);
      v13 = *(a1 + 64);
      __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
      v2 = v11;
      v3 = v13;
    }

    v4 = 32;
  }

  else
  {
    if (CKMainScreenScale_once_80 != -1)
    {
      v12 = *(a1 + 48);
      v14 = *(a1 + 64);
      __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
      v2 = v12;
      v3 = v14;
    }

    v4 = 40;
  }

  v5 = CKMainScreenScale_sMainScreenScale_80;
  v6 = *(a1 + v4);
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    *&v5 = 1.0;
  }

  v7 = *(v6 + 8);
  v8 = vdupq_lane_s64(v5, 0);
  v9 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v2, *&v5)), v8);
  result = vdivq_f64(vrndaq_f64(vmulq_n_f64(v3, *&v5)), v8);
  v7[2] = v9;
  v7[3] = result;
  return result;
}

- (CGSize)_baseBarItemViewSizeForView:(id)view proposedSize:(CGSize)size minSize:(double)minSize
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [viewCopy buttonType] != 7)
  {
    width = fmax(width, 44.0);
    height = fmax(height, 44.0);
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)_calculateFrameForButton:(id)button shouldOffset:(BOOL)offset
{
  offsetCopy = offset;
  buttonCopy = button;
  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldUseMinimumSafeAreas = [delegate shouldUseMinimumSafeAreas];

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 navigationBarTitleViewVerticalOffsetWantsMinimumSafeAreas:shouldUseMinimumSafeAreas];
  v11 = v10 + 2.0;

  if ([(CKNavigationBarCanvasView *)self _canShowAvatarView])
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 avatarSize];
    v14 = v11 + v13 + 16.0;
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 navigationBarHeaderButtonVerticalOffset];
    v17 = v14 + v16;
  }

  else
  {
    v17 = v11 + 24.0 + 22.0;
  }

  if (CKPixelWidth_once_11 != -1)
  {
    [CKNavigationBarCanvasView _calculateFrameForButton:shouldOffset:];
  }

  v18 = *&CKPixelWidth_sPixel_11;
  v19 = *&CKPixelWidth_sPixel_11;
  v20 = *&CKPixelWidth_sPixel_11;
  buttonsToDisplay = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
  v22 = [buttonsToDisplay count];

  [(CKNavigationBarCanvasView *)self bounds];
  MidX = CGRectGetMidX(v54);
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v24 = *&CKMainScreenScale_sMainScreenScale_80;
  buttonsToDisplay2 = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
  v26 = [buttonsToDisplay2 containsObject:buttonCopy];

  if (v26)
  {
    v27 = v19 + 22.0 + 16.0 + 20.0;
    v28 = 1.0;
    if (v24 != 0.0)
    {
      v28 = v24;
    }

    v29 = round((MidX + (v20 + 72.0) * v22 * -0.5) * v28) / v28;
    v30 = round(v17 * v28) / v28;
    v31 = v18 + 72.0;
    buttonsToDisplay3 = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
    v33 = [buttonsToDisplay3 indexOfObject:buttonCopy];

    v34 = v29 + v33 * v31;
    if (CKMainScreenScale_once_80 != -1)
    {
      __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
    }

    v35 = *&CKMainScreenScale_sMainScreenScale_80;
    if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
    {
      v35 = 1.0;
    }

    v36 = round(v34 * v35) / v35;
    v37 = round(v30 * v35) / v35;
    v38 = round(v31 * v35) / v35;
    v39 = round(v27 * v35) / v35;
    if (offsetCopy)
    {
      buttonsToDisplay4 = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
      v41 = [buttonsToDisplay4 count];

      buttonsToDisplay5 = [(CKNavigationBarCanvasView *)self buttonsToDisplay];
      v43 = [buttonsToDisplay5 count];

      v44 = 10.0;
      if (v33 >= v41 >> 1)
      {
        if ((v43 & (v33 == v41 >> 1)) != 0)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = -10.0;
        }
      }

      v55.origin.x = v36;
      v55.origin.y = v37;
      v55.size.width = v38;
      v55.size.height = v39;
      v56 = CGRectOffset(v55, v44, -10.0);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
      if (CKMainScreenScale_once_80 != -1)
      {
        __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
      }

      v49 = *&CKMainScreenScale_sMainScreenScale_80;
      if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
      {
        v49 = 1.0;
      }

      v36 = round(x * v49) / v49;
      v37 = round(y * v49) / v49;
      v38 = round(width * v49) / v49;
      v39 = round(height * v49) / v49;
    }
  }

  else
  {
    v36 = *MEMORY[0x1E695F058];
    v37 = *(MEMORY[0x1E695F058] + 8);
    v38 = *(MEMORY[0x1E695F058] + 16);
    v39 = *(MEMORY[0x1E695F058] + 24);
  }

  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (double)_calculateYOriginForButtonWithHeight:(double)height
{
  window = [(CKNavigationBarCanvasView *)self window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v9 = v8;

  v10 = v9 > 0.0 && [(CKNavigationBarCanvasView *)self _canShowAvatarView];
  v11 = height * 0.5;
  delegate = [(CKNavigationBarCanvasView *)self delegate];
  shouldUseMinimumSafeAreas = [delegate shouldUseMinimumSafeAreas];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 navigationBarTitleViewVerticalOffsetWantsMinimumSafeAreas:shouldUseMinimumSafeAreas];
  v16 = v15;

  if (v10 && ![(CKNavigationBarCanvasView *)self enforceLeftItemViewsAlignmentToCenter])
  {
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 navigationBarLeftItemVerticalCenterOffset];
    v21 = v20 - v11;
    if (CKMainScreenScale_once_80 != -1)
    {
      __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
    }

    v22 = *&CKMainScreenScale_sMainScreenScale_80;
    if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
    {
      v22 = 1.0;
    }

    v18 = round(v21 * v22) / v22;
  }

  else
  {
    [(CKNavigationBarCanvasView *)self bounds];
    v18 = v17 * 0.5 - v11;
  }

  return v16 + v18;
}

- (CKNavigationBarCanvasViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end