@interface PKRemoteImage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteImage:(id)image;
- (PKRemoteImage)initWithCoder:(id)coder;
- (PKRemoteImage)initWithDictionary:(id)dictionary;
- (PKRemoteImage)initWithRemoteURL:(id)l scaleFactor:(unint64_t)factor width:(double)width height:(double)height;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)fetchImageWithCompletion:(id)completion;
@end

@implementation PKRemoteImage

- (PKRemoteImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKRemoteImage;
  v5 = [(PKRemoteImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKURLForKey:@"url"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [dictionaryCopy PKStringForKey:@"scale"];
    v5->_scaleFactor = PKRemoteImageScaleFactorFromString(v8);

    v9 = [dictionaryCopy PKNumberForKey:@"width"];
    v5->_width = PKRemoteImageDimensionFromValue(v9);

    v10 = [dictionaryCopy PKNumberForKey:@"height"];
    v5->_height = PKRemoteImageDimensionFromValue(v10);
  }

  return v5;
}

- (PKRemoteImage)initWithRemoteURL:(id)l scaleFactor:(unint64_t)factor width:(double)width height:(double)height
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = PKRemoteImage;
  v12 = [(PKRemoteImage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    if (!lCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_remoteURL, l);
    v13->_scaleFactor = factor;
    v13->_width = width;
    v13->_height = height;
  }

  v14 = v13;
LABEL_6:

  return v14;
}

- (void)fetchImageWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
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
      (*(completionCopy + 2))(completionCopy, 0);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteImage *)self isEqualToRemoteImage:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    goto LABEL_13;
  }

  remoteURL = self->_remoteURL;
  v6 = *(imageCopy + 1);
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
  if (self->_scaleFactor != *(imageCopy + 2) || self->_width != imageCopy[3])
  {
    goto LABEL_13;
  }

  v8 = self->_height == imageCopy[4];
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

- (PKRemoteImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKRemoteImage;
  v5 = [(PKRemoteImage *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scale"];
    v5->_scaleFactor = PKRemoteImageScaleFactorFromString(v8);

    [coderCopy decodeDoubleForKey:@"width"];
    v5->_width = v9;
    [coderCopy decodeDoubleForKey:@"height"];
    v5->_height = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  remoteURL = self->_remoteURL;
  coderCopy = coder;
  [coderCopy encodeObject:remoteURL forKey:@"url"];
  scaleFactor = self->_scaleFactor;
  if (scaleFactor > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E13A8[scaleFactor];
  }

  [coderCopy encodeObject:v6 forKey:@"scale"];
  [coderCopy encodeDouble:@"width" forKey:self->_width];
  [coderCopy encodeDouble:@"height" forKey:self->_height];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSURL *)self->_remoteURL copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_scaleFactor;
  *(v5 + 24) = self->_width;
  *(v5 + 32) = self->_height;
  return v5;
}

@end