@interface CKBackgroundGalleryFetchRequest
- (CKBackgroundGalleryFetchRequest)initWithPreferredSuggestionCount:(int64_t)count extensionIdentifiers:(id)identifiers fallbackExtensionIdentifiers:(id)extensionIdentifiers;
@end

@implementation CKBackgroundGalleryFetchRequest

- (CKBackgroundGalleryFetchRequest)initWithPreferredSuggestionCount:(int64_t)count extensionIdentifiers:(id)identifiers fallbackExtensionIdentifiers:(id)extensionIdentifiers
{
  identifiersCopy = identifiers;
  extensionIdentifiersCopy = extensionIdentifiers;
  v13.receiver = self;
  v13.super_class = CKBackgroundGalleryFetchRequest;
  v10 = [(CKBackgroundGalleryFetchRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CKBackgroundGalleryFetchRequest *)v10 setPreferredSuggestionCount:count];
    [(CKBackgroundGalleryFetchRequest *)v11 setPrimaryExtensionIdentifiers:identifiersCopy];
    [(CKBackgroundGalleryFetchRequest *)v11 setFallbackExtensionIdentifiers:extensionIdentifiersCopy];
  }

  return v11;
}

@end