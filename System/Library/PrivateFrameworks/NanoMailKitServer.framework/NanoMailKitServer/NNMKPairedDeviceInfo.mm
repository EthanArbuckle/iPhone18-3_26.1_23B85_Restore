@interface NNMKPairedDeviceInfo
+ (id)pairedDeviceInfoWithScreenWidth:(double)width screenScale:(double)scale;
@end

@implementation NNMKPairedDeviceInfo

+ (id)pairedDeviceInfoWithScreenWidth:(double)width screenScale:(double)scale
{
  v6 = objc_alloc_init(NNMKPairedDeviceInfo);
  [(NNMKPairedDeviceInfo *)v6 setScreenWidth:width];
  [(NNMKPairedDeviceInfo *)v6 setScreenScale:scale];

  return v6;
}

@end