@interface HDDatabasePruningShowEntity
- (HDDatabasePruningShowEntity)init;
- (HDDatabasePruningShowEntity)initWithClassName:(id)name identifier:(id)identifier supportsPruning:(BOOL)pruning supportsPruningRestrictionPredicates:(BOOL)predicates maximumPruningAnchor:(id)anchor pruningRestrictionPredicates:(id)restrictionPredicates;
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

- (HDDatabasePruningShowEntity)initWithClassName:(id)name identifier:(id)identifier supportsPruning:(BOOL)pruning supportsPruningRestrictionPredicates:(BOOL)predicates maximumPruningAnchor:(id)anchor pruningRestrictionPredicates:(id)restrictionPredicates
{
  nameCopy = name;
  identifierCopy = identifier;
  anchorCopy = anchor;
  restrictionPredicatesCopy = restrictionPredicates;
  v22.receiver = self;
  v22.super_class = HDDatabasePruningShowEntity;
  v18 = [(HDDatabasePruningShowEntity *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_className, name);
    objc_storeStrong(&v19->_identifier, identifier);
    v19->_supportsPruning = pruning;
    v19->_supportsPruningRestrictionPredicates = predicates;
    objc_storeStrong(&v19->_maximumPruningAnchor, anchor);
    objc_storeStrong(&v19->_pruningRestrictionPredicates, restrictionPredicates);
  }

  return v19;
}

@end