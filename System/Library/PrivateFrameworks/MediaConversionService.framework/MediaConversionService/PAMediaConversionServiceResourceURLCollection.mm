@interface PAMediaConversionServiceResourceURLCollection
+ (BOOL)getSignatureString:(id *)a3 filenameSummary:(id *)a4 forDictionaryRepresentation:(id)a5;
+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)a3 accessProvider:(id)a4 error:(id *)a5;
+ (id)collectionWithMainResourceURL:(id)a3;
+ (id)filenameSummaryStringForDictionaryRepresentation:(id)a3;
- (BOOL)allURLsAreReadable;
- (BOOL)containsAllRoles:(id)a3;
- (BOOL)containsAnyRole:(id)a3;
- (BOOL)copyURL:(id)a3 forRole:(id)a4 toDirectory:(id)a5 error:(id *)a6;
- (BOOL)ensureFilesExistWithError:(id *)a3;
- (BOOL)isBlastDoorAccessRequired;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeExistingEmptyFilesWithError:(id *)a3;
- (NSDictionary)blastDoorMainSourceProperties;
- (NSDictionary)blastDoorVideoComplementProperties;
- (NSError)blastDoorError;
- (NSURL)blastDoorSourceURL;
- (PAMediaConversionServiceResourceURLCollection)init;
- (id)bookmarkDataDictionaryRepresentationWithError:(id *)a3;
- (id)fileSizeSummary;
- (id)filenameExtensionAndPathHashForRole:(id)a3;
- (id)logMessageSummaryWithFullPath:(BOOL)a3;
- (id)resourceURLForRole:(id)a3;
- (id)typeIdentifierForResourceURLWithRole:(id)a3;
- (id)urlForDebugDumpWithDirectoryName:(id)a3 inExistingParentDirectory:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)enumerateResourceURLReferences:(id)a3;
- (void)enumerateResourceURLs:(id)a3;
- (void)setResourceURL:(id)a3 forRole:(id)a4;
@end

@implementation PAMediaConversionServiceResourceURLCollection

- (BOOL)copyURL:(id)a3 forRole:(id)a4 toDirectory:(id)a5 error:(id *)a6
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = *MEMORY[0x277CCA160];
  v19[0] = @"mobile";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v12 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:v11 error:a6];

  v13 = 0;
  if (v12)
  {
    v14 = [v8 lastPathComponent];
    v15 = [v9 URLByAppendingPathComponent:v14];

    v13 = [v10 copyItemAtURL:v8 toURL:v15 error:a6];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)urlForDebugDumpWithDirectoryName:(id)a3 inExistingParentDirectory:(id)a4 error:(id *)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:541 description:{@"Invalid parameter not satisfying: %@", @"outputDirectoryName"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"parentDirectoryURL"}];

LABEL_3:
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v44 = 0;
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v44];

  if ((v14 & v44 & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:546 description:{@"Invalid parameter not satisfying: %@", @"exists && isDirectory"}];
  }

  v15 = [v11 URLByAppendingPathComponent:v9];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v45 = *MEMORY[0x277CCA160];
  v46[0] = @"mobile";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v17 = (v39 + 5);
  obj = v39[5];
  v18 = [v12 createDirectoryAtURL:v15 withIntermediateDirectories:0 attributes:v16 error:&obj];
  objc_storeStrong(v17, obj);

  if (v18)
  {
    goto LABEL_6;
  }

  v21 = [v39[5] domain];
  if ([v21 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v22 = [v39[5] code] == 516;

    if (v22)
    {
LABEL_6:
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __114__PAMediaConversionServiceResourceURLCollection_urlForDebugDumpWithDirectoryName_inExistingParentDirectory_error___block_invoke;
      v28[3] = &unk_27989B620;
      v19 = v15;
      v29 = v19;
      v30 = self;
      v31 = &v38;
      v32 = &v33;
      [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v28];
      if (*(v34 + 24) == 1)
      {
        v20 = 0;
        if (a5)
        {
          *a5 = v39[5];
        }
      }

      else
      {
        v20 = v19;
      }

      _Block_object_dispose(&v33, 8);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v20 = 0;
  if (a5)
  {
    *a5 = v39[5];
  }

LABEL_18:
  _Block_object_dispose(&v38, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

void __114__PAMediaConversionServiceResourceURLCollection_urlForDebugDumpWithDirectoryName_inExistingParentDirectory_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 URLByAppendingPathComponent:v9];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  v13 = [v11 copyURL:v8 forRole:v9 toDirectory:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)enumerateResourceURLs:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__PAMediaConversionServiceResourceURLCollection_enumerateResourceURLs___block_invoke;
  v6[3] = &unk_27989B5F8;
  v7 = v4;
  v5 = v4;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v6];
}

void __71__PAMediaConversionServiceResourceURLCollection_enumerateResourceURLs___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 url];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (void)enumerateResourceURLReferences:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMutableDictionary *)self->_urlReferencesByRole allKeys];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_117];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v12 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v11];
      v14 = 0;
      v4[2](v4, v11, v12, &v14);
      LOBYTE(v11) = v14;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)fileSizeSummary
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"<"];
  v4 = [MEMORY[0x277CBEB18] array];
  urlReferencesByRole = self->_urlReferencesByRole;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__PAMediaConversionServiceResourceURLCollection_fileSizeSummary__block_invoke;
  v9[3] = &unk_27989B5D0;
  v10 = v4;
  v6 = v4;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [v6 componentsJoinedByString:@"|"];
  [v3 appendString:v7];

  [v3 appendString:@">"];

  return v3;
}

void __64__PAMediaConversionServiceResourceURLCollection_fileSizeSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0;
  v15 = 0;
  v6 = [a3 getFileSize:&v15 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    v9 = [v8 stringValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get file size for url with role %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = @"?";
  }

  v10 = *(a1 + 32);
  v16[0] = v5;
  v16[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@"="];
  [v10 addObject:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)logMessageSummaryWithFullPath:(BOOL)a3
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"<"];
  v6 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __79__PAMediaConversionServiceResourceURLCollection_logMessageSummaryWithFullPath___block_invoke;
  v13 = &unk_27989B5A8;
  v14 = v6;
  v15 = a3;
  v7 = v6;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:&v10];
  v8 = [v7 componentsJoinedByString:{@"|", v10, v11, v12, v13}];
  [v5 appendString:v8];

  [v5 appendString:@">"];

  return v5;
}

void __79__PAMediaConversionServiceResourceURLCollection_logMessageSummaryWithFullPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v15[0] = v5;
  v8 = *(a1 + 40);
  v9 = [v6 path];
  v10 = v9;
  v11 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = [v9 lastPathComponent];
  }

  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [v12 componentsJoinedByString:@"="];
  [v7 addObject:v13];

  if ((v8 & 1) == 0)
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)allURLsAreReadable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PAMediaConversionServiceResourceURLCollection_allURLsAreReadable__block_invoke;
  v6[3] = &unk_27989B580;
  v8 = &v9;
  v4 = v3;
  v7 = v4;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLs:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

void __67__PAMediaConversionServiceResourceURLCollection_allURLsAreReadable__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 path];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isReadableFileAtPath:v7];

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)removeExistingEmptyFilesWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__PAMediaConversionServiceResourceURLCollection_removeExistingEmptyFilesWithError___block_invoke;
  v10[3] = &unk_27989B558;
  v12 = &v18;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (a3 && *(v15 + 24))
  {
    *a3 = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

void __83__PAMediaConversionServiceResourceURLCollection_removeExistingEmptyFilesWithError___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v22 = 0;
  v10 = [v8 getFileSize:&v22 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 url];
      v19 = *(*(a1[5] + 8) + 40);
      *buf = 138543874;
      v24 = v7;
      v25 = 2112;
      v26 = v14;
      v27 = 2114;
      v28 = v19;
      v16 = MEMORY[0x277D86220];
      v17 = "Unable to get file size for URL ref with role %{public}@ %@: %{public}@";
      goto LABEL_10;
    }

LABEL_7:
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (!v22)
  {
    v11 = a1[4];
    v12 = [v8 url];
    v13 = *(a1[5] + 8);
    v20 = *(v13 + 40);
    LOBYTE(v11) = [v11 removeItemAtURL:v12 error:&v20];
    objc_storeStrong((v13 + 40), v20);

    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 url];
        v15 = *(*(a1[5] + 8) + 40);
        *buf = 138543874;
        v24 = v7;
        v25 = 2112;
        v26 = v14;
        v27 = 2114;
        v28 = v15;
        v16 = MEMORY[0x277D86220];
        v17 = "Unable to remove empty file for URL ref with role %{public}@ %@: %{public}@";
LABEL_10:
        _os_log_error_impl(&dword_2585D9000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)ensureFilesExistWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__PAMediaConversionServiceResourceURLCollection_ensureFilesExistWithError___block_invoke;
  v10[3] = &unk_27989B558;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v15 + 24);
  if (a3 && *(v15 + 24))
  {
    *a3 = v19[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 ^ 1;
}

void __75__PAMediaConversionServiceResourceURLCollection_ensureFilesExistWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 url];
  v8 = [v7 path];

  if ([*(a1 + 32) fileExistsAtPath:v8 isDirectory:0])
  {
    goto LABEL_17;
  }

  v9 = [v6 url];
  v10 = [v9 URLByDeletingLastPathComponent];

  v27 = 0;
  v11 = *(a1 + 32);
  v12 = [v10 path];
  LODWORD(v11) = [v11 fileExistsAtPath:v12 isDirectory:&v27];

  if (v11)
  {
    v13 = MEMORY[0x277CCA160];
    if (v27)
    {
      goto LABEL_9;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v33 = v8;
    v14 = MEMORY[0x277D86220];
    v15 = "Attempting to create empty destination output file at path %@ but the parent directory path exists and is not a directory";
    goto LABEL_19;
  }

  v16 = *(a1 + 32);
  v13 = MEMORY[0x277CCA160];
  v30 = *MEMORY[0x277CCA160];
  v31 = @"mobile";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v18 = *(*(a1 + 48) + 8);
  obj = *(v18 + 40);
  LOBYTE(v16) = [v16 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v17 error:&obj];
  objc_storeStrong((v18 + 40), obj);

  if (v16)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v25 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v33 = v25;
    v14 = MEMORY[0x277D86220];
    v15 = "Attempting to create empty destination output file at path %@ but parent directory creation failed:";
LABEL_19:
    _os_log_error_impl(&dword_2585D9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v19 = *(a1 + 32);
    v28 = *v13;
    v29 = @"mobile";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    LOBYTE(v19) = [v19 createFileAtPath:v8 contents:0 attributes:v20];

    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v8;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create empty file at destination %@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)filenameExtensionAndPathHashForRole:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    [v3 getPathHash:&v11 lastPathComponent:&v10];
    v5 = v10;
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 pathExtension];
    v8 = [v6 stringWithFormat:@"%@|%lx", v7, v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bookmarkDataDictionaryRepresentationWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  urlReferencesByRole = self->_urlReferencesByRole;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__PAMediaConversionServiceResourceURLCollection_bookmarkDataDictionaryRepresentationWithError___block_invoke;
  v10[3] = &unk_27989B558;
  v12 = &v18;
  v7 = v5;
  v11 = v7;
  v13 = &v14;
  [(NSMutableDictionary *)urlReferencesByRole enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v15 + 24) == 1)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = v19[5];
    }
  }

  else
  {
    v8 = v7;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __95__PAMediaConversionServiceResourceURLCollection_bookmarkDataDictionaryRepresentationWithError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [a3 dictionaryRepresentationWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v11;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to encode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)typeIdentifierForResourceURLWithRole:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v8 = [v6 url];
  if (!v8)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:313 description:@"Unexpected nil role"];
  }

  v35 = 0;
  v9 = *MEMORY[0x277CBE918];
  v34 = 0;
  v10 = [v8 getResourceValue:&v35 forKey:v9 error:&v34];
  v11 = v35;
  v12 = v34;
  v13 = v12;
  if ((v10 & 1) == 0)
  {
    v15 = [v12 domain];
    v16 = [v15 isEqualToString:*MEMORY[0x277CCA050]];
    v14 = v16;
    if (v16)
    {
      v17 = [v13 code];

      if (v17 != 260)
      {
        v14 = 0;
        if (v11)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }

      v18 = MEMORY[0x277CE1CB8];
      v15 = [v8 lastPathComponent];
      v19 = [v15 pathExtension];
      v20 = [v18 typeWithFilenameExtension:v19];
      v21 = [v20 identifier];

      v11 = v21;
    }

    if (v11)
    {
      goto LABEL_13;
    }

LABEL_21:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = [v8 path];
      *buf = 138543874;
      v37 = v5;
      v38 = 2112;
      v39 = v31;
      v40 = 2114;
      v41 = v13;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to determine type identifier for URL with role %{public}@ %@: %{public}@", buf, 0x20u);
    }

    v11 = 0;
    goto LABEL_24;
  }

  v14 = 0;
LABEL_13:
  if ((v14 & 1) == 0)
  {
    if (v11)
    {
      v22 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v11];
      v23 = [v22 conformsToType:*MEMORY[0x277CE1DB0]];

      if (v23)
      {
        v24 = CGImageSourceCreateWithURL(v8, 0);
        if (v24)
        {
          v25 = v24;
          v26 = CGImageSourceGetType(v24);
          v27 = v26;
          if (v26)
          {
            v28 = v26;

            v11 = v28;
          }

          CFRelease(v25);
        }
      }
    }
  }

LABEL_24:

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)containsAnyRole:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];

        if (v11)
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)containsAllRoles:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"[roles count]"}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)resourceURLForRole:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"role"}];
  }

  v6 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v5];
  v7 = [v6 url];

  v8 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];

  if (v8)
  {
    v9 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
    v10 = [v9 validateAccessForURL:v7 role:v5];

    v7 = v10;
  }

  return v7;
}

- (void)setResourceURL:(id)a3 forRole:(id)a4
{
  v13 = a3;
  v7 = a4;
  if (v13)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"role"}];

LABEL_3:
  v8 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:v7];

  if (v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:253 description:{@"This resource URL collection already has a URL for role '%@'", v7}];
  }

  v9 = [PAMediaConversionServiceResourceURLReference referenceWithURL:v13];
  [(NSMutableDictionary *)self->_urlReferencesByRole setObject:v9 forKeyedSubscript:v7];
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PAMediaConversionServiceResourceURLCollection_hash__block_invoke;
  v4[3] = &unk_27989B530;
  v4[4] = &v5;
  [(PAMediaConversionServiceResourceURLCollection *)self enumerateResourceURLReferences:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __53__PAMediaConversionServiceResourceURLCollection_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = [a3 getPathHash:&v5 lastPathComponent:0];
  *(*(*(a1 + 32) + 8) + 24) ^= v5;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  urlReferencesByRole = self->_urlReferencesByRole;
  v4 = [a3 urlReferencesByRole];
  LOBYTE(urlReferencesByRole) = [(NSMutableDictionary *)urlReferencesByRole isEqual:v4];

  return urlReferencesByRole;
}

- (PAMediaConversionServiceResourceURLCollection)init
{
  v6.receiver = self;
  v6.super_class = PAMediaConversionServiceResourceURLCollection;
  v2 = [(PAMediaConversionServiceResourceURLCollection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    urlReferencesByRole = v2->_urlReferencesByRole;
    v2->_urlReferencesByRole = v3;
  }

  return v2;
}

+ (id)filenameSummaryStringForDictionaryRepresentation:(id)a3
{
  v3 = [a3 allValues];
  v4 = [v3 valueForKey:@"lastPathComponent"];
  v5 = [v4 componentsJoinedByString:@"|"];

  return v5;
}

+ (BOOL)getSignatureString:(id *)a3 filenameSummary:(id *)a4 forDictionaryRepresentation:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v10 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [v9 allKeys];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global];

  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v27 = a3;
    v28 = a4;
    v15 = 0;
    v16 = *v33;
    v29 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v30 = 0;
        v31 = 0;
        v19 = v9;
        v20 = [v9 objectForKeyedSubscript:v18];
        v21 = [PAMediaConversionServiceResourceURLReference getPathHash:&v31 lastPathComponent:&v30 forDictionaryRepresentation:v20];
        v22 = v30;

        if (v21)
        {
          v15 ^= v31;
          [v10 addObject:v22];
        }

        else
        {
          v29 = 0;
        }

        v9 = v19;
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);

    a3 = v27;
    a4 = v28;
    if ((v29 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_21;
    }
  }

  else
  {

    v15 = 0;
  }

  if (a3)
  {
    *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lx", v15];
  }

  if (a4)
  {
    *a4 = [v10 componentsJoinedByString:@"|"];
  }

  v23 = 1;
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)collectionForBookmarkDataDictionaryRepresentation:(id)a3 accessProvider:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"bookmarkDictionary"}];
  }

  v11 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __120__PAMediaConversionServiceResourceURLCollection_collectionForBookmarkDataDictionaryRepresentation_accessProvider_error___block_invoke;
  v16[3] = &unk_27989B4E8;
  v18 = &v24;
  v12 = v11;
  v17 = v12;
  v19 = &v20;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];
  if (*(v21 + 24) == 1)
  {
    v13 = 0;
    if (a5)
    {
      *a5 = v25[5];
    }
  }

  else
  {
    if (v10)
    {
      [v12 setAccessProviderDelegate:v10];
    }

    v13 = v12;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

void __120__PAMediaConversionServiceResourceURLCollection_collectionForBookmarkDataDictionaryRepresentation_accessProvider_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [PAMediaConversionServiceResourceURLReference referenceWithDictionaryRepresentation:a3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1[4] + 8) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1[5] + 8) + 40);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v11;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to decode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  *a4 = *(*(a1[6] + 8) + 24);

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)collectionWithMainResourceURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setResourceURL:v3 forRole:@"PAMediaConversionResourceRoleMainResource"];

  return v4;
}

- (NSError)blastDoorError
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 error];

  return v3;
}

- (NSURL)blastDoorSourceURL
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 blastDoorSourceURL];

  return v3;
}

- (NSDictionary)blastDoorVideoComplementProperties
{
  v3 = [(NSMutableDictionary *)self->_urlReferencesByRole objectForKeyedSubscript:@"PAMediaConversionResourceRoleVideoComplement"];
  v4 = [v3 url];

  v5 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v6 = [v5 propertiesForVideoComplementURL:v4];

  return v6;
}

- (NSDictionary)blastDoorMainSourceProperties
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 blastDoorMainSourceProperties];

  return v3;
}

- (BOOL)isBlastDoorAccessRequired
{
  v2 = [(PAMediaConversionServiceResourceURLCollection *)self accessProviderDelegate];
  v3 = [v2 isBlastDoorAccessRequired];

  return v3;
}

@end