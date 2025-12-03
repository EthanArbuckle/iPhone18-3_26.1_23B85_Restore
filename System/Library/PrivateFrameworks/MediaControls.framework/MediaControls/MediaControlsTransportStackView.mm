@interface MediaControlsTransportStackView
- (CGSize)sizeThatFits:(CGSize)result;
- (MediaControlsActionsDelegate)actionsDelegate;
- (MediaControlsTransportStackView)initWithFrame:(CGRect)frame;
- (id)_createTransportButton;
- (void)_resetTransportButton:(id)button;
- (void)_updateButtonConfiguration;
- (void)_updateButtonLayout;
- (void)_updateButtonVisualStyling:(id)styling;
- (void)_updateVisualStylingForButtons;
- (void)buttonHoldBegan:(id)began;
- (void)buttonHoldReleased:(id)released;
- (void)layoutSubviews;
- (void)setResponse:(id)response;
- (void)setStyle:(int64_t)style;
- (void)setVisualStylingProvider:(id)provider;
- (void)touchUpInsideCaptionsButton:(id)button;
- (void)touchUpInsideHangdogButton:(id)button;
- (void)touchUpInsideLeftButton:(id)button;
- (void)touchUpInsideMiddleButton:(id)button;
- (void)touchUpInsideRightButton:(id)button;
- (void)updateOnRouteChange;
@end

@implementation MediaControlsTransportStackView

- (MediaControlsTransportStackView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = MediaControlsTransportStackView;
  v3 = [(MediaControlsTransportStackView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _createTransportButton = [(MediaControlsTransportStackView *)v3 _createTransportButton];
    tvRemoteButton = v4->_tvRemoteButton;
    v4->_tvRemoteButton = _createTransportButton;

    _createTransportButton2 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    leftButton = v4->_leftButton;
    v4->_leftButton = _createTransportButton2;

    _createTransportButton3 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    middleButton = v4->_middleButton;
    v4->_middleButton = _createTransportButton3;

    _createTransportButton4 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    rightButton = v4->_rightButton;
    v4->_rightButton = _createTransportButton4;

    _createTransportButton5 = [(MediaControlsTransportStackView *)v4 _createTransportButton];
    languageOptionsButton = v4->_languageOptionsButton;
    v4->_languageOptionsButton = _createTransportButton5;

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
  leftButton = [(MediaControlsTransportStackView *)self leftButton];
  [leftButton frame];
  CGRectGetMaxX(v73);
  middleButton = [(MediaControlsTransportStackView *)self middleButton];
  [middleButton frame];
  CGRectGetMinX(v74);

  UIEdgeInsetsMakeWithEdges();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  tvRemoteButton = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [tvRemoteButton setHitRectInsets:{v40, v42, v44, v46}];

  leftButton2 = [(MediaControlsTransportStackView *)self leftButton];
  [leftButton2 setHitRectInsets:{v40, v42, v44, v46}];

  middleButton2 = [(MediaControlsTransportStackView *)self middleButton];
  [middleButton2 setHitRectInsets:{v40, v42, v44, v46}];

  rightButton = [(MediaControlsTransportStackView *)self rightButton];
  [rightButton setHitRectInsets:{v40, v42, v44, v46}];

  languageOptionsButton = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [languageOptionsButton setHitRectInsets:{v40, v42, v44, v46}];

  [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
}

- (void)touchUpInsideHangdogButton:(id)button
{
  actionsDelegate = [(MediaControlsTransportStackView *)self actionsDelegate];
  [actionsDelegate presentTVRemote];
}

- (void)touchUpInsideLeftButton:(id)button
{
  buttonCopy = button;
  leftButton = [(MediaControlsTransportStackView *)self leftButton];
  shouldPresentActionSheet = [leftButton shouldPresentActionSheet];

  if (shouldPresentActionSheet)
  {
    actionsDelegate = [(MediaControlsTransportStackView *)self actionsDelegate];
    if (actionsDelegate)
    {
      tracklist = [(MPCPlayerResponse *)self->_response tracklist];
      playingItemIndexPath = [tracklist playingItemIndexPath];

      if (playingItemIndexPath)
      {
        tracklist2 = [(MPCPlayerResponse *)self->_response tracklist];
        items = [tracklist2 items];
        v11 = [items itemAtIndexPath:playingItemIndexPath];

        [actionsDelegate presentRatingActionSheet:v11 sourceView:buttonCopy];
      }
    }
  }

  else
  {
    leftButton2 = [(MediaControlsTransportStackView *)self leftButton];
    isHolding = [leftButton2 isHolding];

    if (isHolding)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E69B0848];
    actionsDelegate = [buttonCopy touchUpInsideCommandRequest];
    [v14 performRequest:actionsDelegate completion:0];
  }

LABEL_9:
}

- (void)touchUpInsideMiddleButton:(id)button
{
  v3 = MEMORY[0x1E69B0848];
  touchUpInsideCommandRequest = [button touchUpInsideCommandRequest];
  [v3 performRequest:touchUpInsideCommandRequest completion:0];
}

- (void)touchUpInsideRightButton:(id)button
{
  buttonCopy = button;
  rightButton = [(MediaControlsTransportStackView *)self rightButton];
  isHolding = [rightButton isHolding];

  if ((isHolding & 1) == 0)
  {
    v6 = MEMORY[0x1E69B0848];
    touchUpInsideCommandRequest = [buttonCopy touchUpInsideCommandRequest];
    [v6 performRequest:touchUpInsideCommandRequest completion:0];
  }
}

- (void)touchUpInsideCaptionsButton:(id)button
{
  actionsDelegate = [(MediaControlsTransportStackView *)self actionsDelegate];
  [actionsDelegate presentLanguageOptions];
}

- (void)buttonHoldBegan:(id)began
{
  v3 = MEMORY[0x1E69B0848];
  holdBeginCommandRequest = [began holdBeginCommandRequest];
  [v3 performRequest:holdBeginCommandRequest completion:0];
}

- (void)buttonHoldReleased:(id)released
{
  v3 = MEMORY[0x1E69B0848];
  holdEndCommandRequest = [released holdEndCommandRequest];
  [v3 performRequest:holdEndCommandRequest completion:0];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MediaControlsTransportStackView *)self _updateButtonLayout];
  }
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  if (self->_response != responseCopy)
  {
    objc_storeStrong(&self->_response, response);
    tvRemoteButton = [(MediaControlsTransportStackView *)self tvRemoteButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:tvRemoteButton];

    leftButton = [(MediaControlsTransportStackView *)self leftButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:leftButton];

    middleButton = [(MediaControlsTransportStackView *)self middleButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:middleButton];

    rightButton = [(MediaControlsTransportStackView *)self rightButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:rightButton];

    languageOptionsButton = [(MediaControlsTransportStackView *)self languageOptionsButton];
    [(MediaControlsTransportStackView *)self _resetTransportButton:languageOptionsButton];

    tracklist = [(MPCPlayerResponse *)responseCopy tracklist];
    playingItemIndexPath = [tracklist playingItemIndexPath];

    if (playingItemIndexPath)
    {
      tracklist2 = [(MPCPlayerResponse *)responseCopy tracklist];
      items = [tracklist2 items];
      v15 = [items itemAtIndexPath:playingItemIndexPath];
    }

    else
    {
      v15 = 0;
    }

    play = [(MPCPlayerResponse *)self->_response play];
    pause = [(MPCPlayerResponse *)self->_response pause];
    stop = [(MPCPlayerResponse *)self->_response stop];
    middleButton2 = [(MediaControlsTransportStackView *)self middleButton];
    [middleButton2 setUserInteractionEnabled:1];

    v87 = stop;
    v85 = play;
    if (stop && v15 && ([v15 duration], (v88 & 1) != 0))
    {
      middleButton3 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme stopImage];
      [middleButton3 setImage:v21 forState:0];
      play = v87;
    }

    else if (pause)
    {
      middleButton3 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme pauseImage];
      [middleButton3 setImage:v21 forState:0];
      play = pause;
    }

    else
    {
      if (!play)
      {
        v84 = 0;
LABEL_14:
        tracklist3 = [(MPCPlayerResponse *)self->_response tracklist];
        changeItemCommand = [tracklist3 changeItemCommand];
        previousItem = [changeItemCommand previousItem];

        likeCommand = [v15 likeCommand];
        if ([likeCommand presentationStyle] == 3)
        {
LABEL_17:

LABEL_18:
          leftButton2 = [(MediaControlsTransportStackView *)self leftButton];
          v28 = +[MediaControlsTheme hamburgerImage];
          [leftButton2 setImage:v28 forState:0];

          leftButton3 = [(MediaControlsTransportStackView *)self leftButton];
          [leftButton3 setTouchUpInsideCommandRequest:0];
LABEL_19:
          v30 = 1;
LABEL_20:

          v31 = 1;
          goto LABEL_21;
        }

        dislikeCommand = [v15 dislikeCommand];
        if ([dislikeCommand presentationStyle] == 3)
        {

          goto LABEL_17;
        }

        wishlistCommand = [v15 wishlistCommand];
        presentationStyle = [wishlistCommand presentationStyle];

        if (presentationStyle == 3)
        {
          goto LABEL_18;
        }

        seekCommand = [v15 seekCommand];
        preferredBackwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
        v63 = [preferredBackwardJumpIntervals count];

        if (v63)
        {
          seekCommand2 = [v15 seekCommand];
          preferredBackwardJumpIntervals2 = [seekCommand2 preferredBackwardJumpIntervals];
          firstObject = [preferredBackwardJumpIntervals2 firstObject];
          [firstObject doubleValue];
          v68 = v67;

          seekCommand3 = [v15 seekCommand];
          leftButton3 = [seekCommand3 jumpByInterval:v68];

          endSeek2 = [MediaControlsTheme goBackwardImageForTimeInterval:v68];
          leftButton4 = [(MediaControlsTransportStackView *)self leftButton];
          [leftButton4 setImage:endSeek2 forState:0];

          leftButton5 = [(MediaControlsTransportStackView *)self leftButton];
          [leftButton5 setTouchUpInsideCommandRequest:leftButton3];
          goto LABEL_35;
        }

        likeCommand2 = [v15 likeCommand];
        if (likeCommand2)
        {
        }

        else
        {
          dislikeCommand2 = [v15 dislikeCommand];

          if (!dislikeCommand2)
          {
            leftButton6 = [(MediaControlsTransportStackView *)self leftButton];
            v79 = +[MediaControlsTheme backwardImage];
            [leftButton6 setImage:v79 forState:0];

            if (!previousItem)
            {
              v30 = 0;
              v31 = 0;
LABEL_21:
              leftButton7 = [(MediaControlsTransportStackView *)self leftButton];
              [leftButton7 setShouldPresentActionSheet:v30];

              tracklist4 = [(MPCPlayerResponse *)self->_response tracklist];
              changeItemCommand2 = [tracklist4 changeItemCommand];
              nextItem = [changeItemCommand2 nextItem];

              seekCommand4 = [v15 seekCommand];
              preferredForwardJumpIntervals = [seekCommand4 preferredForwardJumpIntervals];
              v38 = [preferredForwardJumpIntervals count];

              if (v38)
              {
                seekCommand5 = [v15 seekCommand];
                preferredForwardJumpIntervals2 = [seekCommand5 preferredForwardJumpIntervals];
                firstObject2 = [preferredForwardJumpIntervals2 firstObject];
                [firstObject2 doubleValue];
                v43 = v42;

                seekCommand6 = [v15 seekCommand];
                v45 = [seekCommand6 jumpByInterval:v43];

                endSeek = [MediaControlsTheme goForwardImageForTimeInterval:v43];
                rightButton2 = [(MediaControlsTransportStackView *)self rightButton];
                [rightButton2 setImage:endSeek forState:0];

                rightButton3 = [(MediaControlsTransportStackView *)self rightButton];
                [rightButton3 setTouchUpInsideCommandRequest:v45];
              }

              else
              {
                rightButton4 = [(MediaControlsTransportStackView *)self rightButton];
                v54 = +[MediaControlsTheme forwardImage];
                [rightButton4 setImage:v54 forState:0];

                if (!nextItem)
                {
                  v49 = 0;
                  goto LABEL_25;
                }

                rightButton5 = [(MediaControlsTransportStackView *)self rightButton];
                [rightButton5 setTouchUpInsideCommandRequest:nextItem];

                seekCommand7 = [v15 seekCommand];
                v45 = [seekCommand7 beginSeekWithDirection:1];

                seekCommand8 = [v15 seekCommand];
                endSeek = [seekCommand8 endSeek];

                if (v45)
                {
                  rightButton6 = [(MediaControlsTransportStackView *)self rightButton];
                  [rightButton6 setHoldBeginCommandRequest:v45];
                }

                if (!endSeek)
                {
LABEL_24:

                  v49 = 1;
LABEL_25:
                  leftButton8 = [(MediaControlsTransportStackView *)self leftButton];
                  [leftButton8 setUserInteractionEnabled:v31];

                  middleButton4 = [(MediaControlsTransportStackView *)self middleButton];
                  [middleButton4 setUserInteractionEnabled:v84];

                  rightButton7 = [(MediaControlsTransportStackView *)self rightButton];
                  [rightButton7 setUserInteractionEnabled:v49];

                  [(MediaControlsTransportStackView *)self _updateButtonLayout];
                  [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
                  [(MediaControlsTransportStackView *)self setNeedsLayout];

                  goto LABEL_26;
                }

                rightButton3 = [(MediaControlsTransportStackView *)self rightButton];
                [rightButton3 setHoldEndCommandRequest:endSeek];
              }

              goto LABEL_24;
            }

            leftButton9 = [(MediaControlsTransportStackView *)self leftButton];
            [leftButton9 setTouchUpInsideCommandRequest:previousItem];

            seekCommand9 = [v15 seekCommand];
            leftButton3 = [seekCommand9 beginSeekWithDirection:-1];

            seekCommand10 = [v15 seekCommand];
            endSeek2 = [seekCommand10 endSeek];

            if (leftButton3)
            {
              leftButton10 = [(MediaControlsTransportStackView *)self leftButton];
              [leftButton10 setHoldBeginCommandRequest:leftButton3];
            }

            if (!endSeek2)
            {
              goto LABEL_36;
            }

            leftButton5 = [(MediaControlsTransportStackView *)self leftButton];
            [leftButton5 setHoldEndCommandRequest:endSeek2];
LABEL_35:

LABEL_36:
            v30 = 0;
            goto LABEL_20;
          }
        }

        likeCommand3 = [v15 likeCommand];
        if ([likeCommand3 value])
        {
          +[MediaControlsTheme starFillImage];
        }

        else
        {
          +[MediaControlsTheme starImage];
        }
        leftButton3 = ;

        leftButton11 = [(MediaControlsTransportStackView *)self leftButton];
        [leftButton11 setImage:leftButton3 forState:0];

        leftButton12 = [(MediaControlsTransportStackView *)self leftButton];
        [leftButton12 setTouchUpInsideCommandRequest:0];

        goto LABEL_19;
      }

      middleButton3 = [(MediaControlsTransportStackView *)self middleButton];
      v21 = +[MediaControlsTheme playImage];
      [middleButton3 setImage:v21 forState:0];
    }

    middleButton5 = [(MediaControlsTransportStackView *)self middleButton];
    [middleButton5 setTouchUpInsideCommandRequest:play];

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

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    visualStylingProvider = [(MediaControlsTransportStackView *)self _updateVisualStylingForButtons];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, providerCopy);
}

- (void)_updateVisualStylingForButtons
{
  tvRemoteButton = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:tvRemoteButton];

  leftButton = [(MediaControlsTransportStackView *)self leftButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:leftButton];

  middleButton = [(MediaControlsTransportStackView *)self middleButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:middleButton];

  rightButton = [(MediaControlsTransportStackView *)self rightButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:rightButton];

  languageOptionsButton = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [(MediaControlsTransportStackView *)self _updateButtonVisualStyling:languageOptionsButton];
}

- (void)_updateButtonVisualStyling:(id)styling
{
  stylingCopy = styling;
  isUserInteractionEnabled = [stylingCopy isUserInteractionEnabled];
  visualStylingProvider = self->_visualStylingProvider;
  if (isUserInteractionEnabled)
  {
    if (visualStylingProvider)
    {
      imageView = [stylingCopy imageView];
      v7 = self->_visualStylingProvider;
      v8 = 0;
LABEL_6:
      traitCollection = [(MTVisualStylingProvider *)v7 _visualStylingForStyle:v8];
      [imageView mt_replaceVisualStyling:traitCollection];
      goto LABEL_10;
    }
  }

  else if (visualStylingProvider)
  {
    imageView = [stylingCopy imageView];
    v7 = self->_visualStylingProvider;
    v8 = 2;
    goto LABEL_6;
  }

  isUserInteractionEnabled2 = [stylingCopy isUserInteractionEnabled];
  imageView = [(MediaControlsTransportStackView *)self tintColor];
  if (isUserInteractionEnabled2)
  {
    [stylingCopy setTintColor:imageView];
    goto LABEL_11;
  }

  traitCollection = [(MediaControlsTransportStackView *)self traitCollection];
  v11 = [imageView tertiaryColorForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [stylingCopy setTintColor:v11];

LABEL_10:
LABEL_11:
}

- (id)_createTransportButton
{
  v3 = [(MPButton *)MediaControlsTransportButton easyTouchButtonWithType:0];
  [v3 setUserInteractionEnabled:0];
  imageView = [v3 imageView];
  [imageView setContentMode:1];

  [(MediaControlsTransportStackView *)self addSubview:v3];

  return v3;
}

- (void)_resetTransportButton:(id)button
{
  buttonCopy = button;
  [buttonCopy setTouchUpInsideCommandRequest:0];
  [buttonCopy setHoldBeginCommandRequest:0];
  [buttonCopy setHoldEndCommandRequest:0];
  [buttonCopy setShouldPresentActionSheet:0];
}

- (void)_updateButtonLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);
  shouldShowTVRemoteButton = [WeakRetained shouldShowTVRemoteButton];

  tvRemoteButton = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [tvRemoteButton setHidden:shouldShowTVRemoteButton ^ 1];

  tvRemoteButton2 = [(MediaControlsTransportStackView *)self tvRemoteButton];
  [tvRemoteButton2 setUserInteractionEnabled:shouldShowTVRemoteButton];

  tracklist = [(MPCPlayerResponse *)self->_response tracklist];
  playingItem = [tracklist playingItem];
  languageOptionGroups = [playingItem languageOptionGroups];

  if ([languageOptionGroups count])
  {
    v9 = [languageOptionGroups indexOfObjectPassingTest:&__block_literal_global_31] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  languageOptionsButton = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [languageOptionsButton setHidden:shouldShowTVRemoteButton ^ 1];

  languageOptionsButton2 = [(MediaControlsTransportStackView *)self languageOptionsButton];
  [languageOptionsButton2 setUserInteractionEnabled:v9];

  [(MediaControlsTransportStackView *)self _updateButtonConfiguration];
  self->_shouldShowTVRemoteButton = shouldShowTVRemoteButton;
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