@interface OS_geom_arap_deformer_3f
- (void)dealloc;
@end

@implementation OS_geom_arap_deformer_3f

- (void)dealloc
{
  geom::arap_deformer<float>::~arap_deformer(&self[2]);
  v3.receiver = self;
  v3.super_class = OS_geom_arap_deformer_3f;
  [(OS_geom_arap_deformer_3f *)&v3 dealloc];
}

@end