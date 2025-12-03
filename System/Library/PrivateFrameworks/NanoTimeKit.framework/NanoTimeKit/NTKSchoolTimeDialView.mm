@interface NTKSchoolTimeDialView
- (NTKSchoolTimeDialView)initWithFrame:(CGRect)frame ringWidth:(double)width;
- (id)_activeHourColor;
- (id)_inactiveHourColor;
- (void)_setupUI;
- (void)setActiveHour:(unint64_t)hour animated:(BOOL)animated;
@end

@implementation NTKSchoolTimeDialView

- (NTKSchoolTimeDialView)initWithFrame:(CGRect)frame ringWidth:(double)width
{
  v8.receiver = self;
  v8.super_class = NTKSchoolTimeDialView;
  v5 = [(NTKSchoolTimeDialView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_ringWidth = width;
    [(NTKSchoolTimeDialView *)v5 _setupUI];
  }

  return v6;
}

- (void)_setupUI
{
  v55[3] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v51 = ___LayoutConstants_block_invoke_8(currentDevice, currentDevice);
  v4 = self->_ringWidth * 0.5;
  [(NTKSchoolTimeDialView *)self bounds];
  v57 = CGRectInset(v56, v4 * 0.5, v4 * 0.5);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  layer = [MEMORY[0x277CD9F90] layer];
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  [layer setPath:{CGPathCreateWithEllipseInRect(v58, 0)}];
  v10 = +[NTKSchoolTimeFaceView schoolTimeColor];
  [layer setStrokeColor:{objc_msgSend(v10, "CGColor")}];

  [layer setFillColor:0];
  [layer setLineWidth:v4];
  layer2 = [(NTKSchoolTimeDialView *)self layer];
  [layer2 addSublayer:layer];

  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
  v13 = MEMORY[0x2318D8E70]([(NTKSchoolTimeDialView *)self bounds]);
  v49 = v14;
  v50 = v13;
  v15 = width * 0.5;
  v16 = objc_opt_new();
  [v16 setNumberStyle:0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v16 setLocale:currentLocale];

  v46 = currentDevice;
  v18 = [MEMORY[0x277CBBAF8] metricsWithDevice:currentDevice identitySizeClass:3];
  v54[0] = &unk_2841820F8;
  v19 = MEMORY[0x277CCAE60];
  [v18 scaledValue:0 withOverride:-1.0 forSizeClass:0.0];
  v20 = [v19 valueWithCGPoint:?];
  v55[0] = v20;
  v54[1] = &unk_284182110;
  v21 = MEMORY[0x277CCAE60];
  [v18 scaledValue:0 withOverride:1.0 forSizeClass:0.0];
  v22 = [v21 valueWithCGPoint:?];
  v55[1] = v22;
  v54[2] = &unk_284182128;
  v23 = MEMORY[0x277CCAE60];
  v52[0] = &unk_284182140;
  v52[1] = &unk_284182158;
  v53[0] = &unk_284187138;
  v53[1] = &unk_284187138;
  v52[2] = &unk_284182170;
  v53[2] = &unk_284187138;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
  [v18 scaledValue:v24 withOverrides:-1.0];
  v26 = [v23 valueWithCGPoint:{0.0, v25}];
  v55[2] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

  v47 = *(MEMORY[0x277CBF3A0] + 8);
  v48 = *MEMORY[0x277CBF3A0];
  v28 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *(MEMORY[0x277CBF3A0] + 24);
  v30 = *MEMORY[0x277D74420];
  for (i = 1; i != 13; ++i)
  {
    v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v48, v47, v28, v29}];
    v33 = [MEMORY[0x277CBBB08] compactSoftFontOfSize:v51 weight:v30];
    [v32 setFont:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v35 = [v16 stringFromNumber:v34];
    [v32 setText:v35];

    _inactiveHourColor = [(NTKSchoolTimeDialView *)self _inactiveHourColor];
    [v32 setTextColor:_inactiveHourColor];

    [v32 sizeToFit];
    v37 = __sincos_stret(i * 0.523598776 + -1.57079633);
    v38 = round(v50 + v15 * v37.__cosval);
    v39 = round(v49 + v15 * v37.__sinval);
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v41 = [v27 objectForKeyedSubscript:v40];

    if (v41)
    {
      [v41 CGPointValue];
      v38 = v38 + v42;
      v39 = v39 + v43;
    }

    [v32 setCenter:{v38, v39}];
    [(NTKSchoolTimeDialView *)self addSubview:v32];
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [(NSDictionary *)v12 setObject:v32 forKeyedSubscript:v44];
  }

  hourLabels = self->_hourLabels;
  self->_hourLabels = v12;
}

- (void)setActiveHour:(unint64_t)hour animated:(BOOL)animated
{
  if (self->_activeHour != hour)
  {
    animatedCopy = animated;
    self->_activeHour = hour;
    hourLabels = self->_hourLabels;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v8 = [(NSDictionary *)hourLabels objectForKeyedSubscript:v7];

    v9 = self->_hourLabels;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activeHour];
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:v10];

    if (animatedCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __48__NTKSchoolTimeDialView_setActiveHour_animated___block_invoke;
      aBlock[3] = &unk_2787800D0;
      v16 = v8;
      selfCopy = self;
      v18 = v11;
      v12 = _Block_copy(aBlock);
      v12[2](1.0);
    }

    else
    {
      if (v8)
      {
        _inactiveHourColor = [(NTKSchoolTimeDialView *)self _inactiveHourColor];
        [v8 setTextColor:_inactiveHourColor];
      }

      if (v11)
      {
        _activeHourColor = [(NTKSchoolTimeDialView *)self _activeHourColor];
        [v11 setTextColor:_activeHourColor];
      }
    }
  }
}

void __48__NTKSchoolTimeDialView_setActiveHour_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) _activeHourColor];
    v4 = [*(a1 + 40) _inactiveHourColor];
    v5 = NTKInterpolateBetweenColors();
    [v2 setTextColor:v5];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v9 = [*(a1 + 40) _inactiveHourColor];
    v7 = [*(a1 + 40) _activeHourColor];
    v8 = NTKInterpolateBetweenColors();
    [v6 setTextColor:v8];
  }
}

- (id)_inactiveHourColor
{
  if (_inactiveHourColor_onceToken != -1)
  {
    [NTKSchoolTimeDialView _inactiveHourColor];
  }

  v3 = _inactiveHourColor___color;

  return v3;
}

void __43__NTKSchoolTimeDialView__inactiveHourColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  v1 = _inactiveHourColor___color;
  _inactiveHourColor___color = v0;
}

- (id)_activeHourColor
{
  if (_activeHourColor_onceToken != -1)
  {
    [NTKSchoolTimeDialView _activeHourColor];
  }

  v3 = _activeHourColor___color;

  return v3;
}

void __41__NTKSchoolTimeDialView__activeHourColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] blackColor];
  v1 = _activeHourColor___color;
  _activeHourColor___color = v0;
}

@end