@interface DSSGuestPreferences
- (DSSGuestPreferences)init;
- (DSSGuestPreferences)initWithCoder:(id)a3;
@end

@implementation DSSGuestPreferences

- (DSSGuestPreferences)init
{
  v6.receiver = self;
  v6.super_class = DSSGuestPreferences;
  v2 = [(DSSGuestPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (DSSGuestPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSSGuestPreferences;
  v5 = [(DSSGuestPreferences *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"store"];
    store = v5->_store;
    v5->_store = v6;
  }

  return v5;
}

@end