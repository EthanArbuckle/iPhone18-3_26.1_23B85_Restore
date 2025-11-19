@interface CRKBookmark
+ (id)favoritesFolderWithChildren:(id)a3;
+ (id)folderWithName:(id)a3 children:(id)a4 identifier:(id)a5;
+ (id)leafBookmarkWithName:(id)a3 URL:(id)a4;
+ (id)readingListFolderWithChildren:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFolder;
- (BOOL)isFolderWithIdentifier:(id)a3;
- (CRKBookmark)initWithCoder:(id)a3;
- (CRKBookmark)initWithName:(id)a3 URL:(id)a4 children:(id)a5 identifier:(id)a6;
- (id)description;
- (id)urlString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
- (void)setUrlString:(id)a3;
@end

@implementation CRKBookmark

+ (id)favoritesFolderWithChildren:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Favorites" value:&stru_285643BE8 table:0];

  v8 = [a1 folderWithName:v7 children:v5 identifier:@"com.apple.classroomkit.bookmark.favorites-folder"];

  return v8;
}

+ (id)readingListFolderWithChildren:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Reading List" value:&stru_285643BE8 table:0];

  v8 = [a1 folderWithName:v7 children:v5 identifier:@"com.apple.classroomkit.bookmark.reading-list-folder"];

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

- (CRKBookmark)initWithName:(id)a3 URL:(id)a4 children:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CRKBookmark;
  v14 = [(CRKBookmark *)&v22 init];
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
  v2 = [(CRKBookmark *)self children];
  v3 = v2 != 0;

  return v3;
}

- (void)setName:(id)a3
{
  self->_name = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)urlString
{
  v2 = [(CRKBookmark *)self URL];
  v3 = [v2 absoluteString];

  return v3;
}

- (void)setUrlString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:?];
    [(CRKBookmark *)self setURL:v4];
  }

  else
  {

    [(CRKBookmark *)self setURL:?];
  }
}

- (BOOL)isFolderWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(CRKBookmark *)self isFolder])
  {
    v5 = [(CRKBookmark *)self identifier];
    if (v4 | v5)
    {
      v7 = [(CRKBookmark *)self identifier];
      v6 = [v7 isEqual:v4];
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
  v3 = [(CRKBookmark *)self name];
  v4 = [v3 hash];
  v5 = [(CRKBookmark *)self URL];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKBookmark *)self children];
  v8 = [v7 hash];
  v9 = [(CRKBookmark *)self identifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""name URL];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_16;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
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
          v18 = [(CRKBookmark *)v8 valueForKey:v16];
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
  v5 = [(CRKBookmark *)self name];
  v6 = [(CRKBookmark *)self URL];
  v7 = [v6 absoluteString];
  v8 = [(CRKBookmark *)self isFolder];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = v9;
  v11 = [(CRKBookmark *)self identifier];
  v12 = MEMORY[0x277CCABB0];
  v13 = [(CRKBookmark *)self children];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  v15 = [v3 stringWithFormat:@"<%@: %p { name = %@, URL = %@, isFolder = %@, identifier = %@, childCount = %@ }>", v4, self, v5, v7, v10, v11, v14];

  return v15;
}

- (CRKBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRKBookmark;
  v5 = [(CRKBookmark *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"children"];
    children = v5->_children;
    v5->_children = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKBookmark *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(CRKBookmark *)self URL];
  [v4 encodeObject:v6 forKey:@"URL"];

  v7 = [(CRKBookmark *)self children];
  [v4 encodeObject:v7 forKey:@"children"];

  v8 = [(CRKBookmark *)self identifier];
  [v4 encodeObject:v8 forKey:@"identifier"];
}

@end