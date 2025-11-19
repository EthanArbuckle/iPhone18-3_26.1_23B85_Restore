@interface HDSamplePruningRestrictionPredicate
- (HDSamplePruningRestrictionPredicate)init;
- (HDSamplePruningRestrictionPredicate)initWithMaximumAnchor:(id)a3 startDate:(id)a4 endDate:(id)a5 excludedSyncIdentities:(id)a6;
@end

@implementation HDSamplePruningRestrictionPredicate

- (HDSamplePruningRestrictionPredicate)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSamplePruningRestrictionPredicate)initWithMaximumAnchor:(id)a3 startDate:(id)a4 endDate:(id)a5 excludedSyncIdentities:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HDSamplePruningRestrictionPredicate;
  v15 = [(HDSamplePruningRestrictionPredicate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_maximumAnchor, a3);
    objc_storeStrong(&v16->_startDate, a4);
    objc_storeStrong(&v16->_endDate, a5);
    objc_storeStrong(&v16->_excludedSyncIdentities, a6);
  }

  return v16;
}

@end