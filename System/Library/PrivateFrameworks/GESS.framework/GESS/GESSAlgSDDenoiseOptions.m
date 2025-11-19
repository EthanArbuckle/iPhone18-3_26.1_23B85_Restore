@interface GESSAlgSDDenoiseOptions
- (GESSAlgSDDenoiseOptions)init;
@end

@implementation GESSAlgSDDenoiseOptions

- (GESSAlgSDDenoiseOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgSDDenoiseOptions;
  v2 = [(GESSAlgSDSmoothOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setIterations_(v2, v3, 5, v4);
  }

  return v5;
}

@end