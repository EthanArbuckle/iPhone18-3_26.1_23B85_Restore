@interface MRUMediaSuggestionsCache
+ (MRUMediaSuggestionsCache)sharedCache;
- (MRUMediaSuggestionsCache)init;
- (id)artworkForMediaSuggestion:(id)a3;
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

- (id)artworkForMediaSuggestion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  imageCache = v5->_imageCache;
  v7 = [v4 identifier];
  v8 = [(NSCache *)imageCache objectForKey:v7];

  if (!v8)
  {
    v10 = [v4 artwork];
    v11 = [v10 imageData];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v13 = [v4 artwork];
      v14 = [v13 imageData];
      v8 = [v12 initWithData:v14];

      if (v8)
      {
        v15 = v5->_imageCache;
        v16 = [v4 identifier];
        [(NSCache *)v15 setObject:v8 forKey:v16];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  objc_sync_exit(v5);

  return v8;
}

@end