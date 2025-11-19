@interface SFManagedBookmark
- (NSArray)allDescendantsAsWebBookmarks;
- (SFManagedBookmark)initWithTitle:(id)a3 urlString:(id)a4;
@end

@implementation SFManagedBookmark

- (SFManagedBookmark)initWithTitle:(id)a3 urlString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SFManagedBookmark;
  v8 = [(SFManagedBookmark *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    urlString = v8->_urlString;
    v8->_urlString = v11;

    v13 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v13;

    v15 = v8;
  }

  return v8;
}

- (NSArray)allDescendantsAsWebBookmarks
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69E20F0]);
  v4 = [(SFManagedBookmark *)self title];
  v5 = [(SFManagedBookmark *)self urlString];
  v6 = [(SFManagedBookmark *)self uuid];
  v7 = [v3 initManagedBookmarkWithTitle:v4 address:v5 uuid:v6];

  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

@end