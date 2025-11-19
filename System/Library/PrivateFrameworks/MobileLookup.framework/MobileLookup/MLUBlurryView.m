@interface MLUBlurryView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (double)blurRadius;
- (void)_activateBlurring;
- (void)setBlurRadius:(double)a3;
@end

@implementation MLUBlurryView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MLUBlurryView;
  if (-[MLUBlurryView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"path") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"cornerRadius") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"mask.path"];
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
  v6 = [(MLUBlurryView *)self layer];
  [v6 setFilters:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (double)blurRadius
{
  v2 = 0.0;
  if (self->_hasActivated)
  {
    v3 = [(MLUBlurryView *)self layer];
    v4 = [v3 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v4 floatValue];
    v2 = v5;
  }

  return v2;
}

- (void)setBlurRadius:(double)a3
{
  if (!self->_hasActivated)
  {
    [(MLUBlurryView *)self _activateBlurring];
  }

  v6 = [(MLUBlurryView *)self layer];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v6 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

@end