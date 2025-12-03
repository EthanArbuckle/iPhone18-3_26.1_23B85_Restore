@interface PKShapeLayerPathState
- (PKShapeLayerPathState)initWithShapeLayer:(id)layer reverse:(BOOL)reverse;
- (PKShapeLayerPathState)initWithStrokeStartT0:(double)t0 strokeStartT1:(double)t1 strokeEndT0:(double)endT0 strokeEndT1:(double)endT1;
- (double)progressForShapeLayer:(id)layer;
- (double)strokeEndAtProgress:(double)progress;
- (double)strokeStartAtProgress:(double)progress;
- (id)description;
- (void)dealloc;
- (void)setProgress:(double)progress onShapeLayer:(id)layer withAnimationHandler:(id)handler;
@end

@implementation PKShapeLayerPathState

- (PKShapeLayerPathState)initWithShapeLayer:(id)layer reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  layerCopy = layer;
  [layerCopy strokeStart];
  v8 = v7;
  [layerCopy strokeEnd];
  v10 = v9;

  if (reverseCopy)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  return [(PKShapeLayerPathState *)self initWithStrokeStartT0:v11 strokeStartT1:v8 strokeEndT0:v11 strokeEndT1:v10];
}

- (PKShapeLayerPathState)initWithStrokeStartT0:(double)t0 strokeStartT1:(double)t1 strokeEndT0:(double)endT0 strokeEndT1:(double)endT1
{
  v11.receiver = self;
  v11.super_class = PKShapeLayerPathState;
  result = [(PKShapeLayerPathState *)&v11 init];
  if (result)
  {
    result->_strokeStartT0 = t0;
    result->_strokeStartT1 = t1;
    result->_strokeEndT0 = endT0;
    result->_strokeEndT1 = endT1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKShapeLayerPathState;
  [(PKShapeLayerPathState *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PKShapeLayerPathState;
  v4 = [(PKShapeLayerPathState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: (%f -> %f) (%f -> %f)", v4, *&self->_strokeStartT0, *&self->_strokeStartT1, *&self->_strokeEndT0, *&self->_strokeEndT1];

  return v5;
}

- (double)strokeStartAtProgress:(double)progress
{
  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  if (progress <= 1.0)
  {
    v4 = progressCopy;
  }

  else
  {
    v4 = 1.0;
  }

  return v4 * self->_strokeStartT1 + (1.0 - v4) * self->_strokeStartT0;
}

- (double)strokeEndAtProgress:(double)progress
{
  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  if (progress <= 1.0)
  {
    v4 = progressCopy;
  }

  else
  {
    v4 = 1.0;
  }

  return v4 * self->_strokeEndT1 + (1.0 - v4) * self->_strokeEndT0;
}

- (void)setProgress:(double)progress onShapeLayer:(id)layer withAnimationHandler:(id)handler
{
  layerCopy = layer;
  handlerCopy = handler;
  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  if (progress <= 1.0)
  {
    v10 = progressCopy;
  }

  else
  {
    v10 = 1.0;
  }

  [layerCopy strokeStart];
  v12 = v11;
  [(PKShapeLayerPathState *)self strokeStartAtProgress:v10];
  v14 = v13;
  [layerCopy strokeEnd];
  v16 = v15;
  [(PKShapeLayerPathState *)self strokeEndAtProgress:v10];
  v18 = v17;
  [layerCopy setStrokeStart:v14];
  [layerCopy setStrokeEnd:v18];
  if (handlerCopy)
  {
    if (v12 != v14)
    {
      handlerCopy[2](handlerCopy, layerCopy, @"strokeStart", v12, v14);
    }

    if (v16 != v18)
    {
      handlerCopy[2](handlerCopy, layerCopy, @"strokeEnd", v16, v18);
    }
  }
}

- (double)progressForShapeLayer:(id)layer
{
  layerCopy = layer;
  v5 = layerCopy;
  v6 = 1.0;
  v7 = 1.0;
  if (self->_strokeStartT0 != self->_strokeStartT1)
  {
    [layerCopy strokeStart];
    v7 = fmax(fmin((v8 - self->_strokeStartT0) / (self->_strokeStartT1 - self->_strokeStartT0), 1.0), 0.0);
  }

  if (self->_strokeEndT0 != self->_strokeEndT1)
  {
    [v5 strokeEnd];
    v6 = fmax(fmin((v9 - self->_strokeEndT0) / (self->_strokeEndT1 - self->_strokeEndT0), 1.0), 0.0);
  }

  return fmin(v7, v6);
}

@end