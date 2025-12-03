@interface SFManagedBookmark
- (NSArray)allDescendantsAsWebBookmarks;
- (SFManagedBookmark)initWithTitle:(id)title urlString:(id)string;
@end

@implementation SFManagedBookmark

- (SFManagedBookmark)initWithTitle:(id)title urlString:(id)string
{
  titleCopy = title;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = SFManagedBookmark;
  v8 = [(SFManagedBookmark *)&v17 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [stringCopy copy];
    urlString = v8->_urlString;
    v8->_urlString = v11;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = uUID;

    v15 = v8;
  }

  return v8;
}

- (NSArray)allDescendantsAsWebBookmarks
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69E20F0]);
  title = [(SFManagedBookmark *)self title];
  urlString = [(SFManagedBookmark *)self urlString];
  uuid = [(SFManagedBookmark *)self uuid];
  v7 = [v3 initManagedBookmarkWithTitle:title address:urlString uuid:uuid];

  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

@end