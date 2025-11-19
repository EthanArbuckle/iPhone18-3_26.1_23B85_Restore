@interface PKDynamicLayerTransactionEffectConfiguration
- (PKDynamicLayerTransactionEffectConfiguration)initWithCoder:(id)a3;
- (PKDynamicLayerTransactionEffectConfiguration)initWithDictionary:(id)a3;
- (id)configureTransactionEffectEmitterLayer:(id)a3 withImage:(CGImage *)a4 andEmitterShapeData:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureTransactionEffectEmitterLayer:(id)a3 withBounds:(CGRect)a4;
@end

@implementation PKDynamicLayerTransactionEffectConfiguration

- (PKDynamicLayerTransactionEffectConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v10.receiver = self;
  v10.super_class = PKDynamicLayerTransactionEffectConfiguration;
  self = [(PKDynamicLayerTransactionEffectConfiguration *)&v10 init];
  if (self)
  {
    v5 = [v4 PKStringForKey:@"style"];
    v6 = v5;
    if (v5 == @"zoomedShape" || v5 && (v7 = [(__CFString *)v5 isEqualToString:@"zoomedShape"], v6, (v7 & 1) != 0))
    {

      self->_style = 1;
      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_7:
  self = self;
  v8 = self;
LABEL_10:

  return v8;
}

- (id)configureTransactionEffectEmitterLayer:(id)a3 withImage:(CGImage *)a4 andEmitterShapeData:(id)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_style != 1)
  {
    goto LABEL_12;
  }

  v11 = 0;
  if (!a4 || !v9)
  {
    goto LABEL_17;
  }

  v12 = CGSVGDocumentCreateFromData();
  if (!v12)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  [v8 setEmitterMode:*MEMORY[0x1E6979798]];
  [v8 setEmitterShape:*MEMORY[0x1E69797A0]];
  [v8 setRenderMode:*MEMORY[0x1E6979788]];
  Width = CGImageGetWidth(a4);
  v15 = 12.8 / fmax(Width, CGImageGetHeight(a4));
  v16 = [MEMORY[0x1E6979360] emitterCell];
  [v16 setContents:a4];
  [v16 setScale:v15];
  LODWORD(v17) = 2.0;
  [v16 setLifetime:v17];
  LODWORD(v18) = 0.5;
  [v16 setLifetimeRange:v18];
  [v16 setEmissionRange:3.14159265];
  [v16 setVelocity:20.0];
  [v16 setYAcceleration:0.0];
  LODWORD(v19) = 1137180672;
  [v16 setBirthRate:v19];
  CGSVGDocumentGetRootNode();
  CGSVGNodeGetChildAtIndex();
  CGSVGShapeNodeGetPath();
  CGSVGDocumentGetCanvasSize();
  v21 = v20;
  v23 = v22;
  CGPath = CGSVGPathCreateCGPath();
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeScale(&transform, 1.0 / v21, 1.0 / v23);
  v25 = CGPathCreateMutableCopyByTransformingPath(CGPath, &transform);
  [v8 setEmitterPath:v25];
  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(v13);
  if (CGPath)
  {
    CFRelease(CGPath);
  }

  if ([v8 emitterPath])
  {
    v52[0] = v16;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    [v8 setEmitterCells:v26];

    [v8 setSeed:arc4random_uniform(0x2710u)];
    CATransform3DMakeScale(&v48, 0.5, 0.5, 0.5);
    [v8 setTransform:&v48];
    [v8 setOpacity:0.0];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = PKCreateDynamicLayerOpacityBehavior(&unk_1F23B4640);
    [v27 addObject:v28];

    *&v29 = v15;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    v51[0] = v30;
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v15 / 5.0];
    v51[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v33 = PKCreateDynamicLayerScaleBehavior(v32);
    [v27 addObject:v33];

    v34 = [v27 copy];
    [v8 setEmitterBehaviors:v34];

    v35 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
    [v35 setDuration:2.7];
    [v35 setKeyTimes:&unk_1F23B4658];
    [v35 setValues:&unk_1F23B4670];
    v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v36 setBeginTime:0.0];
    [v36 setDuration:3.2];
    v37 = MEMORY[0x1E696B098];
    if (v8)
    {
      [v8 transform];
    }

    else
    {
      memset(&v48, 0, sizeof(v48));
    }

    v38 = [v37 valueWithCATransform3D:&v48];
    [v36 setFromValue:v38];

    v39 = MEMORY[0x1E696B098];
    CATransform3DMakeScale(&v48, 5.0, 5.0, 5.0);
    v40 = [v39 valueWithCATransform3D:&v48];
    [v36 setToValue:v40];

    v41 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v36 setTimingFunction:v41];

    v42 = [MEMORY[0x1E6979318] animationWithKeyPath:@"birthRate"];
    [v42 setBeginTime:1.0];
    v43 = MEMORY[0x1E696AD98];
    [v8 birthRate];
    v44 = [v43 numberWithFloat:?];
    [v42 setFromValue:v44];

    v45 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v42 setToValue:v45];

    v11 = [MEMORY[0x1E6979308] animation];
    v50[0] = v35;
    v50[1] = v36;
    v50[2] = v42;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
    [v11 setAnimations:v46];

    [v11 setDuration:3.2];
    [v11 setBeginTime:0.1];
    [v11 setBeginTimeMode:*MEMORY[0x1E69795C0]];
    [v11 setFillMode:*MEMORY[0x1E69797E8]];
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (void)configureTransactionEffectEmitterLayer:(id)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [v9 setEmitterPosition:{MidX, CGRectGetMidY(v12)}];
  [v9 setEmitterSize:{width, height}];
}

- (PKDynamicLayerTransactionEffectConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKDynamicLayerTransactionEffectConfiguration;
  v5 = [(PKDynamicLayerTransactionEffectConfiguration *)&v7 init];
  if (v5)
  {
    -[PKDynamicLayerTransactionEffectConfiguration setStyle:](v5, "setStyle:", [v4 decodeIntegerForKey:@"transactionEffectStyle"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKDynamicLayerTransactionEffectConfiguration allocWithZone:?]];
  *(result + 1) = self->_style;
  return result;
}

@end