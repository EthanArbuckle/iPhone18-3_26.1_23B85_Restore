@interface CKThumbsUpAcknowledgmentGlyphView
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
- (void)setGlyphColor:(id)color;
@end

@implementation CKThumbsUpAcknowledgmentGlyphView

- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  animationLayer = [(CKThumbsUpAcknowledgmentGlyphView *)self animationLayer];
  [animationLayer setHidden:1];

  [MEMORY[0x1E6979518] begin];
  v8 = MEMORY[0x1E6979518];
  [(CKThumbsUpAcknowledgmentGlyphView *)self animationDuration];
  [v8 setAnimationDuration:?];
  glyph = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  layer = [glyph layer];
  [layer position];
  v12 = v11;
  v14 = v13;

  glyph2 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [glyph2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  glyph3 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [glyph3 removeFromSuperview];

  layer2 = [MEMORY[0x1E6979398] layer];
  [(CKThumbsUpAcknowledgmentGlyphView *)self setAnimationLayer:layer2];
  v26 = v17;
  v69 = v23;
  [layer2 setBounds:{v17, v19, v21, v23}];
  [layer2 setPosition:{v12, v14}];
  layer3 = [(CKThumbsUpAcknowledgmentGlyphView *)self layer];
  [layer3 addSublayer:layer2];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CKThumbsUpAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v28 = layer2;
  v73 = v28;
  v68 = _Block_copy(aBlock);
  [MEMORY[0x1E6979518] setCompletionBlock:?];
  if (completionCopy)
  {
    v29 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CKThumbsUpAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke_2;
    block[3] = &unk_1E72EBDB8;
    v71 = completionCopy;
    dispatch_after(v29, MEMORY[0x1E69E96A0], block);
  }

  layer4 = [MEMORY[0x1E6979398] layer];
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
  [layer4 setBounds:{v26, v19, v21, v69}];
  [layer4 setPosition:{0.0, MidY}];
  [v28 addSublayer:layer4];
  v36 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.rotation.z"];
  v66 = completionCopy;
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
  [v36 setBeginTime:time];
  v42 = *MEMORY[0x1E69797E0];
  [v36 setFillMode:*MEMORY[0x1E69797E0]];
  [layer4 addAnimation:v36 forKey:@"transform.rotation.z"];
  layer5 = [MEMORY[0x1E6979398] layer];
  [layer4 bounds];
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
  [layer5 setBounds:{v26, v19, v21, v69}];
  [layer5 setPosition:{MidX, v49}];
  [layer4 addSublayer:layer5];
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
  [v50 setBeginTime:time + 0.150000006];
  [v50 setFillMode:v42];
  [layer5 addAnimation:v50 forKey:@"transform.rotation.z"];
  glyph4 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  image = [glyph4 image];

  v56 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:image];
  layer6 = [v56 layer];

  [layer5 bounds];
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
  [layer6 setBounds:{v26, v19, v21, v69}];
  [layer6 setPosition:{MaxX, v62}];
  [layer6 setContents:{objc_msgSend(image, "CGImage")}];
  [image scale];
  [layer6 setContentsScale:?];
  [layer6 setContentsGravity:*MEMORY[0x1E6979DF0]];
  [(CKThumbsUpAcknowledgmentGlyphView *)self setContentLayer:layer6];
  [layer5 addSublayer:layer6];
  v64 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v64 setFromValue:&unk_1F04E8580];
  [v64 setMass:1.0];
  [v64 setStiffness:350.0];
  [v64 setDamping:25.0];
  [v64 setBeginTime:time + 0.0500000007];
  [v64 setFillMode:v42];
  [layer6 addAnimation:v64 forKey:@"transform.scale.xy"];
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

- (void)setGlyphColor:(id)color
{
  v8.receiver = self;
  v8.super_class = CKThumbsUpAcknowledgmentGlyphView;
  [(CKSimpleAcknowledgementGlyphView *)&v8 setGlyphColor:color];
  contentLayer = [(CKThumbsUpAcknowledgmentGlyphView *)self contentLayer];

  if (contentLayer)
  {
    glyph = [(CKSimpleAcknowledgementGlyphView *)self glyph];
    image = [glyph image];

    contentLayer2 = [(CKThumbsUpAcknowledgmentGlyphView *)self contentLayer];
    [contentLayer2 setContents:{objc_msgSend(image, "CGImage")}];
  }
}

@end