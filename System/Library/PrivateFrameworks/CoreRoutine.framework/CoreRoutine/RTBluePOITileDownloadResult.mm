@interface RTBluePOITileDownloadResult
- (BOOL)isEqual:(id)equal;
- (RTBluePOITileDownloadResult)initWithCoder:(id)coder;
- (RTBluePOITileDownloadResult)initWithDownloadKey:(id)key tileURL:(id)l tileCacheInfo:(id)info downloadError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTBluePOITileDownloadResult

- (RTBluePOITileDownloadResult)initWithDownloadKey:(id)key tileURL:(id)l tileCacheInfo:(id)info downloadError:(id)error
{
  keyCopy = key;
  lCopy = l;
  infoCopy = info;
  errorCopy = error;
  if (keyCopy)
  {
    v20.receiver = self;
    v20.super_class = RTBluePOITileDownloadResult;
    v15 = [(RTBluePOITileDownloadResult *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_downloadKey, key);
      objc_storeStrong(p_isa + 2, l);
      objc_storeStrong(p_isa + 3, info);
      objc_storeStrong(p_isa + 4, error);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: downloadKey", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  downloadKey = [(RTBluePOITileDownloadResult *)self downloadKey];
  tileURL = [(RTBluePOITileDownloadResult *)self tileURL];
  tileCacheInfo = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
  downloadError = [(RTBluePOITileDownloadResult *)self downloadError];
  v8 = [v3 stringWithFormat:@"downloadKey, %@, tileURL, %@, tileCacheInfo, %@, downloadError, %@", downloadKey, tileURL, tileCacheInfo, downloadError];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTBluePOITileDownloadResult alloc];
  downloadKey = [(RTBluePOITileDownloadResult *)self downloadKey];
  tileURL = [(RTBluePOITileDownloadResult *)self tileURL];
  tileCacheInfo = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
  downloadError = [(RTBluePOITileDownloadResult *)self downloadError];
  v9 = [(RTBluePOITileDownloadResult *)v4 initWithDownloadKey:downloadKey tileURL:tileURL tileCacheInfo:tileCacheInfo downloadError:downloadError];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  downloadKey = self->_downloadKey;
  coderCopy = coder;
  [coderCopy encodeObject:downloadKey forKey:@"downloadKey"];
  [coderCopy encodeObject:self->_tileURL forKey:@"tileURL"];
  [coderCopy encodeObject:self->_tileCacheInfo forKey:@"tileCacheInfo"];
  [coderCopy encodeObject:self->_downloadError forKey:@"downloadError"];
}

- (RTBluePOITileDownloadResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tileURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tileCacheInfo"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadError"];

  v9 = [(RTBluePOITileDownloadResult *)self initWithDownloadKey:v5 tileURL:v6 tileCacheInfo:v7 downloadError:v8];
  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_downloadKey hash];
  v4 = [(NSURL *)self->_tileURL hash]^ v3;
  v5 = [(NSData *)self->_tileCacheInfo hash];
  return v4 ^ v5 ^ [(NSError *)self->_downloadError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      downloadKey = [(RTBluePOITileDownloadResult *)self downloadKey];
      downloadKey2 = [(RTBluePOITileDownloadResult *)v5 downloadKey];
      v8 = [downloadKey isEqualToData:downloadKey2];

      tileURL = [(RTBluePOITileDownloadResult *)self tileURL];
      tileURL2 = [(RTBluePOITileDownloadResult *)v5 tileURL];
      LOBYTE(downloadKey) = [tileURL isEqual:tileURL2];

      tileCacheInfo = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
      tileCacheInfo2 = [(RTBluePOITileDownloadResult *)v5 tileCacheInfo];
      v13 = [tileCacheInfo isEqualToData:tileCacheInfo2];

      downloadError = [(RTBluePOITileDownloadResult *)self downloadError];
      downloadError2 = [(RTBluePOITileDownloadResult *)v5 downloadError];

      LOBYTE(v5) = [downloadError isEqual:downloadError2];
      v16 = v8 & downloadKey & v13 & v5;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end