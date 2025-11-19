@interface MBSkippedFileTracker
- (BOOL)writeSkippedFilesToPlistWithError:(id *)a3;
- (MBSkippedFileTracker)initWithPlistPath:(id)a3;
- (NSMutableDictionary)skippedFiles;
- (id)_keyForRecord:(id)a3;
- (id)skippedFilesPlistValue;
- (void)_loadPreviouslySkippedFiles;
@end

@implementation MBSkippedFileTracker

- (MBSkippedFileTracker)initWithPlistPath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MBSkippedFileTracker;
  v6 = [(MBSkippedFileTracker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plistPath, a3);
    skippedFiles = v7->_skippedFiles;
    v7->_skippedFiles = 0;

    previouslySkippedFiles = v7->_previouslySkippedFiles;
    v7->_previouslySkippedFiles = 0;
  }

  return v7;
}

- (NSMutableDictionary)skippedFiles
{
  skippedFiles = self->_skippedFiles;
  if (!skippedFiles)
  {
    v4 = objc_opt_new();
    v5 = self->_skippedFiles;
    self->_skippedFiles = v4;

    skippedFiles = self->_skippedFiles;
  }

  return skippedFiles;
}

- (void)_loadPreviouslySkippedFiles
{
  v3 = [(MBSkippedFileTracker *)self plistPath];
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v26 = 0;
    v5 = [NSData dataWithContentsOfFile:v3 options:0 error:&v26];
    v6 = v26;
    if (!v5)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v3;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "dataWithContentsOfFile returned nil for path %@ %@", buf, 0x16u);
        _MBLog();
      }

      v8 = v6;
      goto LABEL_26;
    }

    v25 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v25];
    v8 = v25;

    if (v8)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NSPropertyListSerialization failed %@", buf, 0xCu);
LABEL_24:
        _MBLog();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v5;
        v20 = v3;
        v9 = objc_opt_new();
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [[MBSkippedFileRecord alloc] initWithDictionaryRepresentation:v15];
                v17 = [(MBSkippedFileTracker *)self _keyForRecord:v16];
                if (v17)
                {
                  [v9 setObject:v16 forKeyedSubscript:v17];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
          }

          while (v12);
        }

        [(MBSkippedFileTracker *)self setPreviouslySkippedFiles:v9];
        v3 = v20;
        v5 = v19;
        v8 = 0;
        goto LABEL_25;
      }

      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138412546;
        v29 = v18;
        v30 = 2112;
        v31 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Found unexpected class (%@) when reading plist %@", buf, 0x16u);
        objc_opt_class();
        goto LABEL_24;
      }
    }

LABEL_25:

LABEL_26:
  }
}

- (id)_keyForRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (!v4)
  {
    v5 = [v3 relativePath];
    if (!v5)
    {
      __assert_rtn("[MBSkippedFileTracker _keyForRecord:]", "MBSkippedFileTracker.m", 120, "record.domain || record.relativePath");
    }
  }

  v6 = [v3 domain];
  v7 = [v3 relativePath];
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (BOOL)writeSkippedFilesToPlistWithError:(id *)a3
{
  v5 = [(MBSkippedFileTracker *)self plistPath];
  v6 = +[NSFileManager defaultManager];
  if ([(NSMutableDictionary *)self->_skippedFiles count])
  {
    v7 = [(MBSkippedFileTracker *)self skippedFilesPlistValue];
    v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:a3];

    if (v8)
    {
      v9 = [v8 writeToFile:v5 options:268435457 error:a3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = ![v6 fileExistsAtPath:v5] || objc_msgSend(v6, "removeItemAtPath:error:", v5, a3);
  }

  return v9;
}

- (id)skippedFilesPlistValue
{
  if ([(NSMutableDictionary *)self->_skippedFiles count])
  {
    v3 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(NSMutableDictionary *)self->_skippedFiles allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end