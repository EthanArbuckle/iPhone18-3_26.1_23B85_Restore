@interface DMFBookmark
+ (id)favoritesFolderWithChildren:(id)children;
+ (id)folderWithName:(id)name children:(id)children identifier:(id)identifier;
+ (id)leafBookmarkWithName:(id)name URL:(id)l;
+ (id)readingListFolderWithChildren:(id)children;
- (BOOL)_isFolderWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFolder;
- (DMFBookmark)initWithCoder:(id)coder;
- (DMFBookmark)initWithName:(id)name URL:(id)l children:(id)children identifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFBookmark

+ (id)favoritesFolderWithChildren:(id)children
{
  v4 = MEMORY[0x1E696AAE8];
  childrenCopy = children;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Favorites" value:&stru_1F57A0020 table:@"DMFUserInterface"];

  v8 = [self folderWithName:v7 children:childrenCopy identifier:@"com.apple.dmf.bookmark.favorites-folder"];

  return v8;
}

+ (id)readingListFolderWithChildren:(id)children
{
  v4 = MEMORY[0x1E696AAE8];
  childrenCopy = children;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Reading List" value:&stru_1F57A0020 table:@"DMFUserInterface"];

  v8 = [self folderWithName:v7 children:childrenCopy identifier:@"com.apple.dmf.bookmark.reading-list-folder"];

  return v8;
}

+ (id)folderWithName:(id)name children:(id)children identifier:(id)identifier
{
  identifierCopy = identifier;
  childrenCopy = children;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy URL:0 children:childrenCopy identifier:identifierCopy];

  return v11;
}

+ (id)leafBookmarkWithName:(id)name URL:(id)l
{
  lCopy = l;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy URL:lCopy children:0 identifier:0];

  return v8;
}

- (DMFBookmark)initWithName:(id)name URL:(id)l children:(id)children identifier:(id)identifier
{
  nameCopy = name;
  lCopy = l;
  childrenCopy = children;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = DMFBookmark;
  v14 = [(DMFBookmark *)&v22 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_URL, l);
    v17 = [childrenCopy copy];
    children = v14->_children;
    v14->_children = v17;

    v19 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v19;
  }

  return v14;
}

- (BOOL)isFolder
{
  children = [(DMFBookmark *)self children];
  v3 = children != 0;

  return v3;
}

- (BOOL)_isFolderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(DMFBookmark *)self isFolder])
  {
    identifier = [(DMFBookmark *)self identifier];
    v6 = [identifier isEqualToString:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DMFBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = DMFBookmark;
  v5 = [(DMFBookmark *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"children"];
    children = v5->_children;
    v5->_children = v15;

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(DMFBookmark *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  v6 = [(DMFBookmark *)self URL];
  [coderCopy encodeObject:v6 forKey:@"URL"];

  children = [(DMFBookmark *)self children];
  [coderCopy encodeObject:children forKey:@"children"];

  identifier = [(DMFBookmark *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (unint64_t)hash
{
  name = [(DMFBookmark *)self name];
  v4 = [name hash];
  v5 = [(DMFBookmark *)self URL];
  v6 = [v5 hash] ^ v4;
  children = [(DMFBookmark *)self children];
  v8 = [children hash];
  identifier = [(DMFBookmark *)self identifier];
  v10 = v8 ^ [identifier hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy || ![(DMFBookmark *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v23 = 1;
  }

  else
  {
    v5 = equalCopy;
    name = [(DMFBookmark *)self name];
    name2 = [(DMFBookmark *)v5 name];
    v8 = name;
    v9 = name2;
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
        children = [(DMFBookmark *)self children];
        children2 = [(DMFBookmark *)v5 children];
        v18 = children;
        v19 = children2;
        if (v18 | v19 && (v20 = [v18 isEqual:v19], v19, v18, !v20))
        {
          v23 = 0;
        }

        else
        {
          v25 = v8;
          identifier = [(DMFBookmark *)self identifier];
          identifier2 = [(DMFBookmark *)v5 identifier];
          if (identifier | identifier2)
          {
            v23 = [identifier isEqual:identifier2];
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
  name = [(DMFBookmark *)self name];
  [v3 appendFormat:@"\tName        : %@\n", name];

  v5 = [(DMFBookmark *)self URL];
  absoluteString = [v5 absoluteString];
  [v3 appendFormat:@"\tURL         : %@\n", absoluteString];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFBookmark isFolder](self, "isFolder")}];
  [v3 appendFormat:@"\tisFolder    : %@\n", v7];

  v8 = MEMORY[0x1E696AD98];
  children = [(DMFBookmark *)self children];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(children, "count")}];
  [v3 appendFormat:@"\tChild Count : %@\n", v10];

  identifier = [(DMFBookmark *)self identifier];
  [v3 appendFormat:@"\tIdentifier  : %@\n", identifier];

  [v3 appendString:@"}>"];
  v12 = [v3 copy];

  return v12;
}

@end