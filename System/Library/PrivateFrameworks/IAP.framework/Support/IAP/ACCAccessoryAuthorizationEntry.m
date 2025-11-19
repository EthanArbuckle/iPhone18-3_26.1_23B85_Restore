@interface ACCAccessoryAuthorizationEntry
- (ACCAccessoryAuthorizationEntry)init;
- (BOOL)authorized;
- (id)description;
@end

@implementation ACCAccessoryAuthorizationEntry

- (ACCAccessoryAuthorizationEntry)init
{
  v7.receiver = self;
  v7.super_class = ACCAccessoryAuthorizationEntry;
  v2 = [(ACCAccessoryAuthorizationEntry *)&v7 init];
  v3 = v2;
  if (v2)
  {
    certSerialString = v2->_certSerialString;
    v2->_certSerialString = 0;

    displayName = v3->_displayName;
    v3->_displayName = 0;

    v3->_authorized = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ACCAccessoryAuthorizationEntry *)self displayName];
  v6 = [(ACCAccessoryAuthorizationEntry *)self certSerialString];
  v7 = [NSString stringWithFormat:@"<%@: %p, displayName: %@, certSerialString: %@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)authorized
{
  if (self->_authorized >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_authorized;
  }

  return self;
}

@end