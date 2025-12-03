@interface HLPDataCache
- (BOOL)expired;
- (HLPDataCache)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HLPDataCache

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HLPDataCache allocWithZone:zone];
  [(HLPDataCache *)v4 setCacheType:self->_cacheType];
  [(HLPDataCache *)v4 setMaxAge:self->_maxAge];
  [(HLPDataCache *)v4 setFileSize:self->_fileSize];
  [(HLPDataCache *)v4 setIdentifier:self->_identifier];
  [(HLPDataCache *)v4 setUpdatedDate:self->_updatedDate];
  [(HLPDataCache *)v4 setLastModified:self->_lastModified];
  [(HLPDataCache *)v4 setLanguageCode:self->_languageCode];
  return v4;
}

- (HLPDataCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HLPDataCache;
  v5 = [(HLPDataCache *)&v11 init];
  if (v5)
  {
    -[HLPDataCache setMaxAge:](v5, "setMaxAge:", [coderCopy decodeIntegerForKey:@"HLPDataCacheMaxAge"]);
    -[HLPDataCache setCacheType:](v5, "setCacheType:", [coderCopy decodeIntegerForKey:@"HLPDataCacheType"]);
    -[HLPDataCache setFileSize:](v5, "setFileSize:", [coderCopy decodeIntegerForKey:@"HLPDataCacheFileSize"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheIdentifier"];
    [(HLPDataCache *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheLastModified"];
    [(HLPDataCache *)v5 setLastModified:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheLangaugeCode"];
    [(HLPDataCache *)v5 setLanguageCode:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HLPDataCacheUpdatedDate"];
    [(HLPDataCache *)v5 setUpdatedDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HLPDataCache maxAge](self forKey:{"maxAge"), @"HLPDataCacheMaxAge"}];
  [coderCopy encodeInteger:-[HLPDataCache cacheType](self forKey:{"cacheType"), @"HLPDataCacheType"}];
  [coderCopy encodeInteger:-[HLPDataCache fileSize](self forKey:{"fileSize"), @"HLPDataCacheFileSize"}];
  identifier = [(HLPDataCache *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HLPDataCacheIdentifier"];

  updatedDate = [(HLPDataCache *)self updatedDate];
  [coderCopy encodeObject:updatedDate forKey:@"HLPDataCacheUpdatedDate"];

  lastModified = [(HLPDataCache *)self lastModified];
  [coderCopy encodeObject:lastModified forKey:@"HLPDataCacheLastModified"];

  languageCode = [(HLPDataCache *)self languageCode];
  [coderCopy encodeObject:languageCode forKey:@"HLPDataCacheLangaugeCode"];
}

- (BOOL)expired
{
  updatedDate = [(HLPDataCache *)self updatedDate];
  v4 = [updatedDate dateByAddingTimeInterval:self->_maxAge];

  date = [MEMORY[0x277CBEAA8] date];
  updatedDate2 = [(HLPDataCache *)self updatedDate];
  if (updatedDate2)
  {
    v7 = [v4 compare:date] == -1;
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