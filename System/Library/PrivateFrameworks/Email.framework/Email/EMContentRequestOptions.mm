@interface EMContentRequestOptions
+ (id)optionsWithRequestedRepresentationType:(id)type networkUsage:(int64_t)usage;
+ (id)optionsWithRequestedRepresentationType:(id)type networkUsage:(int64_t)usage includeSuggestions:(int64_t)suggestions;
- (EMContentRequestOptions)initWithBuilder:(id)builder;
- (EMContentRequestOptions)initWithCoder:(id)coder;
- (id)copyWithBuilder:(id)builder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMContentRequestOptions

+ (id)optionsWithRequestedRepresentationType:(id)type networkUsage:(int64_t)usage
{
  v4 = [EMContentRequestOptions optionsWithRequestedRepresentationType:type networkUsage:usage includeSuggestions:0];

  return v4;
}

+ (id)optionsWithRequestedRepresentationType:(id)type networkUsage:(int64_t)usage includeSuggestions:(int64_t)suggestions
{
  typeCopy = type;
  v9 = [self alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__EMContentRequestOptions_optionsWithRequestedRepresentationType_networkUsage_includeSuggestions___block_invoke;
  v13[3] = &unk_1E826C9C0;
  v10 = typeCopy;
  v14 = v10;
  usageCopy = usage;
  suggestionsCopy = suggestions;
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

- (EMContentRequestOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = EMContentRequestOptions;
  v5 = [(EMContentRequestOptions *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
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

- (id)copyWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [(EMContentRequestOptions *)self copy];
  builderCopy[2](builderCopy, v5);

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  requestedRepresentation = [(EMContentRequestOptions *)self requestedRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> requestedRepresentation=%@, networkUsage=%ld", v4, self, requestedRepresentation, -[EMContentRequestOptions networkUsage](self, "networkUsage")];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  requestedRepresentation = [(EMContentRequestOptions *)self requestedRepresentation];
  networkUsage = [(EMContentRequestOptions *)self networkUsage];
  requestAllHeaders = [(EMContentRequestOptions *)self requestAllHeaders];
  requestedHeaderKeys = [(EMContentRequestOptions *)self requestedHeaderKeys];
  v9 = [v3 initWithFormat:@"<%@: %p> requestedRepresentation=%@, networkUsage=%d, requestAllHeaders=%d, requestedHeaders=%@, includeCachedMetadataJSON=%d, maximumNumberOfOriginalContentMessagesToRequest=%lu, cacheBehavior=%ld, urlBehavior=%ld", v4, self, requestedRepresentation, networkUsage, requestAllHeaders, requestedHeaderKeys, -[EMContentRequestOptions includeCachedMetadataJSON](self, "includeCachedMetadataJSON"), -[EMContentRequestOptions maximumNumberOfOriginalContentMessagesToRequest](self, "maximumNumberOfOriginalContentMessagesToRequest"), -[EMContentRequestOptions cacheBehavior](self, "cacheBehavior"), -[EMContentRequestOptions urlBehavior](self, "urlBehavior")];

  return v9;
}

- (EMContentRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EMContentRequestOptions *)self init];
  if (v5)
  {
    v5->_networkUsage = [coderCopy decodeIntegerForKey:@"EFPropertyKey_networkUsage"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_requestedRepresentation"];
    requestedRepresentation = v5->_requestedRepresentation;
    v5->_requestedRepresentation = v6;

    v5->_includeSuggestionItems = [coderCopy decodeIntegerForKey:@"EFPropertyKey_includeSuggestionItems"];
    v5->_requestAllHeaders = [coderCopy decodeBoolForKey:@"EFPropertyKey_requestAllHeaders"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"EFPropertyKey_requestedHeaderKeys"];
    requestedHeaderKeys = v5->_requestedHeaderKeys;
    v5->_requestedHeaderKeys = v11;

    v5->_includeCachedMetadataJSON = [coderCopy decodeBoolForKey:@"EFPropertyKey_includeCachedMetadataJSON"];
    v5->_maximumNumberOfOriginalContentMessagesToRequest = [coderCopy decodeIntegerForKey:@"EFPropertyKey_maximumNumberOfOriginalContentMessagesToRequest"];
    v5->_cacheBehavior = [coderCopy decodeIntegerForKey:@"EFPropertyKey_cacheBehavior"];
    v5->_urlBehavior = [coderCopy decodeIntegerForKey:@"EFPropertyKey_urlBehavior"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[EMContentRequestOptions networkUsage](self forKey:{"networkUsage"), @"EFPropertyKey_networkUsage"}];
  requestedRepresentation = [(EMContentRequestOptions *)self requestedRepresentation];
  [coderCopy encodeObject:requestedRepresentation forKey:@"EFPropertyKey_requestedRepresentation"];

  [coderCopy encodeInteger:-[EMContentRequestOptions includeSuggestionItems](self forKey:{"includeSuggestionItems"), @"EFPropertyKey_includeSuggestionItems"}];
  [coderCopy encodeBool:-[EMContentRequestOptions requestAllHeaders](self forKey:{"requestAllHeaders"), @"EFPropertyKey_requestAllHeaders"}];
  requestedHeaderKeys = [(EMContentRequestOptions *)self requestedHeaderKeys];
  [coderCopy encodeObject:requestedHeaderKeys forKey:@"EFPropertyKey_requestedHeaderKeys"];

  [coderCopy encodeBool:-[EMContentRequestOptions includeCachedMetadataJSON](self forKey:{"includeCachedMetadataJSON"), @"EFPropertyKey_includeCachedMetadataJSON"}];
  [coderCopy encodeInteger:-[EMContentRequestOptions maximumNumberOfOriginalContentMessagesToRequest](self forKey:{"maximumNumberOfOriginalContentMessagesToRequest"), @"EFPropertyKey_maximumNumberOfOriginalContentMessagesToRequest"}];
  [coderCopy encodeInteger:-[EMContentRequestOptions cacheBehavior](self forKey:{"cacheBehavior"), @"EFPropertyKey_cacheBehavior"}];
  [coderCopy encodeInteger:-[EMContentRequestOptions urlBehavior](self forKey:{"urlBehavior"), @"EFPropertyKey_urlBehavior"}];
}

- (id)copyWithZone:(_NSZone *)zone
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