@interface CKHaAcknowledgmentGlyphView
- (CGPoint)glyphOffset;
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
@end

@implementation CKHaAcknowledgmentGlyphView

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
  [(CKSimpleAcknowledgementGlyphView *)self animationDuration];
  [v9 setAnimationDuration:?];
  v10 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
  glyph = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [glyph frame];
  MaxY = CGRectGetMaxY(v25);

  *&v13 = MaxY;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [v10 setFromValue:v14];

  [v10 setMass:1.0];
  [v10 setStiffness:125.0];
  [v10 setDamping:12.0];
  LODWORD(v15) = 1.0;
  [v10 setSpeed:v15];
  [v10 setBeginTime:time];
  [v10 setRemovedOnCompletion:1];
  v16 = *MEMORY[0x1E69797E0];
  [v10 setFillMode:*MEMORY[0x1E69797E0]];
  v17 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v17 setFromValue:&unk_1F04E8580];
  [v17 setMass:1.0];
  [v17 setStiffness:250.0];
  [v17 setDamping:15.0];
  [v17 setBeginTime:time];
  [v17 setRemovedOnCompletion:1];
  [v17 setFillMode:v16];
  if (completionCopy)
  {
    v18 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__CKHaAcknowledgmentGlyphView_animateWithBeginTime_completionDelay_completion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v24 = completionCopy;
    dispatch_after(v18, MEMORY[0x1E69E96A0], block);
  }

  glyph2 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  layer = [glyph2 layer];
  [layer addAnimation:v10 forKey:@"position.y"];

  glyph3 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  layer2 = [glyph3 layer];
  [layer2 addAnimation:v17 forKey:@"transform.scale.xy"];

  [MEMORY[0x1E6979518] commit];
}

@end