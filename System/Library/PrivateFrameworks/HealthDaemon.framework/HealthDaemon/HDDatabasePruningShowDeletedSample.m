@interface HDDatabasePruningShowDeletedSample
- (HDDatabasePruningShowDeletedSample)init;
- (HDDatabasePruningShowDeletedSample)initWithRowID:(int64_t)a3 identifier:(id)a4 creationDate:(id)a5 startDate:(id)a6 endDate:(id)a7 syncIdentity:(int64_t)a8;
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

- (HDDatabasePruningShowDeletedSample)initWithRowID:(int64_t)a3 identifier:(id)a4 creationDate:(id)a5 startDate:(id)a6 endDate:(id)a7 syncIdentity:(int64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = HDDatabasePruningShowDeletedSample;
  v18 = [(HDDatabasePruningShowDeletedSample *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_rowID = a3;
    objc_storeStrong(&v18->_identifier, a4);
    objc_storeStrong(&v19->_creationDate, a5);
    objc_storeStrong(&v19->_startDate, a6);
    objc_storeStrong(&v19->_endDate, a7);
    v19->_syncIdentity = a8;
  }

  return v19;
}

@end