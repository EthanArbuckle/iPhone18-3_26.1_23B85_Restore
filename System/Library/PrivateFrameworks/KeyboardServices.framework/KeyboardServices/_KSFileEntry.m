@interface _KSFileEntry
+ (id)entryWithSerialisedDataAtURL:(id)a3;
- (_KSFileEntry)initWithCoder:(id)a3;
- (_KSFileEntry)initWithName:(id)a3;
- (id)description;
- (id)serialiseToTemporaryFile;
- (id)temporaryFileNameForType:(id)a3;
- (unint64_t)addBlobToFile:(id)a3;
- (void)consistencyCheck;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadAttributesFromURL:(id)a3;
- (void)saveAttributesToURL:(id)a3;
@end

@implementation _KSFileEntry

+ (id)entryWithSerialisedDataAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:1 error:0];
  v5 = [v4 length];
  v6 = MEMORY[0x277CBE658];
  if (v5 <= 0xF)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Input file '%@' smaller than minimum header size (size %lu, minimum %lu)", v3, objc_msgSend(v4, "length"), 16}];
  }

  v7 = [v4 bytes];
  v8 = *v7;
  if (v8)
  {
    [MEMORY[0x277CBEAD8] raise:*v6 format:{@"Input file '%@' incorrect version (contains %i, expected %i)", v3, v8, 0}];
  }

  v9 = *(v7 + 1);
  if (v9 + 16 > [v4 length])
  {
    [MEMORY[0x277CBEAD8] raise:*v6 format:{@"Input file '%@' too short to contain serialised directory (size %lu, expected %lu)", v3, objc_msgSend(v4, "length"), v9 + 16}];
  }

  v10 = [v4 subdataWithRange:{16, v9}];
  v21 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v21];
  v12 = v21;
  if (v12)
  {
    v13 = KSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_KSFileEntry *)v12 entryWithSerialisedDataAtURL:v13];
    }
  }

  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*v6 format:{@"Input file '%@' didn't deserialise directory", v3}];
  }

  v14 = *(v7 + 1);
  v15 = [v4 length];
  if (v15 > [v4 length])
  {
    [MEMORY[0x277CBEAD8] raise:*v6 format:{@"Input file '%@' missing padding (size %lu, expected %lu)", v3, objc_msgSend(v4, "length"), v15}];
  }

  v16 = [v4 subdataWithRange:{((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v15 - (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45___KSFileEntry_entryWithSerialisedDataAtURL___block_invoke;
  v19[3] = &unk_2797F7080;
  v20 = v16;
  v17 = v16;
  [v11 performOnEverything:v19];
  [v11 consistencyCheck];

  return v11;
}

- (id)serialiseToTemporaryFile
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(_KSFileEntry *)self temporaryFileNameForType:@"UserWordStore"];
  v4 = open([v3 fileSystemRepresentation], 1573, 384);
  if ((v4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEB18] array];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40___KSFileEntry_serialiseToTemporaryFile__block_invoke;
    v25[3] = &unk_2797F7080;
    v7 = v6;
    v26 = v7;
    [(_KSFileEntry *)self performOnEverything:v25];
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    [(_KSFileEntry *)self performOnEverything:&__block_literal_global_4];
    __buf[0] = 0;
    __buf[1] = [v8 length];
    write(v5, __buf, 0x10uLL);
    write(v5, [v8 bytes], objc_msgSend(v8, "length"));
    WritePadding(v5, [v8 length]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 contents];
          write(v5, [v16 bytes], objc_msgSend(v16, "length"));
          WritePadding(v5, [v16 length]);

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v11);
    }

    close(v5);
    v17 = v3;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)temporaryFileNameForType:(id)a3
{
  v4 = a3;
  v5 = [_KSUserWordsSynchroniser generateKeyWithSize:10];
  v6 = [_KSUserWordsSynchroniser generateRecordNameForFilename:v4 withKey:v5];
  v7 = [v4 stringByAppendingFormat:@".%@", v6];

  v8 = MEMORY[0x277CBEBC0];
  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:v7];
  v11 = [v8 fileURLWithPath:v10];

  tempFiles = self->_tempFiles;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v11, "fileSystemRepresentation")}];
  [(NSMutableArray *)tempFiles addObject:v13];

  return v11;
}

- (_KSFileEntry)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _KSFileEntry;
  v6 = [(_KSFileEntry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    extendedAttributes = v7->_extendedAttributes;
    v7->_extendedAttributes = v8;
  }

  return v7;
}

- (_KSFileEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _KSFileEntry;
  v5 = [(_KSFileEntry *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"eattr"];
    v10 = [v9 mutableCopy];
    extendedAttributes = v5->_extendedAttributes;
    v5->_extendedAttributes = v10;
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_tempFiles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        unlink([*(*(&v10 + 1) + 8 * v7++) UTF8String]);
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = _KSFileEntry;
  [(_KSFileEntry *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_extendedAttributes forKey:@"eattr"];
}

- (unint64_t)addBlobToFile:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_fileArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += ([*(*(&v13 + 1) + 8 * i) size] + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableArray *)self->_fileArray addObject:v4];
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)loadAttributesFromURL:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 fileSystemRepresentation];
  v31 = [MEMORY[0x277CBEB38] dictionary];
  v5 = listxattr(v4, 0, 0, 0);
  if (v5 == -1)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE658];
    v8 = *__error();
    v9 = __error();
    [v6 raise:v7 format:{@"Unable to find size of extended attributes for '%@': %i: %s", v3, v8, strerror(*v9)}];
  }

  v10 = malloc_type_malloc(v5, 0x82AB5E60uLL);
  if (!v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to allocate memory for extended attributes for '%@' (%zi bytes)", v3, v5}];
  }

  v11 = listxattr(v4, v10, v5, 0);
  v12 = v11;
  v30 = v3;
  if (v11)
  {
    if (v11 == -1)
    {
      free(v10);
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE658];
      v15 = *__error();
      v16 = __error();
      [v13 raise:v14 format:{@"Unable to load extended attributes for '%@': %i: %s", v3, v15, strerror(*v16)}];
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:v12 encoding:4];
    v12 = [v17 componentsSeparatedByString:&stru_286796E10];
  }

  free(v10);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        if (([v23 isEqualToString:&stru_286796E30] & 1) == 0)
        {
          v24 = getxattr(v4, [v23 UTF8String], 0, 0, 0, 0);
          v25 = malloc_type_malloc(v24, 0x7A1B2542uLL);
          getxattr(v4, [v23 UTF8String], v25, v24, 0, 0);
          v26 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:v24];
          [(NSMutableDictionary *)v31 setValue:v26 forKey:v23];

          free(v25);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  extendedAttributes = self->_extendedAttributes;
  self->_extendedAttributes = v31;

  v28 = *MEMORY[0x277D85DE8];
}

- (void)saveAttributesToURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a3 fileSystemRepresentation];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_extendedAttributes;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_extendedAttributes objectForKey:v12, v15];
        setxattr(v6, [v12 UTF8String], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"), 0, 0);
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _KSFileEntry;
  v4 = [(_KSFileEntry *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ %@ (extended attributes %@)>", v4, self->_name, self->_extendedAttributes];;

  return v5;
}

- (void)consistencyCheck
{
  if (!self->_name)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ missing name", self}];
  }

  if (!self->_extendedAttributes)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ missing extended attributes", self}];
  }
}

+ (void)entryWithSerialisedDataAtURL:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_2557E2000, a2, OS_LOG_TYPE_ERROR, "%s  couldn't decode data: %@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end