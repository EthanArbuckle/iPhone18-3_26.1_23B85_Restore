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
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSURL *)self->_url bookmarkDataWithOptions:0x20000000 includingResourceValuesForKeys:0 relativeToURL:0 error:a3];
  v4 = v3;
  if (v3)
  {
    v8 = @"bookmarkData";
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_shouldDeleteOnDeallocation)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(NSURL *)self->_url path];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = [(NSURL *)self->_url path];
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Deleting temporary file %@", buf, 0xCu);
      }

      url = self->_url;
      v13 = 0;
      v8 = [v3 removeItemAtURL:url error:&v13];
      v9 = v13;
      if ((v8 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = [(NSURL *)self->_url path];
        *buf = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to delete temporary file %@: %@", buf, 0x16u);
      }
    }
  }

  if (self->_mustStopAccessingURL)
  {
    [(NSURL *)self->_url stopAccessingSecurityScopedResource];
  }

  v12.receiver = self;
  v12.super_class = PAMediaConversionServiceResourceURLReference;
  [(PAMediaConversionServiceResourceURLReference *)&v12 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)getFileSize:(unint64_t *)a3 error:(id *)a4
{
  url = self->_url;
  v9 = 0;
  v6 = [(NSURL *)url getResourceValue:&v9 forKey:*MEMORY[0x277CBE838] error:a4];
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
    v10 = [MEMORY[0x277CCA890] currentHandler];
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
  v20 = *MEMORY[0x277D85DE8];
  v9 = [a5 objectForKeyedSubscript:@"bookmarkData"];
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v17 = 0;
  v10 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:v9 options:256 relativeToURL:0 bookmarkDataIsStale:0 error:&v17];
  v11 = v17;
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

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v11;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to decode bookmark data to get hash/filename: %@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

+ (id)referenceWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = [a3 objectForKeyedSubscript:@"bookmarkData"];
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bookmarkData"}];
  }

  v15 = 0;
  v8 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:v7 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = [a1 referenceWithURL:v8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to decode URL reference bookmark data: %@", buf, 0xCu);
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

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)referenceWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PAMediaConversionServiceResourceURLCollection.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = objc_opt_new();
  [v6 setUrl:v5];

  return v6;
}

@end