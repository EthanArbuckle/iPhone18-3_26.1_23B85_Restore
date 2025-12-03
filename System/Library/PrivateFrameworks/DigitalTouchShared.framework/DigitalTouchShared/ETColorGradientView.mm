@interface ETColorGradientView
- (ETColorGradientView)initWithFrame:(CGRect)frame;
- (void)hideColorWheelWithRotation:(double)rotation completion:(id)completion;
- (void)prepareToAnimateColorWheelWithRotation:(double)rotation;
- (void)revealColorWheelWithCompletion:(id)completion;
@end

@implementation ETColorGradientView

- (ETColorGradientView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = ETColorGradientView;
  v3 = [(ETColorGradientView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (SetupSpecValuesIfNeeded_onceToken_0 != -1)
    {
      [ETColorGradientView initWithFrame:];
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ETColorGradientView *)v3 setBackgroundColor:clearColor];

    v5 = objc_alloc(MEMORY[0x277D755E8]);
    [(ETColorGradientView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    v8 = [MEMORY[0x277D755B8] etImageNamed:@"color-wheel-gradient"];
    [(UIImageView *)v3->_imageView setImage:v8];

    [(ETColorGradientView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)prepareToAnimateColorWheelWithRotation:(double)rotation
{
  layer = [(ETColorGradientView *)self layer];
  [(ETColorGradientView *)self bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  layer2 = [MEMORY[0x277CD9F90] layer];
  [layer2 setLineWidth:49.5];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer2 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [layer2 setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];

  [layer2 setLineCap:*MEMORY[0x277CDA780]];
  [layer bounds];
  [layer2 setFrame:?];
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, MidX, MidY, 52.25, rotation + 3.14159265, rotation + 9.42477796, 0);
  [layer2 setPath:Mutable];
  CFRelease(Mutable);
  [layer setMask:layer2];
}

- (void)revealColorWheelWithCompletion:(id)completion
{
  completionCopy = completion;
  layer = [(ETColorGradientView *)self layer];
  mask = [layer mask];
  [mask setStrokeStart:0.4999];
  [mask setStrokeEnd:0.5];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v7 setDuration:0.275];
  v8 = *MEMORY[0x277CDA7B0];
  v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [v7 setTimingFunction:v9];

  v10 = *MEMORY[0x277CDA238];
  [v7 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v11) = 0.5;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v7 setFromValue:v12];

  LODWORD(v13) = 1.0;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [v7 setToValue:v14];

  [v7 setRemovedOnCompletion:0];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v15 setDuration:0.275];
  v16 = [MEMORY[0x277CD9EF8] functionWithName:v8];
  [v15 setTimingFunction:v16];

  [v15 setFillMode:v10];
  LODWORD(v17) = 0.5;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [v15 setFromValue:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v15 setToValue:v19];

  [v15 setRemovedOnCompletion:0];
  [MEMORY[0x277CD9FF0] begin];
  v20 = MEMORY[0x277CD9FF0];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __54__ETColorGradientView_revealColorWheelWithCompletion___block_invoke;
  v26 = &unk_278F79F38;
  v27 = layer;
  v28 = completionCopy;
  v21 = completionCopy;
  v22 = layer;
  [v20 setCompletionBlock:&v23];
  [mask addAnimation:v7 forKey:{@"strokeEnd", v23, v24, v25, v26}];
  [mask addAnimation:v15 forKey:@"strokeStart"];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __54__ETColorGradientView_revealColorWheelWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMask:0];
  [*(a1 + 32) removeAllAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)hideColorWheelWithRotation:(double)rotation completion:(id)completion
{
  completionCopy = completion;
  layer = [(ETColorGradientView *)self layer];
  mask = [layer mask];
  [mask setStrokeStart:0.0];
  [mask setStrokeEnd:1.0];
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v8 setDuration:0.275];
  v9 = *MEMORY[0x277CDA7C0];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v8 setTimingFunction:v10];

  v11 = *MEMORY[0x277CDA238];
  [v8 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v8 setFromValue:v13];

  LODWORD(v14) = 0.5;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v8 setToValue:v15];

  [v8 setRemovedOnCompletion:0];
  v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v16 setDuration:0.275];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:v9];
  [v16 setTimingFunction:v17];

  [v16 setFillMode:v11];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v16 setFromValue:v18];

  LODWORD(v19) = 0.5;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [v16 setToValue:v20];

  [v16 setRemovedOnCompletion:0];
  v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  [v21 setDuration:0.275];
  [v21 setAdditive:1];
  [v21 setRemovedOnCompletion:0];
  [v21 setFillMode:v11];
  *&v22 = rotation;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  [v21 setToValue:v23];

  [v21 setRemovedOnCompletion:0];
  [MEMORY[0x277CD9FF0] begin];
  v24 = MEMORY[0x277CD9FF0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__ETColorGradientView_hideColorWheelWithRotation_completion___block_invoke;
  v29[3] = &unk_278F7A208;
  v30 = layer;
  selfCopy = self;
  v32 = completionCopy;
  v25 = completionCopy;
  v26 = layer;
  [v24 setCompletionBlock:v29];
  [mask addAnimation:v8 forKey:@"strokeEnd"];
  [mask addAnimation:v16 forKey:@"strokeStart"];
  layer2 = [(UIImageView *)self->_imageView layer];
  [layer2 addAnimation:v21 forKey:@"transform.rotation.z"];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __61__ETColorGradientView_hideColorWheelWithRotation_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMask:0];
  [*(a1 + 32) removeAllAnimations];
  v2 = [*(*(a1 + 40) + 408) layer];
  [v2 removeAllAnimations];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end