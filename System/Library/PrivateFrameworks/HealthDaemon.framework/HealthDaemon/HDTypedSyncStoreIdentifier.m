@interface HDTypedSyncStoreIdentifier
- (HDTypedSyncStoreIdentifier)init;
- (HDTypedSyncStoreIdentifier)initWithIdentifier:(id)a3 type:(int64_t)a4;
@end

@implementation HDTypedSyncStoreIdentifier

- (HDTypedSyncStoreIdentifier)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDTypedSyncStoreIdentifier)initWithIdentifier:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HDTypedSyncStoreIdentifier;
  v8 = [(HDTypedSyncStoreIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_type = a4;
  }

  return v9;
}

@end