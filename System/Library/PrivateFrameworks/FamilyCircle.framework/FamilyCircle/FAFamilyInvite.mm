@interface FAFamilyInvite
- (BOOL)isEqual:(id)equal;
@end

@implementation FAFamilyInvite

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      organizerEmail = [(FAFamilyInvite *)equalCopy organizerEmail];
      v6 = [organizerEmail isEqualToString:self->_organizerEmail];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end