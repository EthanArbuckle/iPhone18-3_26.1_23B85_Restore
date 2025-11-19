@interface GESSAlgMidpointSubdivideOptions
- (GESSAlgMidpointSubdivideOptions)init;
@end

@implementation GESSAlgMidpointSubdivideOptions

- (GESSAlgMidpointSubdivideOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgMidpointSubdivideOptions;
  v2 = [(GESSAlgMidpointSubdivideOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setIterations_(v2, v3, 1, v4);
  }

  return v5;
}

@end