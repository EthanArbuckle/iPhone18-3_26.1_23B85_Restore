@interface EMContentRequestOptions
+ (id)optionsWithRequestedRepresentationType:(id)a3 networkUsage:(int64_t)a4;
+ (id)optionsWithRequestedRepresentationType:(id)a3 networkUsage:(int64_t)a4 includeSuggestions:(int64_t)a5;
- (EMContentRequestOptions)initWithBuilder:(id)a3;
- (EMContentRequestOptions)initWithCoder:(id)a3;
- (id)copyWithBuilder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMContentRequestOptions

+ (id)optionsWithRequestedRepresentationType:(id)a3 networkUsage:(int64_t)a4
{
  v4 = [EMContentRequestOptions optionsWithRequestedRepresentationType:a3 networkUsage:a4 includeSuggestions:0];

  return v4;
}

+ (id)optionsWithRequestedRepresentationType:(id)a3 networkUsage:(int64_t)a4 includeSuggestions:(int64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__EMContentRequestOptions_optionsWithRequestedRepresentationType_networkUsage_includeSuggestions___block_invoke;
  v13[3] = &unk_1E826C9C0;
  v10 = v8;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v11 = [v9 initWithBuilder:v13];

  return v11;
}

void __98__EMContentRequestOptions_optionsWithRequestedRepresentationType_networkUsage_includeSuggestions___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 setRequestedRepresentation:a1[4]];
  [v3 setNetworkUsage:a1[5]];
  [v3 setIncludeSuggestionItems:a1[6]];
}

- (EMContentRequestOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMContentRequestOptions;
  v5 = [(EMContentRequestOptions *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

void __31__EMContentRequestOptions_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedRepresentation:@"raw"];
  [v2 setNetworkUsage:0];
  [v2 setIncludeSuggestionItems:0];
}

- (id)copyWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [(EMContentRequestOptions *)self copy];
  v4[2](v4, v5);

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(EMContentRequestOptions *)self requestedRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> requestedRepresentation=%@, networkUsage=%ld", v4, self, v5, -[EMContentRequestOptions networkUsage](self, "networkUsage")];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(EMContentRequestOptions *)self requestedRepresentation];
  v6 = [(EMContentRequestOptions *)self networkUsage];
  v7 = [(EMContentRequestOptions *)self requestAllHeaders];
  v8 = [(EMContentRequestOptions *)self requestedHeaderKeys];
  v9 = [v3 initWithFormat:@"<%@: %p> requestedRepresentation=%@, networkUsage=%d, requestAllHeaders=%d, requestedHeaders=%@, includeCachedMetadataJSON=%d, maximumNumberOfOriginalContentMessagesToRequest=%lu, cacheBehavior=%ld, urlBehavior=%ld", v4, self, v5, v6, v7, v8, -[EMContentRequestOptions includeCachedMetadataJSON](self, "includeCachedMetadataJSON"), -[EMContentRequestOptions maximumNumberOfOriginalContentMessagesToRequest](self, "maximumNumberOfOriginalContentMessagesToRequest"), -[EMContentRequestOptions cacheBehavior](self, "cacheBehavior"), -[EMContentRequestOptions urlBehavior](self, "urlBehavior")];

  return v9;
}

- (EMContentRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EMContentRequestOptions *)self init];
  if (v5)
  {
    v5->_networkUsage = [v4 decodeIntegerForKey:@"EFPropertyKey_networkUsage"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_requestedRepresentation"];
    requestedRepresentation = v5->_requestedRepresentation;
    v5->_requestedRepresentation = v6;

    v5->_includeSuggestionItems = [v4 decodeIntegerForKey:@"EFPropertyKey_includeSuggestionItems"];
    v5->_requestAllHeaders = [v4 decodeBoolForKey:@"EFPropertyKey_requestAllHeaders"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"EFPropertyKey_requestedHeaderKeys"];
    requestedHeaderKeys = v5->_requestedHeaderKeys;
    v5->_requestedHeaderKeys = v11;

    v5->_includeCachedMetadataJSON = [v4 decodeBoolForKey:@"EFPropertyKey_includeCachedMetadataJSON"];
    v5->_maximumNumberOfOriginalContentMessagesToRequest = [v4 decodeIntegerForKey:@"EFPropertyKey_maximumNumberOfOriginalContentMessagesToRequest"];
    v5->_cacheBehavior = [v4 decodeIntegerForKey:@"EFPropertyKey_cacheBehavior"];
    v5->_urlBehavior = [v4 decodeIntegerForKey:@"EFPropertyKey_urlBehavior"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[EMContentRequestOptions networkUsage](self forKey:{"networkUsage"), @"EFPropertyKey_networkUsage"}];
  v4 = [(EMContentRequestOptions *)self requestedRepresentation];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_requestedRepresentation"];

  [v6 encodeInteger:-[EMContentRequestOptions includeSuggestionItems](self forKey:{"includeSuggestionItems"), @"EFPropertyKey_includeSuggestionItems"}];
  [v6 encodeBool:-[EMContentRequestOptions requestAllHeaders](self forKey:{"requestAllHeaders"), @"EFPropertyKey_requestAllHeaders"}];
  v5 = [(EMContentRequestOptions *)self requestedHeaderKeys];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_requestedHeaderKeys"];

  [v6 encodeBool:-[EMContentRequestOptions includeCachedMetadataJSON](self forKey:{"includeCachedMetadataJSON"), @"EFPropertyKey_includeCachedMetadataJSON"}];
  [v6 encodeInteger:-[EMContentRequestOptions maximumNumberOfOriginalContentMessagesToRequest](self forKey:{"maximumNumberOfOriginalContentMessagesToRequest"), @"EFPropertyKey_maximumNumberOfOriginalContentMessagesToRequest"}];
  [v6 encodeInteger:-[EMContentRequestOptions cacheBehavior](self forKey:{"cacheBehavior"), @"EFPropertyKey_cacheBehavior"}];
  [v6 encodeInteger:-[EMContentRequestOptions urlBehavior](self forKey:{"urlBehavior"), @"EFPropertyKey_urlBehavior"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EMContentRequestOptions_copyWithZone___block_invoke;
  v6[3] = &unk_1E826CA08;
  v6[4] = self;
  return [v4 initWithBuilder:v6];
}

void __40__EMContentRequestOptions_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setIncludeSuggestionItems:{objc_msgSend(*(a1 + 32), "includeSuggestionItems")}];
  v3 = [*(a1 + 32) requestedRepresentation];
  [v5 setRequestedRepresentation:v3];

  [v5 setNetworkUsage:{objc_msgSend(*(a1 + 32), "networkUsage")}];
  [v5 setRequestAllHeaders:{objc_msgSend(*(a1 + 32), "requestAllHeaders")}];
  v4 = [*(a1 + 32) requestedHeaderKeys];
  [v5 setRequestedHeaderKeys:v4];

  [v5 setIncludeCachedMetadataJSON:{objc_msgSend(*(a1 + 32), "includeCachedMetadataJSON")}];
  [v5 setMaximumNumberOfOriginalContentMessagesToRequest:{objc_msgSend(*(a1 + 32), "maximumNumberOfOriginalContentMessagesToRequest")}];
  [v5 setCacheBehavior:{objc_msgSend(*(a1 + 32), "cacheBehavior")}];
  [v5 setUrlBehavior:{objc_msgSend(*(a1 + 32), "urlBehavior")}];
}

@end