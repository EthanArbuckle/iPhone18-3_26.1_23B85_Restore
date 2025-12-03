@interface PAMediaConversionServiceResourceURLReference
+ (BOOL)getPathHash:(unint64_t *)hash lastPathComponent:(id *)component forDictionaryRepresentation:(id)representation;
+ (id)referenceWithDictionaryRepresentation:(id)representation error:(id *)error;
+ (id)referenceWithURL:(id)l;
- (BOOL)getFileSize:(unint64_t *)size error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentationWithError:(id *)error;
- (unint64_t)hash;
- (void)dealloc;
- (void)getPathHash:(unint64_t *)hash lastPathComponent:(id *)component;
@end

@implementation PAMediaConversionServiceResourceURLReference

- (id)dictionaryRepresentationWithError:(id *)error
{
  v3 = [(NSURL *)self->_url bookmarkDataWithOptions:0x20000000 includingResourceValuesForKeys:0 relativeToURL:0 error:error];
  v4 = v3;
  if (v3)
  {
    v7 = @"bookmarkData";
    v8 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_shouldDeleteOnDeallocation)
  {
    v3 = +[NSFileManager defaultManager];
    path = [(NSURL *)self->_url path];
    v5 = [v3 fileExistsAtPath:path];

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        path2 = [(NSURL *)self->_url path];
        *buf = 138412290;
        v14 = path2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Deleting temporary file %@", buf, 0xCu);
      }

      url = self->_url;
      v12 = 0;
      v8 = [v3 removeItemAtURL:url error:&v12];
      v9 = v12;
      if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        path3 = [(NSURL *)self->_url path];
        *buf = 138412546;
        v14 = path3;
        v15 = 2112;
        v16 = v9;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to delete temporary file %@: %@", buf, 0x16u);
      }
    }
  }

  if (self->_mustStopAccessingURL)
  {
    [(NSURL *)self->_url stopAccessingSecurityScopedResource];
  }

  v11.receiver = self;
  v11.super_class = PAMediaConversionServiceResourceURLReference;
  [(PAMediaConversionServiceResourceURLReference *)&v11 dealloc];
}

- (BOOL)getFileSize:(unint64_t *)size error:(id *)error
{
  url = self->_url;
  v9 = 0;
  v6 = [(NSURL *)url getResourceValue:&v9 forKey:NSURLFileSizeKey error:error];
  v7 = v6;
  if (size && v6)
  {
    *size = [v9 unsignedLongLongValue];
  }

  return v7;
}

- (unint64_t)hash
{
  path = [(NSURL *)self->_url path];
  v3 = [path hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v4 = [equal url];
  path = [v4 path];
  path2 = [(NSURL *)self->_url path];
  v7 = [path isEqual:path2];

  return v7;
}

- (void)getPathHash:(unint64_t *)hash lastPathComponent:(id *)component
{
  url = self->_url;
  if (!url)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:82 description:@"Unexpected nil resource reference URL"];

    url = self->_url;
  }

  path = [(NSURL *)url path];
  v11 = path;
  if (hash)
  {
    *hash = [path hash];
    path = v11;
  }

  if (component)
  {
    *component = [v11 lastPathComponent];
    path = v11;
  }
}

+ (BOOL)getPathHash:(unint64_t *)hash lastPathComponent:(id *)component forDictionaryRepresentation:(id)representation
{
  v9 = [representation objectForKeyedSubscript:@"bookmarkData"];
  if (!v9)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v16 = 0;
  v10 = [NSURL URLByResolvingBookmarkData:v9 options:256 relativeToURL:0 bookmarkDataIsStale:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    path = [v10 path];
    v13 = path;
    if (hash)
    {
      *hash = [path hash];
    }

    if (component)
    {
      *component = [v13 lastPathComponent];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v11;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode bookmark data to get hash/filename: %@", buf, 0xCu);
  }

  return v10 != 0;
}

+ (id)referenceWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v7 = [representation objectForKeyedSubscript:@"bookmarkData"];
  if (!v7)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v14 = 0;
  v8 = [NSURL URLByResolvingBookmarkData:v7 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [self referenceWithURL:v8];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Unable to decode URL reference bookmark data: %@", buf, 0xCu);
    }

    if (error)
    {
      v11 = v9;
      v10 = 0;
      *error = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)referenceWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = objc_opt_new();
  [v6 setUrl:lCopy];

  return v6;
}

@end