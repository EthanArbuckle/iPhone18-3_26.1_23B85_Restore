@interface HDAppSubscription
- (HDAppSubscription)init;
- (HDAppSubscription)initWithBundleIdentifier:(id)identifier dataCode:(int64_t)code;
- (HKObjectType)objectType;
@end

@implementation HDAppSubscription

- (HDAppSubscription)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppSubscription)initWithBundleIdentifier:(id)identifier dataCode:(int64_t)code
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = HDAppSubscription;
  v8 = [(HDAppSubscription *)&v13 init];
  if (v8)
  {
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"HDAppSubscription.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];
    }

    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v8->_dataCode = code;
  }

  return v8;
}

- (HKObjectType)objectType
{
  dataCode = self->_dataCode;
  if (_HKValidDataTypeCode())
  {
    v4 = [MEMORY[0x277CCD720] dataTypeWithCode:self->_dataCode];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end