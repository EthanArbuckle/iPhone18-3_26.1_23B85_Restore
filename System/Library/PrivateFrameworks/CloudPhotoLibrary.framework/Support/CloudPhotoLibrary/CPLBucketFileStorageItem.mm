@interface CPLBucketFileStorageItem
- (BOOL)isMarkedForDelete;
- (BOOL)isOriginal;
- (CPLBucketFileStorageItem)initWithIdentity:(id)identity url:(id)url;
- (void)_cacheAttributes;
@end

@implementation CPLBucketFileStorageItem

- (CPLBucketFileStorageItem)initWithIdentity:(id)identity url:(id)url
{
  urlCopy = url;
  v11.receiver = self;
  v11.super_class = CPLBucketFileStorageItem;
  v7 = [(CPLBucketFileStorageItem *)&v11 initWithIdentity:identity original:0 markedForDelete:0 lastAccessDate:0];
  if (v7)
  {
    v8 = [urlCopy copy];
    url = v7->_url;
    v7->_url = v8;
  }

  return v7;
}

- (BOOL)isOriginal
{
  if (!self->_attributesAreCached)
  {
    [(CPLBucketFileStorageItem *)self _cacheAttributes];
  }

  return self->_cachedOriginal;
}

- (BOOL)isMarkedForDelete
{
  if (!self->_attributesAreCached)
  {
    [(CPLBucketFileStorageItem *)self _cacheAttributes];
  }

  return self->_cachedMarkedForDelete;
}

- (void)_cacheAttributes
{
  fileSystemRepresentation = [(NSURL *)self->_url fileSystemRepresentation];
  v4 = open(fileSystemRepresentation, 0);
  if (v4 < 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = __error();
        v9 = strerror(*v8);
        v10 = *__error();
        v12 = 136315650;
        v13 = fileSystemRepresentation;
        v14 = 2080;
        v15 = v9;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't read attributes at %s: %s (%i)", &v12, 0x1Cu);
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = sub_100182160(v4, "com.apple.cpl.original") > 0 || *__error() != 93;
    self->_cachedOriginal = v6;
    if (sub_100182160(v5, "com.apple.cpl.delete") <= 0)
    {
      __error();
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    self->_cachedMarkedForDelete = v11;
    close(v5);
  }

  self->_attributesAreCached = 1;
}

@end