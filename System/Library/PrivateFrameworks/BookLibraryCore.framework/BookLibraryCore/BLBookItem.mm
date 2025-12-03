@interface BLBookItem
- (BLBookItem)initWithCoder:(id)coder;
- (BLBookItem)initWithEduCloudData:(id)data path:(id)path;
- (BLBookItem)initWithEntry:(id)entry basePath:(id)path;
- (BLBookItem)initWithPeristentIdentifier:(id)identifier permlink:(id)permlink title:(id)title;
- (NSString)identifier;
- (NSString)mimeType;
- (NSString)path;
- (id)_cloudCoverImageData;
- (id)_cloudDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setCloudCoverImageData:(id)data;
- (void)_setFileURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLBookItem

- (BLBookItem)initWithEntry:(id)entry basePath:(id)path
{
  entryCopy = entry;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = BLBookItem;
  v8 = [(BLBookItem *)&v29 init];
  if (v8)
  {
    v9 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
    v10 = [pathCopy stringByAppendingPathComponent:v9];

    v11 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setTemporaryIdentifier:v11];

    v12 = [IMLibraryPlist uniqueIdFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setLegacyUniqueIdentifier:v12];

    v13 = [IMLibraryPlist storeIdFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setStoreIdentifier:v13];

    v14 = [IMLibraryPlist persistentIDFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setPersistentIdentifier:v14];

    v15 = [IMLibraryPlist bookEpubIdFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setPublisherIdentifier:v15];

    v16 = [IMLibraryPlist titleFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setTitle:v16];

    v17 = [IMLibraryPlist authorFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setAuthor:v17];

    v18 = [IMLibraryPlist isItunesUFromPlistEntry:entryCopy];
    -[BLBookItem setITunesU:](v8, "setITunesU:", [v18 BOOLValue]);

    v19 = [IMLibraryPlist feedURLFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setFeedURL:v19];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    [(BLBookItem *)v8 setFileURL:v20];

    pathExtension = [v10 pathExtension];
    [(BLBookItem *)v8 setType:BLBookTypeFromPathExtension(pathExtension)];

    v22 = [IMLibraryPlist isSampleFromPlistEntry:entryCopy];
    -[BLBookItem setSample:](v8, "setSample:", [v22 BOOLValue]);

    v23 = [IMLibraryPlist permlinkFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setPermlink:v23];

    v24 = [IMLibraryPlist publicationVersionFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setPublicationVersion:v24];

    v25 = [IMLibraryPlist albumFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setAlbum:v25];

    v26 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setFolderName:v26];

    v27 = [IMLibraryPlist accessDateFromPlistEntry:entryCopy];
    [(BLBookItem *)v8 setLastUserAccessDate:v27];

    [(BLBookItem *)v8 setEntry:entryCopy];
  }

  return v8;
}

- (BLBookItem)initWithPeristentIdentifier:(id)identifier permlink:(id)permlink title:(id)title
{
  identifierCopy = identifier;
  permlinkCopy = permlink;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = BLBookItem;
  v11 = [(BLBookItem *)&v15 init];
  if (v11)
  {
    identifierFromPermlink = [permlinkCopy identifierFromPermlink];
    [(BLBookItem *)v11 setIdentifier:identifierFromPermlink];

    [(BLBookItem *)v11 setTemporaryIdentifier:identifierCopy];
    [(BLBookItem *)v11 setTitle:titleCopy];
    [(BLBookItem *)v11 setPermlink:permlinkCopy];
    [(BLBookItem *)v11 setITunesU:1];
    pathExtension = [permlinkCopy pathExtension];
    [(BLBookItem *)v11 setType:BLBookTypeFromPathExtension(pathExtension)];
  }

  return v11;
}

- (BLBookItem)initWithEduCloudData:(id)data path:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = BLBookItem;
  v8 = [(BLBookItem *)&v22 init];
  if (v8)
  {
    v9 = [dataCopy objectForKeyedSubscript:@"identifier"];
    [(BLBookItem *)v8 setIdentifier:v9];

    v10 = [dataCopy objectForKeyedSubscript:@"temporaryIdentifier"];
    [(BLBookItem *)v8 setTemporaryIdentifier:v10];

    v11 = [dataCopy objectForKeyedSubscript:@"title"];
    [(BLBookItem *)v8 setTitle:v11];

    v12 = [dataCopy objectForKeyedSubscript:@"author"];
    [(BLBookItem *)v8 setAuthor:v12];

    v13 = [dataCopy objectForKeyedSubscript:@"permlink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [dataCopy objectForKeyedSubscript:@"permlink"];
    }

    else
    {
      v14 = 0;
    }

    if ([v14 length])
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
      [(BLBookItem *)v8 setPermlink:v15];
    }

    else
    {
      v15 = BLDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = pathCopy;
        _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_INFO, "WARNING: Restoring item from cloud item {%@} that is missing a permlink!", buf, 0xCu);
      }
    }

    v16 = [dataCopy objectForKeyedSubscript:@"type"];
    [(BLBookItem *)v8 setType:BLBookTypeFromPathExtension(v16)];

    [(BLBookItem *)v8 setITunesU:1];
    if ([pathCopy length])
    {
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
      [(BLBookItem *)v8 setFileURL:v17];
    }

    else
    {
      v17 = BLDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_INFO, "WARNING: Attempting to restore item from cloud item that is missing a path!", buf, 2u);
      }
    }

    v18 = [dataCopy objectForKeyedSubscript:@"assetID"];
    [(BLBookItem *)v8 setItunesuAssetID:v18];

    v19 = [dataCopy objectForKeyedSubscript:@"coverImagePath"];
    [(BLBookItem *)v8 setCoverImagePath:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(BLBookItem *)self identifier];
  [v4 setIdentifier:identifier];

  temporaryIdentifier = [(BLBookItem *)self temporaryIdentifier];
  [v4 setTemporaryIdentifier:temporaryIdentifier];

  legacyUniqueIdentifier = [(BLBookItem *)self legacyUniqueIdentifier];
  [v4 setLegacyUniqueIdentifier:legacyUniqueIdentifier];

  storeIdentifier = [(BLBookItem *)self storeIdentifier];
  [v4 setStoreIdentifier:storeIdentifier];

  persistentIdentifier = [(BLBookItem *)self persistentIdentifier];
  [v4 setPersistentIdentifier:persistentIdentifier];

  publisherIdentifier = [(BLBookItem *)self publisherIdentifier];
  [v4 setPublisherIdentifier:publisherIdentifier];

  title = [(BLBookItem *)self title];
  [v4 setTitle:title];

  author = [(BLBookItem *)self author];
  [v4 setAuthor:author];

  feedURL = [(BLBookItem *)self feedURL];
  [v4 setFeedURL:feedURL];

  fileURL = [(BLBookItem *)self fileURL];
  [v4 setFileURL:fileURL];

  permlink = [(BLBookItem *)self permlink];
  [v4 setPermlink:permlink];

  [v4 setITunesU:{-[BLBookItem iTunesU](self, "iTunesU")}];
  [v4 setSample:{-[BLBookItem isSample](self, "isSample")}];
  [v4 setType:{-[BLBookItem type](self, "type")}];
  publicationVersion = [(BLBookItem *)self publicationVersion];
  [v4 setPublicationVersion:publicationVersion];

  album = [(BLBookItem *)self album];
  [v4 setAlbum:album];

  folderName = [(BLBookItem *)self folderName];
  [v4 setFolderName:folderName];

  [v4 setPurgePriority:{-[BLBookItem purgePriority](self, "purgePriority")}];
  lastUserAccessDate = [(BLBookItem *)self lastUserAccessDate];
  [v4 setLastUserAccessDate:lastUserAccessDate];

  itunesuAssetID = [(BLBookItem *)self itunesuAssetID];
  [v4 setItunesuAssetID:itunesuAssetID];

  coverImagePath = [(BLBookItem *)self coverImagePath];
  [v4 setCoverImagePath:coverImagePath];

  entry = [(BLBookItem *)self entry];
  [v4 setEntry:entry];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BLBookItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  temporaryIdentifier = [(BLBookItem *)self temporaryIdentifier];
  [coderCopy encodeObject:temporaryIdentifier forKey:@"temporaryIdentifier"];

  legacyUniqueIdentifier = [(BLBookItem *)self legacyUniqueIdentifier];
  [coderCopy encodeObject:legacyUniqueIdentifier forKey:@"legacyUniqueIdentifier"];

  storeIdentifier = [(BLBookItem *)self storeIdentifier];
  [coderCopy encodeObject:storeIdentifier forKey:@"storeIdentifier"];

  persistentIdentifier = [(BLBookItem *)self persistentIdentifier];
  [coderCopy encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];

  publisherIdentifier = [(BLBookItem *)self publisherIdentifier];
  [coderCopy encodeObject:publisherIdentifier forKey:@"publisherIdentifier"];

  title = [(BLBookItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  author = [(BLBookItem *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  feedURL = [(BLBookItem *)self feedURL];
  [coderCopy encodeObject:feedURL forKey:@"feedURL"];

  fileURL = [(BLBookItem *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"fileURL"];

  permlink = [(BLBookItem *)self permlink];
  [coderCopy encodeObject:permlink forKey:@"permlink"];

  [coderCopy encodeBool:-[BLBookItem iTunesU](self forKey:{"iTunesU"), @"iTunesU"}];
  [coderCopy encodeBool:-[BLBookItem isSample](self forKey:{"isSample"), @"sample"}];
  [coderCopy encodeInt:-[BLBookItem type](self forKey:{"type"), @"type"}];
  publicationVersion = [(BLBookItem *)self publicationVersion];
  [coderCopy encodeObject:publicationVersion forKey:@"publicationVersion"];

  album = [(BLBookItem *)self album];
  [coderCopy encodeObject:album forKey:@"album"];

  folderName = [(BLBookItem *)self folderName];
  [coderCopy encodeObject:folderName forKey:@"folderName"];

  [coderCopy encodeInt64:-[BLBookItem purgePriority](self forKey:{"purgePriority"), @"purgePriority"}];
  lastUserAccessDate = [(BLBookItem *)self lastUserAccessDate];
  [coderCopy encodeObject:lastUserAccessDate forKey:@"lastUserAccessDate"];

  itunesuAssetID = [(BLBookItem *)self itunesuAssetID];
  [coderCopy encodeObject:itunesuAssetID forKey:@"assetID"];

  coverImagePath = [(BLBookItem *)self coverImagePath];
  [coderCopy encodeObject:coverImagePath forKey:@"coverImagePath"];
}

- (BLBookItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = BLBookItem;
  v5 = [(BLBookItem *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(BLBookItem *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temporaryIdentifier"];
    [(BLBookItem *)v5 setTemporaryIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legacyUniqueIdentifier"];
    [(BLBookItem *)v5 setLegacyUniqueIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLBookItem *)v5 setStoreIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    [(BLBookItem *)v5 setPersistentIdentifier:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisherIdentifier"];
    [(BLBookItem *)v5 setPublisherIdentifier:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BLBookItem *)v5 setTitle:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    [(BLBookItem *)v5 setAuthor:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedURL"];
    [(BLBookItem *)v5 setFeedURL:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(BLBookItem *)v5 setFileURL:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLBookItem *)v5 setPermlink:v16];

    -[BLBookItem setITunesU:](v5, "setITunesU:", [coderCopy decodeBoolForKey:@"iTunesU"]);
    -[BLBookItem setSample:](v5, "setSample:", [coderCopy decodeBoolForKey:@"sample"]);
    -[BLBookItem setType:](v5, "setType:", [coderCopy decodeIntForKey:@"type"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicationVersion"];
    [(BLBookItem *)v5 setPublicationVersion:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"album"];
    [(BLBookItem *)v5 setAlbum:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"folderName"];
    [(BLBookItem *)v5 setFolderName:v19];

    -[BLBookItem setPurgePriority:](v5, "setPurgePriority:", [coderCopy decodeInt64ForKey:@"purgePriority"]);
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUserAccessDate"];
    [(BLBookItem *)v5 setLastUserAccessDate:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    [(BLBookItem *)v5 setItunesuAssetID:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverImagePath"];
    [(BLBookItem *)v5 setCoverImagePath:v22];
  }

  return v5;
}

- (NSString)path
{
  fileURL = [(BLBookItem *)self fileURL];
  path = [fileURL path];

  return path;
}

- (NSString)identifier
{
  if (!self->_identifier)
  {
    entry = [(BLBookItem *)self entry];

    if (entry)
    {
      entry2 = [(BLBookItem *)self entry];
      fileURL = [(BLBookItem *)self fileURL];
      path = [fileURL path];
      v7 = [IMLibraryPlist assetIDFromPlistEntry:entry2 forAssetAtPath:path];
      identifier = self->_identifier;
      self->_identifier = v7;
    }
  }

  v9 = self->_identifier;

  return v9;
}

- (NSString)mimeType
{
  type = [(BLBookItem *)self type];
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return &off_278D181B0[type]->isa;
  }
}

- (id)_cloudCoverImageData
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_241D60BC0;
  v20 = sub_241D60BD0;
  v21 = 0;
  coverImagePath = [(BLBookItem *)self coverImagePath];

  if (coverImagePath)
  {
    v4 = MEMORY[0x277CBEBC0];
    coverImagePath2 = [(BLBookItem *)self coverImagePath];
    fileURL = [(BLBookItem *)self fileURL];
    v7 = [v4 fileURLWithPath:coverImagePath2 relativeToURL:fileURL];

    v8 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_241D60BD8;
    v14[3] = &unk_278D18140;
    v14[4] = &v16;
    v15 = 0;
    [v8 coordinateReadingItemAtURL:v7 options:0 error:&v15 byAccessor:v14];
    v9 = v15;

    if (v9)
    {
      v10 = BLDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "Encountered error retrieving cover image from promised item. Error:  %@", buf, 0xCu);
      }
    }
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_setCloudCoverImageData:(id)data
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  permlink = [(BLBookItem *)self permlink];
  identifierFromPermlink = [permlink identifierFromPermlink];
  v7 = [identifierFromPermlink stringByAppendingPathExtension:@"coverData"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    fileURL = [(BLBookItem *)self fileURL];
    v10 = [v8 fileURLWithPath:v7 relativeToURL:fileURL];
  }

  else
  {
    v10 = 0;
  }

  [(BLBookItem *)self setCoverImagePath:v7];
  if (dataCopy)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_241D61158;
    v43[3] = &unk_278D18168;
    v44 = dataCopy;
    v11 = v10;
    v45 = v11;
    v12 = MEMORY[0x245CFF560](v43);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    LOBYTE(v34) = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [defaultManager isUbiquitousItemAtURL:v11];

    if (v14)
    {
      v15 = objc_opt_new();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_241D611A0;
      v38[3] = &unk_278D18190;
      v41 = &v31;
      v42 = 0;
      v40 = v12;
      v39 = v11;
      [v15 coordinateWritingItemAtURL:v39 options:0 error:&v42 byAccessor:v38];
      v16 = v42;

      v17 = v40;
    }

    else
    {
      v23 = NSTemporaryDirectory();
      v17 = [v23 stringByAppendingPathComponent:v7];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 removeItemAtPath:v17 error:0];
      if ((v12)[2](v12, v17))
      {
        v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
        v37 = 0;
        v26 = [defaultManager2 setUbiquitous:1 itemAtURL:v25 destinationURL:v11 error:&v37];
        v16 = v37;
        *(v32 + 24) = v26;
      }

      else
      {
        v16 = 0;
      }
    }

    if ((v32[3] & 1) == 0)
    {
      v27 = BLDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = v11;
        v48 = 2112;
        v49 = v16;
        _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_ERROR, "Failed to coordinate write of thumbnail resource value for %@. Error:  %@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_241D60BC0;
    v35 = sub_241D60BD0;
    v36 = 0;
    v18 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    v20 = (v32 + 5);
    v19 = v32[5];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_241D6120C;
    v29[3] = &unk_278D18140;
    v29[4] = &v31;
    obj = v19;
    [v18 coordinateWritingItemAtURL:v10 options:1 error:&obj byAccessor:v29];
    objc_storeStrong(v20, obj);
    if (v32[5])
    {
      v21 = BLDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        path = [v10 path];
        *buf = 138412290;
        v47 = path;
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "Error encountered removing cover image at %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v31, 8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setFileURL:(id)l
{
  v9 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    [(BLBookItem *)self setFileURL:lCopy];
  }

  else
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = lCopy;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Invalid fileURL in setFileURL:%@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_cloudDictionaryRepresentation
{
  v3 = objc_opt_new();
  identifier = [(BLBookItem *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  temporaryIdentifier = [(BLBookItem *)self temporaryIdentifier];
  [v3 setObject:temporaryIdentifier forKeyedSubscript:@"temporaryIdentifier"];

  title = [(BLBookItem *)self title];
  [v3 setObject:title forKeyedSubscript:@"title"];

  author = [(BLBookItem *)self author];
  [v3 setObject:author forKeyedSubscript:@"author"];

  permlink = [(BLBookItem *)self permlink];
  absoluteString = [permlink absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"permlink"];

  type = [(BLBookItem *)self type];
  if (type > 2)
  {
    v11 = &stru_2853E2EC8;
  }

  else
  {
    v11 = off_278D181C8[type];
  }

  [v3 setObject:v11 forKeyedSubscript:@"type"];
  itunesuAssetID = [(BLBookItem *)self itunesuAssetID];
  [v3 setObject:itunesuAssetID forKeyedSubscript:@"assetID"];

  coverImagePath = [(BLBookItem *)self coverImagePath];
  [v3 setObject:coverImagePath forKeyedSubscript:@"coverImagePath"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@(%p)", v5, self];

  identifier = [(BLBookItem *)self identifier];
  v8 = [v6 stringByAppendingFormat:@" identifier='%@'", identifier];

  temporaryIdentifier = [(BLBookItem *)self temporaryIdentifier];
  v10 = [temporaryIdentifier length];

  if (v10)
  {
    temporaryIdentifier2 = [(BLBookItem *)self temporaryIdentifier];
    v12 = [v8 stringByAppendingFormat:@" temporaryIdentifier='%@'", temporaryIdentifier2];

    v8 = v12;
  }

  legacyUniqueIdentifier = [(BLBookItem *)self legacyUniqueIdentifier];
  v14 = [legacyUniqueIdentifier length];

  if (v14)
  {
    legacyUniqueIdentifier2 = [(BLBookItem *)self legacyUniqueIdentifier];
    v16 = [v8 stringByAppendingFormat:@" legacyUniqueIdentifier='%@'", legacyUniqueIdentifier2];

    v8 = v16;
  }

  storeIdentifier = [(BLBookItem *)self storeIdentifier];
  v18 = [storeIdentifier length];

  if (v18)
  {
    storeIdentifier2 = [(BLBookItem *)self storeIdentifier];
    v20 = [v8 stringByAppendingFormat:@" storeIdentifier='%@'", storeIdentifier2];

    v8 = v20;
  }

  persistentIdentifier = [(BLBookItem *)self persistentIdentifier];
  v22 = [persistentIdentifier length];

  if (v22)
  {
    persistentIdentifier2 = [(BLBookItem *)self persistentIdentifier];
    v24 = [v8 stringByAppendingFormat:@" persistentIdentifier='%@'", persistentIdentifier2];

    v8 = v24;
  }

  publisherIdentifier = [(BLBookItem *)self publisherIdentifier];
  v26 = [publisherIdentifier length];

  if (v26)
  {
    publisherIdentifier2 = [(BLBookItem *)self publisherIdentifier];
    v28 = [v8 stringByAppendingFormat:@" publisherIdentifier='%@'", publisherIdentifier2];

    v8 = v28;
  }

  title = [(BLBookItem *)self title];
  v30 = [title length];

  if (v30)
  {
    title2 = [(BLBookItem *)self title];
    v32 = [v8 stringByAppendingFormat:@" title='%@'", title2];

    v8 = v32;
  }

  author = [(BLBookItem *)self author];
  v34 = [author length];

  if (v34)
  {
    author2 = [(BLBookItem *)self author];
    v36 = [v8 stringByAppendingFormat:@" author='%@'", author2];

    v8 = v36;
  }

  feedURL = [(BLBookItem *)self feedURL];

  if (feedURL)
  {
    feedURL2 = [(BLBookItem *)self feedURL];
    v39 = [v8 stringByAppendingFormat:@" feedURL='%@'", feedURL2];

    v8 = v39;
  }

  publicationVersion = [(BLBookItem *)self publicationVersion];
  v41 = [publicationVersion length];

  if (v41)
  {
    publicationVersion2 = [(BLBookItem *)self publicationVersion];
    v43 = [v8 stringByAppendingFormat:@" publicationVersion='%@'", publicationVersion2];

    v8 = v43;
  }

  album = [(BLBookItem *)self album];
  v45 = [album length];

  if (v45)
  {
    album2 = [(BLBookItem *)self album];
    v47 = [v8 stringByAppendingFormat:@" album='%@'", album2];

    v8 = v47;
  }

  folderName = [(BLBookItem *)self folderName];
  v49 = [folderName length];

  if (v49)
  {
    folderName2 = [(BLBookItem *)self folderName];
    v51 = [v8 stringByAppendingFormat:@" folderName='%@'", folderName2];

    v8 = v51;
  }

  mimeType = [(BLBookItem *)self mimeType];
  v53 = [mimeType length];

  if (v53)
  {
    mimeType2 = [(BLBookItem *)self mimeType];
    v55 = [v8 stringByAppendingFormat:@" mimeType='%@'", mimeType2];

    v8 = v55;
  }

  itunesuAssetID = [(BLBookItem *)self itunesuAssetID];
  v57 = [itunesuAssetID length];

  if (v57)
  {
    itunesuAssetID2 = [(BLBookItem *)self itunesuAssetID];
    v59 = [v8 stringByAppendingFormat:@" itunesuAssetID='%@'", itunesuAssetID2];

    v8 = v59;
  }

  type = [(BLBookItem *)self type];
  if (type > 2)
  {
    v61 = &stru_2853E2EC8;
  }

  else
  {
    v61 = off_278D181C8[type];
  }

  v62 = [v8 stringByAppendingFormat:@" type='%@'", v61];

  if ([(BLBookItem *)self isSample])
  {
    v63 = @"YES";
  }

  else
  {
    v63 = @"NO";
  }

  v64 = [v62 stringByAppendingFormat:@" isSample='%@'", v63];

  if ([(BLBookItem *)self iTunesU])
  {
    v65 = @"YES";
  }

  else
  {
    v65 = @"NO";
  }

  v66 = [v64 stringByAppendingFormat:@" iTunesU='%@'", v65];

  permlink = [(BLBookItem *)self permlink];

  if (permlink)
  {
    permlink2 = [(BLBookItem *)self permlink];
    v69 = [v66 stringByAppendingFormat:@" permlink='%@'", permlink2];

    v66 = v69;
  }

  fileURL = [(BLBookItem *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(BLBookItem *)self fileURL];
    path = [fileURL2 path];
    v73 = [v66 stringByAppendingFormat:@" path='%@'", path];

    v66 = v73;
  }

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLBookItem purgePriority](self, "purgePriority")}];
  v75 = [v66 stringByAppendingFormat:@" purgePriority='%@'", v74];

  lastUserAccessDate = [(BLBookItem *)self lastUserAccessDate];

  if (lastUserAccessDate)
  {
    lastUserAccessDate2 = [(BLBookItem *)self lastUserAccessDate];
    v78 = [v75 stringByAppendingFormat:@" accessDate='%@'", lastUserAccessDate2];

    v75 = v78;
  }

  v79 = [v75 stringByAppendingString:@">"];

  return v79;
}

@end