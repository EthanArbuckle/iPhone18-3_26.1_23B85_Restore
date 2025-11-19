@interface FAFamilyInvite
- (BOOL)isEqual:(id)a3;
@end

@implementation FAFamilyInvite

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FAFamilyInvite *)v4 organizerEmail];
      v6 = [v5 isEqualToString:self->_organizerEmail];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end