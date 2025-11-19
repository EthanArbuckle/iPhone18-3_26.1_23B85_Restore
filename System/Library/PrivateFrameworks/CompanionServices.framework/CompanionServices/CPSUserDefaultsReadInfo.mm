@interface CPSUserDefaultsReadInfo
- (CPSUserDefaultsReadInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSUserDefaultsReadInfo

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_suiteName withName:@"suiteName"];
  v5 = [v3 appendObject:self->_keys withName:@"keys"];
  v6 = [v3 build];

  return v6;
}

- (CPSUserDefaultsReadInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSUserDefaultsReadInfo;
  v5 = [(CPSUserDefaultsReadInfo *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"suiteName"];
    suiteName = v5->_suiteName;
    v5->_suiteName = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeArrayOfObjectsOfClass:v9 forKey:@"keys"];
    keys = v5->_keys;
    v5->_keys = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  suiteName = self->_suiteName;
  v5 = a3;
  [v5 encodeObject:suiteName forKey:@"suiteName"];
  [v5 encodeObject:self->_keys forKey:@"keys"];
}

@end