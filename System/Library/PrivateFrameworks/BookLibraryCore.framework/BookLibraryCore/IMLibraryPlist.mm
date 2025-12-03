@interface IMLibraryPlist
+ (BOOL)isPDFFromPlistEntry:(id)entry;
+ (BOOL)isSupplementalContentFromPlistEntry:(id)entry;
+ (IMLibraryPlist)libraryPlistWithKind:(int64_t)kind;
+ (id)accessDateFromPlistEntry:(id)entry;
+ (id)albumFromPlistEntry:(id)entry;
+ (id)assetIDFromItunesMetadataEntry:(id)entry;
+ (id)assetIDFromPlistEntry:(id)entry;
+ (id)assetIDFromPlistEntry:(id)entry forAssetAtPath:(id)path;
+ (id)assetTypeFromPlistEntry:(id)entry;
+ (id)authorFromPlistEntry:(id)entry;
+ (id)backupFolderNameFromPlistEntry:(id)entry;
+ (id)bookEpubIdFromPlistEntry:(id)entry;
+ (id)booksArrayFromPlistEntry:(id)entry;
+ (id)booksRepositoryPath;
+ (id)collectionIdFromPlistEntry:(id)entry;
+ (id)coverPathFromPlistEntry:(id)entry;
+ (id)coverWritingModeFromPlistEntry:(id)entry;
+ (id)deletesArrayFromPlistEntry:(id)entry;
+ (id)endOfBookExperiencesFromItunesMetadataEntry:(id)entry;
+ (id)entryForAssetID:(id)d contents:(id)contents;
+ (id)entryForAssetURL:(id)l contents:(id)contents;
+ (id)experienceConfidenceFromExperienceParamEntry:(id)entry;
+ (id)experienceKindFromExperienceEntry:(id)entry;
+ (id)experienceLocationFromExperienceEntry:(id)entry;
+ (id)experienceLocationTypeFromExperienceEntry:(id)entry;
+ (id)experienceParamsFromExperienceEntry:(id)entry;
+ (id)experienceVersionFromExperienceEntry:(id)entry;
+ (id)extensionFromPlistEntry:(id)entry;
+ (id)feedURLFromPlistEntry:(id)entry;
+ (id)folderNameFromPlistEntry:(id)entry;
+ (id)genreFromPlistEntry:(id)entry;
+ (id)humanReadablePublicationVersionFromPlistEntry:(id)entry;
+ (id)importDateFromPlistEntry:(id)entry;
+ (id)isEphemeralFromPlistEntry:(id)entry;
+ (id)isExplicitContentFromPlistEntry:(id)entry;
+ (id)isItunesUFromPlistEntry:(id)entry;
+ (id)isManagedBookFromURL:(id)l;
+ (id)isProofedAssetFromPlistEntry:(id)entry;
+ (id)isSampleFromPlistEntry:(id)entry;
+ (id)languageFromPlistEntry:(id)entry;
+ (id)languagesFromPlistEntry:(id)entry;
+ (id)lookupBackupFolderNameFromAssetID:(id)d contents:(id)contents;
+ (id)lookupCoverWritingModeFromAssetID:(id)d contents:(id)contents;
+ (id)lookupFolderNameFromAssetID:(id)d contents:(id)contents;
+ (id)lookupHumanReadablePublicationVersionFromAssetID:(id)d contents:(id)contents;
+ (id)lookupLanguageFromAssetID:(id)d contents:(id)contents;
+ (id)lookupPageProgressionFromAssetID:(id)d contents:(id)contents;
+ (id)lookupPublicationVersionFromAssetID:(id)d contents:(id)contents;
+ (id)lookupPublicationVersionNumberFromAssetID:(id)d contents:(id)contents;
+ (id)lookupScrollDirectionFromAssetID:(id)d contents:(id)contents;
+ (id)managedRepositoryPath;
+ (id)mimeTypeFromPlistEntry:(id)entry;
+ (id)pageProgressionFromPlistEntry:(id)entry;
+ (id)permlinkFromPlistEntry:(id)entry;
+ (id)persistentIDFromPlistEntry:(id)entry;
+ (id)primaryLanguageFromPlistEntry:(id)entry;
+ (id)publicationVersionFromPlistEntry:(id)entry;
+ (id)publicationVersionNumberFromPlistEntry:(id)entry;
+ (id)publisherUniqueIDFromItunesMetadataEntry:(id)entry;
+ (id)purchasesRepositoryPath;
+ (id)scrollDirectionFromPlistEntry:(id)entry;
+ (id)sharedContainerURL;
+ (id)sharedRepositoryPath;
+ (id)sortAuthorFromPlistEntry:(id)entry;
+ (id)sortTitleFromPlistEntry:(id)entry;
+ (id)stashedSampleRepositoryPath;
+ (id)storeIdFromPlistEntry:(id)entry;
+ (id)storePlaylistIdFromPlistEntry:(id)entry;
+ (id)temporaryItemIdentifierFromPlistEntry:(id)entry;
+ (id)titleFromItunesMetadataEntry:(id)entry;
+ (id)titleFromPlistEntry:(id)entry;
+ (id)uniqueIDFromItunesMetadataEntry:(id)entry;
+ (id)uniqueIdFromPlistEntry:(id)entry;
+ (void)setAccessDate:(id)date toPlistEntry:(id)entry;
+ (void)setBooksArray:(id)array toPlistEntry:(id)entry;
+ (void)setDeletesArray:(id)array toPlistEntry:(id)entry;
- (BOOL)bumpModificationDate;
- (BOOL)isPathInDirectory:(id)directory;
- (NSString)sidecarPath;
- (id)_initWithDirectory:(id)directory fileName:(id)name;
- (id)calculateChecksum;
- (id)contents;
- (id)p_contents:(id)p_contents;
- (id)unfilteredContents;
- (id)unfilteredSidecarContents;
- (void)addDeletedFiles:(id)files;
- (void)p_rewriteSidecarWithDeletes:(id)deletes;
- (void)removeDeletedPaths:(id)paths;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(IMLibraryPlist *)self path];
  v5 = [defaultManager attributesOfItemAtPath:path error:0];

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

- (id)_initWithDirectory:(id)directory fileName:(id)name
{
  directoryCopy = directory;
  nameCopy = name;
  v8 = [(IMLibraryPlist *)self init];
  if (v8)
  {
    v9 = [directoryCopy stringByAppendingPathComponent:nameCopy];
    [(IMLibraryPlist *)v8 setPath:v9];

    [(IMLibraryPlist *)v8 setDirectory:directoryCopy];
  }

  return v8;
}

+ (IMLibraryPlist)libraryPlistWithKind:(int64_t)kind
{
  if (kind > 2)
  {
    if (kind == 3)
    {
      if (+[BLLibraryUtility _isMultiUser])
      {
        path = +[IMLibraryPlist sharedRepositoryPath];
        v5 = @"Shared.plist";
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (kind != 4)
    {
      if (kind == 5)
      {
        path = +[IMLibraryPlist stashedSampleRepositoryPath];
        v5 = @"Samples.plist";
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v8 = +[IMLibraryPlist sampleRepositoryPath];
  }

  else
  {
    if (!kind)
    {
      bu_booksRepositoryURL = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
      path = [bu_booksRepositoryURL path];

      v5 = @"Books.plist";
      goto LABEL_20;
    }

    if (kind != 1)
    {
      if (kind == 2)
      {
        path = +[IMLibraryPlist managedRepositoryPath];
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
      path = 0;
      goto LABEL_20;
    }

    v8 = +[IMLibraryPlist purchasesRepositoryPath];
  }

  path = v8;
  v5 = @"Purchases.plist";
LABEL_20:
  if ([(__CFString *)v5 length])
  {
    v9 = [[IMLibraryPlist alloc] _initWithDirectory:path fileName:v5];
    [v9 setKind:kind];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)sidecarPath
{
  directory = [(IMLibraryPlist *)self directory];
  v3 = [directory stringByAppendingPathComponent:@"Deletes.plist"];

  return v3;
}

- (void)p_rewriteSidecarWithDeletes:(id)deletes
{
  deletesCopy = deletes;
  unfilteredSidecarContents = [(IMLibraryPlist *)self unfilteredSidecarContents];
  v6 = unfilteredSidecarContents;
  if (unfilteredSidecarContents)
  {
    v7 = [unfilteredSidecarContents mutableCopyWithZone:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = v7;

  [IMLibraryPlist setDeletesArray:deletesCopy toPlistEntry:v9];
  sidecarPath = [(IMLibraryPlist *)self sidecarPath];
  [v9 writeToFile:sidecarPath atomically:1];
}

- (id)p_contents:(id)p_contents
{
  p_contentsCopy = p_contents;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:p_contentsCopy];
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:p_contentsCopy];
    if (!v5 || ([MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v7 = [defaultManager attributesOfItemAtPath:p_contentsCopy error:&v12];
      v8 = v12;

      if ([v8 code] == 257 && (objc_msgSend(v8, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = *MEMORY[0x277CCA050], v9, v9 == v10))
      {
        [MEMORY[0x277CBEAD8] raise:@"NSFileReadNoPermissionError" format:{@"Permission denied: %@", p_contentsCopy}];
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
  path = [(IMLibraryPlist *)self path];
  v4 = [(IMLibraryPlist *)self p_contents:path];

  return v4;
}

- (id)unfilteredSidecarContents
{
  sidecarPath = [(IMLibraryPlist *)self sidecarPath];
  v4 = [(IMLibraryPlist *)self p_contents:sidecarPath];

  return v4;
}

- (id)contents
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  unfilteredContents = [(IMLibraryPlist *)self unfilteredContents];
  unfilteredSidecarContents = [(IMLibraryPlist *)selfCopy unfilteredSidecarContents];
  v5 = [IMLibraryPlist deletesArrayFromPlistEntry:unfilteredSidecarContents];
  v6 = [IMLibraryPlist booksArrayFromPlistEntry:unfilteredContents];
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v36 = selfCopy;
    v37 = v6;
    v39 = unfilteredSidecarContents;
    v7 = [v6 sortedArrayUsingFunction:sub_241D31F1C context:0];
    v38 = v5;
    sidecarPath2 = [v5 sortedArrayUsingSelector:sel_compare_];
    v9 = [sidecarPath2 count];
    v10 = [sidecarPath2 objectAtIndex:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v40 = unfilteredContents;
    v41 = [unfilteredContents mutableCopyWithZone:0];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    defaultManager = v7;
    v12 = [defaultManager countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v43 = 0;
      obj = defaultManager;
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
            [array2 addObject:v17];
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

              v21 = [sidecarPath2 objectAtIndex:v14];

              v10 = v21;
            }

            if (v20 == 1)
            {
              goto LABEL_20;
            }

            if (!v20)
            {
              [array addObject:v18];
              ++v43;
              if (v14 >= v9)
              {

                v10 = 0;
              }

              else
              {
                v22 = [sidecarPath2 objectAtIndex:v14];

                v10 = v22;
              }
            }
          }

          ++v16;
        }

        while (v16 != v13);
        defaultManager = obj;
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
      v30 = [array2 count];
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
      unfilteredSidecarContents = v39;
      unfilteredContents = v40;
      if ([sidecarPath2 count] > v43)
      {
        [(IMLibraryPlist *)v36 p_rewriteSidecarWithDeletes:array];
      }

      [IMLibraryPlist setBooksArray:array2 toPlistEntry:v41];

LABEL_44:
      v25 = v41;
      goto LABEL_45;
    }

    [IMLibraryPlist setBooksArray:array2 toPlistEntry:v41];

    v25 = v41;
    unfilteredSidecarContents = v39;
    unfilteredContents = v40;
    selfCopy = v36;
LABEL_41:
    v41 = v25;
    v31 = BLDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sidecarPath = [(IMLibraryPlist *)selfCopy sidecarPath];
      *buf = 138412290;
      *v51 = sidecarPath;
      _os_log_impl(&dword_241D1F000, v31, OS_LOG_TYPE_DEBUG, "IMLibraryPlist: Removing sidecar; %@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    sidecarPath2 = [(IMLibraryPlist *)selfCopy sidecarPath];
    [defaultManager removeItemAtPath:sidecarPath2 error:0];
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

  v25 = unfilteredContents;
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

- (BOOL)isPathInDirectory:(id)directory
{
  stringByDeletingLastPathComponent = [directory stringByDeletingLastPathComponent];
  directory = [(IMLibraryPlist *)self directory];
  v6 = [stringByDeletingLastPathComponent isEqualToString:directory];

  return v6;
}

- (void)addDeletedFiles:(id)files
{
  v31 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  if ([filesCopy count])
  {
    unfilteredSidecarContents = [(IMLibraryPlist *)self unfilteredSidecarContents];
    v6 = unfilteredSidecarContents;
    if (unfilteredSidecarContents)
    {
      v7 = [unfilteredSidecarContents mutableCopyWithZone:0];
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
    v13 = filesCopy;
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
    allObjects = [v18 allObjects];
    [IMLibraryPlist setDeletesArray:allObjects toPlistEntry:v8];

    v20 = BLDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v12 count];
      *buf = 67109120;
      v29 = v21;
      _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEBUG, "addDeletedPaths -- rewritePlist %d entries", buf, 8u);
    }

    sidecarPath = [(IMLibraryPlist *)self sidecarPath];
    [v8 writeToFile:sidecarPath atomically:1];

    [(IMLibraryPlist *)self bumpModificationDate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeDeletedPaths:(id)paths
{
  v34 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    unfilteredSidecarContents = [(IMLibraryPlist *)self unfilteredSidecarContents];
    v6 = unfilteredSidecarContents;
    if (unfilteredSidecarContents)
    {
      v7 = [unfilteredSidecarContents mutableCopy];
      v8 = [IMLibraryPlist deletesArrayFromPlistEntry:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 mutableCopyWithZone:0];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = pathsCopy;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v24 = v7;
          selfCopy = self;
          v25 = pathsCopy;
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
              v18 = [v10 indexesOfObjectsPassingTest:{v26, selfCopy}];
              if ([v18 count])
              {
                [v10 removeObjectsAtIndexes:v18];
                v14 = 1;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
          }

          while (v13);

          pathsCopy = v25;
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
            sidecarPath = [(IMLibraryPlist *)selfCopy sidecarPath];
            [v24 writeToFile:sidecarPath atomically:1];

            [(IMLibraryPlist *)selfCopy bumpModificationDate];
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

+ (id)entryForAssetID:(id)d contents:(id)contents
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [IMLibraryPlist booksArrayFromPlistEntry:contents];
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
        if (v13 && ([v13 isEqualToString:dCopy] & 1) != 0)
        {
          goto LABEL_17;
        }

        v15 = [IMLibraryPlist bookEpubIdFromPlistEntry:v12];

        if (v15 && ([v15 isEqualToString:dCopy] & 1) != 0)
        {
          v14 = v15;
LABEL_17:
          v16 = v12;

          goto LABEL_18;
        }

        v14 = [IMLibraryPlist uniqueIdFromPlistEntry:v12];

        if (v14 && [v14 isEqualToString:dCopy])
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

+ (id)entryForAssetURL:(id)l contents:(id)contents
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [IMLibraryPlist booksArrayFromPlistEntry:contents];
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
          lastPathComponent = [lCopy lastPathComponent];
          v15 = [v13 isEqualToString:lastPathComponent];

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

+ (id)isManagedBookFromURL:(id)l
{
  path = [l path];
  if (path)
  {
    managedRepositoryPath = [self managedRepositoryPath];
    v6 = [path hasPrefix:managedRepositoryPath];
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
  date = [MEMORY[0x277CBEAA8] date];
  v19[0] = date;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(IMLibraryPlist *)self path];
  v13 = 0;
  v7 = [defaultManager setAttributes:v4 ofItemAtPath:path error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = BLDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      path2 = [(IMLibraryPlist *)self path];
      *buf = 138412546;
      v15 = path2;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Error changing modification date of %@ --  %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)lookupPublicationVersionFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupPublicationVersionNumberFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupHumanReadablePublicationVersionFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupPageProgressionFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupLanguageFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupCoverWritingModeFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupScrollDirectionFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupFolderNameFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)lookupBackupFolderNameFromAssetID:(id)d contents:(id)contents
{
  v4 = [self entryForAssetID:d contents:contents];
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

+ (id)authorFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAuthor];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)sortAuthorFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSortAuthor];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)titleFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForTitle];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)sortTitleFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSortTitle];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)genreFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForGenre];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isExplicitContentFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForExplicitContent];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isProofedAssetFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForProofedAsset];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isEphemeralFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForIsEphemeral];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)deletesArrayFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForDeletesArray];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setDeletesArray:(id)array toPlistEntry:(id)entry
{
  entryCopy = entry;
  v7 = [array copy];
  v6 = +[IMLibraryPlist keyNameForDeletesArray];
  [entryCopy setObject:v7 forKey:v6];
}

+ (id)booksArrayFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForBooksArray];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setBooksArray:(id)array toPlistEntry:(id)entry
{
  entryCopy = entry;
  v7 = [array copy];
  v6 = +[IMLibraryPlist keyNameForBooksArray];
  [entryCopy setObject:v7 forKey:v6];
}

+ (BOOL)isPDFFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v4 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [IMLibraryPlist backupFolderNameFromPlistEntry:entryCopy];
  }

  v7 = v6;

  v10 = 0;
  if ([v7 length])
  {
    pathExtension = [v7 pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    LOBYTE(pathExtension) = [lowercaseString isEqualToString:@"pdf"];
    if (pathExtension)
    {
      v10 = 1;
    }
  }

  return v10;
}

+ (id)temporaryItemIdentifierFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v4 = [IMLibraryPlist permlinkFromPlistEntry:entryCopy];
  identifierFromPermlink = [v4 identifierFromPermlink];
  if (!identifierFromPermlink)
  {
    v6 = [IMLibraryPlist isSupplementalContentFromPlistEntry:entryCopy];
    v7 = [IMLibraryPlist isPDFFromPlistEntry:entryCopy];
    if (v6 && v7)
    {
      identifierFromPermlink = [IMLibraryPlist storeIdFromPlistEntry:entryCopy];
      if ([identifierFromPermlink length])
      {
        if (identifierFromPermlink)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    objc_opt_class();
    v9 = [entryCopy objectForKey:@"Persistent ID"];
    identifierFromPermlink = BUDynamicCast();
  }

LABEL_11:

  return identifierFromPermlink;
}

+ (id)persistentIDFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"Persistent ID"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)bookEpubIdFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPublisherUniqueID];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)albumFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"Album"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)isItunesUFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"Is iTunes U"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)feedURLFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"Feed URL"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)mimeTypeFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"MIME Type"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)extensionFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v5 = [entryCopy objectForKey:@"Extension"];
  v6 = BUDynamicCast();

  if (!v6)
  {
    v6 = [self folderNameFromPlistEntry:entryCopy];
    if ([v6 length])
    {
      pathExtension = [v6 pathExtension];

      v6 = pathExtension;
    }

    if (![v6 length])
    {

      v6 = 0;
    }
  }

  return v6;
}

+ (id)publicationVersionFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v4 = +[IMLibraryPlist keyNameForPublicationVersion];
  v5 = [entryCopy objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v5;
LABEL_5:
    v7 = stringValue;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v5 stringValue];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)publicationVersionNumberFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v4 = +[IMLibraryPlist keyNameForPublicationVersion];
  v5 = [entryCopy objectForKey:v4];

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

+ (id)humanReadablePublicationVersionFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForHumanReadablePublicationVersion];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)pageProgressionFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPageProgression];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)assetTypeFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAssetType];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)languageFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v5 = [self languagesFromPlistEntry:entryCopy];
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

  v8 = [self primaryLanguageFromPlistEntry:entryCopy];
  lowercaseString = [v8 lowercaseString];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_27EC71F90 != -1)
    {
      sub_241D76DDC();
    }

    v7 = [qword_27EC71F98 objectForKey:lowercaseString];
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

+ (id)assetIDFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v5 = [IMLibraryPlist folderNameFromPlistEntry:entryCopy];
  v6 = [self assetIDFromPlistEntry:entryCopy forAssetAtPath:v5];

  return v6;
}

+ (id)assetIDFromPlistEntry:(id)entry forAssetAtPath:(id)path
{
  entryCopy = entry;
  pathCopy = path;
  v7 = [IMLibraryPlist isSupplementalContentFromPlistEntry:entryCopy];
  v8 = [IMLibraryPlist isPDFFromPlistEntry:entryCopy];
  if (v7 && v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [IMLibraryPlist storeIdFromPlistEntry:entryCopy];
  }

  if (![v9 length])
  {
    v10 = [BLLibraryUtility dcIdentifierFromBookPath:pathCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [IMLibraryPlist uniqueIdFromPlistEntry:entryCopy];
    }

    v13 = v12;

    if (![v13 length])
    {
      v14 = [BLLibraryUtility generateFileUniqueIdFromPath:pathCopy];

      v13 = v14;
    }

    v9 = v13;
  }

  return v9;
}

+ (id)coverWritingModeFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  keyNameForCoverWritingMode = [self keyNameForCoverWritingMode];
  v6 = [entryCopy objectForKey:keyNameForCoverWritingMode];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)scrollDirectionFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  keyNameForScrollDirection = [self keyNameForScrollDirection];
  v6 = [entryCopy objectForKey:keyNameForScrollDirection];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)languagesFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  keyNameForLanguages = [self keyNameForLanguages];
  v6 = [entryCopy objectForKey:keyNameForLanguages];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)primaryLanguageFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  keyNameForPrimaryLanguage = [self keyNameForPrimaryLanguage];
  v6 = [entryCopy objectForKey:keyNameForPrimaryLanguage];

  v7 = BUDynamicCast();

  return v7;
}

+ (id)uniqueIdFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForUniqueId];
  v5 = [entryCopy objectForKey:v4];
  v6 = BUDynamicCast();

  if (!v6)
  {
    objc_opt_class();
    v7 = [entryCopy objectForKey:@"iBooks-UniqueId"];
    v6 = BUDynamicCast();

    if (!v6)
    {
      objc_opt_class();
      v8 = [entryCopy objectForKey:@"PersistentID"];
      v6 = BUDynamicCast();
    }
  }

  if ([v6 length] <= 1)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)accessDateFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForAccessDate];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (void)setAccessDate:(id)date toPlistEntry:(id)entry
{
  entryCopy = entry;
  dateCopy = date;
  v7 = +[IMLibraryPlist keyNameForAccessDate];
  [entryCopy setObject:dateCopy forKey:v7];
}

+ (id)folderNameFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForPath];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)backupFolderNameFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForBackupPath];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)isSampleFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForSampleAsset];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)coverPathFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"Cover Path"];
  v5 = BUDynamicCast();

  if (!v5)
  {
    objc_opt_class();
    v6 = [entryCopy valueForKeyPath:@"book-info.cover-image-path"];
    v5 = BUDynamicCast();
  }

  return v5;
}

+ (id)collectionIdFromPlistEntry:(id)entry
{
  v18 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = +[IMLibraryPlist keyNameForCollectionId];
  objc_opt_class();
  v5 = [entryCopy objectForKeyedSubscript:v4];

  v6 = BUDynamicCast();

  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
    v8 = [v7 scanHexLongLong:&v13];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      stringValue = [v9 stringValue];
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

      stringValue = 0;
    }
  }

  else
  {
    stringValue = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return stringValue;
}

+ (id)storePlaylistIdFromPlistEntry:(id)entry
{
  entryCopy = entry;
  v4 = +[IMLibraryPlist keyNameForStorePlaylistId];
  v5 = [entryCopy objectForKeyedSubscript:v4];

  if (!v5)
  {
    stringValue = [IMLibraryPlist collectionIdFromPlistEntry:entryCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v5 stringValue];
LABEL_7:
    v7 = stringValue;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v5;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (BOOL)isSupplementalContentFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForIsSupplementalContent];
  v5 = [entryCopy objectForKeyedSubscript:v4];
  v6 = BUDynamicCast();

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v8 = [IMLibraryPlist collectionIdFromPlistEntry:entryCopy];
    v9 = [IMLibraryPlist isPDFFromPlistEntry:entryCopy];
    bOOLValue = [v8 length] != 0 && v9;
  }

  return bOOLValue;
}

+ (id)storeIdFromPlistEntry:(id)entry
{
  v18 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForStoreId2];
  v5 = [entryCopy objectForKey:v4];
  v6 = BUDynamicCast();

  if (!v6)
  {
    v11 = +[IMLibraryPlist keyNameForStoreId];
    v6 = [entryCopy objectForKey:v11];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v6 stringValue];
LABEL_13:
        stringValue2 = stringValue;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = v6;
        v6 = stringValue;
        goto LABEL_13;
      }
    }

    stringValue2 = 0;
    goto LABEL_15;
  }

  v15 = 0;
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  v8 = [v7 scanHexLongLong:&v15];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    stringValue2 = [v9 stringValue];
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

    stringValue2 = 0;
  }

LABEL_15:
  if ([stringValue2 length] <= 1)
  {

    stringValue2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return stringValue2;
}

+ (id)permlinkFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"iTunesU Permlink"];

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

+ (id)importDateFromPlistEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = +[IMLibraryPlist keyNameForImportDate];
  v5 = [entryCopy objectForKey:v4];

  v6 = BUDynamicCast();

  return v6;
}

+ (id)assetIDFromItunesMetadataEntry:(id)entry
{
  entryCopy = entry;
  v4 = [IMLibraryPlist publisherUniqueIDFromItunesMetadataEntry:entryCopy];
  if (!v4)
  {
    v4 = [IMLibraryPlist uniqueIDFromItunesMetadataEntry:entryCopy];
    if (!v4)
    {
      v4 = [IMLibraryPlist packageFileHashFromItunesMetadataEntry:entryCopy];
    }
  }

  v5 = v4;

  return v5;
}

+ (id)publisherUniqueIDFromItunesMetadataEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy valueForKeyPath:@"book-info.publisher-unique-id"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)uniqueIDFromItunesMetadataEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy valueForKeyPath:@"book-info.unique-id"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)titleFromItunesMetadataEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKey:@"itemName"];
  if (!v4)
  {
    v4 = [entryCopy valueForKeyPath:@"playlistName"];
  }

  return v4;
}

+ (id)endOfBookExperiencesFromItunesMetadataEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"experiences"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceKindFromExperienceEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"kind"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceLocationFromExperienceEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"loc"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceLocationTypeFromExperienceEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"locType"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceVersionFromExperienceEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"version"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceParamsFromExperienceEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"params"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)experienceConfidenceFromExperienceParamEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  v4 = [entryCopy objectForKey:@"confidence"];

  v5 = BUDynamicCast();

  return v5;
}

+ (id)booksRepositoryPath
{
  bu_booksRepositoryURL = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
  path = [bu_booksRepositoryURL path];

  return path;
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
  block[4] = self;
  if (qword_27EC71FA8 != -1)
  {
    dispatch_once(&qword_27EC71FA8, block);
  }

  v2 = qword_27EC71FA0;

  return v2;
}

@end