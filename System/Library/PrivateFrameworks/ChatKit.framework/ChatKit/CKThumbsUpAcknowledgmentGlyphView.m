@interface CKThumbsUpAcknowledgmentGlyphView
- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5;
- (void)setGlyphColor:(id)a3;
@end

@implementation CKThumbsUpAcknowledgmentGlyphView

- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(CKThumbsUpAcknowledgmentGlyphView *)self animationLayer];
  [v7 setHidden:1];

  [MEMORY[0x1E6979518] begin];
  v8 = MEMORY[0x1E6979518];
  [(CKThumbsUpAcknowledgmentGlyphView *)self animationDuration];
  [v8 setAnimationDuration:?];
  v9 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  v10 = [v9 layer];
  [v10 position];
  v12 = v11;
  v14 = v13;

  v15 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [v24 removeFromSuperview];

  v25 = [MEMORY[0x1E6979398] layer];
  [(CKThumbsUpAcknowledgmentGlyphView *)self setAnimationLayer:v25];
  v26 = v17;
  v69 = v23;
  [v25 setBounds:{v17, v19, v21, v23}];
  [v25 setPosition:{v12, v14}];
  v27 = [(CKThumbsUpAcknowledgmentGlyphView *)self layer];
  [v27 addSublayer:v25];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CKThumbsUpAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v28 = v25;
  v73 = v28;
  v68 = _Block_copy(aBlock);
  [MEMORY[0x1E6979518] setCompletionBlock:?];
  if (v6)
  {
    v29 = dispatch_time(0, (a4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKThumbsUpAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke_2;
    block[3] = &unk_1E72EBDB8;
    v71 = v6;
    dispatch_after(v29, MEMORY[0x1E69E96A0], block);
  }

  v30 = [MEMORY[0x1E6979398] layer];
  [v28 bounds];
  x = v74.origin.x;
  y = v74.origin.y;
  width = v74.size.width;
  height = v74.size.height;
  CGRectGetMidX(v74);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MidY = CGRectGetMidY(v75);
  [v30 setBounds:{v26, v19, v21, v69}];
  [v30 setPosition:{0.0, MidY}];
  [v28 addSublayer:v30];
  v36 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  v66 = v6;
  LODWORD(v37) = -1073345902;
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  [v36 setFromValue:v38];

  LODWORD(v39) = 1054828275;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  [v36 setToValue:v40];

  [v36 setMass:1.0];
  [v36 setStiffness:250.0];
  [v36 setDamping:20.0];
  LODWORD(v41) = 1.0;
  [v36 setSpeed:v41];
  [v36 setDuration:1.15];
  [v36 setBeginTime:a3];
  v42 = *MEMORY[0x1E69797E0];
  [v36 setFillMode:*MEMORY[0x1E69797E0]];
  [v30 addAnimation:v36 forKey:@"transform.rotation.z"];
  v43 = [MEMORY[0x1E6979398] layer];
  [v30 bounds];
  v44 = v76.origin.x;
  v45 = v76.origin.y;
  v46 = v76.size.width;
  v47 = v76.size.height;
  MidX = CGRectGetMidX(v76);
  v77.origin.x = v44;
  v77.origin.y = v45;
  v77.size.width = v46;
  v77.size.height = v47;
  v49 = CGRectGetMidY(v77);
  [v43 setBounds:{v26, v19, v21, v69}];
  [v43 setPosition:{MidX, v49}];
  [v30 addSublayer:v43];
  v50 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  LODWORD(v51) = -1092655373;
  v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
  [v50 setToValue:v52];

  [v50 setMass:1.0];
  [v50 setStiffness:400.0];
  [v50 setDamping:15.0];
  LODWORD(v53) = 1.0;
  [v50 setSpeed:v53];
  [v50 setDuration:1.0];
  [v50 setBeginTime:a3 + 0.150000006];
  [v50 setFillMode:v42];
  [v43 addAnimation:v50 forKey:@"transform.rotation.z"];
  v54 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  v55 = [v54 image];

  v56 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v55];
  v57 = [v56 layer];

  [v43 bounds];
  v58 = v78.origin.x;
  v59 = v78.origin.y;
  v60 = v78.size.width;
  v61 = v78.size.height;
  CGRectGetMidX(v78);
  v79.origin.x = v58;
  v79.origin.y = v59;
  v79.size.width = v60;
  v79.size.height = v61;
  v62 = CGRectGetMidY(v79);
  v80.origin.x = v26;
  v80.origin.y = v19;
  v80.size.width = v21;
  v80.size.height = v69;
  MaxX = CGRectGetMaxX(v80);
  [v57 setBounds:{v26, v19, v21, v69}];
  [v57 setPosition:{MaxX, v62}];
  [v57 setContents:{objc_msgSend(v55, "CGImage")}];
  [v55 scale];
  [v57 setContentsScale:?];
  [v57 setContentsGravity:*MEMORY[0x1E6979DF0]];
  [(CKThumbsUpAcknowledgmentGlyphView *)self setContentLayer:v57];
  [v43 addSublayer:v57];
  v64 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v64 setFromValue:&unk_1F04E8580];
  [v64 setMass:1.0];
  [v64 setStiffness:350.0];
  [v64 setDamping:25.0];
  [v64 setBeginTime:a3 + 0.0500000007];
  [v64 setFillMode:v42];
  [v57 addAnimation:v64 forKey:@"transform.scale.xy"];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __85__CKThumbsUpAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 glyph];
  [v2 addSubview:v3];

  [*(a1 + 40) removeFromSuperlayer];
  [*(a1 + 32) setAnimationLayer:0];
  v4 = *(a1 + 32);

  return [v4 setContentLayer:0];
}

- (void)setGlyphColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKThumbsUpAcknowledgmentGlyphView;
  [(CKSimpleAcknowledgementGlyphView *)&v8 setGlyphColor:a3];
  v4 = [(CKThumbsUpAcknowledgmentGlyphView *)self contentLayer];

  if (v4)
  {
    v5 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
    v6 = [v5 image];

    v7 = [(CKThumbsUpAcknowledgmentGlyphView *)self contentLayer];
    [v7 setContents:{objc_msgSend(v6, "CGImage")}];
  }
}

@end