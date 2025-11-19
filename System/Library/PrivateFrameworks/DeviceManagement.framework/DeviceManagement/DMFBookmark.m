@interface DMFBookmark
+ (id)favoritesFolderWithChildren:(id)a3;
+ (id)folderWithName:(id)a3 children:(id)a4 identifier:(id)a5;
+ (id)leafBookmarkWithName:(id)a3 URL:(id)a4;
+ (id)readingListFolderWithChildren:(id)a3;
- (BOOL)_isFolderWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFolder;
- (DMFBookmark)initWithCoder:(id)a3;
- (DMFBookmark)initWithName:(id)a3 URL:(id)a4 children:(id)a5 identifier:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFBookmark

+ (id)favoritesFolderWithChildren:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Favorites" value:&stru_1F57A0020 table:@"DMFUserInterface"];

  v8 = [a1 folderWithName:v7 children:v5 identifier:@"com.apple.dmf.bookmark.favorites-folder"];

  return v8;
}

+ (id)readingListFolderWithChildren:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Reading List" value:&stru_1F57A0020 table:@"DMFUserInterface"];

  v8 = [a1 folderWithName:v7 children:v5 identifier:@"com.apple.dmf.bookmark.reading-list-folder"];

  return v8;
}

+ (id)folderWithName:(id)a3 children:(id)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 URL:0 children:v9 identifier:v8];

  return v11;
}

+ (id)leafBookmarkWithName:(id)a3 URL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 URL:v6 children:0 identifier:0];

  return v8;
}

- (DMFBookmark)initWithName:(id)a3 URL:(id)a4 children:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = DMFBookmark;
  v14 = [(DMFBookmark *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_URL, a4);
    v17 = [v12 copy];
    children = v14->_children;
    v14->_children = v17;

    v19 = [v13 copy];
    identifier = v14->_identifier;
    v14->_identifier = v19;
  }

  return v14;
}

- (BOOL)isFolder
{
  v2 = [(DMFBookmark *)self children];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isFolderWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(DMFBookmark *)self isFolder])
  {
    v5 = [(DMFBookmark *)self identifier];
    v6 = [v5 isEqualToString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DMFBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DMFBookmark;
  v5 = [(DMFBookmark *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"children"];
    children = v5->_children;
    v5->_children = v15;

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFBookmark *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(DMFBookmark *)self URL];
  [v4 encodeObject:v6 forKey:@"URL"];

  v7 = [(DMFBookmark *)self children];
  [v4 encodeObject:v7 forKey:@"children"];

  v8 = [(DMFBookmark *)self identifier];
  [v4 encodeObject:v8 forKey:@"identifier"];
}

- (unint64_t)hash
{
  v3 = [(DMFBookmark *)self name];
  v4 = [v3 hash];
  v5 = [(DMFBookmark *)self URL];
  v6 = [v5 hash] ^ v4;
  v7 = [(DMFBookmark *)self children];
  v8 = [v7 hash];
  v9 = [(DMFBookmark *)self identifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4 || ![(DMFBookmark *)v4 isMemberOfClass:objc_opt_class()])
  {
    v23 = 1;
  }

  else
  {
    v5 = v4;
    v6 = [(DMFBookmark *)self name];
    v7 = [(DMFBookmark *)v5 name];
    v8 = v6;
    v9 = v7;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      v23 = 0;
    }

    else
    {
      v11 = [(DMFBookmark *)self URL];
      v12 = [(DMFBookmark *)v5 URL];
      v13 = v11;
      v14 = v12;
      if (v13 | v14 && (v15 = [v13 isEqual:v14], v14, v13, !v15))
      {
        v23 = 0;
      }

      else
      {
        v16 = [(DMFBookmark *)self children];
        v17 = [(DMFBookmark *)v5 children];
        v18 = v16;
        v19 = v17;
        if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20))
        {
          v23 = 0;
        }

        else
        {
          v25 = v8;
          v21 = [(DMFBookmark *)self identifier];
          v22 = [(DMFBookmark *)v5 identifier];
          if (v21 | v22)
          {
            v23 = [v21 isEqual:v22];
          }

          else
          {
            v23 = 1;
          }

          v8 = v25;
        }
      }
    }
  }

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(DMFBookmark *)self name];
  [v3 appendFormat:@"\tName        : %@\n", v4];

  v5 = [(DMFBookmark *)self URL];
  v6 = [v5 absoluteString];
  [v3 appendFormat:@"\tURL         : %@\n", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFBookmark isFolder](self, "isFolder")}];
  [v3 appendFormat:@"\tisFolder    : %@\n", v7];

  v8 = MEMORY[0x1E696AD98];
  v9 = [(DMFBookmark *)self children];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  [v3 appendFormat:@"\tChild Count : %@\n", v10];

  v11 = [(DMFBookmark *)self identifier];
  [v3 appendFormat:@"\tIdentifier  : %@\n", v11];

  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end