@interface OS_geom_ddg_evaluator_3d
- (void)dealloc;
@end

@implementation OS_geom_ddg_evaluator_3d

- (void)dealloc
{
  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](&self[8]);
  isa = self[5].super.isa;
  if (isa)
  {
    self[6].super.isa = isa;
    operator delete(isa);
  }

  v4 = self[2].super.isa;
  if (v4)
  {
    self[3].super.isa = v4;
    operator delete(v4);
  }

  v5.receiver = self;
  v5.super_class = OS_geom_ddg_evaluator_3d;
  [(OS_geom_ddg_evaluator_3d *)&v5 dealloc];
}

@end