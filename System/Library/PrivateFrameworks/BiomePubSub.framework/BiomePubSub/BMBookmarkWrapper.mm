@interface BMBookmarkWrapper
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BMBookmarkWrapper)initWithUpstream:(id)upstream initialState:(id)state;
- (NSArray)bookmarkableUpstreams;
- (id)withBookmark:(id)bookmark;
- (void)subscribe:(id)subscribe;
@end

@implementation BMBookmarkWrapper

- (BMBookmarkWrapper)initWithUpstream:(id)upstream initialState:(id)state
{
  upstreamCopy = upstream;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = BMBookmarkWrapper;
  v9 = [(BMBookmarkWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, upstream);
    objc_storeStrong(&v10->_initialState, state);
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_BPSBookmarkedInner alloc];
  upstream = [(BMBookmarkWrapper *)self upstream];
  initialState = [(BMBookmarkWrapper *)self initialState];
  v9 = [(_BPSBookmarkedInner *)v5 initWithUpstream:upstream downstream:subscribeCopy state:initialState];

  upstream2 = [(BMBookmarkWrapper *)self upstream];
  [upstream2 subscribe:v9];
}

- (NSArray)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BMBookmarkWrapper *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  stateCopy = state;
  upstreamsCopy = upstreams;
  v8 = [BMBookmarkWrapper alloc];
  v9 = [upstreamsCopy objectAtIndexedSubscript:0];

  v10 = [(BMBookmarkWrapper *)v8 initWithUpstream:v9 initialState:stateCopy];

  return v10;
}

- (id)withBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = bookmarkCopy;
    upstreams = [v5 upstreams];
    v7 = [upstreams objectAtIndexedSubscript:0];

    upstream = [(BMBookmarkWrapper *)self upstream];
    v9 = [upstream conformsToProtocol:&unk_1F4872E18];

    if (v9)
    {
      upstream2 = [(BMBookmarkWrapper *)self upstream];
      v11 = [BMBookmarkWrapper alloc];
      v12 = [upstream2 withBookmark:v7];
      value = [v5 value];
      selfCopy2 = [(BMBookmarkWrapper *)v11 initWithUpstream:v12 initialState:value];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1C871B000, v16, OS_LOG_TYPE_DEFAULT, "Can't update upstreams with bookmark", v18, 2u);
      }

      selfCopy2 = self;
    }
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMBookmarkWrapper withBookmark:v15];
    }

    selfCopy2 = self;
  }

  return selfCopy2;
}

@end