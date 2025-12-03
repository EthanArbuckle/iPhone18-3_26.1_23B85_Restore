@interface IHKHarmonizationResult
- (IHKHarmonizationResult)initWithHarmonized:(CGImage *)harmonized gatingScore:(float)score shouldHarmonize:(BOOL)harmonize;
- (void)dealloc;
@end

@implementation IHKHarmonizationResult

- (IHKHarmonizationResult)initWithHarmonized:(CGImage *)harmonized gatingScore:(float)score shouldHarmonize:(BOOL)harmonize
{
  v12.receiver = self;
  v12.super_class = IHKHarmonizationResult;
  v8 = [(IHKHarmonizationResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_gatingScore = score;
    v8->_harmonized = CGImageRetain(harmonized);
    v9->_shouldHarmonize = harmonize;
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  CGImageRelease(self->_harmonized);
  v3.receiver = self;
  v3.super_class = IHKHarmonizationResult;
  [(IHKHarmonizationResult *)&v3 dealloc];
}

@end