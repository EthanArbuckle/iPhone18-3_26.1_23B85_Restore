@interface HMDFileManager
- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5;
- (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4;
- (BOOL)fileExistsAtURL:(id)a3;
- (BOOL)isDeletableFileAtPath:(id)a3;
- (BOOL)linkItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)moveItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
- (BOOL)unzipItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)writeJSONObject:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)zipItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (NSURL)heroFrameStoreDirectoryURL;
- (NSURL)legacyHeroFrameStoreDirectoryURL;
- (id)JSONObjectWithURL:(id)a3 error:(id *)a4;
- (id)attributesOfItemAtPath:(id)a3 error:(id *)a4;
- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (void)enumerateItemsAtURL:(id)a3 includingPropertiesForKeys:(id)a4 usingBlock:(id)a5;
@end

@implementation HMDFileManager

- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultManager];
  v12 = [v11 createFileAtPath:v10 contents:v9 attributes:v8];

  return v12;
}

- (id)attributesOfItemAtPath:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [v7 attributesOfItemAtPath:v6 error:a4];

  return v8;
}

- (BOOL)moveItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  LOBYTE(a5) = [v10 moveItemAtURL:v9 toURL:v8 error:a5];

  return a5;
}

- (id)contentsOfDirectoryAtURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = MEMORY[0x277CCAA00];
  v10 = a4;
  v11 = a3;
  v12 = [v9 defaultManager];
  v13 = [v12 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v10 options:a5 error:a6];

  return v13;
}

- (void)enumerateItemsAtURL:(id)a3 includingPropertiesForKeys:(id)a4 usingBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v9[2](v9, *(*(&v18 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeletableFileAtPath:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 isDeletableFileAtPath:v4];

  return v6;
}

- (BOOL)linkItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  LOBYTE(a5) = [v10 linkItemAtURL:v9 toURL:v8 error:a5];

  return a5;
}

- (BOOL)writeJSONObject:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB78];
  v9 = a4;
  v10 = [[v8 alloc] initWithURL:v9 append:0];

  if (v10)
  {
    [v10 open];
    v11 = [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v10 options:1 error:a5] != 0;
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)JSONObjectWithURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEAE0];
  v6 = a3;
  v7 = [[v5 alloc] initWithURL:v6];

  if (v7)
  {
    [v7 open];
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v7 options:0 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)zipItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a4 path];
  v9 = fopen([v8 fileSystemRepresentation], "w+");

  if (v9)
  {
    v15 = *MEMORY[0x277D6A788];
    v16[0] = *MEMORY[0x277D6A780];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:{1, 0, 0, 0, 0, 0, v9, 0, 0, 0, 0, 0, 0, 0}];
    v11 = [v7 path];
    [v11 fileSystemRepresentation];
    StreamableZip = SZArchiverCreateStreamableZip();

    fclose(v9);
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *a5 = StreamableZip = 0;
  }

  else
  {
    StreamableZip = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return StreamableZip;
}

- (BOOL)unzipItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v24[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v23[0] = @"extractPKZip";
  v23[1] = @"sequesterResources";
  v24[0] = MEMORY[0x277CBEC38];
  v24[1] = MEMORY[0x277CBEC38];
  v23[2] = @"copyResources";
  v24[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v11 = [v8 URLByDeletingLastPathComponent];
  v12 = [v11 URLByAppendingPathComponent:@"temp"];

  BOMCopierNew();
  [v8 fileSystemRepresentation];
  [v12 fileSystemRepresentation];
  v13 = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v22 = 0;
  [(HMDFileManager *)self removeItemAtURL:v8 error:&v22];
  v20 = v22;
  v21 = v20;
  [(HMDFileManager *)self moveItemAtURL:v12 toURL:v9 error:&v21];
  v14 = v21;

  if (a5)
  {
LABEL_3:
    v15 = v14;
    *a5 = v14;
  }

LABEL_4:
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  LOBYTE(a4) = [v7 removeItemAtURL:v6 error:a4];

  return a4;
}

- (BOOL)fileExistsAtURL:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  LOBYTE(v4) = [v5 fileExistsAtPath:v6];
  return v4;
}

- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  LOBYTE(a4) = [v7 fileExistsAtPath:v6 isDirectory:a4];

  return a4;
}

- (BOOL)fileExistsAtPath:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  LOBYTE(a5) = [v10 copyItemAtURL:v9 toURL:v8 error:a5];

  return a5;
}

- (NSURL)legacyHeroFrameStoreDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = storeDirectoryPath;
  v4 = [v3 stringByAppendingPathComponent:@"HeroFrame"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

- (NSURL)heroFrameStoreDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = getBulletinImagesPath();
  v4 = [v3 stringByAppendingPathComponent:@"HeroFrame"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

@end