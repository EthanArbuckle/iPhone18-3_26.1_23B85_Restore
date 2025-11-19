@interface PKRemoteImage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteImage:(id)a3;
- (PKRemoteImage)initWithCoder:(id)a3;
- (PKRemoteImage)initWithDictionary:(id)a3;
- (PKRemoteImage)initWithRemoteURL:(id)a3 scaleFactor:(unint64_t)a4 width:(double)a5 height:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)fetchImageWithCompletion:(id)a3;
@end

@implementation PKRemoteImage

- (PKRemoteImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKRemoteImage;
  v5 = [(PKRemoteImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKURLForKey:@"url"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [v4 PKStringForKey:@"scale"];
    v5->_scaleFactor = PKRemoteImageScaleFactorFromString(v8);

    v9 = [v4 PKNumberForKey:@"width"];
    v5->_width = PKRemoteImageDimensionFromValue(v9);

    v10 = [v4 PKNumberForKey:@"height"];
    v5->_height = PKRemoteImageDimensionFromValue(v10);
  }

  return v5;
}

- (PKRemoteImage)initWithRemoteURL:(id)a3 scaleFactor:(unint64_t)a4 width:(double)a5 height:(double)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = PKRemoteImage;
  v12 = [(PKRemoteImage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    if (!v11)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_remoteURL, a3);
    v13->_scaleFactor = a4;
    v13->_width = a5;
    v13->_height = a6;
  }

  v14 = v13;
LABEL_6:

  return v14;
}

- (void)fetchImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_remoteURL)
    {
      if (self->_scaleFactor == 3)
      {
        v6 = 3.0;
      }

      else
      {
        v6 = 2.0;
      }

      v7 = +[PKObjectDownloader sharedImageAssetDownloader];
      v8 = [v7 cachedDataForURL:self->_remoteURL];
      if (v8)
      {
        v9 = [[PKImage alloc] initWithData:v8 scale:v6];
        (v5)[2](v5, v9);
      }

      else
      {
        remoteURL = self->_remoteURL;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __42__PKRemoteImage_fetchImageWithCompletion___block_invoke;
        v11[3] = &unk_1E79E1388;
        v12 = v5;
        v13 = v6;
        [v7 downloadFromUrl:remoteURL completionHandler:v11];
      }
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

void __42__PKRemoteImage_fetchImageWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [[PKImage alloc] initWithData:v6 scale:*(a1 + 40)];

    (*(v5 + 16))(v5, v7);
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"remoteURL: '%@'; ", self->_remoteURL];
  scaleFactor = self->_scaleFactor;
  if (scaleFactor > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79E13A8[scaleFactor];
  }

  [v3 appendFormat:@"scale: '%@'; ", v5];
  [v3 appendFormat:@"width: '%f'; ", *&self->_width];
  [v3 appendFormat:@"height: '%f'; ", *&self->_height];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteImage *)self isEqualToRemoteImage:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteImage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_13;
  }

  remoteURL = self->_remoteURL;
  v6 = *(v4 + 1);
  if (remoteURL)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (remoteURL == v6)
    {
      goto LABEL_10;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (([(NSURL *)remoteURL isEqual:?]& 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (self->_scaleFactor != *(v4 + 2) || self->_width != v4[3])
  {
    goto LABEL_13;
  }

  v8 = self->_height == v4[4];
LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_remoteURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_scaleFactor - v4 + 32 * v4;
  v6 = self->_width - v5 + 32 * v5;
  v7 = self->_height - v6 + 32 * v6;

  return v7;
}

- (PKRemoteImage)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKRemoteImage;
  v5 = [(PKRemoteImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scale"];
    v5->_scaleFactor = PKRemoteImageScaleFactorFromString(v8);

    [v4 decodeDoubleForKey:@"width"];
    v5->_width = v9;
    [v4 decodeDoubleForKey:@"height"];
    v5->_height = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  remoteURL = self->_remoteURL;
  v7 = a3;
  [v7 encodeObject:remoteURL forKey:@"url"];
  scaleFactor = self->_scaleFactor;
  if (scaleFactor > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E13A8[scaleFactor];
  }

  [v7 encodeObject:v6 forKey:@"scale"];
  [v7 encodeDouble:@"width" forKey:self->_width];
  [v7 encodeDouble:@"height" forKey:self->_height];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSURL *)self->_remoteURL copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_scaleFactor;
  *(v5 + 24) = self->_width;
  *(v5 + 32) = self->_height;
  return v5;
}

@end