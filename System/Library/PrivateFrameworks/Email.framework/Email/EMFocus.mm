@interface EMFocus
- (BOOL)isEqual:(id)a3;
- (BOOL)isFocusedIdentifier:(id)a3;
- (EMFocus)initWithFocusedAccountIdentifiers:(id)a3;
- (NSString)ef_publicDescription;
@end

@implementation EMFocus

- (EMFocus)initWithFocusedAccountIdentifiers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMFocus;
  v6 = [(EMFocus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_focusedAccountIdentifiers, a3);
  }

  return v7;
}

- (BOOL)isFocusedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(EMFocus *)self focusedAccountIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 focusedAccountIdentifiers];
    v6 = [(EMFocus *)self focusedAccountIdentifiers];
    v7 = [v5 isEqualToSet:v6];
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
  v5 = [(EMFocus *)self focusedAccountIdentifiers];
  v6 = [v3 stringWithFormat:@"<%@: %p>\n\tFocusedAccountIdentifiers: %@", v4, self, v5];

  return v6;
}

@end