@interface OS_geom_collection_4f
- (void)dealloc;
@end

@implementation OS_geom_collection_4f

- (void)dealloc
{
  isa = self[2].super.isa;
  if (isa)
  {
    self[3].super.isa = isa;
    operator delete(isa);
  }

  v4.receiver = self;
  v4.super_class = OS_geom_collection_4f;
  [(OS_geom_collection_4f *)&v4 dealloc];
}

@end