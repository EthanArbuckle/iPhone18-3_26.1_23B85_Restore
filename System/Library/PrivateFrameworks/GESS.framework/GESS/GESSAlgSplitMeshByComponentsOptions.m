@interface GESSAlgSplitMeshByComponentsOptions
- (GESSAlgSplitMeshByComponentsOptions)init;
@end

@implementation GESSAlgSplitMeshByComponentsOptions

- (GESSAlgSplitMeshByComponentsOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgSplitMeshByComponentsOptions;
  v2 = [(GESSAlgSplitMeshByComponentsOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMaxSplitCount_(v2, v3, 0, v4);
  }

  return v5;
}

@end