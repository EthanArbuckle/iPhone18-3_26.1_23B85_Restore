@interface CPLChangeSessionContext
- (CPLChangeSessionContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLChangeSessionContext

- (CPLChangeSessionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPLChangeSessionContext;
  v5 = [(CPLChangeSessionContext *)&v9 init];
  if (v5)
  {
    v5->_estimatedInitialSizeForLocalLibrary = [coderCopy decodeIntegerForKey:@"estimatedSize"];
    v5->_estimatedInitialAssetCountForLocalLibrary = [coderCopy decodeIntegerForKey:@"estimatedCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resetTracker"];
    resetTracker = v5->_resetTracker;
    v5->_resetTracker = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  estimatedInitialSizeForLocalLibrary = self->_estimatedInitialSizeForLocalLibrary;
  coderCopy = coder;
  [coderCopy encodeInt64:estimatedInitialSizeForLocalLibrary forKey:@"estimatedSize"];
  [coderCopy encodeInteger:self->_estimatedInitialAssetCountForLocalLibrary forKey:@"estimatedCount"];
  [coderCopy encodeObject:self->_resetTracker forKey:@"resetTracker"];
}

@end