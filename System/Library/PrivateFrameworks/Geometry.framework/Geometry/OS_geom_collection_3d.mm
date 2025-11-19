@interface OS_geom_collection_3d
- (void)dealloc;
@end

@implementation OS_geom_collection_3d

- (void)dealloc
{
  isa = self[2].super.isa;
  if (isa)
  {
    self[3].super.isa = isa;
    operator delete(isa);
  }

  v4.receiver = self;
  v4.super_class = OS_geom_collection_3d;
  [(OS_geom_collection_3d *)&v4 dealloc];
}

@end