@interface PKRemoteAssetManifestItem
+ (id)itemWithLocalURL:(id)a3 passURL:(id)a4 dictionary:(id)a5 error:(id *)a6;
+ (id)sharedURLSession;
- (BOOL)isZipFile;
- (NSString)relativeEncryptedContentsLocalPath;
- (PKRemoteAssetManifestItem)initWithCoder:(id)a3;
- (PKRemoteAssetManifestItem)initWithLocalURL:(id)a3 passURL:(id)a4 dictionary:(id)a5 error:(id *)a6;
- (void)downloadAssetWithCloudStoreCoordinatorDelegate:(id)a3 tryCount:(unint64_t)a4 completion:(id)a5;
- (void)downloadAssetWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRemoteAssetManifestItem

- (PKRemoteAssetManifestItem)initWithLocalURL:(id)a3 passURL:(id)a4 dictionary:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v70.receiver = self;
  v70.super_class = PKRemoteAssetManifestItem;
  v14 = [(PKRemoteAssetManifestItem *)&v70 init];
  if (!v14)
  {
    goto LABEL_29;
  }

  v69 = v12;
  v22 = [v13 objectForKey:@"url"];
  if (v22 && ([MEMORY[0x1E695DFF8] URLWithString:v22], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = v23;
  }

  else
  {
    if (a6)
    {
      *a6 = PKValidationErrorWithReason(@"Remote Asset %@ is missing or invalid url value", v15, v16, v17, v18, v19, v20, v21, v11);
    }

    v24 = 0;
    v14 = 0;
  }

  v25 = [v13 objectForKey:@"sha1"];
  v33 = v25;
  if (v14 && !v25)
  {
    if (a6)
    {
      *a6 = PKValidationErrorWithReason(@"Remote Asset %@ is missing sha1 value", v26, v27, v28, v29, v30, v31, v32, v11);
    }

    v14 = 0;
  }

  v34 = [v13 objectForKey:@"size"];
  v42 = v34;
  if (v14 && !v34)
  {
    if (a6)
    {
      *a6 = PKValidationErrorWithReason(@"Remote Asset %@ is missing size value", v35, v36, v37, v38, v39, v40, v41, v11);
    }

    v14 = 0;
    goto LABEL_28;
  }

  if (v14)
  {
    objc_storeStrong(&v14->_remoteURL, v24);
    objc_storeStrong(&v14->_sha1Hex, v33);
    objc_storeStrong(&v14->_size, v42);
    objc_storeStrong(&v14->_localURL, a3);
    objc_storeStrong(&v14->_passURL, a4);
    v43 = [v13 objectForKey:@"manifest"];
    manifest = v14->_manifest;
    v14->_manifest = v43;

    v14->_required = [v13 PKBoolForKey:@"required"];
    v45 = [v13 PKStringForKey:@"seid"];
    seid = v14->_seid;
    v14->_seid = v45;

    v47 = [v13 PKStringForKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v14->_ephemeralPublicKey;
    v14->_ephemeralPublicKey = v47;

    v49 = [v13 PKStringForKey:@"publicKeyHash"];
    publicKeyHash = v14->_publicKeyHash;
    v14->_publicKeyHash = v49;

    v51 = [v13 PKStringForKey:@"version"];
    encryptionScheme = v14->_encryptionScheme;
    v14->_encryptionScheme = v51;

    v60 = v14->_publicKeyHash;
    if ((v14->_ephemeralPublicKey == 0) == (v60 != 0) || (v60 != 0) == (v14->_encryptionScheme == 0))
    {
      if (a6)
      {
        v68 = v14->_ephemeralPublicKey;
        v67 = @"Missing required encryption keys (%@ %@ %@)";
LABEL_33:
        *a6 = PKValidationErrorWithReason(v67, v53, v54, v55, v56, v57, v58, v59, v68);
      }
    }

    else
    {
      v61 = [(NSURL *)v14->_localURL pathExtension];
      v62 = [v61 isEqualToString:@"encrypted"];

      if (v62)
      {
        objc_storeStrong(&v14->_encryptedContentsLocalURL, v14->_localURL);
        v63 = [(NSURL *)v14->_localURL URLByDeletingPathExtension];
        localURL = v14->_localURL;
        v14->_localURL = v63;

        v14->_encryptionSource = 3;
      }

      if (!v14->_ephemeralPublicKey || !v14->_publicKeyHash || !v14->_encryptionScheme)
      {
        goto LABEL_28;
      }

      if (v62)
      {
        v14->_encryptionSource = encryptionSourceFromManifestItemDictionary(v13);
        goto LABEL_28;
      }

      if (a6)
      {
        v67 = @"Encrypted asset with invalid filename.";
        goto LABEL_33;
      }
    }

    v65 = 0;
    v12 = v69;
    goto LABEL_30;
  }

LABEL_28:

  v12 = v69;
LABEL_29:
  v14 = v14;
  v65 = v14;
LABEL_30:

  return v65;
}

- (PKRemoteAssetManifestItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKRemoteAssetManifestItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localURL"];
    [(PKRemoteAssetManifestItem *)v5 setLocalURL:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
    [(PKRemoteAssetManifestItem *)v5 setRemoteURL:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    [(PKRemoteAssetManifestItem *)v5 setPassURL:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sha1Hex"];
    [(PKRemoteAssetManifestItem *)v5 setSha1Hex:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    [(PKRemoteAssetManifestItem *)v5 setSize:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"manifest"];
    [(PKRemoteAssetManifestItem *)v5 setManifest:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seid"];
    [(PKRemoteAssetManifestItem *)v5 setSeid:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    [(PKRemoteAssetManifestItem *)v5 setEphemeralPublicKey:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    [(PKRemoteAssetManifestItem *)v5 setPublicKeyHash:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionScheme"];
    [(PKRemoteAssetManifestItem *)v5 setEncryptionScheme:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionSource"];
    -[PKRemoteAssetManifestItem setEncryptionSource:](v5, "setEncryptionSource:", [v19 integerValue]);

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedContentsLocalURL"];
    [(PKRemoteAssetManifestItem *)v5 setEncryptedContentsLocalURL:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKRemoteAssetManifestItem *)self localURL];
  [v4 encodeObject:v5 forKey:@"localURL"];

  v6 = [(PKRemoteAssetManifestItem *)self remoteURL];
  [v4 encodeObject:v6 forKey:@"remoteURL"];

  v7 = [(PKRemoteAssetManifestItem *)self passURL];
  [v4 encodeObject:v7 forKey:@"passURL"];

  v8 = [(PKRemoteAssetManifestItem *)self sha1Hex];
  [v4 encodeObject:v8 forKey:@"sha1Hex"];

  v9 = [(PKRemoteAssetManifestItem *)self size];
  [v4 encodeObject:v9 forKey:@"size"];

  v10 = [(PKRemoteAssetManifestItem *)self manifest];
  [v4 encodeObject:v10 forKey:@"manifest"];

  v11 = [(PKRemoteAssetManifestItem *)self seid];
  [v4 encodeObject:v11 forKey:@"seid"];

  v12 = [(PKRemoteAssetManifestItem *)self ephemeralPublicKey];
  [v4 encodeObject:v12 forKey:@"ephemeralPublicKey"];

  v13 = [(PKRemoteAssetManifestItem *)self publicKeyHash];
  [v4 encodeObject:v13 forKey:@"publicKeyHash"];

  v14 = [(PKRemoteAssetManifestItem *)self encryptionScheme];
  [v4 encodeObject:v14 forKey:@"encryptionScheme"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKRemoteAssetManifestItem encryptionSource](self, "encryptionSource")}];
  [v4 encodeObject:v15 forKey:@"encryptionSource"];

  v16 = [(PKRemoteAssetManifestItem *)self encryptedContentsLocalURL];
  [v4 encodeObject:v16 forKey:@"encryptedContentsLocalURL"];
}

+ (id)itemWithLocalURL:(id)a3 passURL:(id)a4 dictionary:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_opt_class()) initWithLocalURL:v11 passURL:v10 dictionary:v9 error:a6];

  return v12;
}

- (NSString)relativeEncryptedContentsLocalPath
{
  encryptedContentsLocalURL = self->_encryptedContentsLocalURL;
  if (encryptedContentsLocalURL)
  {
    v4 = PKRelativePathAfterResolvingSymlinks(self->_passURL, encryptedContentsLocalURL);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isZipFile
{
  v2 = [(PKRemoteAssetManifestItem *)self localURL];
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"zip"];

  return v4;
}

- (void)downloadAssetWithCloudStoreCoordinatorDelegate:(id)a3 tryCount:(unint64_t)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [objc_opt_class() sharedURLSession];
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      remoteURL = self->_remoteURL;
      *buf = 138412290;
      v24 = remoteURL;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Downloading %@", buf, 0xCu);
    }

    v13 = self->_remoteURL;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __96__PKRemoteAssetManifestItem_downloadAssetWithCloudStoreCoordinatorDelegate_tryCount_completion___block_invoke;
    v18 = &unk_1E79E21F8;
    v19 = self;
    v22 = a4;
    v20 = v8;
    v21 = v9;
    v14 = [v10 dataTaskWithURL:v13 completionHandler:&v15];
    [v14 resume];
  }
}

void __96__PKRemoteAssetManifestItem_downloadAssetWithCloudStoreCoordinatorDelegate_tryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 16);
    *buf = 138413058;
    v35 = v11;
    v36 = 2048;
    v37 = [v7 length];
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Downloaded %@ with data size:%lu, URLResponse:%@ error:%@", buf, 0x2Au);
  }

  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = [v8 statusCode];
    v12 = [v9 localizedDescription];
    v15 = [v8 URL];
    v16 = [v15 absoluteString];
    PKValidationErrorWithReason(@"Couldn't download remote asset. HTTP Status: %ld, Error: %@ URL: %@", v17, v18, v19, v20, v21, v22, v23, v14);
  }

  else
  {
    v12 = v8;
    if ([v12 statusCode] == 200)
    {
      if (v7)
      {

        v13 = 0;
LABEL_13:
        (*(*(a1 + 48) + 16))();
        goto LABEL_14;
      }

      v25 = @"Empty data received. HTTP Status: %ld URL: %@";
    }

    else
    {
      v25 = @"Couldn't download remote asset. HTTP Status: %ld URL: %@";
    }

    v26 = [v12 statusCode];
    v15 = [v12 URL];
    v16 = [v15 absoluteString];
    PKValidationErrorWithReason(v25, v27, v28, v29, v30, v31, v32, v33, v26);
  }
  v13 = ;

  if (!v13)
  {
    goto LABEL_13;
  }

  if (![*(a1 + 32) isRequired])
  {
    goto LABEL_13;
  }

  v24 = *(a1 + 56);
  if (v24 > 2)
  {
    goto LABEL_13;
  }

  [*(a1 + 32) downloadAssetWithCloudStoreCoordinatorDelegate:*(a1 + 40) tryCount:v24 + 1 completion:*(a1 + 48)];
LABEL_14:
}

+ (id)sharedURLSession
{
  if (qword_1ED6D2138 != -1)
  {
    dispatch_once(&qword_1ED6D2138, &__block_literal_global_213);
  }

  v3 = _MergedGlobals_275;

  return v3;
}

void __45__PKRemoteAssetManifestItem_sharedURLSession__block_invoke()
{
  v5 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v5 setTimeoutIntervalForRequest:120.0];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:v1];
  [v5 set_appleIDContext:v2];
  v3 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v5];
  v4 = _MergedGlobals_275;
  _MergedGlobals_275 = v3;
}

- (void)downloadAssetWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKRemoteAssetManifestItem_PKDeprecated__downloadAssetWithCompletion___block_invoke;
  v6[3] = &unk_1E79E2248;
  v7 = v4;
  v5 = v4;
  [(PKRemoteAssetManifestItem *)self downloadAssetWithCloudStoreCoordinatorDelegate:0 completion:v6];
}

uint64_t __71__PKRemoteAssetManifestItem_PKDeprecated__downloadAssetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

@end