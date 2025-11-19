@interface OS_geom_kd_tree_2f
- (void)dealloc;
@end

@implementation OS_geom_kd_tree_2f

- (void)dealloc
{
  isa = self[9].super.isa;
  if (isa)
  {
    self[10].super.isa = isa;
    operator delete(isa);
  }

  v4 = self[6].super.isa;
  if (v4)
  {
    self[7].super.isa = v4;
    operator delete(v4);
  }

  if (LOBYTE(self[5].super.isa) == 1)
  {
    v5 = self[3].super.isa;
    if (v5)
    {
      MEMORY[0x25305E3D0](v5, 0x1000C8000313F17);
    }
  }

  self[3].super.isa = 0;
  self[4].super.isa = 0;
  LOBYTE(self[5].super.isa) = 0;
  v6.receiver = self;
  v6.super_class = OS_geom_kd_tree_2f;
  [(OS_geom_kd_tree_2f *)&v6 dealloc];
}

@end