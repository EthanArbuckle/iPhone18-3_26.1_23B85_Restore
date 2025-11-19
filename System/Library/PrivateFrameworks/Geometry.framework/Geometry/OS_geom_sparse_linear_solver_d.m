@interface OS_geom_sparse_linear_solver_d
- (void)dealloc;
@end

@implementation OS_geom_sparse_linear_solver_d

- (void)dealloc
{
  isa = self[12].super.isa;
  if (isa)
  {
    self[13].super.isa = isa;
    operator delete(isa);
  }

  v4 = self[9].super.isa;
  if (v4)
  {
    self[10].super.isa = v4;
    operator delete(v4);
  }

  v5 = self[6].super.isa;
  if (v5)
  {
    self[7].super.isa = v5;
    operator delete(v5);
  }

  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(&self[3], self[4].super.isa);
  v6.receiver = self;
  v6.super_class = OS_geom_sparse_linear_solver_d;
  [(OS_geom_sparse_linear_solver_d *)&v6 dealloc];
}

@end