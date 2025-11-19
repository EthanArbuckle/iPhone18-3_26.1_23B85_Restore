@interface CLKUIDualTimeAnalogTicksView
- (CLKUIDualTimeAnalogTicksView)initWithConfiguration:(id *)a3;
- (CLKUIDualTimeAnalogTicksView)initWithFrame:(CGRect)a3 configuration:(id *)a4;
- (id)_createReplicatorLayerWithTickCount:(unint64_t)a3;
- (id)_createTickLayerWithSize:(CGSize)a3 actions:(id)a4;
- (void)layoutSubviews;
- (void)setHourTickColor:(id)a3 minuteTickColor:(id)a4;
@end

@implementation CLKUIDualTimeAnalogTicksView

- (CLKUIDualTimeAnalogTicksView)initWithConfiguration:(id *)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = *&a3->var4;
  v10[2] = a3->var3;
  v10[3] = v7;
  v11 = *&a3->var6;
  var2 = a3->var2;
  v10[0] = *&a3->var0;
  v10[1] = var2;
  return [(CLKUIDualTimeAnalogTicksView *)self initWithFrame:v10 configuration:v3, v4, v5, v6];
}

- (CLKUIDualTimeAnalogTicksView)initWithFrame:(CGRect)a3 configuration:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CLKUIDualTimeAnalogTicksView;
  v5 = [(CLKUIDualTimeAnalogTicksView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 408) = *&a4->var0;
    var3 = a4->var3;
    v7 = *&a4->var4;
    var2 = a4->var2;
    *(v5 + 59) = *&a4->var6;
    *(v5 + 440) = var3;
    *(v5 + 456) = v7;
    *(v5 + 424) = var2;
    if (a4->var6)
    {
      v25 = @"position";
      v10 = [MEMORY[0x1E695DFB0] null];
      v26[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    }

    else
    {
      v23[0] = @"backgroundColor";
      v10 = [MEMORY[0x1E695DFB0] null];
      v23[1] = @"position";
      v24[0] = v10;
      v12 = [MEMORY[0x1E695DFB0] null];
      v24[1] = v12;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }

    if (a4->var0)
    {
      v13 = [(CLKUIDualTimeAnalogTicksView *)v6 _createReplicatorLayerWithTickCount:?];
      minuteTickReplicatorLayer = v6->_minuteTickReplicatorLayer;
      v6->_minuteTickReplicatorLayer = v13;

      v15 = [(CLKUIDualTimeAnalogTicksView *)v6 _createTickLayerWithSize:v11 actions:a4->var2.width, a4->var2.height];
      minuteTickLayer = v6->_minuteTickLayer;
      v6->_minuteTickLayer = v15;

      [(CAReplicatorLayer *)v6->_minuteTickReplicatorLayer addSublayer:v6->_minuteTickLayer];
    }

    if (a4->var1)
    {
      v17 = [(CLKUIDualTimeAnalogTicksView *)v6 _createReplicatorLayerWithTickCount:?];
      hourTickReplicatorLayer = v6->_hourTickReplicatorLayer;
      v6->_hourTickReplicatorLayer = v17;

      v19 = [(CLKUIDualTimeAnalogTicksView *)v6 _createTickLayerWithSize:v11 actions:a4->var3.width, a4->var3.height];
      hourTickLayer = v6->_hourTickLayer;
      v6->_hourTickLayer = v19;

      [(CAReplicatorLayer *)v6->_hourTickReplicatorLayer addSublayer:v6->_hourTickLayer];
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CLKUIDualTimeAnalogTicksView;
  [(CLKUIDualTimeAnalogTicksView *)&v18 layoutSubviews];
  v3 = [(CLKUIDualTimeAnalogTicksView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1E691D7B0](v3);
  v14 = v12;
  v15 = v13;
  minuteTickReplicatorLayer = self->_minuteTickReplicatorLayer;
  if (minuteTickReplicatorLayer)
  {
    [(CAReplicatorLayer *)minuteTickReplicatorLayer setPosition:v12, v13];
    [(CAReplicatorLayer *)self->_minuteTickReplicatorLayer setBounds:v5, v7, v9, v11];
    [(CALayer *)self->_minuteTickLayer setPosition:v14, self->_configuration.minuteTickSize.height * 0.5 + self->_configuration.minuteTickInset * 0.5];
  }

  hourTickReplicatorLayer = self->_hourTickReplicatorLayer;
  if (hourTickReplicatorLayer)
  {
    [(CAReplicatorLayer *)hourTickReplicatorLayer setPosition:v14, v15];
    [(CAReplicatorLayer *)self->_hourTickReplicatorLayer setBounds:v5, v7, v9, v11];
    [(CALayer *)self->_hourTickLayer setPosition:v14, self->_configuration.hourTickSize.height * 0.5 + self->_configuration.hourTickInset * 0.5];
  }
}

- (id)_createReplicatorLayerWithTickCount:(unint64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6979430] layer];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  [v5 setInstanceCount:a3];
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setInstanceColor:{objc_msgSend(v6, "CGColor")}];

  CATransform3DMakeRotation(&v12, 6.28318531 / a3, 0.0, 0.0, 1.0);
  [v5 setInstanceTransform:&v12];
  v13[0] = @"position";
  v7 = [MEMORY[0x1E695DFB0] null];
  v13[1] = @"bounds";
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DFB0] null];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v5 setActions:v9];

  v10 = [(CLKUIDualTimeAnalogTicksView *)self layer];
  [v10 addSublayer:v5];

  return v5;
}

- (id)_createTickLayerWithSize:(CGSize)a3 actions:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x1E6979398];
  v7 = a4;
  v8 = [v6 layer];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setBackgroundColor:{objc_msgSend(v9, "CGColor")}];

  [v8 setBounds:{0.0, 0.0, width, height}];
  [v8 setCornerRadius:width * 0.5];
  [v8 setActions:v7];

  return v8;
}

- (void)setHourTickColor:(id)a3 minuteTickColor:(id)a4
{
  hourTickLayer = self->_hourTickLayer;
  v8 = a3;
  v9 = a4;
  -[CALayer setBackgroundColor:](hourTickLayer, "setBackgroundColor:", [a3 CGColor]);
  minuteTickLayer = self->_minuteTickLayer;
  v11 = [v9 CGColor];

  [(CALayer *)minuteTickLayer setBackgroundColor:v11];
}

@end