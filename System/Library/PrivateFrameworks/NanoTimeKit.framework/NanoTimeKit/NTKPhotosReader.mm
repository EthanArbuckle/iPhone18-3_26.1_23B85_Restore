@interface NTKPhotosReader
+ (id)readerForMemoriesWithResourceDirectory:(id)a3;
+ (id)readerForResourceDirectory:(id)a3;
+ (id)readerForSyncedAlbumWithResourceDirectory:(id)a3;
- (NTKPhotosReader)initWithResourceDirectory:(id)a3;
- (NTKPhotosReaderDelegate)delegate;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation NTKPhotosReader

- (NTKPhotosReader)initWithResourceDirectory:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKPhotosReader;
  v5 = [(NTKPhotosReader *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
      resourceDirectory = v5->_resourceDirectory;
      v5->_resourceDirectory = v6;
    }

    assetCollectionIdentifier = v5->_assetCollectionIdentifier;
    v5->_assetCollectionIdentifier = 0;
  }

  return v5;
}

+ (id)readerForResourceDirectory:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v11];
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

  v8 = [[v9 alloc] initWithResourceDirectory:v3];
LABEL_11:

  return v8;
}

+ (id)readerForSyncedAlbumWithResourceDirectory:(id)a3
{
  v3 = a3;
  v4 = [[_NTKImageListPhotosReader alloc] initWithResourceDirectory:v3];

  return v4;
}

+ (id)readerForMemoriesWithResourceDirectory:(id)a3
{
  v3 = a3;
  v4 = [[_NTKImageListPhotosReader alloc] initWithResourceDirectory:v3];

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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  a3->var2 = &self->_mutationCount;
  a3->var0 = 1;
  v8 = a3->var3[0];
  v9 = v8 + a5;
  if (v8 + a5 > [(NTKPhotosReader *)self count])
  {
    v9 = [(NTKPhotosReader *)self count];
  }

  v10 = v9 - v8;
  if (v9 > v8)
  {
    v11 = a4;
    do
    {
      *v11++ = [(NTKPhotosReader *)self objectAtIndex:v8++];
    }

    while (v9 != v8);
  }

  a3->var3[0] = v9;
  a3->var1 = a4;
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