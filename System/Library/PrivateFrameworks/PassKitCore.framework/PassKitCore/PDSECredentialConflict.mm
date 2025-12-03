@interface PDSECredentialConflict
- (BOOL)isEqual:(id)equal;
@end

@implementation PDSECredentialConflict

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = self->_type == v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end