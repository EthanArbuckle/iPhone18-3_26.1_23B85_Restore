@interface _PXZoomablePhotosUserDefaultsImp
- (_PXZoomablePhotosUserDefaultsImp)initWithUserDefaults:(id)a3;
@end

@implementation _PXZoomablePhotosUserDefaultsImp

- (_PXZoomablePhotosUserDefaultsImp)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXZoomablePhotosUserDefaultsImp;
  v6 = [(_PXZoomablePhotosUserDefaultsImp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, a3);
  }

  return v7;
}

@end