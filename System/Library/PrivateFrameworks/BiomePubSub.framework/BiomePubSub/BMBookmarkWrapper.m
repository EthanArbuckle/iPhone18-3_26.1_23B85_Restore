@interface BMBookmarkWrapper
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BMBookmarkWrapper)initWithUpstream:(id)a3 initialState:(id)a4;
- (NSArray)bookmarkableUpstreams;
- (id)withBookmark:(id)a3;
- (void)subscribe:(id)a3;
@end

@implementation BMBookmarkWrapper

- (BMBookmarkWrapper)initWithUpstream:(id)a3 initialState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMBookmarkWrapper;
  v9 = [(BMBookmarkWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, a3);
    objc_storeStrong(&v10->_initialState, a4);
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [_BPSBookmarkedInner alloc];
  v6 = [(BMBookmarkWrapper *)self upstream];
  v7 = [(BMBookmarkWrapper *)self initialState];
  v9 = [(_BPSBookmarkedInner *)v5 initWithUpstream:v6 downstream:v4 state:v7];

  v8 = [(BMBookmarkWrapper *)self upstream];
  [v8 subscribe:v9];
}

- (NSArray)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BMBookmarkWrapper *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [BMBookmarkWrapper alloc];
  v9 = [v7 objectAtIndexedSubscript:0];

  v10 = [(BMBookmarkWrapper *)v8 initWithUpstream:v9 initialState:v6];

  return v10;
}

- (id)withBookmark:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 upstreams];
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = [(BMBookmarkWrapper *)self upstream];
    v9 = [v8 conformsToProtocol:&unk_1F4872E18];

    if (v9)
    {
      v10 = [(BMBookmarkWrapper *)self upstream];
      v11 = [BMBookmarkWrapper alloc];
      v12 = [v10 withBookmark:v7];
      v13 = [v5 value];
      v14 = [(BMBookmarkWrapper *)v11 initWithUpstream:v12 initialState:v13];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1C871B000, v16, OS_LOG_TYPE_DEFAULT, "Can't update upstreams with bookmark", v18, 2u);
      }

      v14 = self;
    }
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMBookmarkWrapper withBookmark:v15];
    }

    v14 = self;
  }

  return v14;
}

@end