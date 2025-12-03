@interface HDDatabasePruningShowDeletedSample
- (HDDatabasePruningShowDeletedSample)init;
- (HDDatabasePruningShowDeletedSample)initWithRowID:(int64_t)d identifier:(id)identifier creationDate:(id)date startDate:(id)startDate endDate:(id)endDate syncIdentity:(int64_t)identity;
@end

@implementation HDDatabasePruningShowDeletedSample

- (HDDatabasePruningShowDeletedSample)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabasePruningShowDeletedSample)initWithRowID:(int64_t)d identifier:(id)identifier creationDate:(id)date startDate:(id)startDate endDate:(id)endDate syncIdentity:(int64_t)identity
{
  identifierCopy = identifier;
  dateCopy = date;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v22.receiver = self;
  v22.super_class = HDDatabasePruningShowDeletedSample;
  v18 = [(HDDatabasePruningShowDeletedSample *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_rowID = d;
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_creationDate, date);
    objc_storeStrong(&v19->_startDate, startDate);
    objc_storeStrong(&v19->_endDate, endDate);
    v19->_syncIdentity = identity;
  }

  return v19;
}

@end