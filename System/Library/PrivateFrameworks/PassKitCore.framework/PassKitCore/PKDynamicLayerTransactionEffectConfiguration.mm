@interface PKDynamicLayerTransactionEffectConfiguration
- (PKDynamicLayerTransactionEffectConfiguration)initWithCoder:(id)coder;
- (PKDynamicLayerTransactionEffectConfiguration)initWithDictionary:(id)dictionary;
- (id)configureTransactionEffectEmitterLayer:(id)layer withImage:(CGImage *)image andEmitterShapeData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureTransactionEffectEmitterLayer:(id)layer withBounds:(CGRect)bounds;
@end

@implementation PKDynamicLayerTransactionEffectConfiguration

- (PKDynamicLayerTransactionEffectConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_9;
  }

  v10.receiver = self;
  v10.super_class = PKDynamicLayerTransactionEffectConfiguration;
  self = [(PKDynamicLayerTransactionEffectConfiguration *)&v10 init];
  if (self)
  {
    v5 = [dictionaryCopy PKStringForKey:@"style"];
    v6 = v5;
    if (v5 == @"zoomedShape" || v5 && (v7 = [(__CFString *)v5 isEqualToString:@"zoomedShape"], v6, (v7 & 1) != 0))
    {

      self->_style = 1;
      goto LABEL_7;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)configureTransactionEffectEmitterLayer:(id)layer withImage:(CGImage *)image andEmitterShapeData:(id)data
{
  v52[1] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  dataCopy = data;
  v10 = dataCopy;
  if (self->_style != 1)
  {
    goto LABEL_12;
  }

  animation = 0;
  if (!image || !dataCopy)
  {
    goto LABEL_17;
  }

  v12 = CGSVGDocumentCreateFromData();
  if (!v12)
  {
LABEL_12:
    animation = 0;
    goto LABEL_17;
  }

  v13 = v12;
  [layerCopy setEmitterMode:*MEMORY[0x1E6979798]];
  [layerCopy setEmitterShape:*MEMORY[0x1E69797A0]];
  [layerCopy setRenderMode:*MEMORY[0x1E6979788]];
  Width = CGImageGetWidth(image);
  v15 = 12.8 / fmax(Width, CGImageGetHeight(image));
  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  [emitterCell setContents:image];
  [emitterCell setScale:v15];
  LODWORD(v17) = 2.0;
  [emitterCell setLifetime:v17];
  LODWORD(v18) = 0.5;
  [emitterCell setLifetimeRange:v18];
  [emitterCell setEmissionRange:3.14159265];
  [emitterCell setVelocity:20.0];
  [emitterCell setYAcceleration:0.0];
  LODWORD(v19) = 1137180672;
  [emitterCell setBirthRate:v19];
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
  [layerCopy setEmitterPath:v25];
  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(v13);
  if (CGPath)
  {
    CFRelease(CGPath);
  }

  if ([layerCopy emitterPath])
  {
    v52[0] = emitterCell;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    [layerCopy setEmitterCells:v26];

    [layerCopy setSeed:arc4random_uniform(0x2710u)];
    CATransform3DMakeScale(&v48, 0.5, 0.5, 0.5);
    [layerCopy setTransform:&v48];
    [layerCopy setOpacity:0.0];
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
    [layerCopy setEmitterBehaviors:v34];

    v35 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
    [v35 setDuration:2.7];
    [v35 setKeyTimes:&unk_1F23B4658];
    [v35 setValues:&unk_1F23B4670];
    v36 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v36 setBeginTime:0.0];
    [v36 setDuration:3.2];
    v37 = MEMORY[0x1E696B098];
    if (layerCopy)
    {
      [layerCopy transform];
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
    [layerCopy birthRate];
    v44 = [v43 numberWithFloat:?];
    [v42 setFromValue:v44];

    v45 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v42 setToValue:v45];

    animation = [MEMORY[0x1E6979308] animation];
    v50[0] = v35;
    v50[1] = v36;
    v50[2] = v42;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
    [animation setAnimations:v46];

    [animation setDuration:3.2];
    [animation setBeginTime:0.1];
    [animation setBeginTimeMode:*MEMORY[0x1E69795C0]];
    [animation setFillMode:*MEMORY[0x1E69797E8]];
  }

  else
  {
    animation = 0;
  }

LABEL_17:

  return animation;
}

- (void)configureTransactionEffectEmitterLayer:(id)layer withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layerCopy = layer;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [layerCopy setEmitterPosition:{MidX, CGRectGetMidY(v12)}];
  [layerCopy setEmitterSize:{width, height}];
}

- (PKDynamicLayerTransactionEffectConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKDynamicLayerTransactionEffectConfiguration;
  v5 = [(PKDynamicLayerTransactionEffectConfiguration *)&v7 init];
  if (v5)
  {
    -[PKDynamicLayerTransactionEffectConfiguration setStyle:](v5, "setStyle:", [coderCopy decodeIntegerForKey:@"transactionEffectStyle"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKDynamicLayerTransactionEffectConfiguration allocWithZone:?]];
  *(result + 1) = self->_style;
  return result;
}

@end