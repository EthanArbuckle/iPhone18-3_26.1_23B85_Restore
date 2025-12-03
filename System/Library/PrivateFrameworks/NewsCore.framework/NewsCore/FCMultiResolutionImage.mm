@interface FCMultiResolutionImage
- (BOOL)isEqual:(id)equal;
- (FCMultiResolutionImage)init;
- (FCMultiResolutionImage)initWithConfigDictionary:(id)dictionary;
- (FCMultiResolutionImage)initWithImageURL1X:(id)x imageURL2X:(id)l2X imageURL3X:(id)l3X;
- (unint64_t)hash;
@end

@implementation FCMultiResolutionImage

- (FCMultiResolutionImage)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMultiResolutionImage init]";
    v10 = 2080;
    v11 = "FCMultiResolutionImage.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMultiResolutionImage init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMultiResolutionImage)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationURLValue(dictionaryCopy, @"image1x");
  v6 = FCAppConfigurationURLValue(dictionaryCopy, @"image2x");
  v7 = FCAppConfigurationURLValue(dictionaryCopy, @"image3x");

  v8 = [(FCMultiResolutionImage *)self initWithImageURL1X:v5 imageURL2X:v6 imageURL3X:v7];
  return v8;
}

- (FCMultiResolutionImage)initWithImageURL1X:(id)x imageURL2X:(id)l2X imageURL3X:(id)l3X
{
  xCopy = x;
  l2XCopy = l2X;
  l3XCopy = l3X;
  v15.receiver = self;
  v15.super_class = FCMultiResolutionImage;
  v12 = [(FCMultiResolutionImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageURL1x, x);
    objc_storeStrong(&v13->_imageURL2x, l2X);
    objc_storeStrong(&v13->_imageURL3x, l3X);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    imageURL1x = [(FCMultiResolutionImage *)self imageURL1x];
    imageURL1x2 = [v6 imageURL1x];
    if ([v7 nf_object:imageURL1x isEqualToObject:imageURL1x2])
    {
      v10 = MEMORY[0x1E69E58C0];
      imageURL2x = [(FCMultiResolutionImage *)self imageURL2x];
      imageURL2x2 = [v6 imageURL2x];
      if ([v10 nf_object:imageURL2x isEqualToObject:imageURL2x2])
      {
        v13 = MEMORY[0x1E69E58C0];
        imageURL3x = [(FCMultiResolutionImage *)self imageURL3x];
        imageURL3x2 = [v6 imageURL3x];
        v16 = [v13 nf_object:imageURL3x isEqualToObject:imageURL3x2];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  imageURL1x = [(FCMultiResolutionImage *)self imageURL1x];
  v4 = [imageURL1x hash];
  imageURL2x = [(FCMultiResolutionImage *)self imageURL2x];
  v6 = [imageURL2x hash] ^ v4;
  imageURL3x = [(FCMultiResolutionImage *)self imageURL3x];
  v8 = [imageURL3x hash];

  return v6 ^ v8;
}

@end