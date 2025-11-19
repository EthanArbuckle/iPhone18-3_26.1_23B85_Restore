@interface DMFFetchSafariBookmarksResultObject
- (DMFFetchSafariBookmarksResultObject)initWithBookmarks:(id)a3;
- (DMFFetchSafariBookmarksResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)_appendDescriptionOfBookmark:(id)a3 toString:(id)a4 level:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchSafariBookmarksResultObject

- (DMFFetchSafariBookmarksResultObject)initWithBookmarks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchSafariBookmarksResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v6;
  }

  return v5;
}

- (DMFFetchSafariBookmarksResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFFetchSafariBookmarksResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bookmarks"];
    bookmarks = v5->_bookmarks;
    v5->_bookmarks = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchSafariBookmarksResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchSafariBookmarksResultObject *)self bookmarks:v6.receiver];
  [v4 encodeObject:v5 forKey:@"bookmarks"];
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DMFFetchSafariBookmarksResultObject *)self bookmarks];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(DMFFetchSafariBookmarksResultObject *)self _appendDescriptionOfBookmark:*(*(&v12 + 1) + 8 * i) toString:v3 level:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p {\n%@}>", objc_opt_class(), self, v3];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_appendDescriptionOfBookmark:(id)a3 toString:(id)a4 level:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [&stru_1F57A0020 stringByPaddingToLength:a5 withString:@"\t" startingAtIndex:0];
  if ([v8 isFolder])
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [v8 children];
    [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  }

  else
  {
    v12 = [v8 URL];
    [v12 absoluteString];
  }
  v13 = ;

  v14 = [v8 name];
  [v9 appendFormat:@"%@%@ (%@)\n", v10, v14, v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v8 children];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v15);
        }

        [(DMFFetchSafariBookmarksResultObject *)self _appendDescriptionOfBookmark:*(*(&v21 + 1) + 8 * v19++) toString:v9 level:a5 + 1];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end