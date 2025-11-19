@interface PKShapeLayerPathState
- (PKShapeLayerPathState)initWithShapeLayer:(id)a3 reverse:(BOOL)a4;
- (PKShapeLayerPathState)initWithStrokeStartT0:(double)a3 strokeStartT1:(double)a4 strokeEndT0:(double)a5 strokeEndT1:(double)a6;
- (double)progressForShapeLayer:(id)a3;
- (double)strokeEndAtProgress:(double)a3;
- (double)strokeStartAtProgress:(double)a3;
- (id)description;
- (void)dealloc;
- (void)setProgress:(double)a3 onShapeLayer:(id)a4 withAnimationHandler:(id)a5;
@end

@implementation PKShapeLayerPathState

- (PKShapeLayerPathState)initWithShapeLayer:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 strokeStart];
  v8 = v7;
  [v6 strokeEnd];
  v10 = v9;

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  return [(PKShapeLayerPathState *)self initWithStrokeStartT0:v11 strokeStartT1:v8 strokeEndT0:v11 strokeEndT1:v10];
}

- (PKShapeLayerPathState)initWithStrokeStartT0:(double)a3 strokeStartT1:(double)a4 strokeEndT0:(double)a5 strokeEndT1:(double)a6
{
  v11.receiver = self;
  v11.super_class = PKShapeLayerPathState;
  result = [(PKShapeLayerPathState *)&v11 init];
  if (result)
  {
    result->_strokeStartT0 = a3;
    result->_strokeStartT1 = a4;
    result->_strokeEndT0 = a5;
    result->_strokeEndT1 = a6;
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

- (double)strokeStartAtProgress:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  return v4 * self->_strokeStartT1 + (1.0 - v4) * self->_strokeStartT0;
}

- (double)strokeEndAtProgress:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  return v4 * self->_strokeEndT1 + (1.0 - v4) * self->_strokeEndT0;
}

- (void)setProgress:(double)a3 onShapeLayer:(id)a4 withAnimationHandler:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = 0.0;
  if (a3 >= 0.0)
  {
    v9 = a3;
  }

  if (a3 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  [v19 strokeStart];
  v12 = v11;
  [(PKShapeLayerPathState *)self strokeStartAtProgress:v10];
  v14 = v13;
  [v19 strokeEnd];
  v16 = v15;
  [(PKShapeLayerPathState *)self strokeEndAtProgress:v10];
  v18 = v17;
  [v19 setStrokeStart:v14];
  [v19 setStrokeEnd:v18];
  if (v8)
  {
    if (v12 != v14)
    {
      v8[2](v8, v19, @"strokeStart", v12, v14);
    }

    if (v16 != v18)
    {
      v8[2](v8, v19, @"strokeEnd", v16, v18);
    }
  }
}

- (double)progressForShapeLayer:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 1.0;
  v7 = 1.0;
  if (self->_strokeStartT0 != self->_strokeStartT1)
  {
    [v4 strokeStart];
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