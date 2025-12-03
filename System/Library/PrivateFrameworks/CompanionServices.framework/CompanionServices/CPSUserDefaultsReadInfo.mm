@interface CPSUserDefaultsReadInfo
- (CPSUserDefaultsReadInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSUserDefaultsReadInfo

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_suiteName withName:@"suiteName"];
  v5 = [v3 appendObject:self->_keys withName:@"keys"];
  build = [v3 build];

  return build;
}

- (CPSUserDefaultsReadInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPSUserDefaultsReadInfo;
  v5 = [(CPSUserDefaultsReadInfo *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"suiteName"];
    suiteName = v5->_suiteName;
    v5->_suiteName = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeArrayOfObjectsOfClass:v9 forKey:@"keys"];
    keys = v5->_keys;
    v5->_keys = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  suiteName = self->_suiteName;
  coderCopy = coder;
  [coderCopy encodeObject:suiteName forKey:@"suiteName"];
  [coderCopy encodeObject:self->_keys forKey:@"keys"];
}

@end