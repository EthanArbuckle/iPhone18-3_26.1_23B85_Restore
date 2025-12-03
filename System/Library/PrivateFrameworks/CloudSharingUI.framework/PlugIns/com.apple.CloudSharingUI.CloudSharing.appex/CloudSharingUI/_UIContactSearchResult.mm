@interface _UIContactSearchResult
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIContactSearchResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CNComposeRecipient *)self->_composeRecipient isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  address = [(CNComposeRecipient *)self->_composeRecipient address];
  v3 = [address hash];

  return v3;
}

@end