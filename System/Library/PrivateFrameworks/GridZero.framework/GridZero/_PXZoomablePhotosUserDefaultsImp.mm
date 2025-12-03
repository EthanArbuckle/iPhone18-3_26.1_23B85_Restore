@interface _PXZoomablePhotosUserDefaultsImp
- (_PXZoomablePhotosUserDefaultsImp)initWithUserDefaults:(id)defaults;
@end

@implementation _PXZoomablePhotosUserDefaultsImp

- (_PXZoomablePhotosUserDefaultsImp)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = _PXZoomablePhotosUserDefaultsImp;
  v6 = [(_PXZoomablePhotosUserDefaultsImp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, defaults);
  }

  return v7;
}

@end