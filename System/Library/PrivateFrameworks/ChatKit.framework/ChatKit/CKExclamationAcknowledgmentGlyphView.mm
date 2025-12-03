@interface CKExclamationAcknowledgmentGlyphView
- (CGPoint)glyphOffset;
- (CKExclamationAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color;
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
- (void)layoutSubviews;
- (void)setGlyphColor:(id)color;
@end

@implementation CKExclamationAcknowledgmentGlyphView

- (CKExclamationAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color
{
  colorCopy = color;
  v17.receiver = self;
  v17.super_class = CKExclamationAcknowledgmentGlyphView;
  v5 = [(CKExclamationAcknowledgmentGlyphView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKExclamationAcknowledgmentGlyphView *)v5 setBackgroundColor:0];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = v7;
    if (colorCopy == -1)
    {
      grayExclamationLeftAckImage = [v7 grayExclamationLeftAckImage];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 grayExclamationRightAckImage];
    }

    else
    {
      grayExclamationLeftAckImage = [v7 whiteExclamationLeftAckImage];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 whiteExclamationRightAckImage];
    }
    v11 = ;

    v12 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:grayExclamationLeftAckImage];
    v13 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v11];
    [(CKExclamationAcknowledgmentGlyphView *)v6 addSubview:v12];
    [(CKExclamationAcknowledgmentGlyphView *)v6 setLeftExclamationGlyph:v12];
    [(CKExclamationAcknowledgmentGlyphView *)v6 addSubview:v13];
    [(CKExclamationAcknowledgmentGlyphView *)v6 setRightExclamationGlyph:v13];
    layer = [(CKAcknowledgmentGlyphImageView *)v12 layer];
    [layer setAnchorPoint:{1.0, 0.5}];

    layer2 = [(CKAcknowledgmentGlyphImageView *)v13 layer];
    [layer2 setAnchorPoint:{0.0, 0.5}];

    [(CKExclamationAcknowledgmentGlyphView *)v6 setClipsToBounds:1];
  }

  return v6;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = CKExclamationAcknowledgmentGlyphView;
  [(CKExclamationAcknowledgmentGlyphView *)&v39 layoutSubviews];
  [(CKExclamationAcknowledgmentGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  leftExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  [leftExclamationGlyph sizeToFit];

  rightExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  [rightExclamationGlyph sizeToFit];

  leftExclamationGlyph2 = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  [leftExclamationGlyph2 bounds];
  rect_16 = v14;
  v16 = v15;

  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  rect = CGRectGetHeight(v40);
  rightExclamationGlyph2 = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  [rightExclamationGlyph2 bounds];
  v19 = v18;
  v21 = v20;

  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  Height = CGRectGetHeight(v41);
  if (CKMainScreenScale_once_98 != -1)
  {
    [CKEnglishHaAcknowledgmentGlyphView layoutSubviews];
  }

  v23 = v21 * (Height / v21);
  rect_24 = v19 * (Height / v21);
  v24 = v16 * (rect / v16);
  v25 = rect_16 * (rect / v16);
  v26 = *&CKMainScreenScale_sMainScreenScale_98;
  if (*&CKMainScreenScale_sMainScreenScale_98 == 0.0)
  {
    v26 = 1.0;
  }

  recta = floor((v4 + (v8 - v25) * 0.5) * v26) / v26;
  rect_8 = v23;
  v27 = floor((v6 + (v10 - v24) * 0.5) * v26) / v26;
  v28 = *&CKMainScreenScale_sMainScreenScale_98;
  if (*&CKMainScreenScale_sMainScreenScale_98 == 0.0)
  {
    v28 = 1.0;
  }

  rect_16a = floor((v6 + (v10 - v23) * 0.5) * v28) / v28;
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  CGRectGetMidY(v43);
  v44.origin.x = recta;
  v44.origin.y = v27;
  v44.size.width = v25;
  v44.size.height = v24;
  v30 = MidX - CGRectGetWidth(v44);
  leftExclamationGlyph3 = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  [leftExclamationGlyph3 setFrame:{v30, v27, v25, v24}];

  rightExclamationGlyph3 = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  [rightExclamationGlyph3 setFrame:{MidX, rect_16a, rect_24, rect_8}];
}

- (void)setGlyphColor:(id)color
{
  v15.receiver = self;
  v15.super_class = CKExclamationAcknowledgmentGlyphView;
  colorCopy = color;
  [(CKAcknowledgmentGlyphView *)&v15 setGlyphColor:colorCopy];
  v5 = [CKUIBehavior sharedBehaviors:v15.receiver];
  theme = [v5 theme];
  v7 = [theme ckAcknowledgementColorTypeForColor:colorCopy];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (v7 == -1)
  {
    grayExclamationLeftAckImage = [v8 grayExclamationLeftAckImage];

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 grayExclamationRightAckImage];
  }

  else
  {
    grayExclamationLeftAckImage = [v8 whiteExclamationLeftAckImage];

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 whiteExclamationRightAckImage];
  }
  v12 = ;

  leftExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  [leftExclamationGlyph setImage:grayExclamationLeftAckImage];

  rightExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  [rightExclamationGlyph setImage:v12];
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
  [(CKExclamationAcknowledgmentGlyphView *)self animationDuration];
  [v9 setAnimationDuration:?];
  if (completionCopy)
  {
    v10 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__CKExclamationAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v32 = completionCopy;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
  v12 = MEMORY[0x1E696AD98];
  [(CKExclamationAcknowledgmentGlyphView *)self bounds];
  v13 = CGRectGetMaxY(v33) * 1.2;
  *&v13 = v13;
  v14 = [v12 numberWithFloat:v13];
  [v11 setFromValue:v14];

  [v11 setMass:1.0];
  [v11 setStiffness:350.0];
  [v11 setDamping:20.0];
  LODWORD(v15) = 1.0;
  [v11 setSpeed:v15];
  v16 = *MEMORY[0x1E69797E0];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  [v11 setBeginTime:time];
  leftExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  layer = [leftExclamationGlyph layer];
  [layer addAnimation:v11 forKey:@"position.y"];

  v19 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  LODWORD(v20) = 0.5;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  [v19 setFromValue:v21];

  [v19 setMass:1.0];
  [v19 setStiffness:450.0];
  [v19 setDamping:15.0];
  LODWORD(v22) = 1.0;
  [v19 setSpeed:v22];
  [v19 setDuration:1.0];
  [v19 setBeginTime:time + 0.150000006];
  [v19 setFillMode:v16];
  leftExclamationGlyph2 = [(CKExclamationAcknowledgmentGlyphView *)self leftExclamationGlyph];
  layer2 = [leftExclamationGlyph2 layer];
  [layer2 addAnimation:v19 forKey:@"transform.scale.xy"];

  v25 = [v11 copy];
  [v25 setBeginTime:time + 0.100000001];
  rightExclamationGlyph = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  layer3 = [rightExclamationGlyph layer];
  [layer3 addAnimation:v25 forKey:@"position.y"];

  v28 = [v19 copy];
  rightExclamationGlyph2 = [(CKExclamationAcknowledgmentGlyphView *)self rightExclamationGlyph];
  layer4 = [rightExclamationGlyph2 layer];
  [layer4 addAnimation:v28 forKey:@"transform.scale.xy"];

  [MEMORY[0x1E6979518] commit];
}

@end