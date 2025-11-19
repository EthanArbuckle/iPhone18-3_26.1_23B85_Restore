@interface PAMediaConversionServiceResourceURLReference
+ (BOOL)getPathHash:(unint64_t *)a3 lastPathComponent:(id *)a4 forDictionaryRepresentation:(id)a5;
+ (id)referenceWithDictionaryRepresentation:(id)a3 error:(id *)a4;
+ (id)referenceWithURL:(id)a3;
- (BOOL)getFileSize:(unint64_t *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentationWithError:(id *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)getPathHash:(unint64_t *)a3 lastPathComponent:(id *)a4;
@end

@implementation PAMediaConversionServiceResourceURLReference

- (id)dictionaryRepresentationWithError:(id *)a3
{
  v3 = [(NSURL *)self->_url bookmarkDataWithOptions:0x20000000 includingResourceValuesForKeys:0 relativeToURL:0 error:a3];
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
    v4 = [(NSURL *)self->_url path];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = [(NSURL *)self->_url path];
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Deleting temporary file %@", buf, 0xCu);
      }

      url = self->_url;
      v12 = 0;
      v8 = [v3 removeItemAtURL:url error:&v12];
      v9 = v12;
      if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v10 = [(NSURL *)self->_url path];
        *buf = 138412546;
        v14 = v10;
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

- (BOOL)getFileSize:(unint64_t *)a3 error:(id *)a4
{
  url = self->_url;
  v9 = 0;
  v6 = [(NSURL *)url getResourceValue:&v9 forKey:NSURLFileSizeKey error:a4];
  v7 = v6;
  if (a3 && v6)
  {
    *a3 = [v9 unsignedLongLongValue];
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(NSURL *)self->_url path];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = [a3 url];
  v5 = [v4 path];
  v6 = [(NSURL *)self->_url path];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (void)getPathHash:(unint64_t *)a3 lastPathComponent:(id *)a4
{
  url = self->_url;
  if (!url)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:82 description:@"Unexpected nil resource reference URL"];

    url = self->_url;
  }

  v8 = [(NSURL *)url path];
  v11 = v8;
  if (a3)
  {
    *a3 = [v8 hash];
    v8 = v11;
  }

  if (a4)
  {
    *a4 = [v11 lastPathComponent];
    v8 = v11;
  }
}

+ (BOOL)getPathHash:(unint64_t *)a3 lastPathComponent:(id *)a4 forDictionaryRepresentation:(id)a5
{
  v9 = [a5 objectForKeyedSubscript:@"bookmarkData"];
  if (!v9)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v16 = 0;
  v10 = [NSURL URLByResolvingBookmarkData:v9 options:256 relativeToURL:0 bookmarkDataIsStale:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [v10 path];
    v13 = v12;
    if (a3)
    {
      *a3 = [v12 hash];
    }

    if (a4)
    {
      *a4 = [v13 lastPathComponent];
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

+ (id)referenceWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v7 = [a3 objectForKeyedSubscript:@"bookmarkData"];
  if (!v7)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v14 = 0;
  v8 = [NSURL URLByResolvingBookmarkData:v7 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [a1 referenceWithURL:v8];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Unable to decode URL reference bookmark data: %@", buf, 0xCu);
    }

    if (a4)
    {
      v11 = v9;
      v10 = 0;
      *a4 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)referenceWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = objc_opt_new();
  [v6 setUrl:v5];

  return v6;
}

@end