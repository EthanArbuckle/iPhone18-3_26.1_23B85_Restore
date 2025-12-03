@interface NTKRichComplicationLineProgressView
- (id)initForFamily:(int64_t)family device:(id)device progressFillStyle:(int64_t)style;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations;
@end

@implementation NTKRichComplicationLineProgressView

- (id)initForFamily:(int64_t)family device:(id)device progressFillStyle:(int64_t)style
{
  deviceCopy = device;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__NTKRichComplicationLineProgressView_initForFamily_device_progressFillStyle___block_invoke;
  aBlock[3] = &unk_278783F70;
  v9 = deviceCopy;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if (style > 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_opt_class();
  }

  v12 = v10[2](v10, v11);
  v13 = v10[2](v10, v11);
  v17.receiver = self;
  v17.super_class = NTKRichComplicationLineProgressView;
  v14 = [(CDRichComplicationProgressView *)&v17 initForFamily:family device:v9 backgroundShapeView:v12 foregroundShapeView:v13];
  v15 = v14;
  if (v14)
  {
    v14[65] = style;
  }

  return v15;
}

id __78__NTKRichComplicationLineProgressView_initForFamily_device_progressFillStyle___block_invoke(uint64_t a1, Class a2)
{
  v2 = [[a2 alloc] initForDevice:*(a1 + 32) withFilterStyle:0];

  return v2;
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors
{
  colorsCopy = colors;
  [(NTKRichComplicationLineProgressView *)self progressFillStyle];
  CDRichComplicationProgressFillStyleIsMetered();
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  [(NTKRichComplicationLineProgressView *)self progressFillStyle];
  CDRichComplicationProgressFillStyleIsMetered();
}

@end