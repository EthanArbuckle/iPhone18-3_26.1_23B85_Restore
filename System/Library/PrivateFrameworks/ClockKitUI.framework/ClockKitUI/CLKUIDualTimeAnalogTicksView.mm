@interface CLKUIDualTimeAnalogTicksView
- (CLKUIDualTimeAnalogTicksView)initWithConfiguration:(id *)configuration;
- (CLKUIDualTimeAnalogTicksView)initWithFrame:(CGRect)frame configuration:(id *)configuration;
- (id)_createReplicatorLayerWithTickCount:(unint64_t)count;
- (id)_createTickLayerWithSize:(CGSize)size actions:(id)actions;
- (void)layoutSubviews;
- (void)setHourTickColor:(id)color minuteTickColor:(id)tickColor;
@end

@implementation CLKUIDualTimeAnalogTicksView

- (CLKUIDualTimeAnalogTicksView)initWithConfiguration:(id *)configuration
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = *&configuration->var4;
  v10[2] = configuration->var3;
  v10[3] = v7;
  v11 = *&configuration->var6;
  var2 = configuration->var2;
  v10[0] = *&configuration->var0;
  v10[1] = var2;
  return [(CLKUIDualTimeAnalogTicksView *)self initWithFrame:v10 configuration:v3, v4, v5, v6];
}

- (CLKUIDualTimeAnalogTicksView)initWithFrame:(CGRect)frame configuration:(id *)configuration
{
  v26[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CLKUIDualTimeAnalogTicksView;
  v5 = [(CLKUIDualTimeAnalogTicksView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 408) = *&configuration->var0;
    var3 = configuration->var3;
    v7 = *&configuration->var4;
    var2 = configuration->var2;
    *(v5 + 59) = *&configuration->var6;
    *(v5 + 440) = var3;
    *(v5 + 456) = v7;
    *(v5 + 424) = var2;
    if (configuration->var6)
    {
      v25 = @"position";
      null = [MEMORY[0x1E695DFB0] null];
      v26[0] = null;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    }

    else
    {
      v23[0] = @"backgroundColor";
      null = [MEMORY[0x1E695DFB0] null];
      v23[1] = @"position";
      v24[0] = null;
      null2 = [MEMORY[0x1E695DFB0] null];
      v24[1] = null2;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }

    if (configuration->var0)
    {
      v13 = [(CLKUIDualTimeAnalogTicksView *)v6 _createReplicatorLayerWithTickCount:?];
      minuteTickReplicatorLayer = v6->_minuteTickReplicatorLayer;
      v6->_minuteTickReplicatorLayer = v13;

      v15 = [(CLKUIDualTimeAnalogTicksView *)v6 _createTickLayerWithSize:v11 actions:configuration->var2.width, configuration->var2.height];
      minuteTickLayer = v6->_minuteTickLayer;
      v6->_minuteTickLayer = v15;

      [(CAReplicatorLayer *)v6->_minuteTickReplicatorLayer addSublayer:v6->_minuteTickLayer];
    }

    if (configuration->var1)
    {
      v17 = [(CLKUIDualTimeAnalogTicksView *)v6 _createReplicatorLayerWithTickCount:?];
      hourTickReplicatorLayer = v6->_hourTickReplicatorLayer;
      v6->_hourTickReplicatorLayer = v17;

      v19 = [(CLKUIDualTimeAnalogTicksView *)v6 _createTickLayerWithSize:v11 actions:configuration->var3.width, configuration->var3.height];
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
  bounds = [(CLKUIDualTimeAnalogTicksView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1E691D7B0](bounds);
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

- (id)_createReplicatorLayerWithTickCount:(unint64_t)count
{
  v14[2] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979430] layer];
  [layer setFillMode:*MEMORY[0x1E69797E0]];
  [layer setInstanceCount:count];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [layer setInstanceColor:{objc_msgSend(whiteColor, "CGColor")}];

  CATransform3DMakeRotation(&v12, 6.28318531 / count, 0.0, 0.0, 1.0);
  [layer setInstanceTransform:&v12];
  v13[0] = @"position";
  null = [MEMORY[0x1E695DFB0] null];
  v13[1] = @"bounds";
  v14[0] = null;
  null2 = [MEMORY[0x1E695DFB0] null];
  v14[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [layer setActions:v9];

  layer2 = [(CLKUIDualTimeAnalogTicksView *)self layer];
  [layer2 addSublayer:layer];

  return layer;
}

- (id)_createTickLayerWithSize:(CGSize)size actions:(id)actions
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x1E6979398];
  actionsCopy = actions;
  layer = [v6 layer];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [layer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

  [layer setBounds:{0.0, 0.0, width, height}];
  [layer setCornerRadius:width * 0.5];
  [layer setActions:actionsCopy];

  return layer;
}

- (void)setHourTickColor:(id)color minuteTickColor:(id)tickColor
{
  hourTickLayer = self->_hourTickLayer;
  colorCopy = color;
  tickColorCopy = tickColor;
  -[CALayer setBackgroundColor:](hourTickLayer, "setBackgroundColor:", [color CGColor]);
  minuteTickLayer = self->_minuteTickLayer;
  cGColor = [tickColorCopy CGColor];

  [(CALayer *)minuteTickLayer setBackgroundColor:cGColor];
}

@end