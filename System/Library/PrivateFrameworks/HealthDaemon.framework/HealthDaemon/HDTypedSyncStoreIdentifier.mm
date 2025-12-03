@interface HDTypedSyncStoreIdentifier
- (HDTypedSyncStoreIdentifier)init;
- (HDTypedSyncStoreIdentifier)initWithIdentifier:(id)identifier type:(int64_t)type;
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

- (HDTypedSyncStoreIdentifier)initWithIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDTypedSyncStoreIdentifier;
  v8 = [(HDTypedSyncStoreIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_type = type;
  }

  return v9;
}

@end