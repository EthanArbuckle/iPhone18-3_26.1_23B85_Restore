@interface IMLibraryPlist
+ (BOOL)isPDFFromPlistEntry:(id)a3;
+ (BOOL)isSupplementalContentFromPlistEntry:(id)a3;
+ (IMLibraryPlist)libraryPlistWithKind:(int64_t)a3;
+ (id)accessDateFromPlistEntry:(id)a3;
+ (id)albumFromPlistEntry:(id)a3;
+ (id)assetIDFromItunesMetadataEntry:(id)a3;
+ (id)assetIDFromPlistEntry:(id)a3;
+ (id)assetIDFromPlistEntry:(id)a3 forAssetAtPath:(id)a4;
+ (id)assetTypeFromPlistEntry:(id)a3;
+ (id)authorFromPlistEntry:(id)a3;
+ (id)backupFolderNameFromPlistEntry:(id)a3;
+ (id)bookEpubIdFromPlistEntry:(id)a3;
+ (id)booksArrayFromPlistEntry:(id)a3;
+ (id)booksRepositoryPath;
+ (id)collectionIdFromPlistEntry:(id)a3;
+ (id)coverPathFromPlistEntry:(id)a3;
+ (id)coverWritingModeFromPlistEntry:(id)a3;
+ (id)deletesArrayFromPlistEntry:(id)a3;
+ (id)endOfBookExperiencesFromItunesMetadataEntry:(id)a3;
+ (id)entryForAssetID:(id)a3 contents:(id)a4;
+ (id)entryForAssetURL:(id)a3 contents:(id)a4;
+ (id)experienceConfidenceFromExperienceParamEntry:(id)a3;
+ (id)experienceKindFromExperienceEntry:(id)a3;
+ (id)experienceLocationFromExperienceEntry:(id)a3;
+ (id)experienceLocationTypeFromExperienceEntry:(id)a3;
+ (id)experienceParamsFromExperienceEntry:(id)a3;
+ (id)experienceVersionFromExperienceEntry:(id)a3;
+ (id)extensionFromPlistEntry:(id)a3;
+ (id)feedURLFromPlistEntry:(id)a3;
+ (id)folderNameFromPlistEntry:(id)a3;
+ (id)genreFromPlistEntry:(id)a3;
+ (id)humanReadablePublicationVersionFromPlistEntry:(id)a3;
+ (id)importDateFromPlistEntry:(id)a3;
+ (id)isEphemeralFromPlistEntry:(id)a3;
+ (id)isExplicitContentFromPlistEntry:(id)a3;
+ (id)isItunesUFromPlistEntry:(id)a3;
+ (id)isManagedBookFromURL:(id)a3;
+ (id)isProofedAssetFromPlistEntry:(id)a3;
+ (id)isSampleFromPlistEntry:(id)a3;
+ (id)languageFromPlistEntry:(id)a3;
+ (id)languagesFromPlistEntry:(id)a3;
+ (id)lookupBackupFolderNameFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupCoverWritingModeFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupFolderNameFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupHumanReadablePublicationVersionFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupLanguageFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupPageProgressionFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupPublicationVersionFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupPublicationVersionNumberFromAssetID:(id)a3 contents:(id)a4;
+ (id)lookupScrollDirectionFromAssetID:(id)a3 contents:(id)a4;
+ (id)managedRepositoryPath;
+ (id)mimeTypeFromPlistEntry:(id)a3;
+ (id)pageProgressionFromPlistEntry:(id)a3;
+ (id)permlinkFromPlistEntry:(id)a3;
+ (id)persistentIDFromPlistEntry:(id)a3;
+ (id)primaryLanguageFromPlistEntry:(id)a3;
+ (id)publicationVersionFromPlistEntry:(id)a3;
+ (id)publicationVersionNumberFromPlistEntry:(id)a3;
+ (id)publisherUniqueIDFromItunesMetadataEntry:(id)a3;
+ (id)purchasesRepositoryPath;
+ (id)scrollDirectionFromPlistEntry:(id)a3;
+ (id)sharedContainerURL;
+ (id)sharedRepositoryPath;
+ (id)sortAuthorFromPlistEntry:(id)a3;
+ (id)sortTitleFromPlistEntry:(id)a3;
+ (id)stashedSampleRepositoryPath;
+ (id)storeIdFromPlistEntry:(id)a3;
+ (id)storePlaylistIdFromPlistEntry:(id)a3;
+ (id)temporaryItemIdentifierFromPlistEntry:(id)a3;
+ (id)titleFromItunesMetadataEntry:(id)a3;
+ (id)titleFromPlistEntry:(id)a3;
+ (id)uniqueIDFromItunesMetadataEntry:(id)a3;
+ (id)uniqueIdFromPlistEntry:(id)a3;
+ (void)setAccessDate:(id)a3 toPlistEntry:(id)a4;
+ (void)setBooksArray:(id)a3 toPlistEntry:(id)a4;
+ (void)setDeletesArray:(id)a3 toPlistEntry:(id)a4;
- (BOOL)bumpModificationDate;
- (BOOL)isPathInDirectory:(id)a3;
- (NSString)sidecarPath;
- (id)_initWithDirectory:(id)a3 fileName:(id)a4;
- (id)calculateChecksum;
- (id)contents;
- (id)p_contents:(id)a3;
- (id)unfilteredContents;
- (id)unfilteredSidecarContents;
- (void)addDeletedFiles:(id)a3;
- (void)p_rewriteSidecarWithDeletes:(id)a3;
- (void)removeDeletedPaths:(id)a3;
@end

@implementation IMLibraryPlist

+ (id)managedRepositoryPath
{
  if (qword_280BC5988 != -1)
  {
    sub_241D21AA0();
  }

  v3 = qword_280BC5990;

  return v3;
}

- (id)calculateChecksum
{
  if (qword_280BC5838 != -1)
  {
    sub_241D21C40();
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(IMLibraryPlist *)self path];
  v5 = [v3 attributesOfItemAtPath:v4 error:0];

  v6 = [v5 objectForKey:*MEMORY[0x277CCA150]];
  if (v6)
  {
    v7 = [qword_280BC5840 stringFromDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)purchasesRepositoryPath
{
  if (qword_280BC5978 != -1)
  {
    sub_241D21D90();
  }

  v3 = qword_280BC5980;

  return v3;
}

+ (id)stashedSampleRepositoryPath
{
  v2 = +[IMLibraryPlist purchasesRepositoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"Samples"];

  return v3;
}

- (id)_initWithDirectory:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMLibraryPlist *)self init];
  if (v8)
  {
    v9 = [v6 stringByAppendingPathComponent:v7];
    [(IMLibraryPlist *)v8 setPath:v9];

    [(IMLibraryPlist *)v8 setDirectory:v6];
  }

  return v8;
}

+ (IMLibraryPlist)libraryPlistWithKind:(int64_t)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (+[BLLibraryUtility _isMultiUser])
      {
        v4 = +[IMLibraryPlist sharedRepositoryPath];
        v5 = @"Shared.plist";
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v4 = +[IMLibraryPlist stashedSampleRepositoryPath];
        v5 = @"Samples.plist";
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v8 = +[IMLibraryPlist sampleRepositoryPath];
  }

  else
  {
    if (!a3)
    {
      v6 = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
      v4 = [v6 path];

      v5 = @"Books.plist";
      goto LABEL_20;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v4 = +[IMLibraryPlist managedRepositoryPath];
        v5 = @"Managed.plist";
        goto LABEL_20;
      }

LABEL_13:
      v7 = BLDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Invalid plist.", v11, 2u);
      }

LABEL_16:
      v5 = 0;
      v4 = 0;
      goto LABEL_20;
    }

    v8 = +[IMLibraryPlist purchasesRepositoryPath];
  }

  v4 = v8;
  v5 = @"Purchases.plist";
LABEL_20:
  if ([(__CFString *)v5 length])
  {
    v9 = [[IMLibraryPlist alloc] _initWithDirectory:v4 fileName:v5];
    [v9 setKind:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)sidecarPath
{
  v2 = [(IMLibraryPlist *)self directory];
  v3 = [v2 stringByAppendingPathComponent:@"Deletes.plist"];

  return v3;
}

- (void)p_rewriteSidecarWithDeletes:(id)a3
{
  v4 = a3;
  v5 = [(IMLibraryPlist *)self unfilteredSidecarContents];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopyWithZone:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = v7;

  [IMLibraryPlist setDeletesArray:v4 toPlistEntry:v9];
  v8 = [(IMLibraryPlist *)self sidecarPath];
  [v9 writeToFile:v8 atomically:1];
}

- (id)p_contents:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3];
    if (!v5 || ([MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v7 = [v6 attributesOfItemAtPath:v3 error:&v12];
      v8 = v12;

      if ([v8 code] == 257 && (objc_msgSend(v8, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = *MEMORY[0x277CCA050], v9, v9 == v10))
      {
        [MEMORY[0x277CBEAD8] raise:@"NSFileReadNoPermissionError" format:{@"Permission denied: %@", v3}];
      }

      else if ([v8 code] == 260)
      {
        [v8 domain];
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)unfilteredContents
{
  v3 = [(IMLibraryPlist *)self path];
  v4 = [(IMLibraryPlist *)self p_contents:v3];

  return v4;
}

- (id)unfilteredSidecarContents
{
  v3 = [(IMLibraryPlist *)self sidecarPath];
  v4 = [(IMLibraryPlist *)self p_contents:v3];

  return v4;
}

- (id)contents
{
  v2 = self;
  v57 = *MEMORY[0x277D85DE8];
  v3 = [(IMLibraryPlist *)self unfilteredContents];
  v4 = [(IMLibraryPlist *)v2 unfilteredSidecarContents];
  v5 = [IMLibraryPlist deletesArrayFromPlistEntry:v4];
  v6 = [IMLibraryPlist booksArrayFromPlistEntry:v3];
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v36 = v2;
    v37 = v6;
    v39 = v4;
    v7 = [v6 sortedArrayUsingFunction:sub_241D31F1C context:0];
    v38 = v5;
    v8 = [v5 sortedArrayUsingSelector:sel_compare_];
    v9 = [v8 count];
    v10 = [v8 objectAtIndex:0];
    v42 = [MEMORY[0x277CBEB18] array];
    v45 = [MEMORY[0x277CBEB18] array];
    v40 = v3;
    v41 = [v3 mutableCopyWithZone:0];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v43 = 0;
      obj = v11;
      v15 = *v47;
      do
      {
        v16 = 0;
        do
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * v16);
          v18 = [IMLibraryPlist folderNameFromPlistEntry:v17];
          if ([v18 length])
          {
            v19 = v10 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
LABEL_20:
            [v45 addObject:v17];
          }

          else
          {
            while (1)
            {
              v20 = [v10 compare:v18];
              if (v20 != -1)
              {
                break;
              }

              if (++v14 >= v9)
              {

                v10 = 0;
                goto LABEL_20;
              }

              v21 = [v8 objectAtIndex:v14];

              v10 = v21;
            }

            if (v20 == 1)
            {
              goto LABEL_20;
            }

            if (!v20)
            {
              [v42 addObject:v18];
              ++v43;
              if (v14 >= v9)
              {

                v10 = 0;
              }

              else
              {
                v22 = [v8 objectAtIndex:v14];

                v10 = v22;
              }
            }
          }

          ++v16;
        }

        while (v16 != v13);
        v11 = obj;
        v23 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        v13 = v23;
      }

      while (v23);
    }

    else
    {
      v43 = 0;
    }

    v27 = BLDefaultLog();
    v6 = v37;
    v5 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v37 count];
      v29 = [v38 count];
      v30 = [v45 count];
      *buf = 67109888;
      *v51 = v28;
      *&v51[4] = 1024;
      *&v51[6] = v29;
      v52 = 1024;
      v53 = v30;
      v54 = 1024;
      v55 = v43;
      _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_DEBUG, "IMLibraryPlist: Unfiltered: %d; Filter: %d; Filtered: %d; Filter Hit: %d", buf, 0x1Au);
    }

    if (v43)
    {
      v4 = v39;
      v3 = v40;
      if ([v8 count] > v43)
      {
        [(IMLibraryPlist *)v36 p_rewriteSidecarWithDeletes:v42];
      }

      [IMLibraryPlist setBooksArray:v45 toPlistEntry:v41];

LABEL_44:
      v25 = v41;
      goto LABEL_45;
    }

    [IMLibraryPlist setBooksArray:v45 toPlistEntry:v41];

    v25 = v41;
    v4 = v39;
    v3 = v40;
    v2 = v36;
LABEL_41:
    v41 = v25;
    v31 = BLDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(IMLibraryPlist *)v2 sidecarPath];
      *buf = 138412290;
      *v51 = v32;
      _os_log_impl(&dword_241D1F000, v31, OS_LOG_TYPE_DEBUG, "IMLibraryPlist: Removing sidecar; %@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [(IMLibraryPlist *)v2 sidecarPath];
    [v11 removeItemAtPath:v8 error:0];
    goto LABEL_44;
  }

  if ([v5 count])
  {
    v24 = [v6 count] == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v3;
  v26 = BLDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *v51 = [v6 count];
    _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_DEBUG, "IMLibraryPlist: Nothing to filter; Book Count: %d", buf, 8u);
  }

  if (v24)
  {
    goto LABEL_41;
  }

LABEL_45:
  v33 = v25;

  v34 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)isPathInDirectory:(id)a3
{
  v4 = [a3 stringByDeletingLastPathComponent];
  v5 = [(IMLibraryPlist *)self directory];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)addDeletedFiles:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(IMLibraryPlist *)self unfilteredSidecarContents];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 mutableCopyWithZone:0];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v8 = v7;

    v9 = [IMLibraryPlist deletesArrayFromPlistEntry:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopyWithZone:0];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v12 = v11;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 addObject:{*(*(&v24 + 1) + 8 * i), v24}];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v15);
    }

    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    v19 = [v18 allObjects];
    [IMLibraryPlist setDeletesArray:v19 toPlistEntry:v8];

    v20 = BLDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v12 count];
      *buf = 67109120;
      v29 = v21;
      _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEBUG, "addDeletedPaths -- rewritePlist %d entries", buf, 8u);
    }

    v22 = [(IMLibraryPlist *)self sidecarPath];
    [v8 writeToFile:v22 atomically:1];

    [(IMLibraryPlist *)self bumpModificationDate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeDeletedPaths:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(IMLibraryPlist *)self unfilteredSidecarContents];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 mutableCopy];
      v8 = [IMLibraryPlist deletesArrayFromPlistEntry:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 mutableCopyWithZone:0];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v24 = v7;
          v23 = self;
          v25 = v4;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v27 + 1) + 8 * i);
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = sub_241D3251C;
              v26[3] = &unk_278D17548;
              v26[4] = v17;
              v18 = [v10 indexesOfObjectsPassingTest:{v26, v23}];
              if ([v18 count])
              {
                [v10 removeObjectsAtIndexes:v18];
                v14 = 1;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
          }

          while (v13);

          v4 = v25;
          v7 = v24;
          if (v14)
          {
            v19 = BLDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v10 count];
              *buf = 67109120;
              v32 = v20;
              _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEBUG, "removeDeletedPaths -- rewritePlist %d entries", buf, 8u);
            }

            [IMLibraryPlist setDeletesArray:v10 toPlistEntry:v24];
            v21 = [(IMLibraryPlist *)v23 sidecarPath];
            [v24 writeToFile:v21 atomically:1];

            [(IMLibraryPlist *)v23 bumpModificationDate];
          }
        }

        else
        {
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)entryForAssetID:(id)a3 contents:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [IMLibraryPlist booksArrayFromPlistEntry:a4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        v12 = BUDynamicCast();
        v13 = [IMLibraryPlist storeIdFromPlistEntry:v12, v19];
        v14 = v13;
        if (v13 && ([v13 isEqualToString:v5] & 1) != 0)
        {
          goto LABEL_17;
        }

        v15 = [IMLibraryPlist bookEpubIdFromPlistEntry:v12];

        if (v15 && ([v15 isEqualToString:v5] & 1) != 0)
        {
          v14 = v15;
LABEL_17:
          v16 = v12;

          goto LABEL_18;
        }

        v14 = [IMLibraryPlist uniqueIdFromPlistEntry:v12];

        if (v14 && [v14 isEqualToString:v5])
        {
          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)entryForAssetURL:(id)a3 contents:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [IMLibraryPlist booksArrayFromPlistEntry:a4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        v12 = BUDynamicCast();
        v13 = [IMLibraryPlist folderNameFromPlistEntry:v12, v18];
        if (v13)
        {
          v14 = [v5 lastPathComponent];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {

            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)isManagedBookFromURL:(id)a3
{
  v4 = [a3 path];
  if (v4)
  {
    v5 = [a1 managedRepositoryPath];
    v6 = [v4 hasPrefix:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (BOOL)bumpModificationDate
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = *MEMORY[0x277CCA150];
  v3 = [MEMORY[0x277CBEAA8] date];
  v19[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(IMLibraryPlist *)self path];
  v13 = 0;
  v7 = [v5 setAttributes:v4 ofItemAtPath:v6 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = BLDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(IMLibraryPlist *)self path];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Error changing modification date of %@ --  %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)lookupPublicationVersionFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist publicationVersionFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupPublicationVersionNumberFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist publicationVersionNumberFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupHumanReadablePublicationVersionFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist humanReadablePublicationVersionFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupPageProgressionFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist pageProgressionFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupLanguageFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist languageFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupCoverWritingModeFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist coverWritingModeFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupScrollDirectionFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist scrollDirectionFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupFolderNameFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist folderNameFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)lookupBackupFolderNameFromAssetID:(id)a3 contents:(id)a4
{
  v4 = [a1 entryForAssetID:a3 contents:a4];
  if (v4)
  {
    v5 = [IMLibraryPlist backupFolderNameFromPlistEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)authorFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAuthor];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)sortAuthorFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSortAuthor];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)titleFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForTitle];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)sortTitleFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSortTitle];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)genreFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForGenre];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isExplicitContentFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForExplicitContent];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isProofedAssetFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForProofedAsset];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isEphemeralFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForIsEphemeral];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)deletesArrayFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForDeletesArray];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setDeletesArray:(id)a3 toPlistEntry:(id)a4
{
  v5 = a4;
  v7 = [a3 copy];
  v6 = +[IMLibraryPlist keyNameForDeletesArray];
  [v5 setObject:v7 forKey:v6];
}

+ (id)booksArrayFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForBooksArray];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setBooksArray:(id)a3 toPlistEntry:(id)a4
{
  v5 = a4;
  v7 = [a3 copy];
  v6 = +[IMLibraryPlist keyNameForBooksArray];
  [v5 setObject:v7 forKey:v6];
}

+ (BOOL)isPDFFromPlistEntry:(id)a3
{
  v3 = a3;
  v4 = [IMLibraryPlist folderNameFromPlistEntry:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [IMLibraryPlist backupFolderNameFromPlistEntry:v3];
  }

  v7 = v6;

  v10 = 0;
  if ([v7 length])
  {
    v8 = [v7 pathExtension];
    v9 = [v8 lowercaseString];

    LOBYTE(v8) = [v9 isEqualToString:@"pdf"];
    if (v8)
    {
      v10 = 1;
    }
  }

  return v10;
}

+ (id)temporaryItemIdentifierFromPlistEntry:(id)a3
{
  v3 = a3;
  v4 = [IMLibraryPlist permlinkFromPlistEntry:v3];
  v5 = [v4 identifierFromPermlink];
  if (!v5)
  {
    v6 = [IMLibraryPlist isSupplementalContentFromPlistEntry:v3];
    v7 = [IMLibraryPlist isPDFFromPlistEntry:v3];
    if (v6 && v7)
    {
      v5 = [IMLibraryPlist storeIdFromPlistEntry:v3];
      if ([v5 length])
      {
        if (v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    objc_opt_class();
    v9 = [v3 objectForKey:@"Persistent ID"];
    v5 = BUDynamicCast();
  }

LABEL_11:

  return v5;
}

+ (id)persistentIDFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"Persistent ID"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)bookEpubIdFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPublisherUniqueID];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)albumFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"Album"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)isItunesUFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"Is iTunes U"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)feedURLFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"Feed URL"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)mimeTypeFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"MIME Type"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)extensionFromPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"Extension"];
  v6 = BUDynamicCast();

  if (!v6)
  {
    v6 = [a1 folderNameFromPlistEntry:v4];
    if ([v6 length])
    {
      v7 = [v6 pathExtension];

      v6 = v7;
    }

    if (![v6 length])
    {

      v6 = 0;
    }
  }

  return v6;
}

+ (id)publicationVersionFromPlistEntry:(id)a3
{
  v3 = a3;
  v4 = +[IMLibraryPlist keyNameForPublicationVersion];
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)publicationVersionNumberFromPlistEntry:(id)a3
{
  v3 = a3;
  v4 = +[IMLibraryPlist keyNameForPublicationVersion];
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_5:
    v8 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v6 = [v7 numberWithDouble:?];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)humanReadablePublicationVersionFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForHumanReadablePublicationVersion];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)pageProgressionFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPageProgression];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)assetTypeFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAssetType];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)languageFromPlistEntry:(id)a3
{
  v4 = a3;
  v5 = [a1 languagesFromPlistEntry:v4];
  if ([v5 count])
  {
    objc_opt_class();
    v6 = [v5 objectAtIndex:0];
    v7 = BUDynamicCast();

    if ([v7 length])
    {
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v8 = [a1 primaryLanguageFromPlistEntry:v4];
  v9 = [v8 lowercaseString];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_27EC71F90 != -1)
    {
      sub_241D76DDC();
    }

    v7 = [qword_27EC71F98 objectForKey:v9];
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

+ (id)assetIDFromPlistEntry:(id)a3
{
  v4 = a3;
  v5 = [IMLibraryPlist folderNameFromPlistEntry:v4];
  v6 = [a1 assetIDFromPlistEntry:v4 forAssetAtPath:v5];

  return v6;
}

+ (id)assetIDFromPlistEntry:(id)a3 forAssetAtPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [IMLibraryPlist isSupplementalContentFromPlistEntry:v5];
  v8 = [IMLibraryPlist isPDFFromPlistEntry:v5];
  if (v7 && v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [IMLibraryPlist storeIdFromPlistEntry:v5];
  }

  if (![v9 length])
  {
    v10 = [BLLibraryUtility dcIdentifierFromBookPath:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [IMLibraryPlist uniqueIdFromPlistEntry:v5];
    }

    v13 = v12;

    if (![v13 length])
    {
      v14 = [BLLibraryUtility generateFileUniqueIdFromPath:v6];

      v13 = v14;
    }

    v9 = v13;
  }

  return v9;
}

+ (id)coverWritingModeFromPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 keyNameForCoverWritingMode];
  v6 = [v4 objectForKey:v5];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)scrollDirectionFromPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 keyNameForScrollDirection];
  v6 = [v4 objectForKey:v5];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)languagesFromPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 keyNameForLanguages];
  v6 = [v4 objectForKey:v5];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)primaryLanguageFromPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 keyNameForPrimaryLanguage];
  v6 = [v4 objectForKey:v5];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)uniqueIdFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForUniqueId];
  v5 = [v3 objectForKey:v4];
  v6 = BUDynamicCast();

  if (!v6)
  {
    objc_opt_class();
    v7 = [v3 objectForKey:@"iBooks-UniqueId"];
    v6 = BUDynamicCast();

    if (!v6)
    {
      objc_opt_class();
      v8 = [v3 objectForKey:@"PersistentID"];
      v6 = BUDynamicCast();
    }
  }

  if ([v6 length] <= 1)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)accessDateFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAccessDate];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setAccessDate:(id)a3 toPlistEntry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMLibraryPlist keyNameForAccessDate];
  [v5 setObject:v6 forKey:v7];
}

+ (id)folderNameFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPath];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)backupFolderNameFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForBackupPath];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isSampleFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSampleAsset];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)coverPathFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"Cover Path"];
  v5 = BUDynamicCast();

  if (!v5)
  {
    objc_opt_class();
    v6 = [v3 valueForKeyPath:@"book-info.cover-image-path"];
    v5 = BUDynamicCast();
  }

  return v5;
}

+ (id)collectionIdFromPlistEntry:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMLibraryPlist keyNameForCollectionId];
  objc_opt_class();
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = BUDynamicCast();

  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
    v8 = [v7 scanHexLongLong:&v13];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      v10 = [v9 stringValue];
    }

    else
    {
      v9 = BLDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v4;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Failed to convert key '%{public}@' hex->decimal: [%@]", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)storePlaylistIdFromPlistEntry:(id)a3
{
  v3 = a3;
  v4 = +[IMLibraryPlist keyNameForStorePlaylistId];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [IMLibraryPlist collectionIdFromPlistEntry:v3];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (BOOL)isSupplementalContentFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForIsSupplementalContent];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = BUDynamicCast();

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = [IMLibraryPlist collectionIdFromPlistEntry:v3];
    v9 = [IMLibraryPlist isPDFFromPlistEntry:v3];
    v7 = [v8 length] != 0 && v9;
  }

  return v7;
}

+ (id)storeIdFromPlistEntry:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForStoreId2];
  v5 = [v3 objectForKey:v4];
  v6 = BUDynamicCast();

  if (!v6)
  {
    v11 = +[IMLibraryPlist keyNameForStoreId];
    v6 = [v3 objectForKey:v11];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v6 stringValue];
LABEL_13:
        v10 = v12;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v6;
        v6 = v12;
        goto LABEL_13;
      }
    }

    v10 = 0;
    goto LABEL_15;
  }

  v15 = 0;
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  v8 = [v7 scanHexLongLong:&v15];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    v10 = [v9 stringValue];
  }

  else
  {
    v9 = BLDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Failed to hex->decimal: [%@]", buf, 0xCu);
    }

    v10 = 0;
  }

LABEL_15:
  if ([v10 length] <= 1)
  {

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)permlinkFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"iTunesU Permlink"];

  v5 = BUDynamicCast();

  if ([v5 length])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)importDateFromPlistEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForImportDate];
  v5 = [v3 objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)assetIDFromItunesMetadataEntry:(id)a3
{
  v3 = a3;
  v4 = [IMLibraryPlist publisherUniqueIDFromItunesMetadataEntry:v3];
  if (!v4)
  {
    v4 = [IMLibraryPlist uniqueIDFromItunesMetadataEntry:v3];
    if (!v4)
    {
      v4 = [IMLibraryPlist packageFileHashFromItunesMetadataEntry:v3];
    }
  }

  v5 = v4;

  return v5;
}

+ (id)publisherUniqueIDFromItunesMetadataEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 valueForKeyPath:@"book-info.publisher-unique-id"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)uniqueIDFromItunesMetadataEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 valueForKeyPath:@"book-info.unique-id"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)titleFromItunesMetadataEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"itemName"];
  if (!v4)
  {
    v4 = [v3 valueForKeyPath:@"playlistName"];
  }

  return v4;
}

+ (id)endOfBookExperiencesFromItunesMetadataEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"experiences"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceKindFromExperienceEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"kind"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceLocationFromExperienceEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"loc"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceLocationTypeFromExperienceEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"locType"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceVersionFromExperienceEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"version"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceParamsFromExperienceEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"params"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceConfidenceFromExperienceParamEntry:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKey:@"confidence"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)booksRepositoryPath
{
  v2 = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
  v3 = [v2 path];

  return v3;
}

+ (id)sharedContainerURL
{
  if (qword_280BC5940 != -1)
  {
    sub_241D76DF0();
  }

  v3 = qword_280BC58B0;

  return v3;
}

+ (id)sharedRepositoryPath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D35AEC;
  block[3] = &unk_278D16940;
  block[4] = a1;
  if (qword_27EC71FA8 != -1)
  {
    dispatch_once(&qword_27EC71FA8, block);
  }

  v2 = qword_27EC71FA0;

  return v2;
}

@end