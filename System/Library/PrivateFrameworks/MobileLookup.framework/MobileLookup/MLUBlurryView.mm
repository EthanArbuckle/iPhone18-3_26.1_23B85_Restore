@interface MLUBlurryView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (double)blurRadius;
- (void)_activateBlurring;
- (void)setBlurRadius:(double)radius;
@end

@implementation MLUBlurryView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = MLUBlurryView;
  if (-[MLUBlurryView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"path") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cornerRadius") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"mask.path"];
  }

  return v5;
}

- (void)_activateBlurring
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CD9EA0]);
  v4 = [v3 initWithType:*MEMORY[0x277CDA328]];
  [v4 setValue:&unk_286AC90D8 forKey:*MEMORY[0x277CBFB08]];
  [v4 setValue:@"low" forKey:@"inputQuality"];
  [v4 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  [v4 setName:@"gaussianBlur"];
  [(MLUBlurryView *)self setShouldRasterizeForTransition:1];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  layer = [(MLUBlurryView *)self layer];
  [layer setFilters:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (double)blurRadius
{
  v2 = 0.0;
  if (self->_hasActivated)
  {
    layer = [(MLUBlurryView *)self layer];
    v4 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v4 floatValue];
    v2 = v5;
  }

  return v2;
}

- (void)setBlurRadius:(double)radius
{
  if (!self->_hasActivated)
  {
    [(MLUBlurryView *)self _activateBlurring];
  }

  layer = [(MLUBlurryView *)self layer];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

@end