@interface PKDiscoveryMedia
- (BOOL)isEqual:(id)a3;
- (NSBundle)bundle;
- (PKDiscoveryMedia)initWithCoder:(id)a3;
- (PKDiscoveryMedia)initWithDictionary:(id)a3;
- (id)_remoteAssetForScale:(double)a3;
- (id)description;
- (id)imageDataFromCacheWithScale:(double)a3;
- (unint64_t)hash;
- (void)downloadImageDataWithScale:(double)a3 shouldWriteData:(BOOL)a4 completion:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setBundle:(id)a3;
@end

@implementation PKDiscoveryMedia

- (PKDiscoveryMedia)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKDiscoveryMedia;
  v5 = [(PKDiscoveryMedia *)&v30 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    if ([@"image" isEqualToString:v6])
    {
      v7 = 1;
    }

    else if ([@"video" isEqualToString:v6])
    {
      v7 = 2;
    }

    else if ([@"bundleAsset" isEqualToString:v6])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v5->_type = v7;
    [v4 PKDoubleForKey:@"width"];
    v5->_width = v8;
    [v4 PKDoubleForKey:@"height"];
    v5->_height = v9;
    v10 = [v4 PKColorForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v10;

    v12 = [v4 PKStringForKey:@"bundleAssetFilename"];
    bundleImageName = v5->_bundleImageName;
    v5->_bundleImageName = v12;

    v14 = [v4 PKDictionaryForKey:@"urls"];
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
    if (v14)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__12;
      v28 = __Block_byref_object_dispose__12;
      v29 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __39__PKDiscoveryMedia_initWithDictionary___block_invoke;
      v20[3] = &unk_1E79CB538;
      v21 = v15;
      v23 = &v24;
      v22 = v5;
      [v14 enumerateKeysAndObjectsUsingBlock:v20];
      if ([v25[5] length])
      {
        v16 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v25[5];
          *buf = 138412290;
          v32 = v17;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      _Block_object_dispose(&v24, 8);
    }

    urls = v5->_urls;
    v5->_urls = v15;
  }

  return v5;
}

void __39__PKDiscoveryMedia_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[PKDiscoveryMediaRemoteAsset alloc] initWithDictionary:v5];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v11];
  }

  else
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = objc_opt_class();
    v6 = NSStringFromClass(v8);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 appendFormat:@"Malformed %@: expected dictionary and received %@", v6, v10];
  }
}

- (id)imageDataFromCacheWithScale:(double)a3
{
  v3 = [(PKDiscoveryMedia *)self _remoteAssetForScale:a3];
  if (v3)
  {
    v4 = +[PKObjectDownloader sharedImageAssetDownloader];
    v5 = [v3 url];
    v6 = [v4 cachedDataForURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)downloadImageDataWithScale:(double)a3 shouldWriteData:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [(PKDiscoveryMedia *)self _remoteAssetForScale:a3];
    v10 = [v9 url];
    v11 = v10;
    if (self->_type != 1 || v10 == 0)
    {
      v8[2](v8, 0, 1);
    }

    else
    {
      v13 = +[PKObjectDownloader sharedImageAssetDownloader];
      v14 = [v13 cachedDataForURL:v11];
      v15 = [v9 sha1Hex];
      v16 = v15;
      if (v14)
      {
        (v8)[2](v8, v14, 1);
      }

      else if (v15 && PKCachedFileForSHA1Exists(v15))
      {
        v17 = PKCachedFileForSHA1(v16);
        (v8)[2](v8, v17, 1);
      }

      else
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __74__PKDiscoveryMedia_downloadImageDataWithScale_shouldWriteData_completion___block_invoke;
        v18[3] = &unk_1E79CB560;
        v19 = v11;
        v20 = v8;
        v21 = a4;
        [v13 downloadFromUrl:v19 completionHandler:v18];
      }
    }
  }
}

void __74__PKDiscoveryMedia_downloadImageDataWithScale_shouldWriteData_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = v8;
  if ([v10 statusCode] == 200)
  {

LABEL_4:
    if (v7)
    {
      if (*(a1 + 48) == 1)
      {
        v11 = [v7 SHA1Hash];
        v12 = [v11 hexEncoding];

        PKCacheFile(v7, v12);
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v18 = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to download card image from %@ due to %@", &v18, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  v15 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v18 = 138412546;
    v19 = v16;
    v20 = 1024;
    LODWORD(v21) = [v10 statusCode];
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Could not download image asset from %@ http status %d", &v18, 0x12u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, 0, 0);
  }

LABEL_16:
}

- (id)_remoteAssetForScale:(double)a3
{
  if (a3 > 2.0)
  {
    v5 = @"3x";
  }

  else
  {
    v5 = @"2x";
  }

  v6 = v5;
  v7 = [(NSDictionary *)self->_urls objectForKey:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (a3 > 2.0)
    {
      v9 = @"2x";
    }

    else
    {
      v9 = @"3x";
    }

    v10 = v9;

    v8 = [(NSDictionary *)self->_urls objectForKey:v10];
    v6 = v10;
  }

  return v8;
}

- (void)setBundle:(id)a3
{
  v4 = [a3 bundleURL];
  bundleURL = self->_bundleURL;
  self->_bundleURL = v4;
}

- (NSBundle)bundle
{
  if (self->_bundleURL)
  {
    [MEMORY[0x1E696AAE8] bundleWithURL:?];
  }

  else
  {
    PKPassKitUIBundle();
  }
  v2 = ;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != *(v4 + 2))
  {
    goto LABEL_18;
  }

  urls = self->_urls;
  v6 = *(v4 + 3);
  if (urls && v6)
  {
    if (([(NSDictionary *)urls isEqual:?]& 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (urls != v6)
  {
    goto LABEL_18;
  }

  if (self->_width != *(v4 + 4) || self->_height != *(v4 + 5) || !CGColorEqualToColor(-[PKColor CGColor](self->_backgroundColor, "CGColor"), [*(v4 + 6) CGColor]))
  {
    goto LABEL_18;
  }

  bundleImageName = self->_bundleImageName;
  v8 = *(v4 + 7);
  if (!bundleImageName || !v8)
  {
    if (bundleImageName == v8)
    {
      goto LABEL_14;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  if (([(NSString *)bundleImageName isEqual:?]& 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  bundleURL = self->_bundleURL;
  v10 = *(v4 + 1);
  if (bundleURL && v10)
  {
    v11 = [(NSURL *)bundleURL isEqual:?];
  }

  else
  {
    v11 = bundleURL == v10;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_urls];
  [v3 safelyAddObject:self->_backgroundColor];
  [v3 safelyAddObject:self->_bundleImageName];
  [v3 safelyAddObject:self->_bundleURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_width - v5 + 32 * v5;
  v7 = self->_height - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%ld'; ", @"type", self->_type];
  [v3 appendFormat:@"%@: '%@'; ", @"urls", self->_urls];
  [v3 appendFormat:@"%@: '%f'; ", @"width", *&self->_width];
  [v3 appendFormat:@"%@: '%f'; ", @"height", *&self->_height];
  [v3 appendFormat:@"%@: '%@'; ", @"backgroundColor", self->_backgroundColor];
  [v3 appendFormat:@"%@: '%@'; ", @"bundleAssetFilename", self->_bundleImageName];
  [v3 appendFormat:@"%@: '%@'; ", @"bundleURL", self->_bundleURL];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_urls forKey:@"urls"];
  [v5 encodeDouble:@"width" forKey:self->_width];
  [v5 encodeDouble:@"height" forKey:self->_height];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [v5 encodeObject:self->_bundleImageName forKey:@"bundleAssetFilename"];
  [v5 encodeObject:self->_bundleURL forKey:@"bundleURL"];
}

- (PKDiscoveryMedia)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKDiscoveryMedia;
  v5 = [(PKDiscoveryMedia *)&v21 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"urls"];
    urls = v5->_urls;
    v5->_urls = v10;

    [v4 decodeDoubleForKey:@"width"];
    v5->_width = v12;
    [v4 decodeDoubleForKey:@"height"];
    v5->_height = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleAssetFilename"];
    bundleImageName = v5->_bundleImageName;
    v5->_bundleImageName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v18;
  }

  return v5;
}

@end