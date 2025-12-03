@interface CUISingleNamedAssetMutableStorage
- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string;
@end

@implementation CUISingleNamedAssetMutableStorage

- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string
{
  v4.receiver = self;
  v4.super_class = CUISingleNamedAssetMutableStorage;
  [(CUICommonAssetStorage *)&v4 _initDefaultHeaderVersion:string versionString:971.6];
}

@end