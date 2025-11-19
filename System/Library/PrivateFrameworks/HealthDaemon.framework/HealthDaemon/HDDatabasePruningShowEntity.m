@interface HDDatabasePruningShowEntity
- (HDDatabasePruningShowEntity)init;
- (HDDatabasePruningShowEntity)initWithClassName:(id)a3 identifier:(id)a4 supportsPruning:(BOOL)a5 supportsPruningRestrictionPredicates:(BOOL)a6 maximumPruningAnchor:(id)a7 pruningRestrictionPredicates:(id)a8;
@end

@implementation HDDatabasePruningShowEntity

- (HDDatabasePruningShowEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabasePruningShowEntity)initWithClassName:(id)a3 identifier:(id)a4 supportsPruning:(BOOL)a5 supportsPruningRestrictionPredicates:(BOOL)a6 maximumPruningAnchor:(id)a7 pruningRestrictionPredicates:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = HDDatabasePruningShowEntity;
  v18 = [(HDDatabasePruningShowEntity *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_className, a3);
    objc_storeStrong(&v19->_identifier, a4);
    v19->_supportsPruning = a5;
    v19->_supportsPruningRestrictionPredicates = a6;
    objc_storeStrong(&v19->_maximumPruningAnchor, a7);
    objc_storeStrong(&v19->_pruningRestrictionPredicates, a8);
  }

  return v19;
}

@end