@interface CKThumbsDownAcknowledgmentGlyphView
- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5;
- (void)setGlyphColor:(id)a3;
@end

@implementation CKThumbsDownAcknowledgmentGlyphView

- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(CKThumbsDownAcknowledgmentGlyphView *)self animationLayer];
  [v8 setHidden:1];

  [MEMORY[0x1E6979518] begin];
  v9 = MEMORY[0x1E6979518];
  [(CKThumbsDownAcknowledgmentGlyphView *)self animationDuration];
  [v9 setAnimationDuration:?];
  v10 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  v11 = [v10 layer];
  [v11 position];
  v13 = v12;
  v15 = v14;

  v16 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [v25 removeFromSuperview];

  v26 = [MEMORY[0x1E6979398] layer];
  [(CKThumbsDownAcknowledgmentGlyphView *)self setAnimationLayer:v26];
  v27 = v24;
  [v26 setBounds:{v18, v20, v22, v24}];
  [v26 setPosition:{v13, v15}];
  v28 = [(CKThumbsDownAcknowledgmentGlyphView *)self layer];
  [v28 addSublayer:v26];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CKThumbsDownAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v29 = v26;
  v74 = v29;
  v30 = _Block_copy(aBlock);
  if (v7)
  {
    v31 = dispatch_time(0, (a4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__CKThumbsDownAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke_2;
    block[3] = &unk_1E72EBDB8;
    v72 = v7;
    dispatch_after(v31, MEMORY[0x1E69E96A0], block);
  }

  [MEMORY[0x1E6979518] setCompletionBlock:v30];
  v32 = [MEMORY[0x1E6979398] layer];
  [v29 bounds];
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  CGRectGetMidX(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  MidY = CGRectGetMidY(v76);
  [v29 bounds];
  MaxX = CGRectGetMaxX(v77);
  v67 = v27;
  [v32 setBounds:{v18, v20, v22, v27}];
  [v32 setPosition:{MaxX, MidY}];
  [v29 addSublayer:v32];
  [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  v68 = v30;
  v39 = v69 = v7;
  LODWORD(v40) = 1074137746;
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  [v39 setFromValue:v41];

  LODWORD(v42) = -1092655373;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [v39 setToValue:v43];

  [v39 setMass:1.0];
  [v39 setStiffness:250.0];
  [v39 setDamping:20.0];
  LODWORD(v44) = 1.0;
  [v39 setSpeed:v44];
  [v39 setDuration:1.15];
  [v39 setBeginTime:a3];
  v45 = *MEMORY[0x1E69797E0];
  [v39 setFillMode:*MEMORY[0x1E69797E0]];
  [v32 addAnimation:v39 forKey:@"transform.rotation.z"];
  v46 = [MEMORY[0x1E6979398] layer];
  [v32 bounds];
  v47 = v78.origin.x;
  v48 = v78.origin.y;
  v49 = v78.size.width;
  v50 = v78.size.height;
  MidX = CGRectGetMidX(v78);
  v79.origin.x = v47;
  v79.origin.y = v48;
  v79.size.width = v49;
  v79.size.height = v50;
  v52 = CGRectGetMidY(v79);
  [v46 setBounds:{v18, v20, v22, v67}];
  [v46 setPosition:{MidX, v52}];
  [v32 addSublayer:v46];
  v53 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  LODWORD(v54) = 1054828275;
  v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
  [v53 setToValue:v55];

  [v53 setMass:1.0];
  [v53 setStiffness:400.0];
  [v53 setDamping:15.0];
  LODWORD(v56) = 1.0;
  [v53 setSpeed:v56];
  [v53 setDuration:1.0];
  [v53 setBeginTime:a3 + 0.150000006];
  [v53 setFillMode:v45];
  [v46 addAnimation:v53 forKey:@"transform.rotation.z"];
  v57 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  v58 = [v57 image];

  v59 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v58];
  v60 = [v59 layer];

  [v46 bounds];
  v61 = v80.origin.x;
  v62 = v80.origin.y;
  v63 = v80.size.width;
  v64 = v80.size.height;
  CGRectGetMidX(v80);
  v81.origin.x = v61;
  v81.origin.y = v62;
  v81.size.width = v63;
  v81.size.height = v64;
  v65 = CGRectGetMidY(v81);
  [v60 setBounds:{v18, v20, v22, v67}];
  [v60 setPosition:{0.0, v65}];
  [v60 setContents:{objc_msgSend(v58, "CGImage")}];
  [v58 scale];
  [v60 setContentsScale:?];
  [v60 setContentsGravity:*MEMORY[0x1E6979DF0]];
  [(CKThumbsDownAcknowledgmentGlyphView *)self setContentLayer:v60];
  [v46 addSublayer:v60];
  v66 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v66 setFromValue:&unk_1F04E8580];
  [v66 setMass:1.0];
  [v66 setStiffness:350.0];
  [v66 setDamping:25.0];
  [v66 setBeginTime:a3 + 0.0500000007];
  [v66 setFillMode:v45];
  [v60 addAnimation:v66 forKey:@"transform.scale.xy"];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __87__CKThumbsDownAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 glyph];
  [v2 addSubview:v3];

  v4 = *(a1 + 40);

  return [v4 removeFromSuperlayer];
}

- (void)setGlyphColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKThumbsDownAcknowledgmentGlyphView;
  [(CKSimpleAcknowledgementGlyphView *)&v8 setGlyphColor:a3];
  v4 = [(CKThumbsDownAcknowledgmentGlyphView *)self contentLayer];

  if (v4)
  {
    v5 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
    v6 = [v5 image];

    v7 = [(CKThumbsDownAcknowledgmentGlyphView *)self contentLayer];
    [v7 setContents:{objc_msgSend(v6, "CGImage")}];
  }
}

@end