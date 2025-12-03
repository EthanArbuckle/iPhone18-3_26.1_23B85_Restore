@interface MSVSegmentedCodingPackage
- (BOOL)deleteWithError:(id *)error;
- (BOOL)saveWithError:(id *)error;
- (BOOL)writeWithError:(id *)error;
- (MSVSegmentedCodingPackage)initWithURL:(id)l;
- (NSDictionary)allVersions;
- (id)decodersWithError:(id *)error;
- (id)encoderForSegment:(id)segment version:(int64_t)version;
- (void)reset;
- (void)setArchivedClass:(Class)class;
@end

@implementation MSVSegmentedCodingPackage

- (BOOL)deleteWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:self->_packageURL error:error];

  return error;
}

- (BOOL)saveWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_packageURL path];
  v25 = 0;
  v7 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v25];
  v8 = v25;

  if (v7)
  {
    v24 = 0;
    [(MSVSegmentedCodingPackage *)self writeWithError:&v24];
    v9 = v24;
    v10 = v9;
    if (error && v9)
    {
      v11 = v9;
      v12 = 0;
      *error = v10;
LABEL_17:

      goto LABEL_18;
    }

    if (self->_needsInfoDictionaryUpdate)
    {
      v14 = [(NSURL *)self->_packageURL URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
      infoDictionary = self->_infoDictionary;
      v23 = 0;
      v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:infoDictionary format:200 options:0 error:&v23];
      v17 = v23;
      if (v17)
      {
        v18 = v17;
LABEL_14:
        if (error)
        {
          v20 = v18;
          *error = v18;
        }

        v12 = 0;
        goto LABEL_17;
      }

      v22 = 0;
      v19 = [v16 writeToURL:v14 options:0 error:&v22];
      v18 = v22;
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    self->_needsInfoDictionaryUpdate = 0;
    v12 = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v13 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (NSDictionary)allVersions
{
  v2 = [(NSMutableDictionary *)self->_infoDictionary objectForKeyedSubscript:@"segments"];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MSVSegmentedCodingPackage_allVersions__block_invoke;
  v7[3] = &unk_1E7982150;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __40__MSVSegmentedCodingPackage_allVersions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"version"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)decodersWithError:(id *)error
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(NSMutableDictionary *)self->_infoDictionary objectForKeyedSubscript:@"segments"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3802;
  v18 = __Block_byref_object_dispose__3803;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__MSVSegmentedCodingPackage_decodersWithError___block_invoke;
  v11[3] = &unk_1E7982128;
  v11[4] = self;
  v13 = &v14;
  v7 = array;
  v12 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
  if (error)
  {
    *error = v15[5];
  }

  v8 = v12;
  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __47__MSVSegmentedCodingPackage_decodersWithError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"coder"];
  v10 = _MSVFileExtensionForCoderTypeAndCompressionAlgorithm(v9);
  v11 = *(*(a1 + 32) + 16);
  v12 = [v7 stringByAppendingPathExtension:v10];
  v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:0];

  v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13];
  if ([v14 length])
  {
    v15 = MSVGzipDecompressData();

    if ([v15 length])
    {
      v16 = *(*(a1 + 48) + 8);
      v18 = *(v16 + 40);
      v17 = (v16 + 40);
      v23 = a4;
      obj = v18;
      v19 = v9;
      v14 = v15;
      if (([v19 isEqualToString:@"MSVOPACKCoder"] & 1) == 0)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSCoder<MSVSegmentedSubDecoder> * _Nonnull _MSVSegmentedCodingPackageDecoderForCoderType(NSString * _Nonnull __strong, NSData * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
        [v21 handleFailureInFunction:v22 file:@"MSVSegmentedCodingPackage.m" lineNumber:25 description:{@"Unsupported coder type %@", v19}];

        abort();
      }

      v20 = [[MSVOPACKDecoder alloc] initForReadingFromData:v14 error:&obj];

      objc_storeStrong(v17, obj);
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        *v23 = 1;
        [*(a1 + 40) removeAllObjects];
      }

      else
      {
        [*(a1 + 40) addObject:v20];
      }
    }

    else
    {
      v14 = v15;
    }
  }
}

- (id)encoderForSegment:(id)segment version:(int64_t)version
{
  segmentCopy = segment;
  v7 = [(NSMutableDictionary *)self->_infoDictionary objectForKeyedSubscript:@"segments"];
  v8 = [v7 objectForKeyedSubscript:segmentCopy];
  v9 = [v8 objectForKeyedSubscript:@"version"];

  if (version && v9 && [v9 integerValue] >= version)
  {
    v11 = 0;
  }

  else
  {
    v10 = [(MSVSegmentedCodingPackage *)self coderTypeForSegment:segmentCopy];
    if (([v10 isEqualToString:@"MSVOPACKCoder"] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSCoder<MSVSegmentedSubEncoder> * _Nonnull _MSVSegmentedCodingPackageEncoderForCoderType(NSString * _Nonnull __strong)"];
      [currentHandler handleFailureInFunction:v20 file:@"MSVSegmentedCodingPackage.m" lineNumber:36 description:{@"Unsupported coder type %@", v10}];

      abort();
    }

    v11 = objc_alloc_init(MSVOPACKEncoder);

    [(NSMutableDictionary *)self->_segmentEncoderMap setObject:v11 forKeyedSubscript:segmentCopy];
    v12 = [(NSMutableDictionary *)self->_infoDictionary objectForKeyedSubscript:@"segments"];
    v13 = [v12 objectForKeyedSubscript:segmentCopy];

    if (!v13)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [v12 setObject:dictionary forKeyedSubscript:segmentCopy];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:version];
    v16 = [v12 objectForKeyedSubscript:segmentCopy];
    [v16 setObject:v15 forKeyedSubscript:@"version"];

    v17 = [v12 objectForKeyedSubscript:segmentCopy];
    [v17 setObject:v10 forKeyedSubscript:@"coder"];

    self->_needsInfoDictionaryUpdate = 1;
  }

  return v11;
}

- (BOOL)writeWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3802;
  v15 = __Block_byref_object_dispose__3803;
  v16 = 0;
  segmentEncoderMap = self->_segmentEncoderMap;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MSVSegmentedCodingPackage_writeWithError___block_invoke;
  v10[3] = &unk_1E7982100;
  v10[4] = self;
  v10[5] = &v11;
  [(NSMutableDictionary *)segmentEncoderMap enumerateKeysAndObjectsUsingBlock:v10];
  [(NSMutableDictionary *)self->_segmentEncoderMap removeAllObjects];
  v6 = v12[5];
  if (error)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (!v7)
  {
    *error = v6;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __44__MSVSegmentedCodingPackage_writeWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"segments"];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"coder"];

  v10 = _MSVFileExtensionForCoderTypeAndCompressionAlgorithm(v9);
  v11 = *(*(a1 + 32) + 16);
  v12 = [v5 stringByAppendingPathExtension:v10];
  v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:0];

  if ([v6 hasTopLevelData])
  {
    v14 = [v6 encodedData];
    v15 = MSVGzipCompressData();

    if ([v15 length])
    {
      v16 = *(*(a1 + 40) + 8);
      obj = *(v16 + 40);
      [v15 writeToURL:v13 options:0 error:&obj];
      objc_storeStrong((v16 + 40), obj);
    }
  }

  else
  {
    v17 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"segments"];
    v18 = [v17 objectForKeyedSubscript:v5];

    if (v18)
    {
      v19 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"segments"];
      [v19 setObject:0 forKeyedSubscript:v5];

      *(*(a1 + 32) + 8) = 1;
    }

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    [v20 removeItemAtURL:v13 error:0];
  }
}

- (void)reset
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  infoDictionary = self->_infoDictionary;
  self->_infoDictionary = dictionary;

  packageTypeIdentifier = [objc_opt_class() packageTypeIdentifier];
  [(NSMutableDictionary *)self->_infoDictionary setObject:packageTypeIdentifier forKeyedSubscript:@"packageType"];

  v6 = [(NSMutableDictionary *)self->_infoDictionary objectForKeyedSubscript:@"segments"];

  if (!v6)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_infoDictionary setObject:dictionary2 forKeyedSubscript:@"segments"];
  }

  self->_needsInfoDictionaryUpdate = 1;
  segmentEncoderMap = self->_segmentEncoderMap;

  [(NSMutableDictionary *)segmentEncoderMap removeAllObjects];
}

- (void)setArchivedClass:(Class)class
{
  archivedClass = self->_archivedClass;
  p_archivedClass = &self->_archivedClass;
  if (archivedClass != class)
  {
    objc_storeStrong(p_archivedClass, class);
    v6 = NSStringFromClass(self->_archivedClass);
    [(NSMutableDictionary *)self->_infoDictionary setObject:v6 forKeyedSubscript:@"archivedClass"];

    self->_needsInfoDictionaryUpdate = 1;
  }
}

- (MSVSegmentedCodingPackage)initWithURL:(id)l
{
  lCopy = l;
  v23.receiver = self;
  v23.super_class = MSVSegmentedCodingPackage;
  v5 = [(MSVSegmentedCodingPackage *)&v23 init];
  if (v5)
  {
    v6 = [lCopy copy];
    packageURL = v5->_packageURL;
    v5->_packageURL = v6;

    v8 = [(NSURL *)v5->_packageURL URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
    if ([v9 length])
    {
      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:2 format:0 error:0];
      infoDictionary = v5->_infoDictionary;
      v5->_infoDictionary = v10;

      v12 = [(NSMutableDictionary *)v5->_infoDictionary objectForKeyedSubscript:@"packageType"];
      packageTypeIdentifier = [objc_opt_class() packageTypeIdentifier];
      v14 = [v12 isEqualToString:packageTypeIdentifier];

      if (!v14)
      {

        v21 = 0;
        goto LABEL_8;
      }
    }

    v15 = v5->_infoDictionary;
    if (!v15)
    {
      [(MSVSegmentedCodingPackage *)v5 reset];
      v15 = v5->_infoDictionary;
    }

    v16 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"archivedClass"];
    v17 = NSClassFromString(v16);
    archivedClass = v5->_archivedClass;
    v5->_archivedClass = v17;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    segmentEncoderMap = v5->_segmentEncoderMap;
    v5->_segmentEncoderMap = dictionary;
  }

  v21 = v5;
LABEL_8:

  return v21;
}

@end