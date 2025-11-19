@interface GESSQuadMeshBase
- (GESSQuadMeshBase)init;
@end

@implementation GESSQuadMeshBase

- (GESSQuadMeshBase)init
{
  v7.receiver = self;
  v7.super_class = GESSQuadMeshBase;
  v2 = [(GESSPolyMesh *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMeshType_(v2, v3, 10, v4);
  }

  return v5;
}

@end