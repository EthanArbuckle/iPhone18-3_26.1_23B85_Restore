@interface CKEnglishHaAcknowledgmentGlyphView
- (CGPoint)glyphOffset;
- (CKEnglishHaAcknowledgmentGlyphView)initWithFrame:(CGRect)a3 color:(char)a4;
- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)setGlyphColor:(id)a3;
@end

@implementation CKEnglishHaAcknowledgmentGlyphView

- (CKEnglishHaAcknowledgmentGlyphView)initWithFrame:(CGRect)a3 color:(char)a4
{
  v4 = a4;
  v27.receiver = self;
  v27.super_class = CKEnglishHaAcknowledgmentGlyphView;
  v5 = [(CKEnglishHaAcknowledgmentGlyphView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKEnglishHaAcknowledgmentGlyphView *)v5 setBackgroundColor:0];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = v7;
    if (v4 == -1)
    {
      v9 = [v7 grayH1AckImage];

      v15 = +[CKUIBehavior sharedBehaviors];
      v11 = [v15 grayA1AckImage];

      v16 = +[CKUIBehavior sharedBehaviors];
      v13 = [v16 grayH2AckImage];

      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 grayA2AckImage];
    }

    else
    {
      v9 = [v7 whiteH1AckImage];

      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 whiteA1AckImage];

      v12 = +[CKUIBehavior sharedBehaviors];
      v13 = [v12 whiteH2AckImage];

      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 whiteA2AckImage];
    }
    v17 = ;

    v18 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v9];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 addSubview:v18];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 setH1:v18];
    v19 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v11];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 addSubview:v19];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 setA1:v19];
    v20 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v13];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 addSubview:v20];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 setH2:v20];
    v21 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v17];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 addSubview:v21];
    [(CKEnglishHaAcknowledgmentGlyphView *)v6 setA2:v21];
    v22 = [(CKAcknowledgmentGlyphImageView *)v18 layer];
    [v22 setAnchorPoint:{0.35, 0.55}];

    v23 = [(CKAcknowledgmentGlyphImageView *)v19 layer];
    [v23 setAnchorPoint:{0.65, 0.55}];

    v24 = [(CKAcknowledgmentGlyphImageView *)v20 layer];
    [v24 setAnchorPoint:{0.35, 0.575}];

    v25 = [(CKAcknowledgmentGlyphImageView *)v21 layer];
    [v25 setAnchorPoint:{0.65, 0.575}];

    [(CKEnglishHaAcknowledgmentGlyphView *)v6 setClipsToBounds:1];
  }

  return v6;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = CKEnglishHaAcknowledgmentGlyphView;
  [(CKEnglishHaAcknowledgmentGlyphView *)&v38 layoutSubviews];
  [(CKEnglishHaAcknowledgmentGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  rect = v9;
  v10 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  [v10 sizeToFit];

  v11 = [(CKEnglishHaAcknowledgmentGlyphView *)self a1];
  [v11 sizeToFit];

  v12 = [(CKEnglishHaAcknowledgmentGlyphView *)self h2];
  [v12 sizeToFit];

  v13 = [(CKEnglishHaAcknowledgmentGlyphView *)self a2];
  [v13 sizeToFit];

  v15 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v16 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  [v16 bounds];
  v18 = v17;
  v20 = v19;

  v39.origin.x = v4;
  v37 = v6;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = rect;
  Height = CGRectGetHeight(v39);
  v40.origin.x = v15;
  v40.origin.y = v14;
  v40.size.width = v18;
  v40.size.height = v20;
  v22 = CGRectGetHeight(v40);
  if (CKMainScreenScale_once_98 != -1)
  {
    [CKEnglishHaAcknowledgmentGlyphView layoutSubviews];
  }

  v23 = Height / v22;
  v24 = *&CKMainScreenScale_sMainScreenScale_98;
  if (*&CKMainScreenScale_sMainScreenScale_98 == 0.0)
  {
    v24 = 1.0;
  }

  v25 = floor((v4 + (v8 - v18 * v23) * 0.5) * v24) / v24;
  v26 = floor((v37 + (rect - v20 * v23) * 0.5) * v24) / v24;
  v27 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  [v27 bounds];
  v29 = v23 * v28;
  v31 = v23 * v30;

  v32 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  [v32 setFrame:{v25, v26, v29, v31}];

  v33 = [(CKEnglishHaAcknowledgmentGlyphView *)self a1];
  [v33 setFrame:{v25, v26, v29, v31}];

  v34 = [(CKEnglishHaAcknowledgmentGlyphView *)self h2];
  [v34 setFrame:{v25, v26, v29, v31}];

  v35 = [(CKEnglishHaAcknowledgmentGlyphView *)self a2];
  [v35 setFrame:{v25, v26, v29, v31}];
}

- (void)setGlyphColor:(id)a3
{
  v23.receiver = self;
  v23.super_class = CKEnglishHaAcknowledgmentGlyphView;
  v4 = a3;
  [(CKAcknowledgmentGlyphView *)&v23 setGlyphColor:v4];
  v5 = [CKUIBehavior sharedBehaviors:v23.receiver];
  v6 = [v5 theme];
  v7 = [v6 ckAcknowledgementColorTypeForColor:v4];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (v7 == -1)
  {
    v10 = [v8 grayH1AckImage];

    v16 = +[CKUIBehavior sharedBehaviors];
    v12 = [v16 grayA1AckImage];

    v17 = +[CKUIBehavior sharedBehaviors];
    v14 = [v17 grayH2AckImage];

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 grayA2AckImage];
  }

  else
  {
    v10 = [v8 whiteH1AckImage];

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 whiteA1AckImage];

    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 whiteH2AckImage];

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 whiteA2AckImage];
  }
  v18 = ;

  v19 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  [v19 setImage:v10];

  v20 = [(CKEnglishHaAcknowledgmentGlyphView *)self a1];
  [v20 setImage:v12];

  v21 = [(CKEnglishHaAcknowledgmentGlyphView *)self h2];
  [v21 setImage:v14];

  v22 = [(CKEnglishHaAcknowledgmentGlyphView *)self a2];
  [v22 setImage:v18];
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

- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5
{
  v8 = a5;
  [MEMORY[0x1E6979518] begin];
  v9 = MEMORY[0x1E6979518];
  [(CKEnglishHaAcknowledgmentGlyphView *)self animationDuration];
  [v9 setAnimationDuration:?];
  if (v8)
  {
    v10 = dispatch_time(0, (a4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__CKEnglishHaAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v27 = v8;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  v11 = [(CKEnglishHaAcknowledgmentGlyphView *)self h1];
  v12 = [v11 layer];

  v13 = [(CKEnglishHaAcknowledgmentGlyphView *)self a1];
  v14 = [v13 layer];

  v15 = [(CKEnglishHaAcknowledgmentGlyphView *)self h2];
  v16 = [v15 layer];

  v17 = [(CKEnglishHaAcknowledgmentGlyphView *)self a2];
  v18 = [v17 layer];

  v19 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v19 setFromValue:&unk_1F04E8580];
  [v19 setMass:1.0];
  [v19 setStiffness:250.0];
  [v19 setDamping:15.0];
  [v19 setBeginTime:a3];
  [v19 setFillMode:*MEMORY[0x1E69797E0]];
  v20 = [v19 copy];
  [v19 beginTime];
  [v20 setBeginTime:v21 + 0.05];
  v22 = [v19 copy];
  [v19 beginTime];
  [v22 setBeginTime:v23 + 0.1];
  v24 = [v19 copy];
  [v19 beginTime];
  [v24 setBeginTime:v25 + 0.15];
  [v12 addAnimation:v19 forKey:@"transform.scale.xy"];
  [v14 addAnimation:v20 forKey:@"transform.scale.xy"];
  [v16 addAnimation:v22 forKey:@"transform.scale.xy"];
  [v18 addAnimation:v24 forKey:@"transform.scale.xy"];
  [MEMORY[0x1E6979518] commit];
}

@end