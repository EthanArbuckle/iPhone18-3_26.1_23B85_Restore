@interface NNMKPairedDeviceInfo
+ (id)pairedDeviceInfoWithScreenWidth:(double)a3 screenScale:(double)a4;
@end

@implementation NNMKPairedDeviceInfo

+ (id)pairedDeviceInfoWithScreenWidth:(double)a3 screenScale:(double)a4
{
  v6 = objc_alloc_init(NNMKPairedDeviceInfo);
  [(NNMKPairedDeviceInfo *)v6 setScreenWidth:a3];
  [(NNMKPairedDeviceInfo *)v6 setScreenScale:a4];

  return v6;
}

@end