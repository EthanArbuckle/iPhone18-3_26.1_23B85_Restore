@interface CPLChangeSessionContext
- (CPLChangeSessionContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLChangeSessionContext

- (CPLChangeSessionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLChangeSessionContext;
  v5 = [(CPLChangeSessionContext *)&v9 init];
  if (v5)
  {
    v5->_estimatedInitialSizeForLocalLibrary = [v4 decodeIntegerForKey:@"estimatedSize"];
    v5->_estimatedInitialAssetCountForLocalLibrary = [v4 decodeIntegerForKey:@"estimatedCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resetTracker"];
    resetTracker = v5->_resetTracker;
    v5->_resetTracker = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  estimatedInitialSizeForLocalLibrary = self->_estimatedInitialSizeForLocalLibrary;
  v5 = a3;
  [v5 encodeInt64:estimatedInitialSizeForLocalLibrary forKey:@"estimatedSize"];
  [v5 encodeInteger:self->_estimatedInitialAssetCountForLocalLibrary forKey:@"estimatedCount"];
  [v5 encodeObject:self->_resetTracker forKey:@"resetTracker"];
}

@end