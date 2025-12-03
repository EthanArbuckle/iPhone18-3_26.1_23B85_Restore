@interface EMFocus
- (BOOL)isEqual:(id)equal;
- (BOOL)isFocusedIdentifier:(id)identifier;
- (EMFocus)initWithFocusedAccountIdentifiers:(id)identifiers;
- (NSString)ef_publicDescription;
@end

@implementation EMFocus

- (EMFocus)initWithFocusedAccountIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = EMFocus;
  v6 = [(EMFocus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_focusedAccountIdentifiers, identifiers);
  }

  return v7;
}

- (BOOL)isFocusedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  focusedAccountIdentifiers = [(EMFocus *)self focusedAccountIdentifiers];
  v6 = [focusedAccountIdentifiers containsObject:identifierCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    focusedAccountIdentifiers = [equalCopy focusedAccountIdentifiers];
    focusedAccountIdentifiers2 = [(EMFocus *)self focusedAccountIdentifiers];
    v7 = [focusedAccountIdentifiers isEqualToSet:focusedAccountIdentifiers2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  focusedAccountIdentifiers = [(EMFocus *)self focusedAccountIdentifiers];
  v6 = [v3 stringWithFormat:@"<%@: %p>\n\tFocusedAccountIdentifiers: %@", v4, self, focusedAccountIdentifiers];

  return v6;
}

@end