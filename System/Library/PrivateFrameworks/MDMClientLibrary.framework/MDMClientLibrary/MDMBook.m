@interface MDMBook
- (MDMBook)initWithCoder:(id)a3;
- (MDMBook)initWithManifestDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)friendlyName;
- (id)manifestDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)updateBookAttributesByCopyingFromBook:(id)a3;
@end

@implementation MDMBook

- (MDMBook)initWithManifestDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = MDMBook;
  v5 = [(MDMBook *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Artist"];
    author = v5->_author;
    v5->_author = v6;

    v8 = [v4 objectForKeyedSubscript:@"Title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 objectForKeyedSubscript:@"FullPath"];
    fullPath = v5->_fullPath;
    v5->_fullPath = v10;

    v12 = [v4 objectForKeyedSubscript:@"Version"];
    version = v5->_version;
    v5->_version = v12;

    v14 = [v4 objectForKeyedSubscript:@"PersistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v14;

    v16 = [v4 objectForKeyedSubscript:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v16;

    v18 = [v4 objectForKeyedSubscript:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v18;

    v20 = [v4 objectForKeyedSubscript:@"State"];
    state = v5->_state;
    v5->_state = v20;

    v22 = [v4 objectForKeyedSubscript:@"Kind"];
    kind = v5->_kind;
    v5->_kind = v22;

    v24 = [v4 objectForKeyedSubscript:@"DownloadIdentifier"];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v24;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MDMBook);
  v5 = [(MDMBook *)self author];
  [(MDMBook *)v4 setAuthor:v5];

  v6 = [(MDMBook *)self title];
  [(MDMBook *)v4 setTitle:v6];

  v7 = [(MDMBook *)self fullPath];
  [(MDMBook *)v4 setFullPath:v7];

  v8 = [(MDMBook *)self version];
  [(MDMBook *)v4 setVersion:v8];

  v9 = [(MDMBook *)self persistentID];
  [(MDMBook *)v4 setPersistentID:v9];

  v10 = [(MDMBook *)self iTunesStoreID];
  [(MDMBook *)v4 setITunesStoreID:v10];

  v11 = [(MDMBook *)self buyParams];
  [(MDMBook *)v4 setBuyParams:v11];

  v12 = [(MDMBook *)self state];
  [(MDMBook *)v4 setState:v12];

  v13 = [(MDMBook *)self kind];
  [(MDMBook *)v4 setKind:v13];

  v14 = [(MDMBook *)self downloadIdentifier];
  [(MDMBook *)v4 setDownloadIdentifier:v14];

  return v4;
}

- (id)manifestDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  author = self->_author;
  if (author)
  {
    [v3 setObject:author forKeyedSubscript:@"Artist"];
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
    v8 = [(NSString *)self->_fullPath lastPathComponent];
    [v4 setObject:v8 forKeyedSubscript:@"Path"];
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
  v3 = [(MDMBook *)self title];

  if (v3)
  {
    v4 = [(MDMBook *)self title];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(MDMBook *)self persistentID];

  if (v5)
  {
    v4 = [(MDMBook *)self persistentID];
    goto LABEL_5;
  }

  v8 = [(MDMBook *)self iTunesStoreID];

  if (!v8)
  {
    v4 = [(MDMBook *)self description];
    goto LABEL_5;
  }

  v9 = DMCUSEnglishNumberFormatter();
  v10 = [(MDMBook *)self iTunesStoreID];
  v6 = [v9 stringFromNumber:v10];

LABEL_6:

  return v6;
}

- (void)updateBookAttributesByCopyingFromBook:(id)a3
{
  v4 = a3;
  v5 = [v4 author];
  [(MDMBook *)self setAuthor:v5];

  v6 = [v4 title];
  [(MDMBook *)self setTitle:v6];

  v7 = [v4 version];

  [(MDMBook *)self setVersion:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v24.receiver = self;
  v24.super_class = MDMBook;
  v4 = [(MDMBook *)&v24 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(MDMBook *)self persistentID];

  if (v6)
  {
    v7 = [(MDMBook *)self persistentID];
    [v5 appendFormat:@"  PersistentID: %@\n", v7];
  }

  v8 = [(MDMBook *)self iTunesStoreID];

  if (v8)
  {
    v9 = [(MDMBook *)self iTunesStoreID];
    [v5 appendFormat:@"  iTunes ID: %@\n", v9];
  }

  v10 = [(MDMBook *)self buyParams];

  if (v10)
  {
    [v5 appendString:@"  Buy Params: Present\n"];
  }

  v11 = [(MDMBook *)self title];

  if (v11)
  {
    v12 = [(MDMBook *)self title];
    [v5 appendFormat:@"  Title: %@\n", v12];
  }

  v13 = [(MDMBook *)self author];

  if (v13)
  {
    v14 = [(MDMBook *)self author];
    [v5 appendFormat:@"  Author: %@\n", v14];
  }

  v15 = [(MDMBook *)self fullPath];

  if (v15)
  {
    v16 = [(MDMBook *)self fullPath];
    [v5 appendFormat:@" Path: %@\n", v16];
  }

  v17 = [(MDMBook *)self state];

  if (v17)
  {
    v18 = [(MDMBook *)self state];
    [v5 appendFormat:@"  State: %@\n", v18];
  }

  v19 = [(MDMBook *)self kind];

  if (v19)
  {
    v20 = [(MDMBook *)self kind];
    [v5 appendFormat:@"  Kind: %@\n", v20];
  }

  v21 = [(MDMBook *)self downloadIdentifier];

  if (v21)
  {
    v22 = [(MDMBook *)self downloadIdentifier];
    [v5 appendFormat:@"  Download ID: %@", v22];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MDMBook *)self author];
  [v4 encodeObject:v5 forKey:@"author"];

  v6 = [(MDMBook *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(MDMBook *)self kind];
  [v4 encodeObject:v7 forKey:@"kind"];

  v8 = [(MDMBook *)self fullPath];
  [v4 encodeObject:v8 forKey:@"fullPath"];

  v9 = [(MDMBook *)self version];
  [v4 encodeObject:v9 forKey:@"version"];

  v10 = [(MDMBook *)self persistentID];
  [v4 encodeObject:v10 forKey:@"persistentID"];

  v11 = [(MDMBook *)self iTunesStoreID];
  [v4 encodeObject:v11 forKey:@"iTunesStoreID"];

  v12 = [(MDMBook *)self buyParams];
  [v4 encodeObject:v12 forKey:@"buyParams"];

  v13 = [(MDMBook *)self state];
  [v4 encodeObject:v13 forKey:@"state"];

  v14 = [(MDMBook *)self downloadIdentifier];
  [v4 encodeObject:v14 forKey:@"downloadIdentifier"];

  v15 = [(MDMBook *)self previousVersion];
  [v4 encodeObject:v15 forKey:@"previousVersion"];
}

- (MDMBook)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = MDMBook;
  v5 = [(MDMBook *)&v40 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"author"];
    author = v5->_author;
    v5->_author = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"fullPath"];
    fullPath = v5->_fullPath;
    v5->_fullPath = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"version"];
    version = v5->_version;
    v5->_version = v19;

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v22;

    v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"iTunesStoreID"];
    iTunesStoreID = v5->_iTunesStoreID;
    v5->_iTunesStoreID = v25;

    v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v28;

    v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"state"];
    state = v5->_state;
    v5->_state = v31;

    v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"downloadIdentifier"];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v34;

    v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"previousVersion"];
    previousVersion = v5->_previousVersion;
    v5->_previousVersion = v37;
  }

  return v5;
}

@end