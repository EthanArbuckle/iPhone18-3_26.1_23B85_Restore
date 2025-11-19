@interface GESSSubMaterial
- (GESSSubMaterial)init;
@end

@implementation GESSSubMaterial

- (GESSSubMaterial)init
{
  v7.receiver = self;
  v7.super_class = GESSSubMaterial;
  v2 = [(GESSSubMaterial *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    objc_msgSend_setParameterToIndex_(v2, v4, v3, v5);
  }

  return v2;
}

@end