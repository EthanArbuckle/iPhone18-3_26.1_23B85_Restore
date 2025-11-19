@interface GDEntityResolutionAssetDownloadRequestResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntityResolutionAssetDownloadRequestResult:(id)a3;
- (GDEntityResolutionAssetDownloadRequestResult)initWithCoder:(id)a3;
- (GDEntityResolutionAssetDownloadRequestResult)initWithURL:(id)a3 isEmbedded:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntityResolutionAssetDownloadRequestResult

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDEntityResolutionAssetDownloadRequestResult: filepathURL:%d>", self->_filepathURL];

  return v2;
}

- (GDEntityResolutionAssetDownloadRequestResult)initWithURL:(id)a3 isEmbedded:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = GDEntityResolutionAssetDownloadRequestResult;
  v8 = [(GDEntityResolutionAssetDownloadRequestResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filepathURL, a3);
    v9->_isEmbedded = a4;
  }

  return v9;
}

- (unint64_t)hash
{
  filepathURL = self->_filepathURL;
  if (filepathURL)
  {
    v4 = [(NSURL *)filepathURL hash];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmbedded];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqualToEntityResolutionAssetDownloadRequestResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4)
  {
    filepathURL = self->_filepathURL;
    v7 = [(GDEntityResolutionAssetDownloadRequestResult *)v4 filepathURL];
    if (filepathURL == v7)
    {
      isEmbedded = self->_isEmbedded;
      v8 = isEmbedded == [(GDEntityResolutionAssetDownloadRequestResult *)v5 isEmbedded];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDEntityResolutionAssetDownloadRequestResult *)self isEqualToEntityResolutionAssetDownloadRequestResult:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDEntityResolutionAssetDownloadRequestResult allocWithZone:a3];
  filepathURL = self->_filepathURL;
  isEmbedded = self->_isEmbedded;

  return [(GDEntityResolutionAssetDownloadRequestResult *)v4 initWithURL:filepathURL isEmbedded:isEmbedded];
}

- (GDEntityResolutionAssetDownloadRequestResult)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_filepathURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_isEmbedded);
  v9 = [v4 decodeBoolForKey:v8];

  v10 = [v4 error];

  if (v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"GDEntityResolutionAssetDownloadRequestResult requested could not be decoded";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v12];
    [v4 failWithError:v13];

    v14 = 0;
  }

  else
  {
    self = [(GDEntityResolutionAssetDownloadRequestResult *)self initWithURL:v7 isEmbedded:v9];
    v14 = self;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  filepathURL = self->_filepathURL;
  v5 = a3;
  v6 = NSStringFromSelector(sel_filepathURL);
  [v5 encodeObject:filepathURL forKey:v6];

  isEmbedded = self->_isEmbedded;
  v8 = NSStringFromSelector(sel_isEmbedded);
  [v5 encodeBool:isEmbedded forKey:v8];
}

@end