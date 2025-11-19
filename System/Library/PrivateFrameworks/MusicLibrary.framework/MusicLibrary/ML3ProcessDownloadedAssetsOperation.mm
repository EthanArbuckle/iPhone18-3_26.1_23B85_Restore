@interface ML3ProcessDownloadedAssetsOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_processArtworkIdentifier:(id)a3 artworkToken:(id)a4 artworkType:(int64_t)a5 mediaType:(unsigned int)a6 sourceType:(int64_t)a7;
- (BOOL)_processContainerAsset:(id)a3 forSource:(int)a4 withError:(id *)a5;
- (BOOL)_processGeniusPlist:(id)a3 geniusIDString:(id)a4 geniusChecksum:(int64_t)a5;
- (BOOL)_processTrackAsset:(id)a3 forSource:(int)a4 withError:(id *)a5;
- (ML3ProcessDownloadedAssetsOperation)initWithLibrary:(id)a3 writer:(id)a4;
- (double)_videoSnapshotTimeForMediaType:(unsigned int)a3;
- (int64_t)_artworkSourceFromTrackSource:(int)a3;
@end

@implementation ML3ProcessDownloadedAssetsOperation

- (int64_t)_artworkSourceFromTrackSource:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_22D5C9528[a3 - 1];
  }
}

- (BOOL)_processGeniusPlist:(id)a3 geniusIDString:(id)a4 geniusChecksum:(int64_t)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKey:@"genius_metadata"];
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

  v12 = [v8 objectForKey:@"genius_similarities"];
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
  v15 = [(ML3DatabaseOperation *)self transaction];
  v16 = [v15 connection];
  v17 = [v9 longLongValue];

  v18 = 0x277CBE000uLL;
  if (v10)
  {
    v41 = v8;
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
    v49[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v49[1] = v20;
    v49[2] = v10;
    [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
    v22 = v21 = a5;
    v46 = 0;
    v23 = [v16 executeUpdate:@"INSERT OR REPLACE INTO genius_metadata (genius_id withParameters:checksum error:{data) VALUES (?, ?, ?);", v22, &v46}];
    v24 = v46;

    if (v23)
    {
      v40 = v15;
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
      v48[0] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
      v48[1] = v26;
      v18 = 0x277CBE000uLL;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v45 = v24;
      v28 = [v16 executeUpdate:@"UPDATE item_extra SET pending_genius_checksum = ? WHERE genius_id = ?;" withParameters:v27 error:&v45];
      v29 = v45;

      if (v28)
      {
        v30 = 1;
        v15 = v40;
        v8 = v41;
        goto LABEL_25;
      }

      v31 = os_log_create("com.apple.amp.medialibrary", "Default");
      v8 = v41;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v29;
        _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to update genius checksum. err=%{public}@", buf, 0xCu);
      }

      v24 = v29;
      v15 = v40;
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

      v8 = v41;
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
    v32 = v15;
    v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
    v47[0] = v33;
    v47[1] = v43;
    v34 = [*(v18 + 2656) arrayWithObjects:v47 count:2];
    v44 = v29;
    v35 = v16;
    v36 = [v16 executeUpdate:@"INSERT OR REPLACE INTO genius_similarities (genius_id withParameters:data) VALUES (? error:{?);", v34, &v44}];
    v37 = v44;

    if (v36)
    {
      v30 = 1;
      v15 = v32;
    }

    else
    {
      v38 = os_log_create("com.apple.amp.medialibrary", "Default");
      v15 = v32;
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
    v35 = v16;
  }

  return v30;
}

- (double)_videoSnapshotTimeForMediaType:(unsigned int)a3
{
  v3 = a3 == 0x2000 || a3 == 512;
  result = 105.0;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_processArtworkIdentifier:(id)a3 artworkToken:(id)a4 artworkType:(int64_t)a5 mediaType:(unsigned int)a6 sourceType:(int64_t)a7
{
  v8 = *&a6;
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = [ML3MusicLibrary artworkRelativePathFromToken:v13];
  v15 = [(ML3DatabaseOperation *)self library];
  v16 = [v15 hasOriginalArtworkForRelativePath:v14];

  if (!v16)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = 0;
    v21 = [v20 attributesOfItemAtPath:v12 error:&v31];
    v18 = v31;

    if (v21)
    {
      if ([v21 fileSize] < 0x1900001)
      {
        v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:0];
        v27 = [(ML3DatabaseOperation *)self library];
        v28 = [v27 importOriginalArtworkFromFileURL:v22 withArtworkToken:v13 artworkType:a5 sourceType:a7 mediaType:v8];

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
          v33 = v13;
          _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Failed to insert new artwork for token: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v22 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v21 fileSize];
          *buf = 134217984;
          v33 = v23;
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
        v33 = v12;
        v34 = 2114;
        v35 = v18;
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
    v33 = v13;
    _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] Artwork already exists on disk, checking database consistency (artworkToken: %{public}@)", buf, 0xCu);
  }

  v18 = [(ML3DatabaseOperation *)self library];
  v19 = [v18 importExistingOriginalArtworkWithArtworkToken:v13 artworkType:a5 sourceType:a7 mediaType:v8];
LABEL_19:

  return v19;
}

- (BOOL)_processContainerAsset:(id)a3 forSource:(int)a4 withError:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey"];
  v8 = [v7 longLongValue];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey"];

  if (v10 && [v9 fileExistsAtPath:v10])
  {
    v11 = [(ML3DatabaseOperation *)self library];
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:v8];
    v13 = [(ML3Entity *)ML3Container anyInLibrary:v11 predicate:v12];

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
        v19 = v8;
        _os_log_impl(&dword_22D2FA000, &v14->super, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] failed to find container with pid %lld - skipping", &v18, 0xCu);
      }
    }
  }

  return 1;
}

- (BOOL)_processTrackAsset:(id)a3 forSource:(int)a4 withError:(id *)a5
{
  v84[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v72 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetPersistentIdKey"];
  v8 = [v7 longLongValue];

  v9 = [ML3Track alloc];
  v70 = self;
  v10 = [(ML3DatabaseOperation *)self library];
  v66 = v8;
  v11 = [(ML3Entity *)v9 initWithPersistentID:v8 inLibrary:v10];

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
  v19 = [v18 longLongValue];

  v20 = [v17 longLongValue];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetLyricsPathKey"];
  v71 = v22;
  v68 = v23;
  if (v23)
  {
    if ([v72 fileExistsAtPath:v23])
    {
      v77 = 0;
      v24 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v23 encoding:4 error:&v77];
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

      v22 = v71;
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }
  }

  v27 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetTrackPathKey"];
  v69 = v17;
  if (v27 && [v72 fileExistsAtPath:v27])
  {
    v28 = v13;
    v29 = v23;
    v30 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetProtectionTypeKey"];
    v31 = [v30 integerValue];

    [(ML3Track *)v11 populateLocationPropertiesWithPath:v27 protectionType:v31];
    if (v19 == v20)
    {
      v22 = v71;
      v23 = v29;
      v13 = v28;
      v17 = v69;
    }

    else
    {
      v22 = v71;
      v23 = v29;
      v13 = v28;
      v17 = v69;
      if (!v23)
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
          v23 = [v35 lyrics];
        }

        else
        {
          v23 = 0;
        }

        v22 = v71;
      }
    }
  }

  if (v23)
  {
    [v21 addObject:v17];
    [v21 addObject:v23];
    [v22 addObject:@"lyrics.checksum"];
    [v22 addObject:@"lyrics.lyrics"];
  }

  v36 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadSourceContainerIDKey"];
  if (v36)
  {
    [v21 addObject:v36];
    [v22 addObject:@"download_source_container_pid"];
  }

  if ([v21 count])
  {
    [(ML3Entity *)v11 setValues:v21 forProperties:v22];
    v37 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v79 = v21;
      v80 = 2048;
      v81 = v66;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] updated values=%{public}@ for track:%lld", buf, 0x16u);
    }

    v38 = v70;
  }

  else
  {
    v37 = os_log_create("com.apple.amp.medialibrary", "Default");
    v38 = v70;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v79 = v66;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] track: %lld has no updated lyrics or enclosing container pid", buf, 0xCu);
    }
  }

  v39 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetArtworkPathKey"];
  v67 = v23;
  if (v39 && [v72 fileExistsAtPath:v39])
  {
    v40 = [v13 objectForKey:@"media_type"];
    v61 = [v40 unsignedIntValue];

    v41 = [v13 objectForKey:@"chapter.chapter_data"];
    v64 = v11;
    v42 = [[ML3ArtworkTokenSet alloc] initWithEntity:v11 artworkType:1];
    v43 = [(ML3ProcessDownloadedAssetsOperation *)v38 _artworkSourceFromTrackSource:a4];
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
      v73[4] = v70;
      v74 = v39;
      v76 = v61;
      v38 = v70;
      [MLITChapterTOC enumerateChapterTimesInFlattenedChapterData:v41 usingBlock:v73];
    }

    v59 = v41;
    if (v44)
    {
      v45 = v61;
      [(ML3ProcessDownloadedAssetsOperation *)v38 _processArtworkIdentifier:v39 artworkToken:v44 artworkType:1 mediaType:v61 sourceType:v43, v59];
    }

    else
    {
      v46 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v46, OS_LOG_TYPE_DEFAULT, "[ML3ProcessDownloadedAssetsOperation] No artwork token - skiping", buf, 2u);
      }

      v45 = v61;
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

  v49 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetGeniusDataPathKey"];
  if (v49 && [v72 fileExistsAtPath:v49])
  {
    v65 = v11;
    v50 = [v13 objectForKey:@"item_extra.pending_genius_checksum"];
    v51 = [v50 longLongValue];

    v52 = [v13 objectForKey:@"item_extra.genius_id"];
    if (v52)
    {
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v49];
      if (v53)
      {
        v54 = v53;
        v55 = [(ML3ProcessDownloadedAssetsOperation *)v70 _processGeniusPlist:v53 geniusIDString:v52 geniusChecksum:v51];
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
  v57 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetTrackPropertiesKey"];
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

- (BOOL)_execute:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [(ML3DatabaseOperation *)self attributes];
  v5 = [v4 objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v32 = [v5 intValue];

  v31 = self;
  v6 = [(ML3DatabaseOperation *)self attributes];
  v7 = [v6 objectForKey:@"MLDatabaseOperationAttributeDownloadedAssetsListKey"];

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = v32;
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
      v20 = [v19 integerValue];

      if (v20 == 1)
      {
        v33 = v13;
        v14 = [(ML3ProcessDownloadedAssetsOperation *)v31 _processContainerAsset:v17 forSource:v32 withError:&v33];
        v21 = v33;
        goto LABEL_14;
      }

      if (!v20)
      {
        v34 = v13;
        v14 = [(ML3ProcessDownloadedAssetsOperation *)v31 _processTrackAsset:v17 forSource:v32 withError:&v34];
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

  if (a3)
  {
    v27 = v13;
    *a3 = v13;
  }

  return v14;
}

- (ML3ProcessDownloadedAssetsOperation)initWithLibrary:(id)a3 writer:(id)a4
{
  v7.receiver = self;
  v7.super_class = ML3ProcessDownloadedAssetsOperation;
  v4 = [(ML3DatabaseOperation *)&v7 initWithLibrary:a3 writer:a4];
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