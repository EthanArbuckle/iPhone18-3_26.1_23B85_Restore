@interface LNShowInAppStringSearchResultsSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNShowInAppStringSearchResultsSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNShowInAppStringSearchResultsSystemProtocolMetadata)initWithSearchScopes:(id)scopes;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNShowInAppStringSearchResultsSystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      searchScopes = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)self searchScopes];
      searchScopes2 = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)v6 searchScopes];
      v9 = [searchScopes isEqualToArray:searchScopes2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  searchScopes = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)self searchScopes];
  v3 = [searchScopes hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  searchScopes = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)self searchScopes];
  v7 = [v3 stringWithFormat:@"<%@: %p, searchScopes: %@>", v5, self, searchScopes];

  return v7;
}

- (LNShowInAppStringSearchResultsSystemProtocolMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"searchScopes"];

  v9 = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)self initWithSearchScopes:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  searchScopes = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)self searchScopes];
  [coderCopy encodeObject:searchScopes forKey:@"searchScopes"];
}

- (LNShowInAppStringSearchResultsSystemProtocolMetadata)initWithSearchScopes:(id)scopes
{
  scopesCopy = scopes;
  v10.receiver = self;
  v10.super_class = LNShowInAppStringSearchResultsSystemProtocolMetadata;
  v6 = [(LNShowInAppStringSearchResultsSystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchScopes, scopes);
    v8 = v7;
  }

  return v7;
}

@end