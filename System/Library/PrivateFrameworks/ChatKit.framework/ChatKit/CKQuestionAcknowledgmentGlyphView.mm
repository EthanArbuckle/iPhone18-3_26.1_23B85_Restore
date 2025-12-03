@interface CKQuestionAcknowledgmentGlyphView
- (CGPoint)glyphOffset;
- (CKQuestionAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color;
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
- (void)layoutSubviews;
- (void)setGlyphColor:(id)color;
@end

@implementation CKQuestionAcknowledgmentGlyphView

- (CKQuestionAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color
{
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = CKQuestionAcknowledgmentGlyphView;
  v5 = [(CKQuestionAcknowledgmentGlyphView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKQuestionAcknowledgmentGlyphView *)v5 setBackgroundColor:0];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = v7;
    if (colorCopy == -1)
    {
      grayQuestionMarkGlyphAckImage = [v7 grayQuestionMarkGlyphAckImage];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 grayQuestionMarkDotAckImage];
    }

    else
    {
      grayQuestionMarkGlyphAckImage = [v7 whiteQuestionMarkGlyphAckImage];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 whiteQuestionMarkDotAckImage];
    }
    v11 = ;

    v12 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:grayQuestionMarkGlyphAckImage];
    [(CKQuestionAcknowledgmentGlyphView *)v6 addSubview:v12];
    [(CKQuestionAcknowledgmentGlyphView *)v6 setGlyph:v12];
    v13 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v11];
    [(CKQuestionAcknowledgmentGlyphView *)v6 addSubview:v13];
    [(CKQuestionAcknowledgmentGlyphView *)v6 setDot:v13];
    [(CKQuestionAcknowledgmentGlyphView *)v6 setClipsToBounds:1];
  }

  return v6;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = CKQuestionAcknowledgmentGlyphView;
  [(CKQuestionAcknowledgmentGlyphView *)&v44 layoutSubviews];
  [(CKQuestionAcknowledgmentGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  glyph = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph sizeToFit];

  v12 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  [v12 sizeToFit];

  v42 = *(MEMORY[0x1E695F058] + 8);
  v43 = *MEMORY[0x1E695F058];
  glyph2 = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph2 bounds];
  Width = CGRectGetWidth(v45);
  glyph3 = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph3 bounds];
  Height = CGRectGetHeight(v46);
  v17 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  [v17 bounds];
  v18 = Height + CGRectGetHeight(v47);

  v19 = v4;
  v48.origin.x = v4;
  v41 = v6;
  v48.origin.y = v6;
  v48.size.width = v8;
  v20 = v10;
  v48.size.height = v10;
  v21 = CGRectGetHeight(v48);
  v49.origin.y = v42;
  v49.origin.x = v43;
  v22 = Width;
  v49.size.width = Width;
  v49.size.height = v18;
  v23 = CGRectGetHeight(v49);
  if (CKMainScreenScale_once_98 != -1)
  {
    [CKEnglishHaAcknowledgmentGlyphView layoutSubviews];
  }

  v24 = v21 / v23;
  v25 = *&CKMainScreenScale_sMainScreenScale_98;
  if (*&CKMainScreenScale_sMainScreenScale_98 == 0.0)
  {
    v25 = 1.0;
  }

  v26 = floor((v19 + (v8 - v22 * (v21 / v23)) * 0.5) * v25) / v25;
  v27 = floor((v41 + (v20 - v18 * (v21 / v23)) * 0.5) * v25) / v25;
  glyph4 = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph4 bounds];
  v30 = v24 * v29;
  v32 = v24 * v31;

  v50.origin.x = v26;
  v50.origin.y = v27;
  v50.size.width = v30;
  v50.size.height = v32;
  MaxY = CGRectGetMaxY(v50);
  v34 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  [v34 bounds];
  v36 = v24 * v35;
  v38 = v24 * v37;

  glyph5 = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph5 setFrame:{v26, v27, v30, v32}];

  v40 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  [v40 setFrame:{v26, MaxY, v36, v38}];
}

- (void)setGlyphColor:(id)color
{
  v15.receiver = self;
  v15.super_class = CKQuestionAcknowledgmentGlyphView;
  colorCopy = color;
  [(CKAcknowledgmentGlyphView *)&v15 setGlyphColor:colorCopy];
  v5 = [CKUIBehavior sharedBehaviors:v15.receiver];
  theme = [v5 theme];
  v7 = [theme ckAcknowledgementColorTypeForColor:colorCopy];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (v7 == -1)
  {
    grayQuestionMarkGlyphAckImage = [v8 grayQuestionMarkGlyphAckImage];

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 grayQuestionMarkDotAckImage];
  }

  else
  {
    grayQuestionMarkGlyphAckImage = [v8 whiteQuestionMarkGlyphAckImage];

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 whiteQuestionMarkDotAckImage];
  }
  v12 = ;

  glyph = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  [glyph setImage:grayQuestionMarkGlyphAckImage];

  v14 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  [v14 setImage:v12];
}

- (CGPoint)glyphOffset
{
  if (CKPixelWidth_once_12 != -1)
  {
    [CKHeartAcknowledgmentGlyphView glyphOffset];
  }

  v2 = -*&CKPixelWidth_sPixel_12;
  v3 = -*&CKPixelWidth_sPixel_12;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x1E6979518] begin];
  v9 = MEMORY[0x1E6979518];
  [(CKQuestionAcknowledgmentGlyphView *)self animationDuration];
  [v9 setAnimationDuration:?];
  if (completionCopy)
  {
    v10 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKQuestionAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v24 = completionCopy;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v11 setFromValue:&unk_1F04E8580];
  [v11 setMass:2.0];
  [v11 setStiffness:250.0];
  [v11 setDamping:22.0];
  [v11 setBeginTime:time];
  v12 = *MEMORY[0x1E69797E0];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  glyph = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  layer = [glyph layer];
  [layer addAnimation:v11 forKey:@"transform.scale.xy"];

  v15 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  layer2 = [v15 layer];
  [layer2 addAnimation:v11 forKey:@"transform.scale.xy"];

  v17 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
  [v17 setFromValue:&unk_1F04E8598];
  [v17 setMass:1.0];
  [v17 setStiffness:250.0];
  [v17 setDamping:20.0];
  [v17 setBeginTime:time];
  [v17 setFillMode:v12];
  glyph2 = [(CKQuestionAcknowledgmentGlyphView *)self glyph];
  layer3 = [glyph2 layer];
  [layer3 addAnimation:v17 forKey:@"position.y"];

  v20 = [v17 copy];
  [v20 setBeginTime:time + 0.05];
  v21 = [(CKQuestionAcknowledgmentGlyphView *)self dot];
  layer4 = [v21 layer];
  [layer4 addAnimation:v20 forKey:@"position.y"];

  [MEMORY[0x1E6979518] commit];
}

@end