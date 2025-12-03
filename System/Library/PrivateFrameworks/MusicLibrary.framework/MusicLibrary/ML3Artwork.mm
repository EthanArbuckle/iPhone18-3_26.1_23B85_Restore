@interface ML3Artwork
- (BOOL)isEqual:(id)equal;
- (ML3Artwork)initWithToken:(id)token artworkType:(int64_t)type variantType:(int64_t)variantType musicLibrary:(id)library;
- (ML3Artwork)initWithToken:(id)token relativePath:(id)path artworkType:(int64_t)type variantType:(int64_t)variantType musicLibrary:(id)library;
- (NSDictionary)interestDictionary;
- (id)_interestDataFromInterestDictionary:(id)dictionary;
- (id)_interestDictionaryFromInterestData:(id)data;
- (id)fileURLForEffect:(id)effect;
- (id)fileURLForSize:(CGSize)size;
- (int64_t)artworkType;
- (int64_t)sourceType;
- (void)_onSerialQueue_faultInProperties;
- (void)setInterestDictionary:(id)dictionary;
@end

@implementation ML3Artwork

- (id)_interestDataFromInterestDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  if (!dictionary)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v14];
  v5 = v14;
  v6 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      artworkToken = [(ML3Artwork *)self artworkToken];
      *buf = 138477827;
      v16 = artworkToken;
      v9 = "Archived interest data for artwork_token %{private}@.";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    artworkToken = [(ML3Artwork *)self artworkToken];
    *buf = 138478083;
    v16 = artworkToken;
    v17 = 2114;
    v18 = v5;
    v9 = "Failed to archive interest data for artwork_token %{private}@. Error=%{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_8;
  }

LABEL_10:

  return v4;
}

- (id)_interestDictionaryFromInterestData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v13];
  v5 = v13;
  v6 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      artworkToken = [(ML3Artwork *)self artworkToken];
      *buf = 138478083;
      v15 = artworkToken;
      v16 = 2113;
      v17 = v4;
      v9 = "Unarchived interest data for artwork_token %{private}@ with resulting dict: %{private}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v10, v11, v9, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    artworkToken = [(ML3Artwork *)self artworkToken];
    *buf = 138478083;
    v15 = artworkToken;
    v16 = 2114;
    v17 = v5;
    v9 = "Failed to unarchive data for artwork_token %{private}@. err=%{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

LABEL_10:

  return v4;
}

- (void)_onSerialQueue_faultInProperties
{
  musicLibrary = [(ML3Artwork *)self musicLibrary];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__ML3Artwork__onSerialQueue_faultInProperties__block_invoke;
  v4[3] = &unk_278766140;
  v4[4] = self;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v4];
}

void __46__ML3Artwork__onSerialQueue_faultInProperties__block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 artworkToken];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1 + 32) + 56)];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v4 executeQuery:@"SELECT artwork_source_type withParameters:{artwork_type, interest_data FROM artwork WHERE artwork_token = ? AND artwork_variant_type = ?", v7}];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ML3Artwork__onSerialQueue_faultInProperties__block_invoke_2;
  v9[3] = &unk_278766118;
  v9[4] = *(a1 + 32);
  [v8 enumerateRowsWithBlock:v9];
}

void __46__ML3Artwork__onSerialQueue_faultInProperties__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  *(*(a1 + 32) + 24) = [v6 intForColumnIndex:0];
  *(*(a1 + 32) + 16) = [v6 intForColumnIndex:1];
  v10 = [v6 dataForColumnIndex:2];

  v7 = [*(a1 + 32) _interestDictionaryFromInterestData:v10];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  *a4 = 1;
}

- (void)setInterestDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ML3Artwork_setInterestDictionary___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_sync(serialQueue, v7);
}

void __36__ML3Artwork_setInterestDictionary___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong((*(a1 + 32) + 32), v5);
    if (!v4)
    {
    }

    v6 = [*(a1 + 32) artworkToken];
    v7 = [*(a1 + 32) _interestDataFromInterestDictionary:*(a1 + 40)];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    v10 = v9;

    v11 = os_log_create("com.apple.amp.medialibrary", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CBEB68] null];
      *buf = 138543618;
      v26 = v6;
      v27 = 1024;
      v28 = v10 != v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Setting intereset dict with artwork token: %{public}@, with nonnull data: %{BOOL}u", buf, 0x12u);
    }

    v23[0] = @"MLDatabaseOperationAttributeArtworkTokenKey";
    v23[1] = @"MLDatabaseOperationAttributeArtworkInterestDataKey";
    v24[0] = v6;
    v24[1] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v21[0] = @"MLDatabaseOperationOptionDatabasePathKey";
    v14 = [*(a1 + 32) musicLibrary];
    v15 = [v14 databasePath];
    v21[1] = @"MLDatabaseOperationOptionUseLimitedQueue";
    v22[0] = v15;
    v22[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v17 = +[MLMediaLibraryService sharedMediaLibraryService];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __36__ML3Artwork_setInterestDictionary___block_invoke_16;
    v19[3] = &unk_2787660C8;
    v20 = v6;
    v18 = v6;
    [v17 performDatabaseOperation:5 withAttributes:v13 options:v16 completionHandler:v19];
  }
}

void __36__ML3Artwork_setInterestDictionary___block_invoke_16(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "Artwork");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138543362;
      v15 = v8;
      v9 = "Saved interest data to database for artwork_token %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = v5;
    v9 = "Failed to save interest data to database for artwork_token %{public}@ with error: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (NSDictionary)interestDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__29153;
  v10 = __Block_byref_object_dispose__29154;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ML3Artwork_interestDictionary__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__ML3Artwork_interestDictionary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    [v2 _onSerialQueue_faultInProperties];
    v3 = *(*(a1 + 32) + 32);
  }

  v5 = [MEMORY[0x277CBEB68] null];
  if (v3 == v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 32) copy];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3 != v5)
  {
  }
}

- (int64_t)sourceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ML3Artwork_sourceType__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__24__ML3Artwork_sourceType__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[3];
  if (!v3)
  {
    result = [result _onSerialQueue_faultInProperties];
    v3 = *(*(a1 + 32) + 24);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)artworkType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ML3Artwork_artworkType__block_invoke;
  v5[3] = &unk_278766080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__25__ML3Artwork_artworkType__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[2];
  if (!v3)
  {
    result = [result _onSerialQueue_faultInProperties];
    v3 = *(*(a1 + 32) + 16);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)fileURLForEffect:(id)effect
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  effectCopy = effect;
  musicLibrary = [(ML3Artwork *)self musicLibrary];
  v7 = [musicLibrary artworkCacheDirectoryForEffect:effectCopy];

  v13[0] = v7;
  relativePath = [(ML3Artwork *)self relativePath];
  v13[1] = relativePath;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v4 pathWithComponents:v9];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:0];

  return v11;
}

- (id)fileURLForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16[2] = *MEMORY[0x277D85DE8];
  originalFileURL = [(ML3Artwork *)self originalFileURL];
  if (width != 1.79769313e308 || height != 1.79769313e308)
  {
    v8 = MEMORY[0x277CCACA8];
    musicLibrary = [(ML3Artwork *)self musicLibrary];
    v10 = [musicLibrary artworkCacheDirectoryForSize:{width, height}];
    v16[0] = v10;
    relativePath = [(ML3Artwork *)self relativePath];
    v16[1] = relativePath;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = [v8 pathWithComponents:v12];

    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:0];

    originalFileURL = v14;
  }

  return originalFileURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      serialQueue = self->_serialQueue;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __22__ML3Artwork_isEqual___block_invoke;
      v8[3] = &unk_278766058;
      v10 = &v16;
      v8[4] = self;
      v9 = equalCopy;
      v11 = &v12;
      dispatch_sync(serialQueue, v8);
      v6 = 0;
      if (*(v17 + 24) == 1)
      {
        v6 = *(v13 + 24);
      }

      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t __22__ML3Artwork_isEqual___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) isEqualToString:*(a1[5] + 48)];
  *(*(a1[6] + 8) + 24) = result;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 16) == *(a1[5] + 16);
  return result;
}

- (ML3Artwork)initWithToken:(id)token relativePath:(id)path artworkType:(int64_t)type variantType:(int64_t)variantType musicLibrary:(id)library
{
  v32[2] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  pathCopy = path;
  libraryCopy = library;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Artwork.m" lineNumber:48 description:@"Relative path cannot be nil."];
  }

  v31.receiver = self;
  v31.super_class = ML3Artwork;
  v17 = [(ML3Artwork *)&v31 init];
  if (v17)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.MusicLibrary.%@", objc_opt_class()];
    v19 = dispatch_queue_create([v18 UTF8String], 0);
    serialQueue = v17->_serialQueue;
    v17->_serialQueue = v19;

    objc_storeStrong(&v17->_artworkToken, token);
    objc_storeStrong(&v17->_relativePath, path);
    v17->_artworkType = type;
    v17->_variantType = variantType;
    v21 = MEMORY[0x277CBEBC0];
    v22 = MEMORY[0x277CCACA8];
    originalArtworkDirectory = [libraryCopy originalArtworkDirectory];
    relativePath = v17->_relativePath;
    v32[0] = originalArtworkDirectory;
    v32[1] = relativePath;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v26 = [v22 pathWithComponents:v25];
    v27 = [v21 fileURLWithPath:v26 isDirectory:0];
    originalFileURL = v17->_originalFileURL;
    v17->_originalFileURL = v27;

    objc_storeStrong(&v17->_musicLibrary, library);
  }

  return v17;
}

- (ML3Artwork)initWithToken:(id)token artworkType:(int64_t)type variantType:(int64_t)variantType musicLibrary:(id)library
{
  libraryCopy = library;
  tokenCopy = token;
  v12 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy variantType:variantType];
  v13 = [(ML3Artwork *)self initWithToken:tokenCopy relativePath:v12 artworkType:type variantType:variantType musicLibrary:libraryCopy];

  return v13;
}

@end