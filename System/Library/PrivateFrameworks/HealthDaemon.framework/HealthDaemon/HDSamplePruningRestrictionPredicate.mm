@interface HDSamplePruningRestrictionPredicate
- (HDSamplePruningRestrictionPredicate)init;
- (HDSamplePruningRestrictionPredicate)initWithMaximumAnchor:(id)anchor startDate:(id)date endDate:(id)endDate excludedSyncIdentities:(id)identities;
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

- (HDSamplePruningRestrictionPredicate)initWithMaximumAnchor:(id)anchor startDate:(id)date endDate:(id)endDate excludedSyncIdentities:(id)identities
{
  anchorCopy = anchor;
  dateCopy = date;
  endDateCopy = endDate;
  identitiesCopy = identities;
  v18.receiver = self;
  v18.super_class = HDSamplePruningRestrictionPredicate;
  v15 = [(HDSamplePruningRestrictionPredicate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_maximumAnchor, anchor);
    objc_storeStrong(&v16->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    objc_storeStrong(&v16->_excludedSyncIdentities, identities);
  }

  return v16;
}

@end