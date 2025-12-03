@interface PKDiscoveryMedia
- (BOOL)isEqual:(id)equal;
- (NSBundle)bundle;
- (PKDiscoveryMedia)initWithCoder:(id)coder;
- (PKDiscoveryMedia)initWithDictionary:(id)dictionary;
- (id)_remoteAssetForScale:(double)scale;
- (id)description;
- (id)imageDataFromCacheWithScale:(double)scale;
- (unint64_t)hash;
- (void)downloadImageDataWithScale:(double)scale shouldWriteData:(BOOL)data completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setBundle:(id)bundle;
@end

@implementation PKDiscoveryMedia

- (PKDiscoveryMedia)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = PKDiscoveryMedia;
  v5 = [(PKDiscoveryMedia *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
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
    [dictionaryCopy PKDoubleForKey:@"width"];
    v5->_width = v8;
    [dictionaryCopy PKDoubleForKey:@"height"];
    v5->_height = v9;
    v10 = [dictionaryCopy PKColorForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v10;

    v12 = [dictionaryCopy PKStringForKey:@"bundleAssetFilename"];
    bundleImageName = v5->_bundleImageName;
    v5->_bundleImageName = v12;

    v14 = [dictionaryCopy PKDictionaryForKey:@"urls"];
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

- (id)imageDataFromCacheWithScale:(double)scale
{
  v3 = [(PKDiscoveryMedia *)self _remoteAssetForScale:scale];
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

- (void)downloadImageDataWithScale:(double)scale shouldWriteData:(BOOL)data completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = [(PKDiscoveryMedia *)self _remoteAssetForScale:scale];
    v10 = [v9 url];
    v11 = v10;
    if (self->_type != 1 || v10 == 0)
    {
      completionCopy[2](completionCopy, 0, 1);
    }

    else
    {
      v13 = +[PKObjectDownloader sharedImageAssetDownloader];
      v14 = [v13 cachedDataForURL:v11];
      sha1Hex = [v9 sha1Hex];
      v16 = sha1Hex;
      if (v14)
      {
        (completionCopy)[2](completionCopy, v14, 1);
      }

      else if (sha1Hex && PKCachedFileForSHA1Exists(sha1Hex))
      {
        v17 = PKCachedFileForSHA1(v16);
        (completionCopy)[2](completionCopy, v17, 1);
      }

      else
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __74__PKDiscoveryMedia_downloadImageDataWithScale_shouldWriteData_completion___block_invoke;
        v18[3] = &unk_1E79CB560;
        v19 = v11;
        v20 = completionCopy;
        dataCopy = data;
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

- (id)_remoteAssetForScale:(double)scale
{
  if (scale > 2.0)
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
    if (scale > 2.0)
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

- (void)setBundle:(id)bundle
{
  bundleURL = [bundle bundleURL];
  bundleURL = self->_bundleURL;
  self->_bundleURL = bundleURL;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != *(equalCopy + 2))
  {
    goto LABEL_18;
  }

  urls = self->_urls;
  v6 = *(equalCopy + 3);
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

  if (self->_width != *(equalCopy + 4) || self->_height != *(equalCopy + 5) || !CGColorEqualToColor(-[PKColor CGColor](self->_backgroundColor, "CGColor"), [*(equalCopy + 6) CGColor]))
  {
    goto LABEL_18;
  }

  bundleImageName = self->_bundleImageName;
  v8 = *(equalCopy + 7);
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
  v10 = *(equalCopy + 1);
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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_urls forKey:@"urls"];
  [coderCopy encodeDouble:@"width" forKey:self->_width];
  [coderCopy encodeDouble:@"height" forKey:self->_height];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeObject:self->_bundleImageName forKey:@"bundleAssetFilename"];
  [coderCopy encodeObject:self->_bundleURL forKey:@"bundleURL"];
}

- (PKDiscoveryMedia)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKDiscoveryMedia;
  v5 = [(PKDiscoveryMedia *)&v21 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"urls"];
    urls = v5->_urls;
    v5->_urls = v10;

    [coderCopy decodeDoubleForKey:@"width"];
    v5->_width = v12;
    [coderCopy decodeDoubleForKey:@"height"];
    v5->_height = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleAssetFilename"];
    bundleImageName = v5->_bundleImageName;
    v5->_bundleImageName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v18;
  }

  return v5;
}

@end