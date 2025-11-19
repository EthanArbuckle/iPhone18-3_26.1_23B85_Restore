@interface CUISingleNamedAssetMutableStorage
- (void)_initDefaultHeaderVersion:(double)a3 versionString:(const char *)a4;
@end

@implementation CUISingleNamedAssetMutableStorage

- (void)_initDefaultHeaderVersion:(double)a3 versionString:(const char *)a4
{
  v4.receiver = self;
  v4.super_class = CUISingleNamedAssetMutableStorage;
  [(CUICommonAssetStorage *)&v4 _initDefaultHeaderVersion:a4 versionString:971.6];
}

@end