@interface LNSuggestionsRequest
- (LNSuggestionsRequest)initWithBundleIdentifier:(id)a3 onScreen:(BOOL)a4 explicitRequest:(BOOL)a5;
- (LNSuggestionsRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSuggestionsRequest

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(LNSuggestionsRequest *)self bundleIdentifier];
  [v5 encodeObject:v4 forKey:@"bundleIdentifier"];

  [v5 encodeBool:-[LNSuggestionsRequest isOnScreen](self forKey:{"isOnScreen"), @"onScreen"}];
  [v5 encodeBool:-[LNSuggestionsRequest isExplicitRequest](self forKey:{"isExplicitRequest"), @"explicitRequest"}];
}

- (LNSuggestionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeBoolForKey:@"onScreen"];
  v7 = [v4 decodeBoolForKey:@"explicitRequest"];

  v8 = [(LNSuggestionsRequest *)self initWithBundleIdentifier:v5 onScreen:v6 explicitRequest:v7];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSuggestionsRequest *)self bundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, onScreen: %d, explicitRequest: %d>", v5, self, v6, -[LNSuggestionsRequest isOnScreen](self, "isOnScreen"), -[LNSuggestionsRequest isExplicitRequest](self, "isExplicitRequest")];

  return v7;
}

- (LNSuggestionsRequest)initWithBundleIdentifier:(id)a3 onScreen:(BOOL)a4 explicitRequest:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = LNSuggestionsRequest;
  v9 = [(LNSuggestionsRequest *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_onScreen = a4;
    v9->_explicitRequest = a5;
    v12 = v9;
  }

  return v9;
}

@end