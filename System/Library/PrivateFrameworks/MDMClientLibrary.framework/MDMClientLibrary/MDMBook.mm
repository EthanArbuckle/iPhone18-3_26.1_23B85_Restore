@interface MDMBook
- (MDMBook)initWithCoder:(id)coder;
- (MDMBook)initWithManifestDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)friendlyName;
- (id)manifestDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)updateBookAttributesByCopyingFromBook:(id)book;
@end

@implementation MDMBook

- (MDMBook)initWithManifestDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = MDMBook;
  v5 = [(MDMBook *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Artist"];
    author = v5->_author;
    v5->_author = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"Title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"FullPath"];
    fullPath = v5->_fullPath;
    v5->_fullPath = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Version"];
    version = v5->_version;
    v5->_version = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"PersistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"State"];
    state = v5->_state;
    v5->_state = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"Kind"];
    kind = v5->_kind;
    v5->_kind = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"DownloadIdentifier"];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v24;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MDMBook);
  author = [(MDMBook *)self author];
  [(MDMBook *)v4 setAuthor:author];

  title = [(MDMBook *)self title];
  [(MDMBook *)v4 setTitle:title];

  fullPath = [(MDMBook *)self fullPath];
  [(MDMBook *)v4 setFullPath:fullPath];

  version = [(MDMBook *)self version];
  [(MDMBook *)v4 setVersion:version];

  persistentID = [(MDMBook *)self persistentID];
  [(MDMBook *)v4 setPersistentID:persistentID];

  iTunesStoreID = [(MDMBook *)self iTunesStoreID];
  [(MDMBook *)v4 setITunesStoreID:iTunesStoreID];

  buyParams = [(MDMBook *)self buyParams];
  [(MDMBook *)v4 setBuyParams:buyParams];

  state = [(MDMBook *)self state];
  [(MDMBook *)v4 setState:state];

  kind = [(MDMBook *)self kind];
  [(MDMBook *)v4 setKind:kind];

  downloadIdentifier = [(MDMBook *)self downloadIdentifier];
  [(MDMBook *)v4 setDownloadIdentifier:downloadIdentifier];

  return v4;
}

- (id)manifestDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  author = self->_author;
  if (author)
  {
    [dictionary setObject:author forKeyedSubscript:@"Artist"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKeyedSubscript:@"Title"];
    [v4 setObject:self->_title forKeyedSubscript:@"Name"];
  }

  fullPath = self->_fullPath;
  if (fullPath)
  {
    [v4 setObject:fullPath forKeyedSubscript:@"FullPath"];
    lastPathComponent = [(NSString *)self->_fullPath lastPathComponent];
    [v4 setObject:lastPathComponent forKeyedSubscript:@"Path"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKeyedSubscript:@"Version"];
  }

  persistentID = self->_persistentID;
  if (persistentID)
  {
    [v4 setObject:persistentID forKeyedSubscript:@"PersistentID"];
  }

  iTunesStoreID = self->_iTunesStoreID;
  if (iTunesStoreID)
  {
    [v4 setObject:iTunesStoreID forKeyedSubscript:@"iTunesStoreID"];
  }

  buyParams = self->_buyParams;
  if (buyParams)
  {
    [v4 setObject:buyParams forKeyedSubscript:@"buyParams"];
  }

  state = self->_state;
  if (state)
  {
    [v4 setObject:state forKeyedSubscript:@"State"];
  }

  kind = self->_kind;
  if (kind)
  {
    [v4 setObject:kind forKeyedSubscript:@"Kind"];
  }

  downloadIdentifier = self->_downloadIdentifier;
  if (downloadIdentifier)
  {
    [v4 setObject:downloadIdentifier forKeyedSubscript:@"DownloadIdentifier"];
  }

  return v4;
}

- (id)friendlyName
{
  title = [(MDMBook *)self title];

  if (title)
  {
    title2 = [(MDMBook *)self title];
LABEL_5:
    v6 = title2;
    goto LABEL_6;
  }

  persistentID = [(MDMBook *)self persistentID];

  if (persistentID)
  {
    title2 = [(MDMBook *)self persistentID];
    goto LABEL_5;
  }

  iTunesStoreID = [(MDMBook *)self iTunesStoreID];

  if (!iTunesStoreID)
  {
    title2 = [(MDMBook *)self description];
    goto LABEL_5;
  }

  v9 = DMCUSEnglishNumberFormatter();
  iTunesStoreID2 = [(MDMBook *)self iTunesStoreID];
  v6 = [v9 stringFromNumber:iTunesStoreID2];

LABEL_6:

  return v6;
}

- (void)updateBookAttributesByCopyingFromBook:(id)book
{
  bookCopy = book;
  author = [bookCopy author];
  [(MDMBook *)self setAuthor:author];

  title = [bookCopy title];
  [(MDMBook *)self setTitle:title];

  version = [bookCopy version];

  [(MDMBook *)self setVersion:version];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v24.receiver = self;
  v24.super_class = MDMBook;
  v4 = [(MDMBook *)&v24 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  persistentID = [(MDMBook *)self persistentID];

  if (persistentID)
  {
    persistentID2 = [(MDMBook *)self persistentID];
    [v5 appendFormat:@"  PersistentID: %@\n", persistentID2];
  }

  iTunesStoreID = [(MDMBook *)self iTunesStoreID];

  if (iTunesStoreID)
  {
    iTunesStoreID2 = [(MDMBook *)self iTunesStoreID];
    [v5 appendFormat:@"  iTunes ID: %@\n", iTunesStoreID2];
  }

  buyParams = [(MDMBook *)self buyParams];

  if (buyParams)
  {
    [v5 appendString:@"  Buy Params: Present\n"];
  }

  title = [(MDMBook *)self title];

  if (title)
  {
    title2 = [(MDMBook *)self title];
    [v5 appendFormat:@"  Title: %@\n", title2];
  }

  author = [(MDMBook *)self author];

  if (author)
  {
    author2 = [(MDMBook *)self author];
    [v5 appendFormat:@"  Author: %@\n", author2];
  }

  fullPath = [(MDMBook *)self fullPath];

  if (fullPath)
  {
    fullPath2 = [(MDMBook *)self fullPath];
    [v5 appendFormat:@" Path: %@\n", fullPath2];
  }

  state = [(MDMBook *)self state];

  if (state)
  {
    state2 = [(MDMBook *)self state];
    [v5 appendFormat:@"  State: %@\n", state2];
  }

  kind = [(MDMBook *)self kind];

  if (kind)
  {
    kind2 = [(MDMBook *)self kind];
    [v5 appendFormat:@"  Kind: %@\n", kind2];
  }

  downloadIdentifier = [(MDMBook *)self downloadIdentifier];

  if (downloadIdentifier)
  {
    downloadIdentifier2 = [(MDMBook *)self downloadIdentifier];
    [v5 appendFormat:@"  Download ID: %@", downloadIdentifier2];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  author = [(MDMBook *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  title = [(MDMBook *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  kind = [(MDMBook *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  fullPath = [(MDMBook *)self fullPath];
  [coderCopy encodeObject:fullPath forKey:@"fullPath"];

  version = [(MDMBook *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  persistentID = [(MDMBook *)self persistentID];
  [coderCopy encodeObject:persistentID forKey:@"persistentID"];

  iTunesStoreID = [(MDMBook *)self iTunesStoreID];
  [coderCopy encodeObject:iTunesStoreID forKey:@"iTunesStoreID"];

  buyParams = [(MDMBook *)self buyParams];
  [coderCopy encodeObject:buyParams forKey:@"buyParams"];

  state = [(MDMBook *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  downloadIdentifier = [(MDMBook *)self downloadIdentifier];
  [coderCopy encodeObject:downloadIdentifier forKey:@"downloadIdentifier"];

  previousVersion = [(MDMBook *)self previousVersion];
  [coderCopy encodeObject:previousVersion forKey:@"previousVersion"];
}

- (MDMBook)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = MDMBook;
  v5 = [(MDMBook *)&v40 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"author"];
    author = v5->_author;
    v5->_author = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"fullPath"];
    fullPath = v5->_fullPath;
    v5->_fullPath = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"version"];
    version = v5->_version;
    v5->_version = v19;

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v22;

    v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v25;

    v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v28;

    v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"state"];
    state = v5->_state;
    v5->_state = v31;

    v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"downloadIdentifier"];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v34;

    v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"previousVersion"];
    previousVersion = v5->_previousVersion;
    v5->_previousVersion = v37;
  }

  return v5;
}

@end