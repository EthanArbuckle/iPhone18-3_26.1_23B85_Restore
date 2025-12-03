@interface CSQuickActionSystemControl
- (CSQuickActionSystemControl)initWithControlIdentity:(id)identity type:(int64_t)type position:(int64_t)position;
- (int64_t)controlType;
@end

@implementation CSQuickActionSystemControl

- (CSQuickActionSystemControl)initWithControlIdentity:(id)identity type:(int64_t)type position:(int64_t)position
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = CSQuickActionSystemControl;
  v10 = [(CSQuickActionControl *)&v13 initWithCategory:3 position:position];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controlIdentity, identity);
    v11->_type = type;
  }

  return v11;
}

- (int64_t)controlType
{
  if ((self->_type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return self->_type;
  }
}

@end