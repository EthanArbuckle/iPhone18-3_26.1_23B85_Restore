@interface NTKPhotosReader
+ (id)readerForMemoriesWithResourceDirectory:(id)directory;
+ (id)readerForResourceDirectory:(id)directory;
+ (id)readerForSyncedAlbumWithResourceDirectory:(id)directory;
- (NTKPhotosReader)initWithResourceDirectory:(id)directory;
- (NTKPhotosReaderDelegate)delegate;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation NTKPhotosReader

- (NTKPhotosReader)initWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v10.receiver = self;
  v10.super_class = NTKPhotosReader;
  v5 = [(NTKPhotosReader *)&v10 init];
  if (v5)
  {
    if (directoryCopy)
    {
      v6 = [directoryCopy copy];
      resourceDirectory = v5->_resourceDirectory;
      v5->_resourceDirectory = v6;
    }

    assetCollectionIdentifier = v5->_assetCollectionIdentifier;
    v5->_assetCollectionIdentifier = 0;
  }

  return v5;
}

+ (id)readerForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[NTKPhotosReader readerForResourceDirectory:];
    }

    goto LABEL_5;
  }

  if ([v5 containsObject:@"Info.plist"])
  {
    v9 = _NTKLegacySidecarPhotosReader;
  }

  else
  {
    if (![v5 containsObject:@"Images.plist"])
    {
LABEL_5:
      v8 = 0;
      goto LABEL_11;
    }

    v9 = _NTKImageListPhotosReader;
  }

  v8 = [[v9 alloc] initWithResourceDirectory:directoryCopy];
LABEL_11:

  return v8;
}

+ (id)readerForSyncedAlbumWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [[_NTKImageListPhotosReader alloc] initWithResourceDirectory:directoryCopy];

  return v4;
}

+ (id)readerForMemoriesWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [[_NTKImageListPhotosReader alloc] initWithResourceDirectory:directoryCopy];

  return v4;
}

- (id)firstObject
{
  v3 = [(NTKPhotosReader *)self count];
  if (v3)
  {
    v3 = [(NTKPhotosReader *)self objectAtIndex:0];
  }

  return v3;
}

- (id)lastObject
{
  v3 = [(NTKPhotosReader *)self count];
  if (v3)
  {
    v3 = [(NTKPhotosReader *)self objectAtIndex:[(NTKPhotosReader *)self count]- 1];
  }

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var2 = &self->_mutationCount;
  state->var0 = 1;
  v8 = state->var3[0];
  v9 = v8 + count;
  if (v8 + count > [(NTKPhotosReader *)self count])
  {
    v9 = [(NTKPhotosReader *)self count];
  }

  v10 = v9 - v8;
  if (v9 > v8)
  {
    objectsCopy = objects;
    do
    {
      *objectsCopy++ = [(NTKPhotosReader *)self objectAtIndex:v8++];
    }

    while (v9 != v8);
  }

  state->var3[0] = v9;
  state->var1 = objects;
  return v10;
}

- (NTKPhotosReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)readerForResourceDirectory:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_13(v0);
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "%@: cannot read contents of %@", v4, v5, v6, v7, v8);
}

@end