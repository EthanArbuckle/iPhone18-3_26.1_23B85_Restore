@interface GDEntityResolutionAssetDownloadRequestResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntityResolutionAssetDownloadRequestResult:(id)result;
- (GDEntityResolutionAssetDownloadRequestResult)initWithCoder:(id)coder;
- (GDEntityResolutionAssetDownloadRequestResult)initWithURL:(id)l isEmbedded:(BOOL)embedded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityResolutionAssetDownloadRequestResult

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDEntityResolutionAssetDownloadRequestResult: filepathURL:%d>", self->_filepathURL];

  return v2;
}

- (GDEntityResolutionAssetDownloadRequestResult)initWithURL:(id)l isEmbedded:(BOOL)embedded
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = GDEntityResolutionAssetDownloadRequestResult;
  v8 = [(GDEntityResolutionAssetDownloadRequestResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filepathURL, l);
    v9->_isEmbedded = embedded;
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

- (BOOL)isEqualToEntityResolutionAssetDownloadRequestResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy == self)
  {
    v8 = 1;
  }

  else if (resultCopy)
  {
    filepathURL = self->_filepathURL;
    filepathURL = [(GDEntityResolutionAssetDownloadRequestResult *)resultCopy filepathURL];
    if (filepathURL == filepathURL)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDEntityResolutionAssetDownloadRequestResult *)self isEqualToEntityResolutionAssetDownloadRequestResult:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDEntityResolutionAssetDownloadRequestResult allocWithZone:zone];
  filepathURL = self->_filepathURL;
  isEmbedded = self->_isEmbedded;

  return [(GDEntityResolutionAssetDownloadRequestResult *)v4 initWithURL:filepathURL isEmbedded:isEmbedded];
}

- (GDEntityResolutionAssetDownloadRequestResult)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_filepathURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_isEmbedded);
  v9 = [coderCopy decodeBoolForKey:v8];

  error = [coderCopy error];

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"GDEntityResolutionAssetDownloadRequestResult requested could not be decoded";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v12];
    [coderCopy failWithError:v13];

    selfCopy = 0;
  }

  else
  {
    self = [(GDEntityResolutionAssetDownloadRequestResult *)self initWithURL:v7 isEmbedded:v9];
    selfCopy = self;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  filepathURL = self->_filepathURL;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_filepathURL);
  [coderCopy encodeObject:filepathURL forKey:v6];

  isEmbedded = self->_isEmbedded;
  v8 = NSStringFromSelector(sel_isEmbedded);
  [coderCopy encodeBool:isEmbedded forKey:v8];
}

@end