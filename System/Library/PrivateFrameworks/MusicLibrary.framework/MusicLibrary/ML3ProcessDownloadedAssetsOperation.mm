@interface ML3ProcessDownloadedAssetsOperation
- (BOOL)_execute:(id *)_execute;
- (BOOL)_processArtworkIdentifier:(id)identifier artworkToken:(id)token artworkType:(int64_t)type mediaType:(unsigned int)mediaType sourceType:(int64_t)sourceType;
- (BOOL)_processContainerAsset:(id)asset forSource:(int)source withError:(id *)error;
- (BOOL)_processGeniusPlist:(id)plist geniusIDString:(id)string geniusChecksum:(int64_t)checksum;
- (BOOL)_processTrackAsset:(id)asset forSource:(int)source withError:(id *)error;
- (ML3ProcessDownloadedAssetsOperation)initWithLibrary:(id)library writer:(id)writer;
- (double)_videoSnapshotTimeForMediaType:(unsigned int)type;
- (int64_t)_artworkSourceFromTrackSource:(int)source;
@end

@implementation ML3ProcessDownloadedAssetsOperation

- (int64_t)_artworkSourceFromTrackSource:(int)source
{
  if ((source - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_22D5C9528[source - 1];
  }
}

- (BOOL)_processGeniusPlist:(id)plist geniusIDString:(id)string geniusChecksum:(int64_t)checksum
{
  v52 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  stringCopy = string;
  v10 = [plistCopy objectForKey:@"genius_metadata"];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v10;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Unhandled genius metadata format: %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  v12 = [plistCopy objectForKey:@"genius_similarities"];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v13;
      goto LABEL_13;
    }

    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v13;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Unhandled genius similarities format: %{public}@", buf, 0xCu);
    }
  }

  v43 = 0;
LABEL_13:
  transaction = [(ML3DatabaseOperation *)self transaction];
  connection = [transaction connection];
  longLongValue = [stringCopy longLongValue];

  v18 = 0x277CBE000uLL;
  if (v10)
  {
    v41 = plistCopy;
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
    v49[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:checksum];
    v49[1] = v20;
    v49[2] = v10;
    [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
    v22 = v21 = checksum;
    v46 = 0;
    v23 = [connection executeUpdate:@"INSERT OR REPLACE INTO genius_metadata (genius_id withParameters:checksum error:{data) VALUES (?, ?, ?);", v22, &v46}];
    v24 = v46;

    if (v23)
    {
      v40 = transaction;
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
      v48[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
      v48[1] = v26;
      v18 = 0x277CBE000uLL;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v45 = v24;
      v28 = [connection executeUpdate:@"UPDATE item_extra SET pending_genius_checksum = ? WHERE genius_id = ?;" withParameters:v27 error:&v45];
      v29 = v45;

      if (v28)
      {
        v30 = 1;
        transaction = v40;
        plistCopy = v41;
        goto LABEL_25;
      }

      v31 = os_log_create("com.apple.amp.medialibrary", "Default");
      plistCopy = v41;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v29;
        _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to update genius checksum. err=%{public}@", buf, 0xCu);
      }

      v24 = v29;
      transaction = v40;
    }

    else
    {
      v18 = 0x277CBE000;
      v31 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v24;
        _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to update genius metadata. err=%{public}@", buf, 0xCu);
      }

      plistCopy = v41;
    }

    v30 = 0;
    v29 = v24;
  }

  else
  {
    v29 = 0;
    v30 = 1;
  }

LABEL_25:
  if (v43)
  {
    v42 = v10;
    v32 = transaction;
    v33 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
    v47[0] = v33;
    v47[1] = v43;
    v34 = [*(v18 + 2656) arrayWithObjects:v47 count:2];
    v44 = v29;
    v35 = connection;
    v36 = [connection executeUpdate:@"INSERT OR REPLACE INTO genius_similarities (genius_id withParameters:data) VALUES (? error:{?);", v34, &v44}];
    v37 = v44;

    if (v36)
    {
      v30 = 1;
      transaction = v32;
    }

    else
    {
      v38 = os_log_create("com.apple.amp.medialibrary", "Default");
      transaction = v32;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v37;
        _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to update genius similarities. err=%{public}@", buf, 0xCu);
      }

      v30 = 0;
    }

    v10 = v42;
  }

  else
  {
    v37 = v29;
    v35 = connection;
  }

  return v30;
}

- (double)_videoSnapshotTimeForMediaType:(unsigned int)type
{
  v3 = type == 0x2000 || type == 512;
  result = 105.0;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_processArtworkIdentifier:(id)identifier artworkToken:(id)token artworkType:(int64_t)type mediaType:(unsigned int)mediaType sourceType:(int64_t)sourceType
{
  v8 = *&mediaType;
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  v14 = [ML3MusicLibrary artworkRelativePathFromToken:tokenCopy];
  library = [(ML3DatabaseOperation *)self library];
  v16 = [library hasOriginalArtworkForRelativePath:v14];

  if (!v16)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v31 = 0;
    v21 = [defaultManager attributesOfItemAtPath:identifierCopy error:&v31];
    library3 = v31;

    if (v21)
    {
      if ([v21 fileSize] < 0x1900001)
      {
        v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:identifierCopy isDirectory:0];
        library2 = [(ML3DatabaseOperation *)self library];
        v28 = [library2 importOriginalArtworkFromFileURL:v22 withArtworkToken:tokenCopy artworkType:type sourceType:sourceType mediaType:v8];

        if (v28)
        {
          v19 = 1;
LABEL_18:

          goto LABEL_19;
        }

        v29 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = tokenCopy;
          _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Failed to insert new artwork for token: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v22 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          fileSize = [v21 fileSize];
          *buf = 134217984;
          v33 = fileSize;
          v24 = "[ML3ProcessDownloadedAssetsOperation] Artwork file too big: %llu bytes. Discarding.";
          v25 = v22;
          v26 = 12;
LABEL_11:
          _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
        }
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v33 = identifierCopy;
        v34 = 2114;
        v35 = library3;
        v24 = "[ML3ProcessDownloadedAssetsOperation] Could not read file attributes for %{public}@: %{public}@";
        v25 = v22;
        v26 = 22;
        goto LABEL_11;
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  v17 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = tokenCopy;
    _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Artwork already exists on disk, checking database consistency (artworkToken: %{public}@)", buf, 0xCu);
  }

  library3 = [(ML3DatabaseOperation *)self library];
  v19 = [library3 importExistingOriginalArtworkWithArtworkToken:tokenCopy artworkType:type sourceType:sourceType mediaType:v8];
LABEL_19:

  return v19;
}

- (BOOL)_processContainerAsset:(id)asset forSource:(int)source withError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey"];
  longLongValue = [v7 longLongValue];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey"];

  if (v10 && [defaultManager fileExistsAtPath:v10])
  {
    library = [(ML3DatabaseOperation *)self library];
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:longLongValue];
    v13 = [(ML3Entity *)ML3Container anyInLibrary:library predicate:v12];

    if (v13)
    {
      v14 = [[ML3ArtworkTokenSet alloc] initWithEntity:v13 artworkType:5];
      v15 = [(ML3ArtworkTokenSet *)v14 artworkTokenForSource:300];
      if (v15)
      {
        [(ML3ProcessDownloadedAssetsOperation *)self _processArtworkIdentifier:v10 artworkToken:v15 artworkType:5 mediaType:8 sourceType:300];
      }

      else
      {
        v16 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] No artwork token - skiping", &v18, 2u);
        }
      }
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = longLongValue;
        _os_log_impl(&dword_22D2FA000, &v14->super, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to find container with pid %lld - skipping", &v18, 0xCu);
      }
    }
  }

  return 1;
}

- (BOOL)_processTrackAsset:(id)asset forSource:(int)source withError:(id *)error
{
  v84[6] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey"];
  longLongValue = [v7 longLongValue];

  v9 = [ML3Track alloc];
  selfCopy = self;
  library = [(ML3DatabaseOperation *)self library];
  v66 = longLongValue;
  v11 = [(ML3Entity *)v9 initWithPersistentID:longLongValue inLibrary:library];

  v84[0] = @"chapter.chapter_data";
  v84[1] = @"media_type";
  v84[2] = @"item_extra.genius_id";
  v84[3] = @"item_extra.pending_genius_checksum";
  v84[4] = @"lyrics.pending_checksum";
  v84[5] = @"lyrics.checksum";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
  v13 = [(ML3Entity *)v11 getValuesForProperties:v12];

  v14 = [v13 valueForKey:@"lyrics.pending_checksum"];
  v15 = v14;
  v16 = &unk_2840C8CF0;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v13 valueForKey:@"lyrics.checksum"];
  longLongValue2 = [v18 longLongValue];

  longLongValue3 = [v17 longLongValue];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  lyrics = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetLyricsPathKey"];
  v71 = array2;
  v68 = lyrics;
  if (lyrics)
  {
    if ([defaultManager fileExistsAtPath:lyrics])
    {
      v77 = 0;
      v24 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:lyrics encoding:4 error:&v77];
      v25 = v77;
      v26 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v79 = v66;
        v80 = 2114;
        v81 = v68;
        v82 = 2114;
        v83 = v25;
        _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] extracted lyrics for track: %lld from %{public}@ with error %{public}@", buf, 0x20u);
      }

      array2 = v71;
      lyrics = v24;
    }

    else
    {
      lyrics = 0;
    }
  }

  v27 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetTrackPathKey"];
  v69 = v17;
  if (v27 && [defaultManager fileExistsAtPath:v27])
  {
    v28 = v13;
    v29 = lyrics;
    v30 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetProtectionTypeKey"];
    integerValue = [v30 integerValue];

    [(ML3Track *)v11 populateLocationPropertiesWithPath:v27 protectionType:integerValue];
    if (longLongValue2 == longLongValue3)
    {
      array2 = v71;
      lyrics = v29;
      v13 = v28;
      v17 = v69;
    }

    else
    {
      array2 = v71;
      lyrics = v29;
      v13 = v28;
      v17 = v69;
      if (!lyrics)
      {
        v32 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v79 = v66;
          _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] extracting new lyrics for track: %lld from the asset", buf, 0xCu);
        }

        v33 = MEMORY[0x277CE6650];
        v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27 isDirectory:0];
        v35 = [v33 assetWithURL:v34];

        if (v35)
        {
          lyrics = [v35 lyrics];
        }

        else
        {
          lyrics = 0;
        }

        array2 = v71;
      }
    }
  }

  if (lyrics)
  {
    [array addObject:v17];
    [array addObject:lyrics];
    [array2 addObject:@"lyrics.checksum"];
    [array2 addObject:@"lyrics.lyrics"];
  }

  v36 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadSourceContainerIDKey"];
  if (v36)
  {
    [array addObject:v36];
    [array2 addObject:@"download_source_container_pid"];
  }

  if ([array count])
  {
    [(ML3Entity *)v11 setValues:array forProperties:array2];
    v37 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v79 = array;
      v80 = 2048;
      v81 = v66;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] updated values=%{public}@ for track:%lld", buf, 0x16u);
    }

    v38 = selfCopy;
  }

  else
  {
    v37 = os_log_create("com.apple.amp.medialibrary", "Default");
    v38 = selfCopy;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v79 = v66;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] track: %lld has no updated lyrics or enclosing container pid", buf, 0xCu);
    }
  }

  v39 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey"];
  v67 = lyrics;
  if (v39 && [defaultManager fileExistsAtPath:v39])
  {
    v40 = [v13 objectForKey:@"media_type"];
    unsignedIntValue = [v40 unsignedIntValue];

    v41 = [v13 objectForKey:@"chapter.chapter_data"];
    v64 = v11;
    v42 = [[ML3ArtworkTokenSet alloc] initWithEntity:v11 artworkType:1];
    v43 = [(ML3ProcessDownloadedAssetsOperation *)v38 _artworkSourceFromTrackSource:source];
    v63 = v42;
    v44 = [(ML3ArtworkTokenSet *)v42 artworkTokenForSource:v43];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __78__ML3ProcessDownloadedAssetsOperation__processTrackAsset_forSource_withError___block_invoke;
      v73[3] = &unk_2787604A0;
      v75 = v66;
      v73[4] = selfCopy;
      v74 = v39;
      v76 = unsignedIntValue;
      v38 = selfCopy;
      [MLITChapterTOC enumerateChapterTimesInFlattenedChapterData:v41 usingBlock:v73];
    }

    v59 = v41;
    if (v44)
    {
      v45 = unsignedIntValue;
      [(ML3ProcessDownloadedAssetsOperation *)v38 _processArtworkIdentifier:v39 artworkToken:v44 artworkType:1 mediaType:unsignedIntValue sourceType:v43, v59];
    }

    else
    {
      v46 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v46, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] No artwork token - skiping", buf, 2u);
      }

      v45 = unsignedIntValue;
    }

    [(ML3ProcessDownloadedAssetsOperation *)v38 _videoSnapshotTimeForMediaType:v45, v59];
    if (v47 >= 0.0)
    {
      v48 = v47;
      if ([(ML3Track *)v64 needsVideoSnapshot])
      {
        [(ML3Track *)v64 createVideoSnapshotAtTime:v48];
      }
    }

    v11 = v64;
  }

  v49 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetGeniusDataPathKey"];
  if (v49 && [defaultManager fileExistsAtPath:v49])
  {
    v65 = v11;
    v50 = [v13 objectForKey:@"item_extra.pending_genius_checksum"];
    longLongValue4 = [v50 longLongValue];

    v52 = [v13 objectForKey:@"item_extra.genius_id"];
    if (v52)
    {
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v49];
      if (v53)
      {
        v54 = v53;
        v55 = [(ML3ProcessDownloadedAssetsOperation *)selfCopy _processGeniusPlist:v53 geniusIDString:v52 geniusChecksum:longLongValue4];
LABEL_55:

        v11 = v65;
        goto LABEL_56;
      }

      v56 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v79 = v66;
        _os_log_impl(&dword_22D2FA000, v56, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to parse genius data for track %lld - skiping", buf, 0xCu);
      }

      v54 = 0;
    }

    else
    {
      v54 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v79 = v66;
        _os_log_impl(&dword_22D2FA000, v54, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] No genius id in data for track %lld - skiping", buf, 0xCu);
      }
    }

    v55 = 1;
    goto LABEL_55;
  }

  v55 = 1;
LABEL_56:
  v57 = [assetCopy objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetTrackPropertiesKey"];
  if (_NSIsNSDictionary() && [v57 count])
  {
    [(ML3Entity *)v11 setValuesForPropertiesWithDictionary:v57];
  }

  return v55;
}

void __78__ML3ProcessDownloadedAssetsOperation__processTrackAsset_forSource_withError___block_invoke(uint64_t a1, double a2)
{
  v6 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:*(a1 + 48) retrievalTime:?];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%.f", *(a1 + 40), a2 * 1000.0];
  [v4 _processArtworkIdentifier:v5 artworkToken:v6 artworkType:3 mediaType:*(a1 + 56) sourceType:300];
}

- (BOOL)_execute:(id *)_execute
{
  v42 = *MEMORY[0x277D85DE8];
  attributes = [(ML3DatabaseOperation *)self attributes];
  v5 = [attributes objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  intValue = [v5 intValue];

  selfCopy = self;
  attributes2 = [(ML3DatabaseOperation *)self attributes];
  v7 = [attributes2 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetsListKey"];

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = intValue;
    *&v41[4] = 2048;
    *&v41[6] = [v7 count];
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Beginning process assets operation with source %d (%lu downloads)", buf, 0x12u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v11)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v36;
  do
  {
    v16 = 0;
    do
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v35 + 1) + 8 * v16);
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v41 = v17;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Processing asset download: %{public}@", buf, 0xCu);
      }

      v19 = [v17 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetEntityTypeKey"];
      integerValue = [v19 integerValue];

      if (integerValue == 1)
      {
        v33 = v13;
        v14 = [(ML3ProcessDownloadedAssetsOperation *)selfCopy _processContainerAsset:v17 forSource:intValue withError:&v33];
        v21 = v33;
        goto LABEL_14;
      }

      if (!integerValue)
      {
        v34 = v13;
        v14 = [(ML3ProcessDownloadedAssetsOperation *)selfCopy _processTrackAsset:v17 forSource:intValue withError:&v34];
        v21 = v34;
LABEL_14:
        v22 = v13;
        v13 = v21;
        goto LABEL_15;
      }

      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v41 = v17;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] got unknown entity type. attrs=%{public}@", buf, 0xCu);
      }

LABEL_15:

      ++v16;
    }

    while (v12 != v16);
    v23 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    v12 = v23;
  }

  while (v23);
LABEL_22:

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v25 = v24;
  v26 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = v14;
    *&v41[4] = 2048;
    *&v41[6] = v25 - v10;
    _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Process assets operation success=%d in %.3f seconds", buf, 0x12u);
  }

  if (_execute)
  {
    v27 = v13;
    *_execute = v13;
  }

  return v14;
}

- (ML3ProcessDownloadedAssetsOperation)initWithLibrary:(id)library writer:(id)writer
{
  v7.receiver = self;
  v7.super_class = ML3ProcessDownloadedAssetsOperation;
  v4 = [(ML3DatabaseOperation *)&v7 initWithLibrary:library writer:writer];
  if (v4)
  {
    if (MSVDeviceIsHomePod())
    {
      v5 = 17;
    }

    else
    {
      v5 = -1;
    }

    [(ML3ProcessDownloadedAssetsOperation *)v4 setQualityOfService:v5];
  }

  return v4;
}

@end