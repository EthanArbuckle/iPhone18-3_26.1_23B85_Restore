@interface PDSECredentialConflict
- (BOOL)isEqual:(id)a3;
@end

@implementation PDSECredentialConflict

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = self->_type == v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end