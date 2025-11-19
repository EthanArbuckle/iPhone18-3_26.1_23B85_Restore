@interface MediaControlsTransportStackView
- (CGSize)sizeThatFits:(CGSize)result;
- (MediaControlsActionsDelegate)actionsDelegate;
- (MediaControlsTransportStackView)initWithFrame:(CGRect)a3;
- (id)_createTransportButton;
- (void)_resetTransportButton:(id)a3;
- (void)_updateButtonConfiguration;
- (void)_updateButtonLayout;
- (void)_updateButtonVisualStyling:(id)a3;
- (void)_updateVisualStylingForButtons;
- (void)buttonHoldBegan:(id)a3;
- (void)buttonHoldReleased:(id)a3;
- (void)layoutSubviews;
- (void)setResponse:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)touchUpInsideCaptionsButton:(id)a3;
- (void)touchUpInsideHangdogButton:(id)a3;
- (void)touchUpInsideLeftButton:(id)a3;
- (void)touchUpInsideMiddleButton:(id)a3;
- (void)touchUpInsideRightButton:(id)a3;
- (void)updateOnRouteChange;
@end

@implementation MediaControlsTransportStackView

- (MediaControlsTransportStackView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = MediaControlsTransportStackView;
  v3 = [(MediaControlsTransportStackView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MediaControlsTransportStackView *)v3 _createTransportButton];
    tvRemoteButton = v4->_tvRemoteButton;
    v4->_tvRemoteButton = v5;

    v7 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    leftButton = v4->_leftButton;
    v4->_leftButton = v7;

    v9 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    middleButton = v4->_middleButton;
    v4->_middleButton = v9;

    v11 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    rightButton = v4->_rightButton;
    v4->_rightButton = v11;

    v13 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    languageOptionsButton = v4->_languageOptionsButton;
    v4->_languageOptionsButton = v13;

    [(MediaControlsTransportStackView *)v4 _updateButtonConfiguration];
    v15 = v4->_tvRemoteButton;
    v16 = +[MediaControlsTheme appleTVRemote];
    [(MediaControlsTransportButton *)v15 setImage:v16 forState:0];

    v17 = v4->_leftButton;
    v18 = +[MediaControlsTheme backwardImage];
    [(MediaControlsTransportButton *)v17 setImage:v18 forState:0];

    v19 = v4->_middleButton;
    v20 = +[MediaControlsTheme playImage];
    [(MediaControlsTransportButton *)v19 setImage:v20 forState:0];

    v21 = v4->_rightButton;
    v22 = +[MediaControlsTheme forwardImage];
    [(MediaControlsTransportButton *)v21 setImage:v22 forState:0];

    v23 = v4->_languageOptionsButton;
    v24 = +[MediaControlsTheme captionsImage];
    [(MediaControlsTransportButton *)v23 setImage:v24 forState:0];

    [(MediaControlsTransportButton *)v4->_tvRemoteButton addTarget:v4 action:sel_touchUpInsideHangdogButton_ forControlEvents:64];
    [(MediaControlsTransportButton *)v4->_leftButton addTarget:v4 action:sel_touchUpInsideLeftButton_ forControlEvents:64];
    [(MediaControlsTransportButton *)v4->_middleButton addTarget:v4 action:sel_touchUpInsideMiddleButton_ forControlEvents:64];
    [(MediaControlsTransportButton *)v4->_rightButton addTarget:v4 action:sel_touchUpInsideRightButton_ forControlEvents:64];
    [(MediaControlsTransportButton *)v4->_languageOptionsButton addTarget:v4 action:sel_touchUpInsideCaptionsButton_ forControlEvents:64];
    [(MediaControlsTransportButton *)v4->_leftButton addTarget:v4 action:sel_buttonHoldBegan_ forControlEvents:0x1000000];
    [(MediaControlsTransportButton *)v4->_leftButton addTarget:v4 action:sel_buttonHoldReleased_ forControlEvents:0x2000000];
    [(MediaControlsTransportButton *)v4->_rightButton addTarget:v4 action:sel_buttonHoldBegan_ forControlEvents:0x1000000];
    [(MediaControlsTransportButton *)v4->_rightButton addTarget:v4 action:sel_buttonHoldReleased_ forControlEvents:0x2000000];
  }

  return v4;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = MediaControlsTransportStackView;
  [(MediaControlsTransportStackView *)&v54 layoutSubviews];
  if (self->_style == 1 || !self->_shouldShowTVRemoteButton)
  {
    [(MediaControlsTransportStackView *)self bounds];
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    CGRectGetWidth(v64);
    UIRoundToViewScale();
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    CGRectGetMinY(v66);
    UIRectCenteredYInRect();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(MediaControlsTransportButton *)self->_tvRemoteButton setFrame:?];
    v67.origin.x = v22;
    v67.origin.y = v24;
    v67.size.width = v26;
    v67.size.height = v28;
    CGRectGetMaxX(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    CGRectGetMinY(v68);
    UIRectCenteredYInRect();
    [(MediaControlsTransportButton *)self->_leftButton setFrame:?];
    UIRectCenteredRect();
    UIRectCenteredRect();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(MediaControlsTransportButton *)self->_middleButton setFrame:?];
    v69.origin.x = v30;
    v69.origin.y = v32;
    v69.size.width = v34;
    v69.size.height = v36;
    CGRectGetMaxX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    CGRectGetMinY(v70);
    UIRectCenteredYInRect();
    [(MediaControlsTransportButton *)self->_rightButton setFrame:?];
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    CGRectGetMaxX(v71);
  }

  else
  {
    [(MediaControlsTransportStackView *)self bounds];
    UIRectInset();
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    CGRectGetWidth(v55);
    UIRoundToViewScale();
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    CGRectGetMinX(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    CGRectGetMinY(v57);
    UIRectCenteredYInRect();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    rect = v13;
    [(MediaControlsTransportButton *)self->_tvRemoteButton setFrame:?];
    v58.origin.x = v8;
    v58.origin.y = v10;
    v58.size.width = v12;
    v58.size.height = rect;
    CGRectGetMaxX(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    CGRectGetMinY(v59);
    UIRectCenteredYInRect();
    [(MediaControlsTransportButton *)self->_leftButton setFrame:?];
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    CGRectGetMinY(v60);
    UIRectCenteredRect();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    recta = v20;
    [(MediaControlsTransportButton *)self->_middleButton setFrame:?];
    v61.origin.x = v15;
    v61.origin.y = v17;
    v61.size.width = v19;
    v61.size.height = recta;
    CGRectGetMaxX(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    CGRectGetMinY(v62);
    UIRectCenteredYInRect();
    [(MediaControlsTransportButton *)self->_rightButton setFrame:?];
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    CGRectGetMaxX(v63);
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  CGRectGetMinY(v72);
  UIRectCenteredYInRect();
  [(MediaControlsTransportButton *)self->_languageOptionsButton setFrame:?];
  v37 = [(MediaControlsTransportStackView *)self leftButton];
  [v37 frame];
  CGRectGetMaxX(v73);
  v38 = [(MediaControlsTransportStackView *)self middleButton];
  [v38 frame];
  CGRectGetMinX(v74);

  UIEdgeInsetsMakeWithEdges();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [v47 setHitRectInsets:{v40, v42, v44, v46}];

  v48 = [(MediaControlsTransportStackView *)self leftButton];
  [v48 setHitRectInsets:{v40, v42, v44, v46}];

  v49 = [(MediaControlsTransportStackView *)self middleButton];
  [v49 setHitRectInsets:{v40, v42, v44, v46}];

  v50 = [(MediaControlsTransportStackView *)self rightButton];
  [v50 setHitRectInsets:{v40, v42, v44, v46}];

  v51 = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [v51 setHitRectInsets:{v40, v42, v44, v46}];

  [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
}

- (void)touchUpInsideHangdogButton:(id)a3
{
  v3 = [(MediaControlsTransportStackView *)self actionsDelegate];
  [v3 presentTVRemote];
}

- (void)touchUpInsideLeftButton:(id)a3
{
  v15 = a3;
  v4 = [(MediaControlsTransportStackView *)self leftButton];
  v5 = [v4 shouldPresentActionSheet];

  if (v5)
  {
    v6 = [(MediaControlsTransportStackView *)self actionsDelegate];
    if (v6)
    {
      v7 = [(MPCPlayerResponse *)self->_response tracklist];
      v8 = [v7 playingItemIndexPath];

      if (v8)
      {
        v9 = [(MPCPlayerResponse *)self->_response tracklist];
        v10 = [v9 items];
        v11 = [v10 itemAtIndexPath:v8];

        [v6 presentRatingActionSheet:v11 sourceView:v15];
      }
    }
  }

  else
  {
    v12 = [(MediaControlsTransportStackView *)self leftButton];
    v13 = [v12 isHolding];

    if (v13)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E69B0848];
    v6 = [v15 touchUpInsideCommandRequest];
    [v14 performRequest:v6 completion:0];
  }

LABEL_9:
}

- (void)touchUpInsideMiddleButton:(id)a3
{
  v3 = MEMORY[0x1E69B0848];
  v4 = [a3 touchUpInsideCommandRequest];
  [v3 performRequest:v4 completion:0];
}

- (void)touchUpInsideRightButton:(id)a3
{
  v8 = a3;
  v4 = [(MediaControlsTransportStackView *)self rightButton];
  v5 = [v4 isHolding];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69B0848];
    v7 = [v8 touchUpInsideCommandRequest];
    [v6 performRequest:v7 completion:0];
  }
}

- (void)touchUpInsideCaptionsButton:(id)a3
{
  v3 = [(MediaControlsTransportStackView *)self actionsDelegate];
  [v3 presentLanguageOptions];
}

- (void)buttonHoldBegan:(id)a3
{
  v3 = MEMORY[0x1E69B0848];
  v4 = [a3 holdBeginCommandRequest];
  [v3 performRequest:v4 completion:0];
}

- (void)buttonHoldReleased:(id)a3
{
  v3 = MEMORY[0x1E69B0848];
  v4 = [a3 holdEndCommandRequest];
  [v3 performRequest:v4 completion:0];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(MediaControlsTransportStackView *)self _updateButtonLayout];
  }
}

- (void)setResponse:(id)a3
{
  v5 = a3;
  if (self->_response != v5)
  {
    objc_storeStrong(&self->_response, a3);
    v6 = [(MediaControlsTransportStackView *)self tvRemoteButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:v6];

    v7 = [(MediaControlsTransportStackView *)self leftButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:v7];

    v8 = [(MediaControlsTransportStackView *)self middleButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:v8];

    v9 = [(MediaControlsTransportStackView *)self rightButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:v9];

    v10 = [(MediaControlsTransportStackView *)self languageOptionsButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:v10];

    v11 = [(MPCPlayerResponse *)v5 tracklist];
    v12 = [v11 playingItemIndexPath];

    if (v12)
    {
      v13 = [(MPCPlayerResponse *)v5 tracklist];
      v14 = [v13 items];
      v15 = [v14 itemAtIndexPath:v12];
    }

    else
    {
      v15 = 0;
    }

    v16 = [(MPCPlayerResponse *)self->_response play];
    v17 = [(MPCPlayerResponse *)self->_response pause];
    v18 = [(MPCPlayerResponse *)self->_response stop];
    v19 = [(MediaControlsTransportStackView *)self middleButton];
    [v19 setUserInteractionEnabled:1];

    v87 = v18;
    v85 = v16;
    if (v18 && v15 && ([v15 duration], (v88 & 1) != 0))
    {
      v20 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme stopImage];
      [v20 setImage:v21 forState:0];
      v16 = v87;
    }

    else if (v17)
    {
      v20 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme pauseImage];
      [v20 setImage:v21 forState:0];
      v16 = v17;
    }

    else
    {
      if (!v16)
      {
        v84 = 0;
LABEL_14:
        v23 = [(MPCPlayerResponse *)self->_response tracklist];
        v24 = [v23 changeItemCommand];
        v86 = [v24 previousItem];

        v25 = [v15 likeCommand];
        if ([v25 presentationStyle] == 3)
        {
LABEL_17:

LABEL_18:
          v27 = [(MediaControlsTransportStackView *)self leftButton];
          v28 = +[MediaControlsTheme hamburgerImage];
          [v27 setImage:v28 forState:0];

          v29 = [(MediaControlsTransportStackView *)self leftButton];
          [v29 setTouchUpInsideCommandRequest:0];
LABEL_19:
          v30 = 1;
LABEL_20:

          v31 = 1;
          goto LABEL_21;
        }

        v26 = [v15 dislikeCommand];
        if ([v26 presentationStyle] == 3)
        {

          goto LABEL_17;
        }

        v59 = [v15 wishlistCommand];
        v60 = [v59 presentationStyle];

        if (v60 == 3)
        {
          goto LABEL_18;
        }

        v61 = [v15 seekCommand];
        v62 = [v61 preferredBackwardJumpIntervals];
        v63 = [v62 count];

        if (v63)
        {
          v64 = [v15 seekCommand];
          v65 = [v64 preferredBackwardJumpIntervals];
          v66 = [v65 firstObject];
          [v66 doubleValue];
          v68 = v67;

          v69 = [v15 seekCommand];
          v29 = [v69 jumpByInterval:v68];

          v70 = [MediaControlsTheme goBackwardImageForTimeInterval:v68];
          v71 = [(MediaControlsTransportStackView *)self leftButton];
          [v71 setImage:v70 forState:0];

          v72 = [(MediaControlsTransportStackView *)self leftButton];
          [v72 setTouchUpInsideCommandRequest:v29];
          goto LABEL_35;
        }

        v73 = [v15 likeCommand];
        if (v73)
        {
        }

        else
        {
          v74 = [v15 dislikeCommand];

          if (!v74)
          {
            v78 = [(MediaControlsTransportStackView *)self leftButton];
            v79 = +[MediaControlsTheme backwardImage];
            [v78 setImage:v79 forState:0];

            if (!v86)
            {
              v30 = 0;
              v31 = 0;
LABEL_21:
              v32 = [(MediaControlsTransportStackView *)self leftButton];
              [v32 setShouldPresentActionSheet:v30];

              v33 = [(MPCPlayerResponse *)self->_response tracklist];
              v34 = [v33 changeItemCommand];
              v35 = [v34 nextItem];

              v36 = [v15 seekCommand];
              v37 = [v36 preferredForwardJumpIntervals];
              v38 = [v37 count];

              if (v38)
              {
                v39 = [v15 seekCommand];
                v40 = [v39 preferredForwardJumpIntervals];
                v41 = [v40 firstObject];
                [v41 doubleValue];
                v43 = v42;

                v44 = [v15 seekCommand];
                v45 = [v44 jumpByInterval:v43];

                v46 = [MediaControlsTheme goForwardImageForTimeInterval:v43];
                v47 = [(MediaControlsTransportStackView *)self rightButton];
                [v47 setImage:v46 forState:0];

                v48 = [(MediaControlsTransportStackView *)self rightButton];
                [v48 setTouchUpInsideCommandRequest:v45];
              }

              else
              {
                v53 = [(MediaControlsTransportStackView *)self rightButton];
                v54 = +[MediaControlsTheme forwardImage];
                [v53 setImage:v54 forState:0];

                if (!v35)
                {
                  v49 = 0;
                  goto LABEL_25;
                }

                v55 = [(MediaControlsTransportStackView *)self rightButton];
                [v55 setTouchUpInsideCommandRequest:v35];

                v56 = [v15 seekCommand];
                v45 = [v56 beginSeekWithDirection:1];

                v57 = [v15 seekCommand];
                v46 = [v57 endSeek];

                if (v45)
                {
                  v58 = [(MediaControlsTransportStackView *)self rightButton];
                  [v58 setHoldBeginCommandRequest:v45];
                }

                if (!v46)
                {
LABEL_24:

                  v49 = 1;
LABEL_25:
                  v50 = [(MediaControlsTransportStackView *)self leftButton];
                  [v50 setUserInteractionEnabled:v31];

                  v51 = [(MediaControlsTransportStackView *)self middleButton];
                  [v51 setUserInteractionEnabled:v84];

                  v52 = [(MediaControlsTransportStackView *)self rightButton];
                  [v52 setUserInteractionEnabled:v49];

                  [(MediaControlsTransportStackView *)self _updateButtonLayout];
                  [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
                  [(MediaControlsTransportStackView *)self setNeedsLayout];

                  goto LABEL_26;
                }

                v48 = [(MediaControlsTransportStackView *)self rightButton];
                [v48 setHoldEndCommandRequest:v46];
              }

              goto LABEL_24;
            }

            v80 = [(MediaControlsTransportStackView *)self leftButton];
            [v80 setTouchUpInsideCommandRequest:v86];

            v81 = [v15 seekCommand];
            v29 = [v81 beginSeekWithDirection:-1];

            v82 = [v15 seekCommand];
            v70 = [v82 endSeek];

            if (v29)
            {
              v83 = [(MediaControlsTransportStackView *)self leftButton];
              [v83 setHoldBeginCommandRequest:v29];
            }

            if (!v70)
            {
              goto LABEL_36;
            }

            v72 = [(MediaControlsTransportStackView *)self leftButton];
            [v72 setHoldEndCommandRequest:v70];
LABEL_35:

LABEL_36:
            v30 = 0;
            goto LABEL_20;
          }
        }

        v75 = [v15 likeCommand];
        if ([v75 value])
        {
          +[MediaControlsTheme starFillImage];
        }

        else
        {
          +[MediaControlsTheme starImage];
        }
        v29 = ;

        v76 = [(MediaControlsTransportStackView *)self leftButton];
        [v76 setImage:v29 forState:0];

        v77 = [(MediaControlsTransportStackView *)self leftButton];
        [v77 setTouchUpInsideCommandRequest:0];

        goto LABEL_19;
      }

      v20 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme playImage];
      [v20 setImage:v21 forState:0];
    }

    v22 = [(MediaControlsTransportStackView *)self middleButton];
    [v22 setTouchUpInsideCommandRequest:v16];

    v84 = 1;
    goto LABEL_14;
  }

LABEL_26:
}

- (void)updateOnRouteChange
{
  [(MediaControlsTransportStackView *)self _updateButtonLayout];

  [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v7 = v5;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    visualStylingProvider = [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, v5);
}

- (void)_updateVisualStylingForButtons
{
  v3 = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:v3];

  v4 = [(MediaControlsTransportStackView *)self leftButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:v4];

  v5 = [(MediaControlsTransportStackView *)self middleButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:v5];

  v6 = [(MediaControlsTransportStackView *)self rightButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:v6];

  v7 = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:v7];
}

- (void)_updateButtonVisualStyling:(id)a3
{
  v12 = a3;
  v4 = [v12 isUserInteractionEnabled];
  visualStylingProvider = self->_visualStylingProvider;
  if (v4)
  {
    if (visualStylingProvider)
    {
      v6 = [v12 imageView];
      v7 = self->_visualStylingProvider;
      v8 = 0;
LABEL_6:
      v9 = [(MTVisualStylingProvider *)v7 _visualStylingForStyle:v8];
      [v6 mt_replaceVisualStyling:v9];
      goto LABEL_10;
    }
  }

  else if (visualStylingProvider)
  {
    v6 = [v12 imageView];
    v7 = self->_visualStylingProvider;
    v8 = 2;
    goto LABEL_6;
  }

  v10 = [v12 isUserInteractionEnabled];
  v6 = [(MediaControlsTransportStackView *)self tintColor];
  if (v10)
  {
    [v12 setTintColor:v6];
    goto LABEL_11;
  }

  v9 = [(MediaControlsTransportStackView *)self traitCollection];
  v11 = [v6 tertiaryColorForInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];
  [v12 setTintColor:v11];

LABEL_10:
LABEL_11:
}

- (id)_createTransportButton
{
  v3 = [(MPButton *)MediaControlsTransportButton easyTouchButtonWithType:0];
  [v3 setUserInteractionEnabled:0];
  v4 = [v3 imageView];
  [v4 setContentMode:1];

  [(MediaControlsTransportStackView *)self addSubview:v3];

  return v3;
}

- (void)_resetTransportButton:(id)a3
{
  v3 = a3;
  [v3 setTouchUpInsideCommandRequest:0];
  [v3 setHoldBeginCommandRequest:0];
  [v3 setHoldEndCommandRequest:0];
  [v3 setShouldPresentActionSheet:0];
}

- (void)_updateButtonLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);
  v4 = [WeakRetained shouldShowTVRemoteButton];

  v5 = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [v5 setHidden:v4 ^ 1];

  v6 = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [v6 setUserInteractionEnabled:v4];

  v7 = [(MPCPlayerResponse *)self->_response tracklist];
  v8 = [v7 playingItem];
  v12 = [v8 languageOptionGroups];

  if ([v12 count])
  {
    v9 = [v12 indexOfObjectPassingTest:&__block_literal_global_31] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [v10 setHidden:v4 ^ 1];

  v11 = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [v11 setUserInteractionEnabled:v9];

  [(MediaControlsTransportStackView *)self _updateButtonConfiguration];
  self->_shouldShowTVRemoteButton = v4;
  [(MediaControlsTransportStackView *)self setNeedsLayout];
}

- (void)_updateButtonConfiguration
{
  tvRemoteButton = self->_tvRemoteButton;
  if (self->_style == 1)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 32.0;
  }

  v5 = dbl_1A23081D0[self->_style == 1];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v4];
  [(MediaControlsTransportButton *)tvRemoteButton setPreferredSymbolConfiguration:v6 forImageInState:0];

  leftButton = self->_leftButton;
  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v4];
  [(MediaControlsTransportButton *)leftButton setPreferredSymbolConfiguration:v8 forImageInState:0];

  middleButton = self->_middleButton;
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:v4];
  [(MediaControlsTransportButton *)middleButton setPreferredSymbolConfiguration:v10 forImageInState:0];

  rightButton = self->_rightButton;
  v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v4];
  [(MediaControlsTransportButton *)rightButton setPreferredSymbolConfiguration:v12 forImageInState:0];

  languageOptionsButton = self->_languageOptionsButton;
  v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v4];
  [(MediaControlsTransportButton *)languageOptionsButton setPreferredSymbolConfiguration:v14 forImageInState:0];

  [(MediaControlsTransportButton *)self->_tvRemoteButton setCursorScale:v5];
  [(MediaControlsTransportButton *)self->_leftButton setCursorScale:v5];
  [(MediaControlsTransportButton *)self->_middleButton setCursorScale:v5];
  [(MediaControlsTransportButton *)self->_rightButton setCursorScale:v5];
  v15 = self->_languageOptionsButton;

  [(MediaControlsTransportButton *)v15 setCursorScale:v5];
}

- (MediaControlsActionsDelegate)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

@end