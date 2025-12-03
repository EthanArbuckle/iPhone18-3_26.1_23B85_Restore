@interface LNSuggestionsRequest
- (LNSuggestionsRequest)initWithBundleIdentifier:(id)identifier onScreen:(BOOL)screen explicitRequest:(BOOL)request;
- (LNSuggestionsRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSuggestionsRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNSuggestionsRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[LNSuggestionsRequest isOnScreen](self forKey:{"isOnScreen"), @"onScreen"}];
  [coderCopy encodeBool:-[LNSuggestionsRequest isExplicitRequest](self forKey:{"isExplicitRequest"), @"explicitRequest"}];
}

- (LNSuggestionsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeBoolForKey:@"onScreen"];
  v7 = [coderCopy decodeBoolForKey:@"explicitRequest"];

  v8 = [(LNSuggestionsRequest *)self initWithBundleIdentifier:v5 onScreen:v6 explicitRequest:v7];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNSuggestionsRequest *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, onScreen: %d, explicitRequest: %d>", v5, self, bundleIdentifier, -[LNSuggestionsRequest isOnScreen](self, "isOnScreen"), -[LNSuggestionsRequest isExplicitRequest](self, "isExplicitRequest")];

  return v7;
}

- (LNSuggestionsRequest)initWithBundleIdentifier:(id)identifier onScreen:(BOOL)screen explicitRequest:(BOOL)request
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = LNSuggestionsRequest;
  v9 = [(LNSuggestionsRequest *)&v14 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_onScreen = screen;
    v9->_explicitRequest = request;
    v12 = v9;
  }

  return v9;
}

@end