@interface CRKBookmark
+ (id)favoritesFolderWithChildren:(id)children;
+ (id)folderWithName:(id)name children:(id)children identifier:(id)identifier;
+ (id)leafBookmarkWithName:(id)name URL:(id)l;
+ (id)readingListFolderWithChildren:(id)children;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFolder;
- (BOOL)isFolderWithIdentifier:(id)identifier;
- (CRKBookmark)initWithCoder:(id)coder;
- (CRKBookmark)initWithName:(id)name URL:(id)l children:(id)children identifier:(id)identifier;
- (id)description;
- (id)urlString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
- (void)setUrlString:(id)string;
@end

@implementation CRKBookmark

+ (id)favoritesFolderWithChildren:(id)children
{
  v4 = MEMORY[0x277CCA8D8];
  childrenCopy = children;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Favorites" value:&stru_285643BE8 table:0];

  v8 = [self folderWithName:v7 children:childrenCopy identifier:@"com.apple.classroomkit.bookmark.favorites-folder"];

  return v8;
}

+ (id)readingListFolderWithChildren:(id)children
{
  v4 = MEMORY[0x277CCA8D8];
  childrenCopy = children;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Reading List" value:&stru_285643BE8 table:0];

  v8 = [self folderWithName:v7 children:childrenCopy identifier:@"com.apple.classroomkit.bookmark.reading-list-folder"];

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

- (CRKBookmark)initWithName:(id)name URL:(id)l children:(id)children identifier:(id)identifier
{
  nameCopy = name;
  lCopy = l;
  childrenCopy = children;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = CRKBookmark;
  v14 = [(CRKBookmark *)&v22 init];
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
  children = [(CRKBookmark *)self children];
  v3 = children != 0;

  return v3;
}

- (void)setName:(id)name
{
  self->_name = [name copy];

  MEMORY[0x2821F96F8]();
}

- (id)urlString
{
  v2 = [(CRKBookmark *)self URL];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (void)setUrlString:(id)string
{
  if (string)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:?];
    [(CRKBookmark *)self setURL:v4];
  }

  else
  {

    [(CRKBookmark *)self setURL:?];
  }
}

- (BOOL)isFolderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CRKBookmark *)self isFolder])
  {
    identifier = [(CRKBookmark *)self identifier];
    if (identifierCopy | identifier)
    {
      identifier2 = [(CRKBookmark *)self identifier];
      v6 = [identifier2 isEqual:identifierCopy];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  name = [(CRKBookmark *)self name];
  v4 = [name hash];
  v5 = [(CRKBookmark *)self URL];
  v6 = [v5 hash] ^ v4;
  children = [(CRKBookmark *)self children];
  v8 = [children hash];
  identifier = [(CRKBookmark *)self identifier];
  v10 = v8 ^ [identifier hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = [CFSTR(""name URL];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_16;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
  {
    v21 = 1;
  }

  else if ([(CRKBookmark *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKBookmark *)selfCopy valueForKey:v16];
          v19 = [(CRKBookmark *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(CRKBookmark *)self name];
  v6 = [(CRKBookmark *)self URL];
  absoluteString = [v6 absoluteString];
  isFolder = [(CRKBookmark *)self isFolder];
  v9 = @"NO";
  if (isFolder)
  {
    v9 = @"YES";
  }

  v10 = v9;
  identifier = [(CRKBookmark *)self identifier];
  v12 = MEMORY[0x277CCABB0];
  children = [(CRKBookmark *)self children];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(children, "count")}];
  v15 = [v3 stringWithFormat:@"<%@: %p { name = %@, URL = %@, isFolder = %@, identifier = %@, childCount = %@ }>", v4, self, name, absoluteString, v10, identifier, v14];

  return v15;
}

- (CRKBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRKBookmark;
  v5 = [(CRKBookmark *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"children"];
    children = v5->_children;
    v5->_children = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CRKBookmark *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  v6 = [(CRKBookmark *)self URL];
  [coderCopy encodeObject:v6 forKey:@"URL"];

  children = [(CRKBookmark *)self children];
  [coderCopy encodeObject:children forKey:@"children"];

  identifier = [(CRKBookmark *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end