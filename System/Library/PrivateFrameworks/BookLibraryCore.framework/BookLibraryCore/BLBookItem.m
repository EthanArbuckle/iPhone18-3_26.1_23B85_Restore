@interface BLBookItem
- (BLBookItem)initWithCoder:(id)a3;
- (BLBookItem)initWithEduCloudData:(id)a3 path:(id)a4;
- (BLBookItem)initWithEntry:(id)a3 basePath:(id)a4;
- (BLBookItem)initWithPeristentIdentifier:(id)a3 permlink:(id)a4 title:(id)a5;
- (NSString)identifier;
- (NSString)mimeType;
- (NSString)path;
- (id)_cloudCoverImageData;
- (id)_cloudDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setCloudCoverImageData:(id)a3;
- (void)_setFileURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLBookItem

- (BLBookItem)initWithEntry:(id)a3 basePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = BLBookItem;
  v8 = [(BLBookItem *)&v29 init];
  if (v8)
  {
    v9 = [IMLibraryPlist folderNameFromPlistEntry:v6];
    v10 = [v7 stringByAppendingPathComponent:v9];

    v11 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:v6];
    [(BLBookItem *)v8 setTemporaryIdentifier:v11];

    v12 = [IMLibraryPlist uniqueIdFromPlistEntry:v6];
    [(BLBookItem *)v8 setLegacyUniqueIdentifier:v12];

    v13 = [IMLibraryPlist storeIdFromPlistEntry:v6];
    [(BLBookItem *)v8 setStoreIdentifier:v13];

    v14 = [IMLibraryPlist persistentIDFromPlistEntry:v6];
    [(BLBookItem *)v8 setPersistentIdentifier:v14];

    v15 = [IMLibraryPlist bookEpubIdFromPlistEntry:v6];
    [(BLBookItem *)v8 setPublisherIdentifier:v15];

    v16 = [IMLibraryPlist titleFromPlistEntry:v6];
    [(BLBookItem *)v8 setTitle:v16];

    v17 = [IMLibraryPlist authorFromPlistEntry:v6];
    [(BLBookItem *)v8 setAuthor:v17];

    v18 = [IMLibraryPlist isItunesUFromPlistEntry:v6];
    -[BLBookItem setITunesU:](v8, "setITunesU:", [v18 BOOLValue]);

    v19 = [IMLibraryPlist feedURLFromPlistEntry:v6];
    [(BLBookItem *)v8 setFeedURL:v19];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    [(BLBookItem *)v8 setFileURL:v20];

    v21 = [v10 pathExtension];
    [(BLBookItem *)v8 setType:BLBookTypeFromPathExtension(v21)];

    v22 = [IMLibraryPlist isSampleFromPlistEntry:v6];
    -[BLBookItem setSample:](v8, "setSample:", [v22 BOOLValue]);

    v23 = [IMLibraryPlist permlinkFromPlistEntry:v6];
    [(BLBookItem *)v8 setPermlink:v23];

    v24 = [IMLibraryPlist publicationVersionFromPlistEntry:v6];
    [(BLBookItem *)v8 setPublicationVersion:v24];

    v25 = [IMLibraryPlist albumFromPlistEntry:v6];
    [(BLBookItem *)v8 setAlbum:v25];

    v26 = [IMLibraryPlist folderNameFromPlistEntry:v6];
    [(BLBookItem *)v8 setFolderName:v26];

    v27 = [IMLibraryPlist accessDateFromPlistEntry:v6];
    [(BLBookItem *)v8 setLastUserAccessDate:v27];

    [(BLBookItem *)v8 setEntry:v6];
  }

  return v8;
}

- (BLBookItem)initWithPeristentIdentifier:(id)a3 permlink:(id)a4 title:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BLBookItem;
  v11 = [(BLBookItem *)&v15 init];
  if (v11)
  {
    v12 = [v9 identifierFromPermlink];
    [(BLBookItem *)v11 setIdentifier:v12];

    [(BLBookItem *)v11 setTemporaryIdentifier:v8];
    [(BLBookItem *)v11 setTitle:v10];
    [(BLBookItem *)v11 setPermlink:v9];
    [(BLBookItem *)v11 setITunesU:1];
    v13 = [v9 pathExtension];
    [(BLBookItem *)v11 setType:BLBookTypeFromPathExtension(v13)];
  }

  return v11;
}

- (BLBookItem)initWithEduCloudData:(id)a3 path:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = BLBookItem;
  v8 = [(BLBookItem *)&v22 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    [(BLBookItem *)v8 setIdentifier:v9];

    v10 = [v6 objectForKeyedSubscript:@"temporaryIdentifier"];
    [(BLBookItem *)v8 setTemporaryIdentifier:v10];

    v11 = [v6 objectForKeyedSubscript:@"title"];
    [(BLBookItem *)v8 setTitle:v11];

    v12 = [v6 objectForKeyedSubscript:@"author"];
    [(BLBookItem *)v8 setAuthor:v12];

    v13 = [v6 objectForKeyedSubscript:@"permlink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v6 objectForKeyedSubscript:@"permlink"];
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
        v24 = v7;
        _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_INFO, "WARNING: Restoring item from cloud item {%@} that is missing a permlink!", buf, 0xCu);
      }
    }

    v16 = [v6 objectForKeyedSubscript:@"type"];
    [(BLBookItem *)v8 setType:BLBookTypeFromPathExtension(v16)];

    [(BLBookItem *)v8 setITunesU:1];
    if ([v7 length])
    {
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
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

    v18 = [v6 objectForKeyedSubscript:@"assetID"];
    [(BLBookItem *)v8 setItunesuAssetID:v18];

    v19 = [v6 objectForKeyedSubscript:@"coverImagePath"];
    [(BLBookItem *)v8 setCoverImagePath:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(BLBookItem *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(BLBookItem *)self temporaryIdentifier];
  [v4 setTemporaryIdentifier:v6];

  v7 = [(BLBookItem *)self legacyUniqueIdentifier];
  [v4 setLegacyUniqueIdentifier:v7];

  v8 = [(BLBookItem *)self storeIdentifier];
  [v4 setStoreIdentifier:v8];

  v9 = [(BLBookItem *)self persistentIdentifier];
  [v4 setPersistentIdentifier:v9];

  v10 = [(BLBookItem *)self publisherIdentifier];
  [v4 setPublisherIdentifier:v10];

  v11 = [(BLBookItem *)self title];
  [v4 setTitle:v11];

  v12 = [(BLBookItem *)self author];
  [v4 setAuthor:v12];

  v13 = [(BLBookItem *)self feedURL];
  [v4 setFeedURL:v13];

  v14 = [(BLBookItem *)self fileURL];
  [v4 setFileURL:v14];

  v15 = [(BLBookItem *)self permlink];
  [v4 setPermlink:v15];

  [v4 setITunesU:{-[BLBookItem iTunesU](self, "iTunesU")}];
  [v4 setSample:{-[BLBookItem isSample](self, "isSample")}];
  [v4 setType:{-[BLBookItem type](self, "type")}];
  v16 = [(BLBookItem *)self publicationVersion];
  [v4 setPublicationVersion:v16];

  v17 = [(BLBookItem *)self album];
  [v4 setAlbum:v17];

  v18 = [(BLBookItem *)self folderName];
  [v4 setFolderName:v18];

  [v4 setPurgePriority:{-[BLBookItem purgePriority](self, "purgePriority")}];
  v19 = [(BLBookItem *)self lastUserAccessDate];
  [v4 setLastUserAccessDate:v19];

  v20 = [(BLBookItem *)self itunesuAssetID];
  [v4 setItunesuAssetID:v20];

  v21 = [(BLBookItem *)self coverImagePath];
  [v4 setCoverImagePath:v21];

  v22 = [(BLBookItem *)self entry];
  [v4 setEntry:v22];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLBookItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(BLBookItem *)self temporaryIdentifier];
  [v4 encodeObject:v6 forKey:@"temporaryIdentifier"];

  v7 = [(BLBookItem *)self legacyUniqueIdentifier];
  [v4 encodeObject:v7 forKey:@"legacyUniqueIdentifier"];

  v8 = [(BLBookItem *)self storeIdentifier];
  [v4 encodeObject:v8 forKey:@"storeIdentifier"];

  v9 = [(BLBookItem *)self persistentIdentifier];
  [v4 encodeObject:v9 forKey:@"persistentIdentifier"];

  v10 = [(BLBookItem *)self publisherIdentifier];
  [v4 encodeObject:v10 forKey:@"publisherIdentifier"];

  v11 = [(BLBookItem *)self title];
  [v4 encodeObject:v11 forKey:@"title"];

  v12 = [(BLBookItem *)self author];
  [v4 encodeObject:v12 forKey:@"author"];

  v13 = [(BLBookItem *)self feedURL];
  [v4 encodeObject:v13 forKey:@"feedURL"];

  v14 = [(BLBookItem *)self fileURL];
  [v4 encodeObject:v14 forKey:@"fileURL"];

  v15 = [(BLBookItem *)self permlink];
  [v4 encodeObject:v15 forKey:@"permlink"];

  [v4 encodeBool:-[BLBookItem iTunesU](self forKey:{"iTunesU"), @"iTunesU"}];
  [v4 encodeBool:-[BLBookItem isSample](self forKey:{"isSample"), @"sample"}];
  [v4 encodeInt:-[BLBookItem type](self forKey:{"type"), @"type"}];
  v16 = [(BLBookItem *)self publicationVersion];
  [v4 encodeObject:v16 forKey:@"publicationVersion"];

  v17 = [(BLBookItem *)self album];
  [v4 encodeObject:v17 forKey:@"album"];

  v18 = [(BLBookItem *)self folderName];
  [v4 encodeObject:v18 forKey:@"folderName"];

  [v4 encodeInt64:-[BLBookItem purgePriority](self forKey:{"purgePriority"), @"purgePriority"}];
  v19 = [(BLBookItem *)self lastUserAccessDate];
  [v4 encodeObject:v19 forKey:@"lastUserAccessDate"];

  v20 = [(BLBookItem *)self itunesuAssetID];
  [v4 encodeObject:v20 forKey:@"assetID"];

  v21 = [(BLBookItem *)self coverImagePath];
  [v4 encodeObject:v21 forKey:@"coverImagePath"];
}

- (BLBookItem)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BLBookItem;
  v5 = [(BLBookItem *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(BLBookItem *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"temporaryIdentifier"];
    [(BLBookItem *)v5 setTemporaryIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legacyUniqueIdentifier"];
    [(BLBookItem *)v5 setLegacyUniqueIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLBookItem *)v5 setStoreIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    [(BLBookItem *)v5 setPersistentIdentifier:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisherIdentifier"];
    [(BLBookItem *)v5 setPublisherIdentifier:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BLBookItem *)v5 setTitle:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"author"];
    [(BLBookItem *)v5 setAuthor:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedURL"];
    [(BLBookItem *)v5 setFeedURL:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(BLBookItem *)v5 setFileURL:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLBookItem *)v5 setPermlink:v16];

    -[BLBookItem setITunesU:](v5, "setITunesU:", [v4 decodeBoolForKey:@"iTunesU"]);
    -[BLBookItem setSample:](v5, "setSample:", [v4 decodeBoolForKey:@"sample"]);
    -[BLBookItem setType:](v5, "setType:", [v4 decodeIntForKey:@"type"]);
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicationVersion"];
    [(BLBookItem *)v5 setPublicationVersion:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"album"];
    [(BLBookItem *)v5 setAlbum:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"folderName"];
    [(BLBookItem *)v5 setFolderName:v19];

    -[BLBookItem setPurgePriority:](v5, "setPurgePriority:", [v4 decodeInt64ForKey:@"purgePriority"]);
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUserAccessDate"];
    [(BLBookItem *)v5 setLastUserAccessDate:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    [(BLBookItem *)v5 setItunesuAssetID:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverImagePath"];
    [(BLBookItem *)v5 setCoverImagePath:v22];
  }

  return v5;
}

- (NSString)path
{
  v2 = [(BLBookItem *)self fileURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)identifier
{
  if (!self->_identifier)
  {
    v3 = [(BLBookItem *)self entry];

    if (v3)
    {
      v4 = [(BLBookItem *)self entry];
      v5 = [(BLBookItem *)self fileURL];
      v6 = [v5 path];
      v7 = [IMLibraryPlist assetIDFromPlistEntry:v4 forAssetAtPath:v6];
      identifier = self->_identifier;
      self->_identifier = v7;
    }
  }

  v9 = self->_identifier;

  return v9;
}

- (NSString)mimeType
{
  v2 = [(BLBookItem *)self type];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return &off_278D181B0[v2]->isa;
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
  v3 = [(BLBookItem *)self coverImagePath];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(BLBookItem *)self coverImagePath];
    v6 = [(BLBookItem *)self fileURL];
    v7 = [v4 fileURLWithPath:v5 relativeToURL:v6];

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

- (void)_setCloudCoverImageData:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BLBookItem *)self permlink];
  v6 = [v5 identifierFromPermlink];
  v7 = [v6 stringByAppendingPathExtension:@"coverData"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [(BLBookItem *)self fileURL];
    v10 = [v8 fileURLWithPath:v7 relativeToURL:v9];
  }

  else
  {
    v10 = 0;
  }

  [(BLBookItem *)self setCoverImagePath:v7];
  if (v4)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_241D61158;
    v43[3] = &unk_278D18168;
    v44 = v4;
    v11 = v10;
    v45 = v11;
    v12 = MEMORY[0x245CFF560](v43);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    LOBYTE(v34) = 0;
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 isUbiquitousItemAtURL:v11];

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

      v24 = [MEMORY[0x277CCAA00] defaultManager];
      [v24 removeItemAtPath:v17 error:0];
      if ((v12)[2](v12, v17))
      {
        v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
        v37 = 0;
        v26 = [v24 setUbiquitous:1 itemAtURL:v25 destinationURL:v11 error:&v37];
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
        v22 = [v10 path];
        *buf = 138412290;
        v47 = v22;
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "Error encountered removing cover image at %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v31, 8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_setFileURL:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isFileURL])
  {
    [(BLBookItem *)self setFileURL:v4];
  }

  else
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Invalid fileURL in setFileURL:%@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_cloudDictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(BLBookItem *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  v5 = [(BLBookItem *)self temporaryIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"temporaryIdentifier"];

  v6 = [(BLBookItem *)self title];
  [v3 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [(BLBookItem *)self author];
  [v3 setObject:v7 forKeyedSubscript:@"author"];

  v8 = [(BLBookItem *)self permlink];
  v9 = [v8 absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"permlink"];

  v10 = [(BLBookItem *)self type];
  if (v10 > 2)
  {
    v11 = &stru_2853E2EC8;
  }

  else
  {
    v11 = off_278D181C8[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"type"];
  v12 = [(BLBookItem *)self itunesuAssetID];
  [v3 setObject:v12 forKeyedSubscript:@"assetID"];

  v13 = [(BLBookItem *)self coverImagePath];
  [v3 setObject:v13 forKeyedSubscript:@"coverImagePath"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@(%p)", v5, self];

  v7 = [(BLBookItem *)self identifier];
  v8 = [v6 stringByAppendingFormat:@" identifier='%@'", v7];

  v9 = [(BLBookItem *)self temporaryIdentifier];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(BLBookItem *)self temporaryIdentifier];
    v12 = [v8 stringByAppendingFormat:@" temporaryIdentifier='%@'", v11];

    v8 = v12;
  }

  v13 = [(BLBookItem *)self legacyUniqueIdentifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(BLBookItem *)self legacyUniqueIdentifier];
    v16 = [v8 stringByAppendingFormat:@" legacyUniqueIdentifier='%@'", v15];

    v8 = v16;
  }

  v17 = [(BLBookItem *)self storeIdentifier];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [(BLBookItem *)self storeIdentifier];
    v20 = [v8 stringByAppendingFormat:@" storeIdentifier='%@'", v19];

    v8 = v20;
  }

  v21 = [(BLBookItem *)self persistentIdentifier];
  v22 = [v21 length];

  if (v22)
  {
    v23 = [(BLBookItem *)self persistentIdentifier];
    v24 = [v8 stringByAppendingFormat:@" persistentIdentifier='%@'", v23];

    v8 = v24;
  }

  v25 = [(BLBookItem *)self publisherIdentifier];
  v26 = [v25 length];

  if (v26)
  {
    v27 = [(BLBookItem *)self publisherIdentifier];
    v28 = [v8 stringByAppendingFormat:@" publisherIdentifier='%@'", v27];

    v8 = v28;
  }

  v29 = [(BLBookItem *)self title];
  v30 = [v29 length];

  if (v30)
  {
    v31 = [(BLBookItem *)self title];
    v32 = [v8 stringByAppendingFormat:@" title='%@'", v31];

    v8 = v32;
  }

  v33 = [(BLBookItem *)self author];
  v34 = [v33 length];

  if (v34)
  {
    v35 = [(BLBookItem *)self author];
    v36 = [v8 stringByAppendingFormat:@" author='%@'", v35];

    v8 = v36;
  }

  v37 = [(BLBookItem *)self feedURL];

  if (v37)
  {
    v38 = [(BLBookItem *)self feedURL];
    v39 = [v8 stringByAppendingFormat:@" feedURL='%@'", v38];

    v8 = v39;
  }

  v40 = [(BLBookItem *)self publicationVersion];
  v41 = [v40 length];

  if (v41)
  {
    v42 = [(BLBookItem *)self publicationVersion];
    v43 = [v8 stringByAppendingFormat:@" publicationVersion='%@'", v42];

    v8 = v43;
  }

  v44 = [(BLBookItem *)self album];
  v45 = [v44 length];

  if (v45)
  {
    v46 = [(BLBookItem *)self album];
    v47 = [v8 stringByAppendingFormat:@" album='%@'", v46];

    v8 = v47;
  }

  v48 = [(BLBookItem *)self folderName];
  v49 = [v48 length];

  if (v49)
  {
    v50 = [(BLBookItem *)self folderName];
    v51 = [v8 stringByAppendingFormat:@" folderName='%@'", v50];

    v8 = v51;
  }

  v52 = [(BLBookItem *)self mimeType];
  v53 = [v52 length];

  if (v53)
  {
    v54 = [(BLBookItem *)self mimeType];
    v55 = [v8 stringByAppendingFormat:@" mimeType='%@'", v54];

    v8 = v55;
  }

  v56 = [(BLBookItem *)self itunesuAssetID];
  v57 = [v56 length];

  if (v57)
  {
    v58 = [(BLBookItem *)self itunesuAssetID];
    v59 = [v8 stringByAppendingFormat:@" itunesuAssetID='%@'", v58];

    v8 = v59;
  }

  v60 = [(BLBookItem *)self type];
  if (v60 > 2)
  {
    v61 = &stru_2853E2EC8;
  }

  else
  {
    v61 = off_278D181C8[v60];
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

  v67 = [(BLBookItem *)self permlink];

  if (v67)
  {
    v68 = [(BLBookItem *)self permlink];
    v69 = [v66 stringByAppendingFormat:@" permlink='%@'", v68];

    v66 = v69;
  }

  v70 = [(BLBookItem *)self fileURL];

  if (v70)
  {
    v71 = [(BLBookItem *)self fileURL];
    v72 = [v71 path];
    v73 = [v66 stringByAppendingFormat:@" path='%@'", v72];

    v66 = v73;
  }

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLBookItem purgePriority](self, "purgePriority")}];
  v75 = [v66 stringByAppendingFormat:@" purgePriority='%@'", v74];

  v76 = [(BLBookItem *)self lastUserAccessDate];

  if (v76)
  {
    v77 = [(BLBookItem *)self lastUserAccessDate];
    v78 = [v75 stringByAppendingFormat:@" accessDate='%@'", v77];

    v75 = v78;
  }

  v79 = [v75 stringByAppendingString:@">"];

  return v79;
}

@end