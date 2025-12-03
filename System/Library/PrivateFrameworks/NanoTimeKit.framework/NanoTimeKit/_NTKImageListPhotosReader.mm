@interface _NTKImageListPhotosReader
- (_NTKImageListPhotosReader)initWithResourceDirectory:(id)directory;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation _NTKImageListPhotosReader

- (_NTKImageListPhotosReader)initWithResourceDirectory:(id)directory
{
  v26 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v24.receiver = self;
  v24.super_class = _NTKImageListPhotosReader;
  v5 = [(NTKPhotosReader *)&v24 initWithResourceDirectory:directoryCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    photos = v5->_photos;
    v5->_photos = v6;

    if (directoryCopy)
    {
      v8 = [directoryCopy stringByAppendingPathComponent:@"Images.plist"];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:@"assetCollection"];
        [(NTKPhotosReader *)v5 setAssetCollectionIdentifier:v11];

        v12 = [v10 objectForKeyedSubscript:@"imageList"];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v19 = v8;
          v15 = *v21;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [NTKPhoto decodeFromDictionary:*(*(&v20 + 1) + 8 * i) forResourceDirectory:directoryCopy];
              if (v17)
              {
                [(NSMutableArray *)v5->_photos addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v14);
          v8 = v19;
        }
      }

      else
      {
        v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_NTKImageListPhotosReader initWithResourceDirectory:];
        }
      }
    }
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_photos count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_photos objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)initWithResourceDirectory:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_13(v0);
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "%@: cannot read image list from %@", v4, v5, v6, v7, v8);
}

@end