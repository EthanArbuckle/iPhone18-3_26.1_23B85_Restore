@interface CKMessageHighlightButton
- (CGRect)balloonViewFrame;
- (CGRect)calculateFrameRelativeToBalloonViewFrame;
- (CGRect)calculateFrameRelativeToBalloonViewFrame:(CGRect)a3 transcriptHighlightFrame:(CGRect)a4;
- (CGRect)calculateTranscriptHighlightFrameRelativeToBalloonFrame:(CGRect)a3;
- (CGRect)replyButtonFrame;
- (CGSize)buttonSize;
- (CGSize)buttonSizeWithInsets;
- (CGSize)transcriptHighlightSize;
- (CKMessageHighlightButton)initWithInitialState:(BOOL)a3;
- (CKMessageHighlightButtonDelegate)delegate;
- (char)transcriptOrientation;
- (void)buttonWasPressed:(id)a3;
- (void)layoutSubviews;
- (void)performFadeoutAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)performHideAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)performSelectedAnimation:(id)a3;
- (void)performShowAnimation:(id)a3;
- (void)performUnselectedDismissAnimationWithDuration:(double)a3 completion:(id)a4;
@end

@implementation CKMessageHighlightButton

- (CKMessageHighlightButton)initWithInitialState:(BOOL)a3
{
  v3 = a3;
  v44.receiver = self;
  v44.super_class = CKMessageHighlightButton;
  v4 = [(CKMessageHighlightButton *)&v44 initWithFrame:0.0, 0.0, 0.0, 0.0];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 messageHighlightButtonUnselectedBackgroundColor];

    v7 = +[CKUIBehavior sharedBehaviors];
    v43 = [v7 messageHighlightButtonSelectedBackgroundColor];

    v8 = +[CKUIBehavior sharedBehaviors];
    v42 = [v8 messageHighlightButtonImageHighlightOn];

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 messageHighlightButtonImageHighlightOff];

    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
    backgroundColorView = v4->_backgroundColorView;
    v4->_backgroundColorView = v16;

    [(CKMessageHighlightButton *)v4 addSubview:v4->_backgroundColorView];
    v18 = MEMORY[0x1E69DC730];
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 replyButtonBackgroundBlurRadius];
    v20 = [v18 effectWithBlurRadius:?];

    v21 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v20];
    blurEffectView = v4->_blurEffectView;
    v4->_blurEffectView = v21;

    v23 = [MEMORY[0x1E69794A0] layer];
    blurEffectMaskLayer = v4->_blurEffectMaskLayer;
    v4->_blurEffectMaskLayer = v23;

    [(UIVisualEffectView *)v4->_blurEffectView setBackgroundColor:v6];
    [(UIView *)v4->_backgroundColorView addSubview:v4->_blurEffectView];
    v25 = [(UIView *)v4->_backgroundColorView layer];
    [v25 setMask:v4->_blurEffectMaskLayer];

    v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
    backgroundColorViewForCrossFade = v4->_backgroundColorViewForCrossFade;
    v4->_backgroundColorViewForCrossFade = v26;

    v28 = [(UIView *)v4->_backgroundColorViewForCrossFade layer];
    [v28 setOpacity:0.0];

    if (v3)
    {
      v29 = v6;
    }

    else
    {
      v29 = v43;
    }

    if (v3)
    {
      v30 = v42;
    }

    else
    {
      v30 = v10;
    }

    v31 = v10;
    [(UIView *)v4->_backgroundColorViewForCrossFade setBackgroundColor:v29];
    [(CKMessageHighlightButton *)v4 addSubview:v4->_backgroundColorViewForCrossFade];
    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v30];
    glyphView = v4->_glyphView;
    v4->_glyphView = v32;

    [(UIImageView *)v4->_glyphView setContentMode:1];
    [(CKMessageHighlightButton *)v4 addSubview:v4->_glyphView];
    v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v30];
    glyphViewForCrossFade = v4->_glyphViewForCrossFade;
    v4->_glyphViewForCrossFade = v34;

    v36 = [(UIImageView *)v4->_glyphViewForCrossFade layer];
    [v36 setOpacity:0.0];

    [(CKMessageHighlightButton *)v4 addSubview:v4->_glyphViewForCrossFade];
    v37 = [MEMORY[0x1E69DC738] buttonWithType:0];
    button = v4->_button;
    v4->_button = v37;

    v39 = v4->_button;
    v40 = +[CKUIBehavior sharedBehaviors];
    [v40 messageHighlightButtonInsets];
    [(UIButton *)v39 setContentEdgeInsets:?];

    [(UIButton *)v4->_button addTarget:v4 action:sel_buttonWasPressed_ forControlEvents:64];
    [(UIButton *)v4->_button setEnabled:1];
    [(CKMessageHighlightButton *)v4 addSubview:v4->_button];
    v4->_isHighlighted = v3;
    [(CKMessageHighlightButton *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CKMessageHighlightButton;
  [(CKMessageHighlightButton *)&v43 layoutSubviews];
  [(CKMessageHighlightButton *)self buttonSize];
  v4 = v3;
  v6 = v5;
  [(CKMessageHighlightButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (CKMainScreenScale_once_60 != -1)
  {
    [CKMessageHighlightButton layoutSubviews];
  }

  v15 = *&CKMainScreenScale_sMainScreenScale_60;
  if (*&CKMainScreenScale_sMainScreenScale_60 == 0.0)
  {
    v15 = 1.0;
  }

  v16 = floor((v8 + (v12 - v4) * 0.5) * v15) / v15;
  v17 = floor((v10 + (v14 - v6) * 0.5) * v15) / v15;
  v18 = [(UIView *)self->_backgroundColorView layer];
  [v18 setCornerRadius:v6 * 0.5];

  [(UIView *)self->_backgroundColorView setFrame:v16, v17, v4, v6];
  v19 = [(UIView *)self->_backgroundColorViewForCrossFade layer];
  [v19 setCornerRadius:v6 * 0.5];

  [(UIView *)self->_backgroundColorViewForCrossFade setFrame:v16, v17, v4, v6];
  v20 = +[CKUIBehavior sharedBehaviors];
  [v20 messageHighlightButtonGlyphSymbolPointSize];
  v22 = v21;
  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 messageHighlightButtonGlyphSymbolPointSize];
  v25 = v24;

  [(CKMessageHighlightButton *)self bounds];
  v27 = (v26 - v22) * 0.5;
  [(CKMessageHighlightButton *)self bounds];
  v29 = (v28 - v25) * 0.5;
  [(UIImageView *)self->_glyphView setFrame:v27, v29, v22, v25];
  [(UIImageView *)self->_glyphViewForCrossFade setFrame:v27, v29, v22, v25];
  [(CKMessageHighlightButton *)self bounds];
  [(UIButton *)self->_button setFrame:?];
  [(UIView *)self->_backgroundColorView bounds];
  [(UIVisualEffectView *)self->_blurEffectView setFrame:?];
  blurEffectMaskLayer = self->_blurEffectMaskLayer;
  v31 = MEMORY[0x1E69DC728];
  [(UIVisualEffectView *)self->_blurEffectView frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(UIView *)self->_backgroundColorView layer];
  [v40 cornerRadius];
  v42 = [v31 bezierPathWithRoundedRect:v33 cornerRadius:{v35, v37, v39, v41}];
  -[CAShapeLayer setPath:](blurEffectMaskLayer, "setPath:", [v42 CGPath]);
}

- (void)buttonWasPressed:(id)a3
{
  self->_didUpdate = 1;
  self->_isHighlighted ^= 1u;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CKMessageHighlightButton_buttonWasPressed___block_invoke;
  v6[3] = &unk_1E72EBA18;
  v6[4] = self;
  [(CKMessageHighlightButton *)self performSelectedAnimation:v6];
  v4 = [(CKMessageHighlightButton *)self delegate];

  if (v4)
  {
    v5 = [(CKMessageHighlightButton *)self delegate];
    [v5 messageHightlightButtonWasClicked:self];
  }
}

void __45__CKMessageHighlightButton_buttonWasPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 messageHightlightButtonDidFinishAnimating:*(a1 + 32)];
  }
}

- (CGSize)buttonSize
{
  [(CKMessageHighlightButton *)self replyButtonFrame];
  if (v2 == *MEMORY[0x1E695F060] && v2 == *(MEMORY[0x1E695F060] + 8))
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 messageHighlightButtonVisibleViewSize];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  else
  {
    v4 = v2;
    v5 = v2;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)buttonSizeWithInsets
{
  [(CKMessageHighlightButton *)self buttonSize];
  v4 = v3;
  v6 = v5;
  v7 = [(CKMessageHighlightButton *)self button];
  [v7 contentEdgeInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v4 + v11 + v15;
  v17 = v6 + v9 + v13;
  result.height = v17;
  result.width = v16;
  return result;
}

- (char)transcriptOrientation
{
  v2 = self;
  v3 = [(CKMessageHighlightButton *)self delegate];
  LOBYTE(v2) = [v3 messageHightlightButtonTranscriptOrientation:v2];

  return v2;
}

- (CGRect)balloonViewFrame
{
  v3 = [(CKMessageHighlightButton *)self delegate];
  [v3 messageHightlightButtonBalloonViewFrame:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)replyButtonFrame
{
  v3 = [(CKMessageHighlightButton *)self delegate];
  [v3 messageHightlightButtonReplyButtonFrame:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)transcriptHighlightSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 messageHighlightTranscriptBalloonSize];
  v4 = v3;
  v6 = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 messageHighlightTranscriptBalloonBorderWidth];
  v9 = v8 + v8;

  v10 = v4 + v9;
  v11 = v6 + v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)calculateTranscriptHighlightFrameRelativeToBalloonFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKMessageHighlightButton *)self transcriptHighlightSize];
  v9 = v8;
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 messageHighlightTranscriptBalloonRelativePosition];
  v14 = v13;
  v16 = v15;

  v17 = [(CKMessageHighlightButton *)self transcriptOrientation];
  if (v17 == 2)
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v25 = CGRectGetMinX(v28) - v9;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxY = CGRectGetMaxY(v29);
    v19 = v14 + v25;
    goto LABEL_10;
  }

  if (v17 == 1)
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CKMessageHighlightButton calculateTranscriptHighlightFrameRelativeToBalloonFrame:v20];
    }
  }

  else if (!v17)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MaxY = CGRectGetMaxY(v27);
    v19 = MaxX - v14;
LABEL_10:
    v21 = MaxY - v16;
    goto LABEL_11;
  }

  v19 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
LABEL_11:
  v22 = v9;
  v23 = v11;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v19;
  return result;
}

- (CGRect)calculateFrameRelativeToBalloonViewFrame
{
  [(CKMessageHighlightButton *)self balloonViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKMessageHighlightButton *)self calculateTranscriptHighlightFrameRelativeToBalloonFrame:?];

  [(CKMessageHighlightButton *)self calculateFrameRelativeToBalloonViewFrame:v4 transcriptHighlightFrame:v6, v8, v10, v11, v12, v13, v14];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)calculateFrameRelativeToBalloonViewFrame:(CGRect)a3 transcriptHighlightFrame:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  width = a4.size.width;
  x = a4.origin.x;
  v6 = MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  if (CKMainScreenScale_once_60 != -1)
  {
    [CKMessageHighlightButton calculateFrameRelativeToBalloonViewFrame:transcriptHighlightFrame:];
  }

  if (*&CKMainScreenScale_sMainScreenScale_60 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = *&CKMainScreenScale_sMainScreenScale_60;
  }

  [(CKMessageHighlightButton *)self buttonSizeWithInsets];
  v11 = v10;
  v13 = v12;
  [(CKMessageHighlightButton *)self replyButtonFrame];
  v14 = v31.origin.y;
  v33.origin.x = *v6;
  v33.origin.y = v6[1];
  v33.size.width = v7;
  v33.size.height = v8;
  if (CGRectEqualToRect(v31, v33))
  {
    v15 = floor((y + (height - v8) * 0.5) * v9) / v9 - v13 * 0.5;
  }

  else
  {
    v16 = [(CKMessageHighlightButton *)self button];
    [v16 contentEdgeInsets];
    v15 = v14 - v17;
  }

  v18 = [(CKMessageHighlightButton *)self traitCollection];
  [v18 displayScale];
  v20 = round((floor((x + (width - v7) * 0.5) * v9) / v9 - v11 * 0.5) * v19) / v19;
  v21 = round(v15 * v19) / v19;
  v22 = round(v11 * v19) / v19;
  v23 = round(v13 * v19) / v19;

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)performShowAnimation:(id)a3
{
  v58[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKMessageHighlightButton *)self balloonViewFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CKMessageHighlightButton *)self calculateTranscriptHighlightFrameRelativeToBalloonFrame:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v8;
  v21 = v20;
  [(CKMessageHighlightButton *)self calculateFrameRelativeToBalloonViewFrame:v6 transcriptHighlightFrame:v19, v10, v12, v13, v16];
  v53 = v23;
  v54 = v22;
  v25 = v24;
  v27 = v26;
  [(CKMessageHighlightButton *)self setFrame:?];
  [(CKMessageHighlightButton *)self setHidden:0];
  [(CKMessageHighlightButton *)self alpha];
  v29 = v28;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.300000012];
  v30 = MEMORY[0x1E6979518];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __49__CKMessageHighlightButton_performShowAnimation___block_invoke;
  v55[3] = &unk_1E72F48F8;
  v55[4] = self;
  v57 = v29;
  v31 = v4;
  v56 = v31;
  [v30 setCompletionBlock:v55];
  v32 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  v33 = MEMORY[0x1E696B098];
  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v21;
  v59.size.height = v18;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = v14;
  v35 = v18;
  v60.origin.y = v16;
  v60.size.width = v21;
  v60.size.height = v18;
  v36 = [v33 valueWithCGPoint:{MidX, CGRectGetMidY(v60)}];
  [v32 setFromValue:v36];

  v37 = MEMORY[0x1E696B098];
  v61.origin.x = v54;
  v61.origin.y = v53;
  v61.size.width = v25;
  v61.size.height = v27;
  v38 = CGRectGetMidX(v61);
  v62.origin.x = v54;
  v62.origin.y = v53;
  v62.size.width = v25;
  v62.size.height = v27;
  v39 = [v37 valueWithCGPoint:{v38, CGRectGetMidY(v62)}];
  [v32 setToValue:v39];

  [v32 setDuration:0.300000012];
  v40 = *MEMORY[0x1E6979EB8];
  v41 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v32 setTimingFunction:v41];

  [v32 setRemovedOnCompletion:1];
  v42 = 0.0;
  if (self->_isHighlighted)
  {
    [(CKMessageHighlightButton *)self buttonSize];
    v42 = v35 / v43;
  }

  v44 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
  v58[0] = v45;
  v58[1] = &unk_1F04E8938;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  [v44 setValues:v46];

  [v44 setCalculationMode:*MEMORY[0x1E6979598]];
  [v44 setDuration:0.300000012];
  v47 = [MEMORY[0x1E69793D0] functionWithName:v40];
  [v44 setTimingFunction:v47];

  LODWORD(v48) = 1.0;
  [v44 setRepeatCount:v48];
  [v44 setAutoreverses:0];
  [v44 setFillMode:*MEMORY[0x1E69797E8]];
  [v44 setRemovedOnCompletion:1];
  v49 = [(CKMessageHighlightButton *)self layer];
  [v49 addAnimation:v44 forKey:@"transform.scale.xy"];

  v50 = [(CKMessageHighlightButton *)self layer];
  [v50 addAnimation:v32 forKey:@"position"];

  if (!self->_isHighlighted)
  {
    v51 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v51 setFromValue:&unk_1F04E8948];
    [v51 setDuration:0.300000012];
    [v51 setRemovedOnCompletion:1];
    [v51 setFillMode:*MEMORY[0x1E69797E0]];
    [v51 setBeginTime:0.100000001];
    [v51 setBeginTimeMode:*MEMORY[0x1E69795C0]];
    v52 = [(CKMessageHighlightButton *)self layer];
    [v52 addAnimation:v51 forKey:@"opacity"];
  }

  [MEMORY[0x1E6979518] commit];
}

uint64_t __49__CKMessageHighlightButton_performShowAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)performFadeoutAnimationWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:a3];
  v7 = MEMORY[0x1E6979518];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __75__CKMessageHighlightButton_performFadeoutAnimationWithDuration_completion___block_invoke;
  v18 = &unk_1E72ED1C8;
  v19 = self;
  v20 = v6;
  v8 = v6;
  [v7 setCompletionBlock:&v15];
  v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:{@"transform.scale.xy", v15, v16, v17, v18, v19}];
  [v9 setToValue:&unk_1F04E8958];
  LODWORD(v10) = 1.5;
  [v9 setSpeed:v10];
  [v9 setMass:1.0];
  [v9 setStiffness:350.0];
  [v9 setDamping:40.0];
  [v9 setDuration:a3];
  [v9 setRemovedOnCompletion:0];
  v11 = *MEMORY[0x1E69797E0];
  [v9 setFillMode:*MEMORY[0x1E69797E0]];
  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v12 setToValue:&unk_1F04E8968];
  [v12 setDuration:a3];
  [v12 setRemovedOnCompletion:0];
  [v12 setFillMode:v11];
  v13 = [(CKMessageHighlightButton *)self layer];
  [v13 addAnimation:v9 forKey:@"transform.scale.xy"];

  v14 = [(CKMessageHighlightButton *)self layer];
  [v14 addAnimation:v12 forKey:@"opacity"];

  [MEMORY[0x1E6979518] commit];
}

uint64_t __75__CKMessageHighlightButton_performFadeoutAnimationWithDuration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)performHideAnimationWithDuration:(double)a3 completion:(id)a4
{
  if (self->_isHighlighted)
  {
    [(CKMessageHighlightButton *)self performUnselectedDismissAnimationWithDuration:a4 completion:a3];
  }

  else
  {
    [(CKMessageHighlightButton *)self performFadeoutAnimationWithDuration:a4 completion:a3];
  }
}

- (void)performSelectedAnimation:(id)a3
{
  v63[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKMessageHighlightButton *)self balloonViewFrame];
  [(CKMessageHighlightButton *)self calculateTranscriptHighlightFrameRelativeToBalloonFrame:?];
  v58 = v6;
  v60 = v5;
  v8 = v7;
  v10 = v9;
  [(CKMessageHighlightButton *)self frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 messageHighlightButtonInsets];
  v21 = v20;

  v22 = 0.0;
  if (self->_isHighlighted)
  {
    v22 = (v10 + v21) / v18;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [MEMORY[0x1E6979518] setAnimationDuration:0.3];
  [MEMORY[0x1E6979518] setCompletionBlock:v4];

  v64.origin.x = v12;
  v64.origin.y = v14;
  v64.size.width = v16;
  v64.size.height = v18;
  MidX = CGRectGetMidX(v64);
  v65.origin.x = v12;
  v65.origin.y = v14;
  v65.size.width = v16;
  v65.size.height = v18;
  MidY = CGRectGetMidY(v65);
  v66.origin.x = v60;
  v66.origin.y = v8;
  v66.size.width = v58;
  v66.size.height = v10;
  v25 = CGRectGetMidX(v66);
  v67.origin.x = v60;
  v67.origin.y = v8;
  v67.size.width = v58;
  v67.size.height = v10;
  v26 = CGRectGetMidY(v67);
  v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{MidX, MidY}];
  v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v26}];
  v29 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
  v63[0] = v27;
  v63[1] = v27;
  v59 = v28;
  v61 = v27;
  v63[2] = v28;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
  [v29 setValues:v30];

  v31 = *MEMORY[0x1E6979598];
  [v29 setCalculationMode:*MEMORY[0x1E6979598]];
  [v29 setTensionValues:&unk_1F04E6C30];
  [v29 setDuration:0.3];
  v32 = *MEMORY[0x1E6979EB8];
  v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v29 setTimingFunction:v33];

  LODWORD(v34) = 1.0;
  [v29 setRepeatCount:v34];
  [v29 setAutoreverses:0];
  v35 = *MEMORY[0x1E69797E8];
  [v29 setFillMode:*MEMORY[0x1E69797E8]];
  [v29 setRemovedOnCompletion:0];
  v36 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  v62[0] = &unk_1F04E8938;
  v62[1] = &unk_1F04E8978;
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v57];
  v62[2] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  [v36 setValues:v38];

  [v36 setTensionValues:&unk_1F04E6C48];
  [v36 setCalculationMode:v31];
  [v36 setDuration:0.3];
  v39 = [MEMORY[0x1E69793D0] functionWithName:v32];
  [v36 setTimingFunction:v39];

  LODWORD(v40) = 1.0;
  [v36 setRepeatCount:v40];
  [v36 setAutoreverses:0];
  [v36 setFillMode:v35];
  [v36 setRemovedOnCompletion:0];
  v41 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v41 setValues:&unk_1F04E6C60];
  [v41 setTensionValues:&unk_1F04E6C78];
  [v41 setCalculationMode:v31];
  v42 = [MEMORY[0x1E69793D0] functionWithName:v32];
  [v41 setTimingFunction:v42];

  LODWORD(v43) = 1.0;
  [v41 setRepeatCount:v43];
  [v41 setAutoreverses:0];
  [v41 setFillMode:v35];
  [v41 setRemovedOnCompletion:0];
  v44 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v44 setValues:&unk_1F04E6C90];
  [v44 setTensionValues:&unk_1F04E6CA8];
  [v44 setCalculationMode:v31];
  v45 = [MEMORY[0x1E69793D0] functionWithName:v32];
  [v44 setTimingFunction:v45];

  LODWORD(v46) = 1.0;
  [v44 setRepeatCount:v46];
  [v44 setAutoreverses:0];
  [v44 setFillMode:v35];
  [v44 setRemovedOnCompletion:0];
  if (!self->_isHighlighted)
  {
    v47 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
    [v47 setValues:&unk_1F04E6CC0];
    [v47 setTensionValues:&unk_1F04E6CD8];
    [v47 setCalculationMode:v31];
    [v47 setDuration:0.3];
    v48 = [MEMORY[0x1E69793D0] functionWithName:v32];
    [v47 setTimingFunction:v48];

    LODWORD(v49) = 1.0;
    [v47 setRepeatCount:v49];
    [v47 setAutoreverses:0];
    [v47 setFillMode:v35];
    [v47 setRemovedOnCompletion:0];
    v50 = [(CKMessageHighlightButton *)self layer];
    [v50 addAnimation:v47 forKey:@"opacity"];
  }

  v51 = [(CKMessageHighlightButton *)self layer];
  [v51 addAnimation:v29 forKey:@"position"];

  v52 = [(UIView *)self->_backgroundColorView layer];
  [v52 addAnimation:v41 forKey:@"opacity"];

  v53 = [(UIView *)self->_backgroundColorViewForCrossFade layer];
  [v53 addAnimation:v44 forKey:@"opacity"];

  v54 = [(UIImageView *)self->_glyphView layer];
  [v54 addAnimation:v41 forKey:@"opacity"];

  v55 = [(UIImageView *)self->_glyphViewForCrossFade layer];
  [v55 addAnimation:v44 forKey:@"opacity"];

  v56 = [(CKMessageHighlightButton *)self layer];
  [v56 addAnimation:v36 forKey:@"bounds"];

  [MEMORY[0x1E6979518] setDisableActions:0];
  [MEMORY[0x1E6979518] commit];
}

- (void)performUnselectedDismissAnimationWithDuration:(double)a3 completion:(id)a4
{
  v49[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CKMessageHighlightButton *)self balloonViewFrame];
  [(CKMessageHighlightButton *)self calculateTranscriptHighlightFrameRelativeToBalloonFrame:?];
  v46 = v7;
  v43 = v8;
  v10 = v9;
  v12 = v11;
  [(CKMessageHighlightButton *)self frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v44 = fmax(a3, 0.3);
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 messageHighlightButtonInsets];
  v23 = v22;

  v45 = (v12 + v23) / v20;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [MEMORY[0x1E6979518] setAnimationDuration:v44];
  [MEMORY[0x1E6979518] setCompletionBlock:v6];

  v50.origin.x = v14;
  v50.origin.y = v16;
  v50.size.width = v18;
  v50.size.height = v20;
  MidX = CGRectGetMidX(v50);
  v51.origin.x = v14;
  v51.origin.y = v16;
  v51.size.width = v18;
  v51.size.height = v20;
  MidY = CGRectGetMidY(v51);
  v52.origin.x = v46;
  v52.origin.y = v43;
  v52.size.width = v10;
  v52.size.height = v12;
  v26 = CGRectGetMidX(v52);
  v53.origin.x = v46;
  v53.origin.y = v43;
  v53.size.width = v10;
  v53.size.height = v12;
  v27 = CGRectGetMidY(v53);
  v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{MidX, MidY}];
  v47 = [MEMORY[0x1E696B098] valueWithCGPoint:{v26, v27}];
  v29 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
  v49[0] = v28;
  v49[1] = v28;
  v49[2] = v47;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  [v29 setValues:v30];

  v31 = *MEMORY[0x1E6979598];
  [v29 setCalculationMode:*MEMORY[0x1E6979598]];
  [v29 setTensionValues:&unk_1F04E6CF0];
  [v29 setDuration:v44];
  v32 = *MEMORY[0x1E6979EB8];
  v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v29 setTimingFunction:v33];

  LODWORD(v34) = 1.0;
  [v29 setRepeatCount:v34];
  [v29 setAutoreverses:0];
  v35 = *MEMORY[0x1E69797E8];
  [v29 setFillMode:*MEMORY[0x1E69797E8]];
  [v29 setRemovedOnCompletion:0];
  v36 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  v48[0] = &unk_1F04E8938;
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
  v48[1] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  [v36 setValues:v38];

  [v36 setTensionValues:&unk_1F04E6D08];
  [v36 setCalculationMode:v31];
  [v36 setDuration:v44];
  v39 = [MEMORY[0x1E69793D0] functionWithName:v32];
  [v36 setTimingFunction:v39];

  LODWORD(v40) = 1.0;
  [v36 setRepeatCount:v40];
  [v36 setAutoreverses:0];
  [v36 setFillMode:v35];
  [v36 setRemovedOnCompletion:0];
  v41 = [(CKMessageHighlightButton *)self layer];
  [v41 addAnimation:v29 forKey:@"position"];

  v42 = [(CKMessageHighlightButton *)self layer];
  [v42 addAnimation:v36 forKey:@"bounds"];

  [MEMORY[0x1E6979518] setDisableActions:0];
  [MEMORY[0x1E6979518] commit];
}

- (CKMessageHighlightButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end