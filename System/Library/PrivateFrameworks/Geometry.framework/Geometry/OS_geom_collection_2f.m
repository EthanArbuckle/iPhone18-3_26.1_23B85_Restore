@interface OS_geom_collection_2f
- (void)dealloc;
@end

@implementation OS_geom_collection_2f

- (void)dealloc
{
  isa = self[2].super.isa;
  if (isa)
  {
    self[3].super.isa = isa;
    operator delete(isa);
  }

  v4.receiver = self;
  v4.super_class = OS_geom_collection_2f;
  [(OS_geom_collection_2f *)&v4 dealloc];
}

@end