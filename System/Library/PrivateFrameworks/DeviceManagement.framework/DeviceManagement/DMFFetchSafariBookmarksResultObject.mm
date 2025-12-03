@interface DMFFetchSafariBookmarksResultObject
- (DMFFetchSafariBookmarksResultObject)initWithBookmarks:(id)bookmarks;
- (DMFFetchSafariBookmarksResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)_appendDescriptionOfBookmark:(id)bookmark toString:(id)string level:(unint64_t)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchSafariBookmarksResultObject

- (DMFFetchSafariBookmarksResultObject)initWithBookmarks:(id)bookmarks
{
  bookmarksCopy = bookmarks;
  v9.receiver = self;
  v9.super_class = DMFFetchSafariBookmarksResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [bookmarksCopy copy];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v6;
  }

  return v5;
}

- (DMFFetchSafariBookmarksResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFFetchSafariBookmarksResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bookmarks"];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchSafariBookmarksResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchSafariBookmarksResultObject *)self bookmarks:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"bookmarks"];
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  bookmarks = [(DMFFetchSafariBookmarksResultObject *)self bookmarks];
  v5 = [bookmarks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(bookmarks);
        }

        [(DMFFetchSafariBookmarksResultObject *)self _appendDescriptionOfBookmark:*(*(&v12 + 1) + 8 * i) toString:v3 level:1];
      }

      v6 = [bookmarks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p {\n%@}>", objc_opt_class(), self, v3];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_appendDescriptionOfBookmark:(id)bookmark toString:(id)string level:(unint64_t)level
{
  v26 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  stringCopy = string;
  v10 = [&stru_1F57A0020 stringByPaddingToLength:level withString:@"\t" startingAtIndex:0];
  if ([bookmarkCopy isFolder])
  {
    v11 = MEMORY[0x1E696AD98];
    children = [bookmarkCopy children];
    [v11 numberWithUnsignedInteger:{objc_msgSend(children, "count")}];
  }

  else
  {
    children = [bookmarkCopy URL];
    [children absoluteString];
  }
  v13 = ;

  name = [bookmarkCopy name];
  [stringCopy appendFormat:@"%@%@ (%@)\n", v10, name, v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  children2 = [bookmarkCopy children];
  v16 = [children2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(children2);
        }

        [(DMFFetchSafariBookmarksResultObject *)self _appendDescriptionOfBookmark:*(*(&v21 + 1) + 8 * v19++) toString:stringCopy level:level + 1];
      }

      while (v17 != v19);
      v17 = [children2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end