@interface IHKHarmonizationResult
- (IHKHarmonizationResult)initWithHarmonized:(CGImage *)a3 gatingScore:(float)a4 shouldHarmonize:(BOOL)a5;
- (void)dealloc;
@end

@implementation IHKHarmonizationResult

- (IHKHarmonizationResult)initWithHarmonized:(CGImage *)a3 gatingScore:(float)a4 shouldHarmonize:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = IHKHarmonizationResult;
  v8 = [(IHKHarmonizationResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_gatingScore = a4;
    v8->_harmonized = CGImageRetain(a3);
    v9->_shouldHarmonize = a5;
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