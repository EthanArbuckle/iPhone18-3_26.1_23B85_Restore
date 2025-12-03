@interface NTKBasePhotoResourcesManifest
+ (id)manifestForResourceDirectory:(id)directory;
- (BOOL)_loadRawManifestAtURL:(id)l;
- (BOOL)_validateImageListItem:(id)item withError:(id *)error;
- (BOOL)resourceWithName:(id)name isValidMediaAssetOfType:(id)type withMinFileSize:(unint64_t)size maxFileSize:(unint64_t)fileSize;
- (BOOL)resourceWithNameIsValidImage:(id)image;
- (BOOL)validateManifestWithError:(id *)error;
- (id)_initWithResourceDirectoryURL:(id)l;
@end

@implementation NTKBasePhotoResourcesManifest

+ (id)manifestForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if (directoryCopy && ([MEMORY[0x277CBEBC0] fileURLWithPath:directoryCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 URLByAppendingPathComponent:@"Images.plist"];
    v8 = [[self alloc] _initWithResourceDirectoryURL:v6];
    if ([v8 _loadRawManifestAtURL:v7])
    {
      v9 = v8;
    }

    else
    {
      v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[NTKBasePhotoResourcesManifest manifestForResourceDirectory:];
      }

      v9 = 0;
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKBasePhotoResourcesManifest manifestForResourceDirectory:v6];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_initWithResourceDirectoryURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = NTKBasePhotoResourcesManifest;
  v5 = [(NTKBasePhotoResourcesManifest *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    resourceDirectoryURL = v5->_resourceDirectoryURL;
    v5->_resourceDirectoryURL = v6;
  }

  return v5;
}

- (BOOL)_loadRawManifestAtURL:(id)l
{
  if (l)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v5 = v4;
    if (!v4)
    {
      v6 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NTKBasePhotoResourcesManifest _loadRawManifestAtURL:?];
      }

      v8 = 0;
      goto LABEL_21;
    }

    v6 = [v4 objectForKeyedSubscript:@"version"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      self->_version = [v6 unsignedIntegerValue];
      v7 = [v5 objectForKeyedSubscript:@"imageList"];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_imageList, v7);
          v8 = [(NTKBasePhotoResourcesManifest *)self didLoadRawManifest:v5];
LABEL_20:

LABEL_21:
          goto LABEL_22;
        }
      }

      v9 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NTKBasePhotoResourcesManifest _loadRawManifestAtURL:];
      }
    }

    else
    {
      v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [NTKBasePhotoResourcesManifest _loadRawManifestAtURL:];
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NTKBasePhotoResourcesManifest _loadRawManifestAtURL:?];
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (BOOL)_validateImageListItem:(id)item withError:(id *)error
{
  itemCopy = item;
  if (itemCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(NTKBasePhotoResourcesManifest *)self validateImageListItem:itemCopy withError:error];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NTKBasePhotoResourcesManifest _validateImageListItem:? withError:?];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateManifestWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  version = self->_version;
  if (version < [(NTKBasePhotoResourcesManifest *)self minCompatibleVersion]|| (v6 = self->_version, v6 > [(NTKBasePhotoResourcesManifest *)self maxCompatibleVersion]))
  {
    v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NTKBasePhotoResourcesManifest validateManifestWithError:];
    }

    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = @"com.apple.nanotimekit.resourceDirectory";
      v10 = 2004;
LABEL_7:
      [v8 errorWithDomain:v9 code:v10 userInfo:0];
      *error = v11 = 0;
      return v11;
    }

    return 0;
  }

  if (![(NSArray *)self->_imageList count])
  {
    v14 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NTKBasePhotoResourcesManifest validateManifestWithError:?];
    }

    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = @"com.apple.nanotimekit.photos";
      v10 = 1006;
      goto LABEL_7;
    }

    return 0;
  }

  v12 = [(NSArray *)self->_imageList count];
  if (v12 > [(NTKBasePhotoResourcesManifest *)self maxNumberOfPhotos])
  {
    v13 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NTKBasePhotoResourcesManifest validateManifestWithError:];
    }

    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = @"com.apple.nanotimekit.photos";
      v10 = 1007;
      goto LABEL_7;
    }

    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_imageList;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (![(NTKBasePhotoResourcesManifest *)self _validateImageListItem:*(*(&v21 + 1) + 8 * i) withError:error, v21])
        {
          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2003 userInfo:0];
            *error = v11 = 0;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_32;
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_32:

  return v11;
}

- (BOOL)resourceWithName:(id)name isValidMediaAssetOfType:(id)type withMinFileSize:(unint64_t)size maxFileSize:(unint64_t)fileSize
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  if (([nameCopy hasPrefix:@"~"] & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @".") & 1) == 0 && !objc_msgSend(nameCopy, "containsString:", @"/"))
  {
    pathExtension = [nameCopy pathExtension];
    lowercaseString = [pathExtension lowercaseString];
    v17 = [typeCopy containsObject:lowercaseString];

    if ((v17 & 1) == 0)
    {
      uRLByResolvingSymlinksInPath = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(uRLByResolvingSymlinksInPath, OS_LOG_TYPE_ERROR))
      {
        [NTKBasePhotoResourcesManifest resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:];
      }

      goto LABEL_6;
    }

    resourceDirectoryURL = self->_resourceDirectoryURL;
    p_resourceDirectoryURL = &self->_resourceDirectoryURL;
    v20 = [(NSURL *)resourceDirectoryURL URLByAppendingPathComponent:nameCopy isDirectory:0];
    uRLByResolvingSymlinksInPath = [v20 URLByResolvingSymlinksInPath];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [uRLByResolvingSymlinksInPath path];
    v23 = [defaultManager attributesOfItemAtPath:path error:0];

    if (!v23)
    {
      v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [NTKBasePhotoResourcesManifest resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:];
      }

      goto LABEL_22;
    }

    v24 = *MEMORY[0x277CCA1E0];
    v25 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
    if (v25 && (v26 = v25, [v23 objectForKeyedSubscript:v24], v27 = objc_claimAutoreleasedReturnValue(), v37 = v24, v28 = v23, v29 = *MEMORY[0x277CCA1F0], v27, v26, v30 = v27 == v29, v23 = v28, v24 = v37, v30))
    {
      if ([v23 fileSize] >= size && objc_msgSend(v23, "fileSize") <= fileSize)
      {
        v13 = 1;
        goto LABEL_23;
      }

      v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [(NSURL *)*p_resourceDirectoryURL lastPathComponent];
        fileSize = [v23 fileSize];
        path2 = [uRLByResolvingSymlinksInPath path];
        *buf = 138412802;
        v39 = lastPathComponent;
        v40 = 2048;
        v41 = fileSize;
        v42 = 2112;
        v43 = path2;
        _os_log_error_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: unexpected file size %lu at path '%@'", buf, 0x20u);

        goto LABEL_14;
      }
    }

    else
    {
      v31 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [(NSURL *)*p_resourceDirectoryURL lastPathComponent];
        v33 = [v23 objectForKeyedSubscript:v24];
        path3 = [uRLByResolvingSymlinksInPath path];
        *buf = 138412802;
        v39 = lastPathComponent;
        v40 = 2112;
        v41 = v33;
        v42 = 2112;
        v43 = path3;
        _os_log_error_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: unexpected file type '%@' for asset at path: '%@'", buf, 0x20u);

LABEL_14:
      }
    }

LABEL_22:

    v13 = 0;
LABEL_23:

    goto LABEL_7;
  }

  uRLByResolvingSymlinksInPath = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(uRLByResolvingSymlinksInPath, OS_LOG_TYPE_ERROR))
  {
    [NTKBasePhotoResourcesManifest resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:];
  }

LABEL_6:
  v13 = 0;
LABEL_7:

  return v13;
}

- (BOOL)resourceWithNameIsValidImage:(id)image
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(NSURL *)self->_resourceDirectoryURL URLByAppendingPathComponent:image isDirectory:0];
  v5 = MEMORY[0x277D755B8];
  path = [v4 path];
  v7 = [v5 imageWithContentsOfFile:path];

  [v7 size];
  if (v8 >= 1.0 && ([v7 size], v9 >= 1.0) && (objc_msgSend(v7, "size"), v10 <= 4096.0) && (objc_msgSend(v7, "size"), v11 <= 4096.0))
  {
    v13 = 1;
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [(NSURL *)self->_resourceDirectoryURL lastPathComponent];
      [v7 size];
      v16 = NSStringFromCGSize(v25);
      path2 = [v4 path];
      v18 = 138412802;
      v19 = lastPathComponent;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = path2;
      _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: unexpected image dimensions '%@' at path '%@'", &v18, 0x20u);
    }

    v13 = 0;
  }

  return v13;
}

+ (void)manifestForResourceDirectory:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 lastPathComponent];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_loadRawManifestAtURL:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 8) lastPathComponent];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_loadRawManifestAtURL:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_3_2(v0) lastPathComponent];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_loadRawManifestAtURL:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_2(a1) lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_loadRawManifestAtURL:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_2(a1) lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_validateImageListItem:(uint64_t)a1 withError:.cold.1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_2(a1) lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateManifestWithError:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v8 = [v1[1] lastPathComponent];
  [*v0 count];
  [v2 maxNumberOfPhotos];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)validateManifestWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_2(a1) lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateManifestWithError:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_3_2(v0) lastPathComponent];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_3_2(v0) lastPathComponent];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v2 = [*v1 lastPathComponent];
  v8 = [v0 path];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)resourceWithName:isValidMediaAssetOfType:withMinFileSize:maxFileSize:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v1 = [OUTLINED_FUNCTION_3_2(v0) lastPathComponent];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end