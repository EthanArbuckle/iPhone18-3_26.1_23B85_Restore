@interface SFTabStateData
+ (id)uncompressedDataWithRawData:(id)data uncompressedSize:(unint64_t)size;
- (NSData)compressedSessionStateData;
- (NSDictionary)dictionaryRepresentation;
- (SFTabStateData)initWithDictionaryRepresentation:(id)representation;
- (SFTabStateData)initWithSQLiteRow:(id)row;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_uncompressSessionStateDataIfNeeded;
@end

@implementation SFTabStateData

- (SFTabStateData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v32.receiver = self;
  v32.super_class = SFTabStateData;
  v5 = [(SFTabStateData *)&v32 init];
  if (v5)
  {
    v6 = [representationCopy safari_stringForKey:@"SafariStateDocumentUUID"];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v6;

    v8 = [representationCopy safari_stringForKey:@"SafariStateDocumentTitle"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [representationCopy safari_stringForKey:@"SafariStateDocumentURL"];
    url = v5->_url;
    v5->_url = v10;

    v12 = [representationCopy safari_stringForKey:@"SafariStateDocumentUserVisibleURL"];
    userVisibleURL = v5->_userVisibleURL;
    v5->_userVisibleURL = v12;

    v14 = [representationCopy safari_numberForKey:@"SafariStateDocumentOrderIndex"];
    v5->_orderIndex = [v14 integerValue];

    v15 = [representationCopy safari_numberForKey:@"SafariStateDocumentLastViewedTime"];
    [v15 doubleValue];
    v5->_lastViewedTime = v16;

    v17 = [representationCopy safari_numberForKey:@"SafariStateDocumentBookmark"];
    v5->_readingListBookmarkID = [v17 intValue];

    v5->_wasOpenedFromLink = [representationCopy safari_BOOLForKey:@"SafariStateDocumentWasOpenedFromLink"];
    v5->_showingReader = [representationCopy safari_BOOLForKey:@"SafariStateDocumentShouldRestoreReader"];
    v18 = [representationCopy safari_numberForKey:@"SafariStateDocumentReaderViewTopScrollOffset"];
    v5->_readerViewTopScrollOffset = [v18 integerValue];

    v5->_privateBrowsing = [representationCopy safari_BOOLForKey:@"SafariStateDocumentUsesPrivateBrowsingStyle"];
    v5->_displayingStandaloneImage = [representationCopy safari_BOOLForKey:@"SafariStateDocumentDisplayingStandaloneImage"];
    v19 = [representationCopy safari_dataForKey:@"SafariStateDocumentSessionState"];
    sessionStateData = v5->_sessionStateData;
    v5->_sessionStateData = v19;

    v21 = [representationCopy safari_stringForKey:@"SafariStateDocumentOwningBrowserWindowUUID"];
    owningBrowserWindowUUIDString = v5->_owningBrowserWindowUUIDString;
    v5->_owningBrowserWindowUUIDString = v21;

    v23 = [representationCopy safari_stringForKey:@"SafariStateDocumentTabGroupUUID"];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_1EFF36230;
    }

    objc_storeStrong(&v5->_tabGroupUUID, v25);

    v26 = [representationCopy safari_stringForKey:@"SafariStateDocumentProfileUUID"];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &stru_1EFF36230;
    }

    objc_storeStrong(&v5->_profileIdentifier, v28);

    v5->_uncompressedSessionStateDataSize = [(NSData *)v5->_sessionStateData length];
    if ([(NSData *)v5->_sessionStateData length]> 0x200000)
    {
      v29 = v5->_sessionStateData;
      v5->_sessionStateData = 0;

      v5->_uncompressedSessionStateDataSize = 0;
    }

    v30 = v5;
  }

  return v5;
}

- (SFTabStateData)initWithSQLiteRow:(id)row
{
  rowCopy = row;
  v23.receiver = self;
  v23.super_class = SFTabStateData;
  v5 = [(SFTabStateData *)&v23 init];
  if (v5)
  {
    v6 = [rowCopy stringAtIndex:1];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v6;

    v8 = [rowCopy stringAtIndex:2];
    title = v5->_title;
    v5->_title = v8;

    v10 = [rowCopy stringAtIndex:3];
    url = v5->_url;
    v5->_url = v10;

    v12 = [rowCopy stringAtIndex:4];
    userVisibleURL = v5->_userVisibleURL;
    v5->_userVisibleURL = v12;

    v5->_orderIndex = [rowCopy intAtIndex:5];
    [rowCopy doubleAtIndex:6];
    v5->_lastViewedTime = v14;
    v5->_readingListBookmarkID = [rowCopy intAtIndex:7];
    v5->_wasOpenedFromLink = [rowCopy intAtIndex:8] != 0;
    v5->_showingReader = [rowCopy BOOLAtIndex:9];
    v5->_readerViewTopScrollOffset = [rowCopy intAtIndex:10];
    v5->_privateBrowsing = [rowCopy BOOLAtIndex:11];
    v5->_displayingStandaloneImage = [rowCopy BOOLAtIndex:12];
    v15 = [rowCopy stringAtIndex:13];
    owningBrowserWindowUUIDString = v5->_owningBrowserWindowUUIDString;
    v5->_owningBrowserWindowUUIDString = v15;

    v17 = [rowCopy stringAtIndex:15];
    tabGroupUUID = v5->_tabGroupUUID;
    v5->_tabGroupUUID = v17;

    v19 = [rowCopy stringAtIndex:16];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v19;

    v21 = v5;
  }

  return v5;
}

- (NSData)compressedSessionStateData
{
  v3 = [(NSData *)self->_sessionStateData length];
  sessionStateData = self->_sessionStateData;
  if (v3 >> 20)
  {
    v6 = malloc_type_malloc([(NSData *)sessionStateData length], 0x100004077774924uLL);
    v7 = compression_encode_buffer(v6, [(NSData *)self->_sessionStateData length], [(NSData *)self->_sessionStateData bytes], [(NSData *)self->_sessionStateData length], 0, COMPRESSION_LZ4);
    if (v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:v7];
      free(v6);
      goto LABEL_7;
    }

    free(v6);
    v5 = self->_sessionStateData;
  }

  else
  {
    v5 = sessionStateData;
  }

  v8 = v5;
LABEL_7:

  return v8;
}

- (void)_uncompressSessionStateDataIfNeeded
{
  if ([(SFTabStateData *)self isSessionStateDataCompressed])
  {
    v3 = [objc_opt_class() uncompressedDataWithRawData:self->_sessionStateData uncompressedSize:self->_uncompressedSessionStateDataSize];
    sessionStateData = self->_sessionStateData;
    self->_sessionStateData = v3;
  }
}

+ (id)uncompressedDataWithRawData:(id)data uncompressedSize:(unint64_t)size
{
  dataCopy = data;
  v6 = dataCopy;
  if (size && [dataCopy length] && objc_msgSend(v6, "length") != size)
  {
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:{compression_decode_buffer(v9, size, objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), 0, COMPRESSION_LZ4)}];
    v7 = v6;
    v6 = v10;
  }

  else
  {
    v7 = 0;
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = vdupq_n_s64(&stru_1EFF36230);
  v4 = vbslq_s8(vceqzq_s64(*&self->_UUIDString), v3, *&self->_UUIDString);
  v19 = v3;
  v5 = vbslq_s8(vceqzq_s64(*&self->_url), v3, *&self->_url);
  v20[0] = @"SafariStateDocumentUUID";
  v20[1] = @"SafariStateDocumentTitle";
  v20[2] = @"SafariStateDocumentURL";
  v20[3] = @"SafariStateDocumentUserVisibleURL";
  v21[0] = v4;
  v21[1] = v5;
  v20[4] = @"SafariStateDocumentOrderIndex";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_orderIndex];
  v20[5] = @"SafariStateDocumentLastViewedTime";
  v18 = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastViewedTime];
  v20[6] = @"SafariStateDocumentBookmark";
  v17 = v23;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_readingListBookmarkID];
  v24 = v6;
  v20[7] = @"SafariStateDocumentWasOpenedFromLink";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasOpenedFromLink];
  v25 = v7;
  v20[8] = @"SafariStateDocumentShouldRestoreReader";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_showingReader];
  v26 = v8;
  v20[9] = @"SafariStateDocumentReaderViewTopScrollOffset";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_readerViewTopScrollOffset];
  v27 = v9;
  v20[10] = @"SafariStateDocumentUsesPrivateBrowsingStyle";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_privateBrowsing];
  v28 = v10;
  v20[11] = @"SafariStateDocumentDisplayingStandaloneImage";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_displayingStandaloneImage];
  v29 = v11;
  v20[12] = @"SafariStateDocumentSessionState";
  sessionStateData = self->_sessionStateData;
  data = sessionStateData;
  if (!sessionStateData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  owningBrowserWindowUUIDString = self->_owningBrowserWindowUUIDString;
  if (!owningBrowserWindowUUIDString)
  {
    owningBrowserWindowUUIDString = &stru_1EFF36230;
  }

  v30 = data;
  v31 = owningBrowserWindowUUIDString;
  v20[13] = @"SafariStateDocumentOwningBrowserWindowUUID";
  v20[14] = @"SafariStateDocumentTabGroupUUID";
  v20[15] = @"SafariStateDocumentProfileUUID";
  v32 = vbslq_s8(vceqzq_s64(*&self->_tabGroupUUID), v19, *&self->_tabGroupUUID);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:16];
  if (!sessionStateData)
  {
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SFTabStateData allocWithZone:zone];
  dictionaryRepresentation = [(SFTabStateData *)self dictionaryRepresentation];
  v6 = [(SFTabStateData *)v4 initWithDictionaryRepresentation:dictionaryRepresentation];

  return v6;
}

@end