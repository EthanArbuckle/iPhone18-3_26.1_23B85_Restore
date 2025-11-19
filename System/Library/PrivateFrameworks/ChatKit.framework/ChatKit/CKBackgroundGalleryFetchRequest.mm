@interface CKBackgroundGalleryFetchRequest
- (CKBackgroundGalleryFetchRequest)initWithPreferredSuggestionCount:(int64_t)a3 extensionIdentifiers:(id)a4 fallbackExtensionIdentifiers:(id)a5;
@end

@implementation CKBackgroundGalleryFetchRequest

- (CKBackgroundGalleryFetchRequest)initWithPreferredSuggestionCount:(int64_t)a3 extensionIdentifiers:(id)a4 fallbackExtensionIdentifiers:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CKBackgroundGalleryFetchRequest;
  v10 = [(CKBackgroundGalleryFetchRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CKBackgroundGalleryFetchRequest *)v10 setPreferredSuggestionCount:a3];
    [(CKBackgroundGalleryFetchRequest *)v11 setPrimaryExtensionIdentifiers:v8];
    [(CKBackgroundGalleryFetchRequest *)v11 setFallbackExtensionIdentifiers:v9];
  }

  return v11;
}

@end