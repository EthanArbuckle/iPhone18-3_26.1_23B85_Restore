@interface GESSTriMeshBase
- (GESSTriMeshBase)init;
@end

@implementation GESSTriMeshBase

- (GESSTriMeshBase)init
{
  v7.receiver = self;
  v7.super_class = GESSTriMeshBase;
  v2 = [(GESSPolyMesh *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMeshType_(v2, v3, 0, v4);
  }

  return v5;
}

@end