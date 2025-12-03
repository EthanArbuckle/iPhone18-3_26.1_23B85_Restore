@interface MRUMediaSuggestionsCache
+ (MRUMediaSuggestionsCache)sharedCache;
- (MRUMediaSuggestionsCache)init;
- (id)artworkForMediaSuggestion:(id)suggestion;
@end

@implementation MRUMediaSuggestionsCache

+ (MRUMediaSuggestionsCache)sharedCache
{
  if (sharedCache___once != -1)
  {
    +[MRUMediaSuggestionsCache sharedCache];
  }

  v3 = sharedCache___sharedCache;

  return v3;
}

uint64_t __39__MRUMediaSuggestionsCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(MRUMediaSuggestionsCache);
  v1 = sharedCache___sharedCache;
  sharedCache___sharedCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUMediaSuggestionsCache)init
{
  v6.receiver = self;
  v6.super_class = MRUMediaSuggestionsCache;
  v2 = [(MRUMediaSuggestionsCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;
  }

  return v2;
}

- (id)artworkForMediaSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageCache = selfCopy->_imageCache;
  identifier = [suggestionCopy identifier];
  v8 = [(NSCache *)imageCache objectForKey:identifier];

  if (!v8)
  {
    artwork = [suggestionCopy artwork];
    imageData = [artwork imageData];

    if (imageData)
    {
      v12 = objc_alloc(MEMORY[0x1E69DCAB8]);
      artwork2 = [suggestionCopy artwork];
      imageData2 = [artwork2 imageData];
      v8 = [v12 initWithData:imageData2];

      if (v8)
      {
        v15 = selfCopy->_imageCache;
        identifier2 = [suggestionCopy identifier];
        [(NSCache *)v15 setObject:v8 forKey:identifier2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v8;
}

@end