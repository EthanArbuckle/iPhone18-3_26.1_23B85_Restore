@interface HLPDataCache
- (BOOL)expired;
- (HLPDataCache)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HLPDataCache

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HLPDataCache allocWithZone:a3];
  [(HLPDataCache *)v4 setCacheType:self->_cacheType];
  [(HLPDataCache *)v4 setMaxAge:self->_maxAge];
  [(HLPDataCache *)v4 setFileSize:self->_fileSize];
  [(HLPDataCache *)v4 setIdentifier:self->_identifier];
  [(HLPDataCache *)v4 setUpdatedDate:self->_updatedDate];
  [(HLPDataCache *)v4 setLastModified:self->_lastModified];
  [(HLPDataCache *)v4 setLanguageCode:self->_languageCode];
  return v4;
}

- (HLPDataCache)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HLPDataCache;
  v5 = [(HLPDataCache *)&v11 init];
  if (v5)
  {
    -[HLPDataCache setMaxAge:](v5, "setMaxAge:", [v4 decodeIntegerForKey:@"HLPDataCacheMaxAge"]);
    -[HLPDataCache setCacheType:](v5, "setCacheType:", [v4 decodeIntegerForKey:@"HLPDataCacheType"]);
    -[HLPDataCache setFileSize:](v5, "setFileSize:", [v4 decodeIntegerForKey:@"HLPDataCacheFileSize"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheIdentifier"];
    [(HLPDataCache *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheLastModified"];
    [(HLPDataCache *)v5 setLastModified:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheLangaugeCode"];
    [(HLPDataCache *)v5 setLanguageCode:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheUpdatedDate"];
    [(HLPDataCache *)v5 setUpdatedDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HLPDataCache maxAge](self forKey:{"maxAge"), @"HLPDataCacheMaxAge"}];
  [v4 encodeInteger:-[HLPDataCache cacheType](self forKey:{"cacheType"), @"HLPDataCacheType"}];
  [v4 encodeInteger:-[HLPDataCache fileSize](self forKey:{"fileSize"), @"HLPDataCacheFileSize"}];
  v5 = [(HLPDataCache *)self identifier];
  [v4 encodeObject:v5 forKey:@"HLPDataCacheIdentifier"];

  v6 = [(HLPDataCache *)self updatedDate];
  [v4 encodeObject:v6 forKey:@"HLPDataCacheUpdatedDate"];

  v7 = [(HLPDataCache *)self lastModified];
  [v4 encodeObject:v7 forKey:@"HLPDataCacheLastModified"];

  v8 = [(HLPDataCache *)self languageCode];
  [v4 encodeObject:v8 forKey:@"HLPDataCacheLangaugeCode"];
}

- (BOOL)expired
{
  v3 = [(HLPDataCache *)self updatedDate];
  v4 = [v3 dateByAddingTimeInterval:self->_maxAge];

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(HLPDataCache *)self updatedDate];
  if (v6)
  {
    v7 = [v4 compare:v5] == -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%@", self];
  [v3 appendFormat:@" %@ = %@\n", @"HLPDataCacheIdentifier", self->_identifier];
  [v3 appendFormat:@" %@ = %zd\n", @"HLPDataCacheType", self->_cacheType];
  [v3 appendFormat:@" %@ = %zd\n", @"HLPDataCacheMaxAge", self->_maxAge];
  [v3 appendFormat:@" %@ = %zd\n", @"HLPDataCacheUpdatedDate", self->_fileSize];
  [v3 appendFormat:@" %@ = %@\n", @"HLPDataCacheFileSize", self->_updatedDate];
  [v3 appendFormat:@" %@ = %@\n", @"HLPDataCacheLastModified", self->_lastModified];
  [v3 appendFormat:@" %@ = %@\n", @"HLPDataCacheLangaugeCode", self->_languageCode];

  return v3;
}

@end