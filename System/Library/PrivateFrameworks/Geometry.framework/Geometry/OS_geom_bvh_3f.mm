@interface OS_geom_bvh_3f
- (void)dealloc;
@end

@implementation OS_geom_bvh_3f

- (void)dealloc
{
  if (LOBYTE(self[14].super.isa) == 1)
  {
    isa = self[12].super.isa;
    if (isa)
    {
      MEMORY[0x25305E3D0](isa, 0x1000C80E0EAB150);
    }
  }

  self[12].super.isa = 0;
  self[13].super.isa = 0;
  LOBYTE(self[14].super.isa) = 0;
  if (LOBYTE(self[11].super.isa) == 1)
  {
    v4 = self[9].super.isa;
    if (v4)
    {
      MEMORY[0x25305E3D0](v4, 0x1000C80451B5BE8);
    }
  }

  self[9].super.isa = 0;
  self[10].super.isa = 0;
  LOBYTE(self[11].super.isa) = 0;
  v5 = self[6].super.isa;
  if (v5)
  {
    self[7].super.isa = v5;
    operator delete(v5);
  }

  v6 = self[3].super.isa;
  if (v6)
  {
    self[4].super.isa = v6;
    operator delete(v6);
  }

  v7.receiver = self;
  v7.super_class = OS_geom_bvh_3f;
  [(OS_geom_bvh_3f *)&v7 dealloc];
}

@end