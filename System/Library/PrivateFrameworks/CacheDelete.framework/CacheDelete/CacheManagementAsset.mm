@interface CacheManagementAsset
+ (id)assetFromData:(id)a3;
+ (id)assetFromFile:(id)a3 withIdentifier:(id)a4;
+ (id)assetFromPath:(id)a3 withIdentifier:(id)a4 createIfAbsent:(BOOL)a5;
- ($62504CD8620D4E4BE208444870B73508)createFlattenedAsset:(int64_t *)a3;
- (CacheManagementAsset)initWithCoder:(id)a3;
- (CacheManagementAsset)initWithFlattenedAsset:(id *)a3;
- (CacheManagementAsset)initWithRelativePath:(id)a3 identifier:(id)a4 expirationDate:(id)a5 contentType:(id)a6 metadata:(id)a7 priority:(int)a8;
- (id)consumedDate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)downloadCompletionDate;
- (id)downloadStartDate;
- (id)expirationDate;
- (id)fullPath;
- (id)lastViewedDate;
- (int)purgeabilityScoreAtUrgency:(int)a3;
- (int64_t)size;
- (int64_t)sizeCached:(BOOL)a3;
- (void)commit;
- (void)encodeWithCoder:(id)a3;
- (void)setConsumedDate:(id)a3;
- (void)setDownloadCompletionDate:(id)a3;
- (void)setDownloadStartDate:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setLastViewedDate:(id)a3;
@end

@implementation CacheManagementAsset

- (CacheManagementAsset)initWithRelativePath:(id)a3 identifier:(id)a4 expirationDate:(id)a5 contentType:(id)a6 metadata:(id)a7 priority:(int)a8
{
  v31 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v27 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v15 && [v15 length])
  {
    v28.receiver = self;
    v28.super_class = CacheManagementAsset;
    v19 = [(CacheManagementAsset *)&v28 init];
    v20 = v19;
    if (v19)
    {
      v19->_assetVersion = 2;
      if (v16)
      {
        [v16 timeIntervalSinceReferenceDate];
      }

      else
      {
        v21 = nan("");
      }

      v20->_expiration_date = v21;
      objc_storeStrong(&v20->_contentType, a6);
      objc_storeStrong(&v20->_metadata, a7);
      v20->_priority = a8;
      objc_storeStrong(&v20->_relativePath, a3);
      objc_storeStrong(&v20->_identifier, a4);
      v20->_consumed_date = nan("");
      v20->_download_start_date = nan("");
      v20->_download_completion_date = nan("");
      v20->_last_viewed_date = nan("");
      displayName = v20->_displayName;
      v20->_displayName = 0;
    }

    self = v20;
    v23 = self;
  }

  else
  {
    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, "parameter error relativePath: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

- (CacheManagementAsset)initWithFlattenedAsset:(id *)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = CacheManagementAsset;
  v4 = [(CacheManagementAsset *)&v54 init];
  if (!v4)
  {
    goto LABEL_59;
  }

  if (!a3)
  {
    v6 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v22 = "Parameter error, asset is NULL";
    goto LABEL_21;
  }

  if ((*(&a3->var10 + 1) & 0x8000000000000000) == 0 && (*(&a3->var9 + 1) & 0x8000000000000000) == 0 && (*(&a3->var8 + 1) & 0x8000000000000000) == 0 && (*(&a3->var6 + 1) & 0x8000000000000000) == 0 && *(&a3->var11 + 1) < 1025)
  {
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = flattenedAssetDescription(&a3->var0);
      *buf = 138412290;
      *v56 = v9;
      _os_log_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEFAULT, "initWithFlattenedAsset: %@", buf, 0xCu);
    }

    *(v4 + 3) = a3->var0;
    *(v4 + 7) = *(&a3->var0 + 1);
    *(v4 + 8) = *(&a3->var1 + 4);
    *(v4 + 9) = *(&a3->var2 + 4);
    *(v4 + 10) = *(&a3->var3 + 4);
    *(v4 + 11) = *(&a3->var4 + 4);
    *(v4 + 2) = HIDWORD(a3->var5);
    if (*(&a3->var6 + 1) < 1)
    {
      v13 = 0;
    }

    else
    {
      v10 = &a3->var12 + 1;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:&a3->var12 + 1 encoding:4];
      v12 = *(v4 + 3);
      *(v4 + 3) = v11;

      if (!*(v4 + 3))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        *v56 = v10;
        v22 = "stringWithCString failed for %s";
        v23 = v6;
        v24 = 12;
        goto LABEL_22;
      }

      v13 = *(&a3->var6 + 1);
    }

    if (*(&a3->var8 + 1) >= 1)
    {
      v25 = &a3->var12 + v13 + 1;
      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
      v27 = *(v4 + 4);
      *(v4 + 4) = v26;

      if (!*(v4 + 4))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136315394;
        *v56 = v25;
        *&v56[8] = 2080;
        *&v56[10] = v38;
        v22 = "stringWithCString failed for %s : %s";
        v23 = v6;
        v24 = 22;
        goto LABEL_22;
      }

      v13 += *(&a3->var8 + 1);
    }

    if (*(&a3->var9 + 1) >= 1)
    {
      v28 = &a3->var12 + v13 + 1;
      v29 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
      v30 = *(v4 + 5);
      *(v4 + 5) = v29;

      if (!*(v4 + 5))
      {
        v39 = CDGetLogHandle("client");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v52 = *(&a3->var9 + 1);
          *buf = 134218242;
          *v56 = v52;
          *&v56[8] = 2080;
          *&v56[10] = v28;
          _os_log_error_impl(&dword_1BA7F1000, v39, OS_LOG_TYPE_ERROR, "stringWithCString failed for content type: [len: %zd] %s", buf, 0x16u);
        }

        goto LABEL_12;
      }

      v13 += *(&a3->var9 + 1);
    }

    if (*(&a3->var10 + 1) >= 1)
    {
      v31 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3->var12 + v13 + 1 length:?];
      v32 = *(v4 + 6);
      *(v4 + 6) = v31;

      if (!*(v4 + 6))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v22 = "dataWithBytes failed for metadata";
LABEL_21:
        v23 = v6;
        v24 = 2;
LABEL_22:
        _os_log_error_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        goto LABEL_11;
      }

      v13 += *(&a3->var10 + 1);
    }

    if (*(&a3->var11 + 1) >= 1)
    {
      v33 = CDGetLogHandle("client");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a3->var0;
        v35 = *(&a3->var11 + 1);
        *buf = 67109376;
        *v56 = var0;
        *&v56[4] = 2048;
        *&v56[6] = v35;
        _os_log_impl(&dword_1BA7F1000, v33, OS_LOG_TYPE_DEFAULT, "asserversion %u, display_name_len %ld", buf, 0x12u);
      }

      v36 = *(&a3->var11 + 1);
      if (v36 == 1)
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v22 = "display_name_len is 1 for display name";
        goto LABEL_21;
      }

      if (v36 >= 1025)
      {
        v5 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        v40 = *(&a3->var11 + 1);
        *buf = 134217984;
        *v56 = v40;
        v19 = "display name length is too large : %ld";
        goto LABEL_63;
      }

      v41 = &a3->var12 + v13 + 1;
      v42 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:4];
      v43 = *(v4 + 2);
      *(v4 + 2) = v42;

      if (!*(v4 + 2))
      {
        v5 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        *v56 = v41;
        v19 = "stringWithCString failed for display name: %s";
LABEL_63:
        v20 = v5;
        v21 = 12;
        goto LABEL_19;
      }
    }

    v44 = [v4 fullPath];
    v45 = v44;
    if (v44)
    {
      if ([v44 fileSystemRepresentation])
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v45, "fileSystemRepresentation")}];
        v47 = *(v4 + 12);
        *(v4 + 12) = v46;
LABEL_58:

LABEL_59:
        v7 = v4;
        goto LABEL_60;
      }

      v47 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v53 = *(v4 + 4);
      *buf = 138412290;
      *v56 = v53;
      v49 = "Unable to get absolute path (fileSystemRepresentation) for %@";
    }

    else
    {
      v47 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v48 = *(v4 + 4);
      *buf = 138412290;
      *v56 = v48;
      v49 = "Unable to get absolute path (NSURL) for %@";
    }

    _os_log_error_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0xCu);
    goto LABEL_58;
  }

  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v14 = *(&a3->var10 + 1);
    v15 = *(&a3->var9 + 1);
    v16 = *(&a3->var8 + 1);
    v17 = *(&a3->var6 + 1);
    v18 = *(&a3->var11 + 1);
    *buf = 134219008;
    *v56 = v14;
    *&v56[8] = 2048;
    *&v56[10] = v15;
    v57 = 2048;
    v58 = v16;
    v59 = 2048;
    v60 = v17;
    v61 = 2048;
    v62 = v18;
    v19 = "Parameter error: asset values are invalid: metadata_len: %ld, content_type_len: %ld, relative_path_len: %ld, identifier_len: %ld display_name_len %ld ";
    v20 = v5;
    v21 = 52;
LABEL_19:
    _os_log_error_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_9:

LABEL_12:
  v7 = 0;
LABEL_60:

  v50 = *MEMORY[0x1E69E9840];
  return v7;
}

- ($62504CD8620D4E4BE208444870B73508)createFlattenedAsset:(int64_t *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CacheManagementAsset *)self description];
    v56 = 138412290;
    v57 = v6;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "flattening %@", &v56, 0xCu);
  }

  v7 = [(CacheManagementAsset *)self identifier];

  if (v7)
  {
    v8 = [(CacheManagementAsset *)self identifier];
    v9 = [v8 maximumLengthOfBytesUsingEncoding:4];

    if (v9 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = 0;
        v11 = "identifier is too long: %ld";
LABEL_42:
        _os_log_error_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_ERROR, v11, &v56, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v12 = v9 + 1;
    v13 = v9 + 90;
  }

  else
  {
    v12 = 0;
    v13 = 89;
  }

  v14 = [(CacheManagementAsset *)self relativePath];

  if (v14)
  {
    v15 = [(CacheManagementAsset *)self relativePath];
    v16 = strlen([v15 fileSystemRepresentation]);
    v17 = v16 + 1;

    if (v16 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = v16 + 1;
        v11 = "relative_path_len too long: %ld";
        goto LABEL_42;
      }

LABEL_43:

      v31 = 0;
      goto LABEL_44;
    }

    v13 += v17;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(CacheManagementAsset *)self contentType];

  if (v18)
  {
    v19 = [(CacheManagementAsset *)self contentType];
    v20 = [v19 maximumLengthOfBytesUsingEncoding:4];
    v21 = v20 + 1;

    if (v20 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = v20 + 1;
        v11 = "content type too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v21;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(CacheManagementAsset *)self metadata];

  if (v22)
  {
    v23 = [(CacheManagementAsset *)self metadata];
    v24 = [v23 length];

    if (v24 < 0)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = v24;
        v11 = "metadata too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v24;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(CacheManagementAsset *)self displayName];

  if (v25)
  {
    v26 = [(CacheManagementAsset *)self displayName];
    v27 = [v26 maximumLengthOfBytesUsingEncoding:4];
    v28 = v27 + 1;

    v29 = CDGetLogHandle("client");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v56 = 134217984;
      v57 = v27 + 1;
      _os_log_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_DEFAULT, "display_name_len is %ld", &v56, 0xCu);
    }

    if (v27 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = v27 + 1;
        v11 = "display name too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!v27)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = 1;
        v11 = "display name length is undefined : %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v27 >= 1024)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v56 = 134217984;
        v57 = v27 + 1;
        v11 = "display name length is too large : %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v28;
  }

  else
  {
    v30 = CDGetLogHandle("client");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEFAULT, "no display name ", &v56, 2u);
    }

    v28 = 0;
  }

  v31 = malloc_type_malloc(v13, 0x66F0B906uLL);
  if (v31)
  {
    *v31 = [(CacheManagementAsset *)self assetVersion];
    [(CacheManagementAsset *)self expiration_date];
    *(v31 + 4) = v34;
    [(CacheManagementAsset *)self consumed_date];
    *(v31 + 12) = v35;
    [(CacheManagementAsset *)self download_start_date];
    *(v31 + 20) = v36;
    [(CacheManagementAsset *)self download_completion_date];
    *(v31 + 28) = v37;
    [(CacheManagementAsset *)self last_viewed_date];
    *(v31 + 36) = v38;
    *(v31 + 11) = [(CacheManagementAsset *)self priority];
    *(v31 + 49) = v12;
    *(v31 + 57) = v17;
    *(v31 + 65) = v21;
    *(v31 + 73) = v24;
    *(v31 + 81) = v28;
    if (v12)
    {
      v39 = [(CacheManagementAsset *)self identifier];
      v40 = [v39 getCString:v31 + 89 maxLength:*(v31 + 49) encoding:4];

      if ((v40 & 1) == 0)
      {
        v41 = CDGetLogHandle("client");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v52 = [(CacheManagementAsset *)self identifier];
          v56 = 138412290;
          v57 = v52;
          _os_log_error_impl(&dword_1BA7F1000, v41, OS_LOG_TYPE_ERROR, "unable to copy identifier: %@", &v56, 0xCu);
        }
      }

      LODWORD(v12) = *(v31 + 49);
      v17 = *(v31 + 57);
    }

    if (v17 >= 1)
    {
      v42 = [(CacheManagementAsset *)self relativePath];
      v43 = strlcpy(&v31[v12 + 89], [v42 fileSystemRepresentation], *(v31 + 57));

      if (v17 <= v43)
      {
        v44 = CDGetLogHandle("client");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = [(CacheManagementAsset *)self relativePath];
          v56 = 138412290;
          v57 = v53;
          _os_log_error_impl(&dword_1BA7F1000, v44, OS_LOG_TYPE_ERROR, "unable to copy relative path: %@", &v56, 0xCu);
        }
      }

      LODWORD(v12) = v12 + *(v31 + 57);
    }

    if (*(v31 + 65) >= 1)
    {
      v45 = [(CacheManagementAsset *)self contentType];
      v46 = [v45 getCString:&v31[v12 + 89] maxLength:*(v31 + 65) encoding:4];

      if ((v46 & 1) == 0)
      {
        v47 = CDGetLogHandle("client");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v54 = [(CacheManagementAsset *)self contentType];
          v56 = 138412290;
          v57 = v54;
          _os_log_error_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_ERROR, "unable to copy contentType: %@", &v56, 0xCu);
        }
      }

      LODWORD(v12) = v12 + *(v31 + 65);
    }

    if (*(v31 + 73) >= 1)
    {
      v48 = [(CacheManagementAsset *)self metadata];
      memcpy(&v31[v12 + 89], [v48 bytes], *(v31 + 73));

      LODWORD(v12) = v12 + *(v31 + 73);
    }

    if (*(v31 + 81) >= 1)
    {
      v49 = [(CacheManagementAsset *)self displayName];
      v50 = [v49 getCString:&v31[v12 + 89] maxLength:*(v31 + 81) encoding:4];

      if ((v50 & 1) == 0)
      {
        v51 = CDGetLogHandle("client");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v55 = [(CacheManagementAsset *)self displayName];
          v56 = 138412290;
          v57 = v55;
          _os_log_error_impl(&dword_1BA7F1000, v51, OS_LOG_TYPE_ERROR, "unable to copy displayName: %@", &v56, 0xCu);
        }

        *(v31 + 81) = 0;
      }
    }

    if (a3)
    {
      *a3 = v13;
    }
  }

LABEL_44:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (id)assetFromData:(id)a3
{
  v3 = -[CacheManagementAsset initWithFlattenedAsset:]([CacheManagementAsset alloc], "initWithFlattenedAsset:", [a3 bytes]);

  return v3;
}

+ (id)assetFromFile:(id)a3 withIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEBUG, "assetFromFile: (%@) %@ withIdentifier: %@", &v17, 0x20u);
  }

  if (!v5 || ![v5 length])
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "parameter error relativePath: %{public}@", &v17, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = stripScheme(v5);
  if (v8)
  {
    v9 = v8;
    v10 = [CacheManagementAsset assetFromPath:v8 withIdentifier:v6];
    goto LABEL_10;
  }

  v13 = fullPathToAsset(v5, v6);
  if (!v13)
  {
    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "unable to create full path for relativePath: %{public}@, and identifier: %{public}@", &v17, 0x16u);
    }

    v9 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v13, "fileSystemRepresentation")}];
  v10 = [CacheManagementAsset assetFromPath:v15 withIdentifier:v6];

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)assetFromPath:(id)a3 withIdentifier:(id)a4 createIfAbsent:(BOOL)a5
{
  v5 = a5;
  v87 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 length])
  {
    v9 = stripScheme(v7);
    v10 = nonContainerForID(v8);
    bzero(v85, 0x400uLL);
    if (!v9)
    {
      v9 = v7;
    }

    if (realpath_DARWIN_EXTSN([v9 fileSystemRepresentation], v85))
    {
      if (!v10)
      {
        v16 = 0;
LABEL_15:
        XAttr = getXAttr(v85, "com.apple.CacheManagementAsset", 0);
        v24 = XAttr;
        if (XAttr)
        {
          if (*XAttr == 2)
          {
            v25 = [[CacheManagementAsset alloc] initWithFlattenedAsset:XAttr];
            if (v25)
            {
              v26 = v25;
              [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
              v28 = v27 = v24;
              [v26 setAbsolutePath:v28];

              v29 = v27;
              v30 = 0;
              v31 = 0;
LABEL_81:
              free(v29);
              goto LABEL_82;
            }

            v32 = CDGetLogHandle("client");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = v85;
              _os_log_error_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_ERROR, "unable to create asset from file: %{public}s", buf, 0xCu);
            }

LABEL_30:
            v77 = v24;

            if (v16)
            {
              v31 = 0;
              v30 = 0;
            }

            else
            {
              v75 = v10;
              v76 = v8;
              v30 = [MEMORY[0x1E695DF70] array];
              v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
              v38 = [v37 componentsSeparatedByString:@"/"];

              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v31 = v38;
              v39 = [v31 countByEnumeratingWithState:&v78 objects:v82 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = 0;
                v42 = *v79;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v79 != v42)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v44 = *(*(&v78 + 1) + 8 * i);
                    if (v41)
                    {
                      [v30 addObject:*(*(&v78 + 1) + 8 * i)];
                      v41 = 1;
                    }

                    else
                    {
                      v45 = [*(*(&v78 + 1) + 8 * i) rangeOfString:@"com.apple.UserManagedAssets."];
                      if (v46 == 28)
                      {
                        v47 = v45;
                        v41 = [v44 length] == 34 && v47 == 0;
                      }

                      else
                      {
                        v41 = 0;
                      }
                    }
                  }

                  v40 = [v31 countByEnumeratingWithState:&v78 objects:v82 count:16];
                }

                while (v40);
              }

              v16 = [v30 componentsJoinedByString:@"/"];
              v10 = v75;
              v8 = v76;
            }

            v49 = [v16 length];
            v50 = CDGetLogHandle("client");
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
            if (v49)
            {
              if (v51)
              {
                *buf = 138543362;
                *&buf[4] = v16;
                _os_log_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_DEFAULT, "got relative path: %{public}@", buf, 0xCu);
              }

              v52 = 0x1E696A000;
            }

            else
            {
              if (v51)
              {
                v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
                *buf = 138543362;
                *&buf[4] = v53;
                _os_log_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_DEFAULT, "relative path is zero length, using path: %{public}@", buf, 0xCu);
              }

              v52 = 0x1E696A000uLL;
              [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
              v16 = v50 = v16;
            }

            v26 = [CacheManagementAsset assetWithRelativePath:v16 identifier:v8 expirationDate:0 contentType:0 metadata:0 priority:0];
            v54 = [*(v52 + 3776) stringWithUTF8String:v85];
            [v26 setAbsolutePath:v54];

            if (v26)
            {
              v55 = [v26 displayName];

              if (!v55)
              {
                v56 = CDGetLogHandle("client");
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = [v26 relativePath];
                  *buf = 138543362;
                  *&buf[4] = v57;
                  _os_log_impl(&dword_1BA7F1000, v56, OS_LOG_TYPE_DEFAULT, "looking for legacy display name in %{public}@", buf, 0xCu);
                }

                v58 = getXAttr(v85, "com.apple.coremedia.asset.name", 0);
                if (v58)
                {
                  v59 = v58;
                  v60 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = v59;
                    _os_log_impl(&dword_1BA7F1000, v60, OS_LOG_TYPE_DEFAULT, "legacy display name: %{public}s", buf, 0xCu);
                  }

                  v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v59];
                  free(v59);
                }

                else
                {
                  v61 = 0;
                }

                [v26 setDisplayName:v61];

                v62 = [v26 displayName];

                if (v62)
                {
                  v63 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    v64 = [v26 displayName];
                    *buf = 138543362;
                    *&buf[4] = v64;
                    _os_log_impl(&dword_1BA7F1000, v63, OS_LOG_TYPE_DEFAULT, "using legacy display name: %{public}@", buf, 0xCu);
                  }
                }
              }

              v65 = [v26 metadata];

              if (!v65)
              {
                v66 = CDGetLogHandle("client");
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = [v26 relativePath];
                  *buf = 138543362;
                  *&buf[4] = v67;
                  _os_log_impl(&dword_1BA7F1000, v66, OS_LOG_TYPE_DEFAULT, "looking for legacy metadata in %{public}@", buf, 0xCu);
                }

                *buf = 0;
                v68 = getXAttr(v85, "com.apple.coremedia.asset.image", buf);
                if (v68)
                {
                  v69 = v68;
                  v70 = [MEMORY[0x1E695DEF0] dataWithBytes:v68 length:*buf];
                  free(v69);
                }

                else
                {
                  v70 = 0;
                }

                [v26 setMetadata:v70];

                v71 = [v26 metadata];

                if (v71)
                {
                  v72 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1BA7F1000, v72, OS_LOG_TYPE_DEFAULT, "using legacy metadata", buf, 2u);
                  }
                }
              }
            }

            v29 = v77;
            if (!v77)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          }

          v32 = CDGetLogHandle("client");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v36 = *v24;
          *buf = 67109634;
          *&buf[4] = v36;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          *v84 = 2082;
          *&v84[2] = v85;
          v33 = "asset version (%u) is not compatible with this version of CacheManagementAsset(%u). file: %{public}s. Will create a new asset.";
          v34 = v32;
          v35 = 24;
        }

        else
        {
          if (!v5)
          {
            v26 = 0;
            v30 = 0;
            v31 = 0;
LABEL_82:
            v18 = v26;

            v17 = v18;
            goto LABEL_83;
          }

          v32 = CDGetLogHandle("client");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
          v33 = "no asset on the file, will try to create one";
          v34 = v32;
          v35 = 2;
        }

        _os_log_impl(&dword_1BA7F1000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
        goto LABEL_30;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v10, "fileSystemRepresentation")}];
      [v11 rangeOfString:v12];
      v14 = v13;

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v85];
        v16 = [v15 substringFromIndex:v14];

        goto LABEL_15;
      }

      v18 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v17 = 0;
LABEL_83:

        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = [v10 fileSystemRepresentation];
      *&buf[12] = 2082;
      *v84 = v85;
      v22 = "Asset is not in expected location: %{public}s asset: %{public}s";
    }

    else
    {
      v18 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v19 = [v9 fileSystemRepresentation];
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136446466;
      *&buf[4] = v19;
      *&buf[12] = 2082;
      *v84 = v21;
      v22 = "realpath failed for %{public}s : %{public}s";
    }

    _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
    goto LABEL_26;
  }

  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v85 = 138412290;
    v86 = v7;
    _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "parameter error absolutePath: %@", v85, 0xCu);
  }

  v17 = 0;
LABEL_84:

  v73 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(CacheManagementAsset *)self createFlattenedAsset:0];
  v5 = [CacheManagementAsset allocWithZone:a3];

  return [(CacheManagementAsset *)v5 initWithFlattenedAsset:v4];
}

- (CacheManagementAsset)initWithCoder:(id)a3
{
  v4 = a3;
  if (!self)
  {
    goto LABEL_4;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_MANAGEMENT_ASSET_DATA"];
  v6 = v5;
  if (v5)
  {
    self = [(CacheManagementAsset *)self initWithFlattenedAsset:[(CacheManagementAsset *)v5 bytes]];

LABEL_4:
    self = self;
    v6 = self;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = 0;
  v5 = [(CacheManagementAsset *)self createFlattenedAsset:&v7];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v7];
    [v4 encodeObject:v6 forKey:@"CACHE_MANAGEMENT_ASSET_DATA"];
  }
}

- (void)setExpirationDate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "setExpirationDate: %@", &v8, 0xCu);
  }

  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = nan("");
  }

  [(CacheManagementAsset *)self setExpiration_date:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)expirationDate
{
  [(CacheManagementAsset *)self expiration_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self expiration_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setConsumedDate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "setConsumedDate: %@", &v8, 0xCu);
  }

  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = nan("");
  }

  [(CacheManagementAsset *)self setConsumed_date:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)consumedDate
{
  [(CacheManagementAsset *)self consumed_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self consumed_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setDownloadStartDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setDownload_start_date:v4];
}

- (id)downloadStartDate
{
  [(CacheManagementAsset *)self download_start_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self download_start_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setDownloadCompletionDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setDownload_completion_date:v4];
}

- (id)downloadCompletionDate
{
  [(CacheManagementAsset *)self download_completion_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self download_completion_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setLastViewedDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setLast_viewed_date:v4];
}

- (id)lastViewedDate
{
  [(CacheManagementAsset *)self last_viewed_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self last_viewed_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (id)fullPath
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CacheManagementAsset *)self absolutePath];

  if (v3)
  {
    v4 = [(CacheManagementAsset *)self absolutePath:0];
    v5 = stat([v4 fileSystemRepresentation], &v17);

    if (!v5)
    {
      v13 = MEMORY[0x1E695DFF8];
      v12 = [(CacheManagementAsset *)self absolutePath];
      v14 = [v12 fileSystemRepresentation];
      v11 = [v13 fileURLWithFileSystemRepresentation:v14 isDirectory:(v17.st_mode & 0xF000) == 0x4000 relativeToURL:0];
      goto LABEL_10;
    }

    [(CacheManagementAsset *)self setAbsolutePath:0];
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CacheManagementAsset *)self identifier];
      v8 = [(CacheManagementAsset *)self relativePath];
      v17.st_dev = 138412546;
      *&v17.st_mode = v7;
      WORD2(v17.st_ino) = 2112;
      *(&v17.st_ino + 6) = v8;
      _os_log_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_DEFAULT, "[%@] No AbsolutePath, calculating for relativePath: %@", &v17, 0x16u);
    }
  }

  v9 = [(CacheManagementAsset *)self relativePath];
  v10 = [(CacheManagementAsset *)self identifier];
  v11 = fullPathToAsset(v9, v10);

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v11, "fileSystemRepresentation")}];
  [(CacheManagementAsset *)self setAbsolutePath:v12];
LABEL_10:

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)commit
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v3 = [(CacheManagementAsset *)self createFlattenedAsset:&v31];
  if (!v3)
  {
    goto LABEL_24;
  }

  p_var0 = &v3->var0;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = flattenedAssetDescription(p_var0);
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "attempting to commit flattenedAsset: %@", buf, 0xCu);
  }

  v7 = [(CacheManagementAsset *)self fullPath];
  v8 = [(CacheManagementAsset *)self absolutePath];

  if (!v8)
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [(CacheManagementAsset *)self description];
      *buf = 138412290;
      v33 = v17;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "Unable to get absolute path for: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v9 = flattenedAssetDescription(p_var0);
  v10 = [(CacheManagementAsset *)self absolutePath];
  v11 = [v10 fileSystemRepresentation];
  v12 = v31;
  if (v31 < 1)
  {
    v18 = CDGetLogHandle("client");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v33 = v12;
      _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, "parameter error: buflen is less than zero (%ld)", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v13 = v11;
  v14 = openFile(v11);
  if (v14 != -1)
  {
    v15 = v14;
    if (fsetxattr(v14, "com.apple.CacheManagementAsset", p_var0, v12, 0, 0))
    {
      v16 = CDGetLogHandle("client");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        *buf = 136315394;
        v33 = v13;
        v34 = 2080;
        v35 = v30;
        _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "fsetxattr(%s) failed: %s", buf, 0x16u);
      }

      close(v15);
      goto LABEL_16;
    }

    close(v15);

    v20 = [(CacheManagementAsset *)self absolutePath];
    removexattr([v20 fileSystemRepresentation], "com.apple.coremedia.asset.name", 1);

    v21 = [(CacheManagementAsset *)self absolutePath];
    removexattr([v21 fileSystemRepresentation], "com.apple.coremedia.asset.image", 1);

    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v31;
      v24 = [(CacheManagementAsset *)self absolutePath];
      v25 = [v24 fileSystemRepresentation];
      v26 = @"no asset description available";
      *buf = 134218498;
      v33 = v23;
      if (v9)
      {
        v26 = v9;
      }

      v34 = 2080;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEFAULT, "wrote asset (%ld bytes) to file: %s %@", buf, 0x20u);
    }

LABEL_23:
    free(p_var0);
    goto LABEL_24;
  }

LABEL_16:

  v19 = CDGetLogHandle("client");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v28 = @"no asset description available";
    if (v9)
    {
      v28 = v9;
    }

    *buf = 138412290;
    v33 = v28;
    _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "setXAttr failed, unable to commit the asset to disk. %@", buf, 0xCu);
  }

  free(p_var0);
LABEL_24:
  v27 = *MEMORY[0x1E69E9840];
}

- (int)purgeabilityScoreAtUrgency:(int)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [(CacheManagementAsset *)self expirationDate];
  if (v8)
  {
    v9 = v8;
    v10 = [(CacheManagementAsset *)self expirationDate];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    if (v7 > v12)
    {
      goto LABEL_8;
    }
  }

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CacheManagementAsset *)self relativePath];
    v15 = [(CacheManagementAsset *)self expirationDate];
    [v15 timeIntervalSinceReferenceDate];
    v41 = 138412802;
    v42 = v14;
    v43 = 2048;
    *v44 = v16;
    *&v44[8] = 2048;
    v45 = v7;
    _os_log_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore expirationDate: %f, now: %f", &v41, 0x20u);
  }

  if ([(CacheManagementAsset *)self priority]> a3 || ![(CacheManagementAsset *)self priority])
  {
    goto LABEL_22;
  }

  if ([(CacheManagementAsset *)self priority]== 1 || a3 >= 2 && [(CacheManagementAsset *)self priority]<= a3)
  {
LABEL_8:
    v17 = 1;
    goto LABEL_23;
  }

  v18 = [(CacheManagementAsset *)self consumedDate];
  if (v18)
  {
    v19 = v18;
    v20 = [(CacheManagementAsset *)self consumedDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    if (v7 > v22)
    {
      v17 = 2;
      goto LABEL_23;
    }
  }

  v23 = CDGetLogHandle("client");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(CacheManagementAsset *)self relativePath];
    v25 = [(CacheManagementAsset *)self downloadStartDate];
    [v25 timeIntervalSinceReferenceDate];
    v41 = 138412802;
    v42 = v24;
    v43 = 2048;
    *v44 = v26;
    *&v44[8] = 2048;
    v45 = v7;
    _os_log_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore downloadStartDate: %f, now: %f", &v41, 0x20u);
  }

  v27 = [(CacheManagementAsset *)self downloadStartDate];
  if (v27)
  {
    v28 = v27;
    v29 = [(CacheManagementAsset *)self downloadStartDate];
    [v29 timeIntervalSinceReferenceDate];
    v31 = v7 - v30;

    if (v31 > 129600.0)
    {
      v17 = 4;
      goto LABEL_23;
    }
  }

  v32 = CDGetLogHandle("client");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(CacheManagementAsset *)self relativePath];
    v34 = [(CacheManagementAsset *)self downloadStartDate];
    [v34 timeIntervalSinceReferenceDate];
    v41 = 138412802;
    v42 = v33;
    v43 = 2048;
    *v44 = v35;
    *&v44[8] = 2048;
    v45 = v7;
    _os_log_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore downloadStartDate: %f, now: %f", &v41, 0x20u);
  }

LABEL_22:
  v17 = 0;
LABEL_23:
  v36 = CDGetLogHandle("client");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [(CacheManagementAsset *)self relativePath];
    v38 = [(CacheManagementAsset *)self priority];
    v41 = 138413058;
    v42 = v37;
    v43 = 1024;
    *v44 = v17;
    *&v44[4] = 1024;
    *&v44[6] = v38;
    LOWORD(v45) = 1024;
    *(&v45 + 2) = a3;
    _os_log_impl(&dword_1BA7F1000, v36, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore assigning score %d, priority: %d, urgency: %d", &v41, 0x1Eu);
  }

  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

- (int64_t)size
{
  v3 = [(CacheManagementAsset *)self fullPath];
  v4 = [(CacheManagementAsset *)self absolutePath];

  if (!v4)
  {
    return -1;
  }

  v5 = [(CacheManagementAsset *)self absolutePath];
  v6 = diskUsageList(v5, 0);

  return v6;
}

- (int64_t)sizeCached:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED769FB0 != -1)
  {
    dispatch_once(&qword_1ED769FB0, &__block_literal_global);
  }

  if (v3)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSinceReferenceDate];
    if (v6 - *&_MergedGlobals_0 <= 300.0)
    {
      v7 = sizeCached__result;

      if (v7 != -1)
      {
        return sizeCached__result;
      }
    }

    else
    {
    }
  }

  result = [(CacheManagementAsset *)self size];
  sizeCached__result = result;
  return result;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = [(CacheManagementAsset *)self displayName];
  v21 = [(CacheManagementAsset *)self relativePath];
  v17 = [v21 fileSystemRepresentation];
  v16 = [(CacheManagementAsset *)self identifier];
  v3 = [(CacheManagementAsset *)self contentType];
  v15 = [(CacheManagementAsset *)self priority];
  v4 = [(CacheManagementAsset *)self purgeabilityScoreAtUrgency:2];
  v18 = [(CacheManagementAsset *)self thumbnailData];
  if (v18)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v6 = [(CacheManagementAsset *)self size];
  v7 = [(CacheManagementAsset *)self expirationDate];
  v8 = [(CacheManagementAsset *)self downloadStartDate];
  v9 = [(CacheManagementAsset *)self downloadCompletionDate];
  v10 = [(CacheManagementAsset *)self consumedDate];
  v11 = [(CacheManagementAsset *)self lastViewedDate];
  v12 = [(CacheManagementAsset *)self absolutePath];
  v13 = [v20 stringWithFormat:@"CacheManagementAsset displayName: %@, relativePath: %s, identifier: %@, contentType: %@\npriority: %d, purgeabilityScore [u:2]: %d, has thumbnail: %s, size: %lld\nexpirationDate: %@\ndownloadStartDate: %@\ndownloadCompletionDate: %@\nconsumedDate: %@\nlastViewedDate: %@\nabsolutePath: %@", v19, v17, v16, v3, v15, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end