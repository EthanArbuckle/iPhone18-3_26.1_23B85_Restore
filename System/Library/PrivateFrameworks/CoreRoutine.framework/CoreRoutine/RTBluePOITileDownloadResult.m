@interface RTBluePOITileDownloadResult
- (BOOL)isEqual:(id)a3;
- (RTBluePOITileDownloadResult)initWithCoder:(id)a3;
- (RTBluePOITileDownloadResult)initWithDownloadKey:(id)a3 tileURL:(id)a4 tileCacheInfo:(id)a5 downloadError:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTBluePOITileDownloadResult

- (RTBluePOITileDownloadResult)initWithDownloadKey:(id)a3 tileURL:(id)a4 tileCacheInfo:(id)a5 downloadError:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = RTBluePOITileDownloadResult;
    v15 = [(RTBluePOITileDownloadResult *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_downloadKey, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: downloadKey", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTBluePOITileDownloadResult *)self downloadKey];
  v5 = [(RTBluePOITileDownloadResult *)self tileURL];
  v6 = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
  v7 = [(RTBluePOITileDownloadResult *)self downloadError];
  v8 = [v3 stringWithFormat:@"downloadKey, %@, tileURL, %@, tileCacheInfo, %@, downloadError, %@", v4, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTBluePOITileDownloadResult alloc];
  v5 = [(RTBluePOITileDownloadResult *)self downloadKey];
  v6 = [(RTBluePOITileDownloadResult *)self tileURL];
  v7 = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
  v8 = [(RTBluePOITileDownloadResult *)self downloadError];
  v9 = [(RTBluePOITileDownloadResult *)v4 initWithDownloadKey:v5 tileURL:v6 tileCacheInfo:v7 downloadError:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  downloadKey = self->_downloadKey;
  v5 = a3;
  [v5 encodeObject:downloadKey forKey:@"downloadKey"];
  [v5 encodeObject:self->_tileURL forKey:@"tileURL"];
  [v5 encodeObject:self->_tileCacheInfo forKey:@"tileCacheInfo"];
  [v5 encodeObject:self->_downloadError forKey:@"downloadError"];
}

- (RTBluePOITileDownloadResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tileURL"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tileCacheInfo"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadError"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTBluePOITileDownloadResult *)self downloadKey];
      v7 = [(RTBluePOITileDownloadResult *)v5 downloadKey];
      v8 = [v6 isEqualToData:v7];

      v9 = [(RTBluePOITileDownloadResult *)self tileURL];
      v10 = [(RTBluePOITileDownloadResult *)v5 tileURL];
      LOBYTE(v6) = [v9 isEqual:v10];

      v11 = [(RTBluePOITileDownloadResult *)self tileCacheInfo];
      v12 = [(RTBluePOITileDownloadResult *)v5 tileCacheInfo];
      v13 = [v11 isEqualToData:v12];

      v14 = [(RTBluePOITileDownloadResult *)self downloadError];
      v15 = [(RTBluePOITileDownloadResult *)v5 downloadError];

      LOBYTE(v5) = [v14 isEqual:v15];
      v16 = v8 & v6 & v13 & v5;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end