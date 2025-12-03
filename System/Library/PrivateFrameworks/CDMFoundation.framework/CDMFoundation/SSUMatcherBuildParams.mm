@interface SSUMatcherBuildParams
- (BOOL)isEqual:(id)equal;
- (SSUMatcherBuildParams)initWithModelAssetsDirectoryURL:(id)l datasetAssetsDirectoryURL:(id)rL cacheDirectoryURL:(id)uRL;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SSUMatcherBuildParams

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_modelAssetsDirectoryURL hash];
  v4 = [(NSURL *)self->_datasetAssetsDirectoryURL hash]- v3 + 32 * v3;
  return [(NSURL *)self->_cacheDirectoryURL hash]- v4 + 32 * v4 + 29791;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  modelAssetsDirectoryURL = self->_modelAssetsDirectoryURL;
  datasetAssetsDirectoryURL = self->_datasetAssetsDirectoryURL;
  cacheDirectoryURL = self->_cacheDirectoryURL;

  return [v4 initWithModelAssetsDirectoryURL:modelAssetsDirectoryURL datasetAssetsDirectoryURL:datasetAssetsDirectoryURL cacheDirectoryURL:cacheDirectoryURL];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  modelAssetsDirectoryURL = self->_modelAssetsDirectoryURL;
  modelAssetsDirectoryURL = [equalCopy modelAssetsDirectoryURL];
  if ([(NSURL *)modelAssetsDirectoryURL isEqual:modelAssetsDirectoryURL])
  {
    datasetAssetsDirectoryURL = self->_datasetAssetsDirectoryURL;
    datasetAssetsDirectoryURL = [equalCopy datasetAssetsDirectoryURL];
    if ([(NSURL *)datasetAssetsDirectoryURL isEqual:datasetAssetsDirectoryURL])
    {
      cacheDirectoryURL = self->_cacheDirectoryURL;
      cacheDirectoryURL = [equalCopy cacheDirectoryURL];
      v11 = [(NSURL *)cacheDirectoryURL isEqual:cacheDirectoryURL];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SSUMatcherBuildParams)initWithModelAssetsDirectoryURL:(id)l datasetAssetsDirectoryURL:(id)rL cacheDirectoryURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v18.receiver = self;
  v18.super_class = SSUMatcherBuildParams;
  v11 = [(SSUMatcherBuildParams *)&v18 init];
  modelAssetsDirectoryURL = v11->_modelAssetsDirectoryURL;
  v11->_modelAssetsDirectoryURL = lCopy;
  v13 = lCopy;

  datasetAssetsDirectoryURL = v11->_datasetAssetsDirectoryURL;
  v11->_datasetAssetsDirectoryURL = rLCopy;
  v15 = rLCopy;

  cacheDirectoryURL = v11->_cacheDirectoryURL;
  v11->_cacheDirectoryURL = uRLCopy;

  return v11;
}

@end