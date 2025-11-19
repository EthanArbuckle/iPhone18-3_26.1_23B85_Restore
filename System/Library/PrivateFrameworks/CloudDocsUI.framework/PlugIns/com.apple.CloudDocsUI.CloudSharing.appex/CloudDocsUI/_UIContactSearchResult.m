@interface _UIContactSearchResult
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIContactSearchResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MFComposeRecipient *)self->_composeRecipient isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(MFComposeRecipient *)self->_composeRecipient address];
  v3 = [v2 hash];

  return v3;
}

@end