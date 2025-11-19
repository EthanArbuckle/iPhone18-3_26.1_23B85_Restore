@interface OS_geom_refine_triangle_mesh_opt_3f
- (void)dealloc;
@end

@implementation OS_geom_refine_triangle_mesh_opt_3f

- (void)dealloc
{
  isa = self[11].super.isa;
  if (isa)
  {
    self[12].super.isa = isa;
    operator delete(isa);
  }

  v4 = self[8].super.isa;
  if (v4)
  {
    self[9].super.isa = v4;
    operator delete(v4);
  }

  v5 = self[5].super.isa;
  if (v5)
  {
    self[6].super.isa = v5;
    operator delete(v5);
  }

  v6 = self[2].super.isa;
  if (v6)
  {
    self[3].super.isa = v6;
    operator delete(v6);
  }

  v7.receiver = self;
  v7.super_class = OS_geom_refine_triangle_mesh_opt_3f;
  [(OS_geom_refine_triangle_mesh_opt_3f *)&v7 dealloc];
}

@end