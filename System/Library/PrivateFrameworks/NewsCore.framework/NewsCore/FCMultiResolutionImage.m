@interface FCMultiResolutionImage
- (BOOL)isEqual:(id)a3;
- (FCMultiResolutionImage)init;
- (FCMultiResolutionImage)initWithConfigDictionary:(id)a3;
- (FCMultiResolutionImage)initWithImageURL1X:(id)a3 imageURL2X:(id)a4 imageURL3X:(id)a5;
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

- (FCMultiResolutionImage)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationURLValue(v4, @"image1x");
  v6 = FCAppConfigurationURLValue(v4, @"image2x");
  v7 = FCAppConfigurationURLValue(v4, @"image3x");

  v8 = [(FCMultiResolutionImage *)self initWithImageURL1X:v5 imageURL2X:v6 imageURL3X:v7];
  return v8;
}

- (FCMultiResolutionImage)initWithImageURL1X:(id)a3 imageURL2X:(id)a4 imageURL3X:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCMultiResolutionImage;
  v12 = [(FCMultiResolutionImage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageURL1x, a3);
    objc_storeStrong(&v13->_imageURL2x, a4);
    objc_storeStrong(&v13->_imageURL3x, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [(FCMultiResolutionImage *)self imageURL1x];
    v9 = [v6 imageURL1x];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCMultiResolutionImage *)self imageURL2x];
      v12 = [v6 imageURL2x];
      if ([v10 nf_object:v11 isEqualToObject:v12])
      {
        v13 = MEMORY[0x1E69E58C0];
        v14 = [(FCMultiResolutionImage *)self imageURL3x];
        v15 = [v6 imageURL3x];
        v16 = [v13 nf_object:v14 isEqualToObject:v15];
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
  v3 = [(FCMultiResolutionImage *)self imageURL1x];
  v4 = [v3 hash];
  v5 = [(FCMultiResolutionImage *)self imageURL2x];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCMultiResolutionImage *)self imageURL3x];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end