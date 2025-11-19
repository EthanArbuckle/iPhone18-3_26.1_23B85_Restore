@interface GESSAlgVertexClusterSimplifyOptions
- (GESSAlgVertexClusterSimplifyOptions)init;
@end

@implementation GESSAlgVertexClusterSimplifyOptions

- (GESSAlgVertexClusterSimplifyOptions)init
{
  v9.receiver = self;
  v9.super_class = GESSAlgVertexClusterSimplifyOptions;
  v2 = [(GESSAlgVertexClusterSimplifyOptions *)&v9 init];
  v7 = v2;
  if (v2)
  {
    LODWORD(v6) = 1.0;
    objc_msgSend_setVoxelSize_(v2, v3, v4, v5, v6);
  }

  return v7;
}

@end