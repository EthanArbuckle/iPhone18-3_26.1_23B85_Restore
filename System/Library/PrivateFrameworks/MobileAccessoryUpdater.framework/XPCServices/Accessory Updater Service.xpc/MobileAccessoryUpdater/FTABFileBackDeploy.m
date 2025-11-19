@interface FTABFileBackDeploy
- (BOOL)addSubfileWithTagName:(id)a3 contentsOfURL:(id)a4;
- (BOOL)addSubfileWithTagName:(id)a3 subfileData:(id)a4;
- (BOOL)configureFileHandleWriteDestinationForURL:(id)a3;
- (BOOL)initFile;
- (BOOL)parseFileData;
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4;
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 handle:(id)a5;
- (BOOL)writeSubfileToURL:(id)a3 tag:(id)a4;
- (BOOL)writeToDestination;
- (BOOL)writeToURL:(id)a3;
- (FTABFileBackDeploy)init;
- (FTABFileBackDeploy)initWithContentsOfURL:(id)a3;
- (FTABFileBackDeploy)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createFileHandleForWritingToURL:(id)a3;
- (id)description;
- (id)subfileWithTag:(id)a3;
- (id)writeToData;
- (void)addSubfiles:(id)a3;
- (void)configureDataWriteDestination;
- (void)removeSubfileWithTag:(id)a3;
- (void)setBootNonce:(id)a3;
- (void)setManifest:(id)a3;
@end

@implementation FTABFileBackDeploy

- (FTABFileBackDeploy)initWithContentsOfURL:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FTABFileBackDeploy;
  v6 = [(FTABFileBackDeploy *)&v14 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v13 = 0;
  v7 = [NSData dataWithContentsOfURL:v5 options:1 error:&v13];
  v8 = v13;
  fileData = v6->_fileData;
  v6->_fileData = v7;

  if (!v6->_fileData)
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003626C();
    }

    goto LABEL_9;
  }

  if (![(FTABFileBackDeploy *)v6 initFile])
  {
LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_url, a3);

LABEL_5:
  v10 = v6;
LABEL_10:

  return v10;
}

- (FTABFileBackDeploy)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FTABFileBackDeploy;
  v5 = [(FTABFileBackDeploy *)&v10 init];
  if (v5 && (v6 = [v4 copy], fileData = v5->_fileData, v5->_fileData = v6, fileData, !-[FTABFileBackDeploy initFile](v5, "initFile")))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)initFile
{
  self->_filePointer = [(NSData *)self->_fileData bytes];
  self->_fileLength = [(NSData *)self->_fileData length];
  v3 = +[NSMutableArray array];
  subFileArray = self->_subFileArray;
  self->_subFileArray = v3;

  return [(FTABFileBackDeploy *)self parseFileData];
}

- (FTABFileBackDeploy)init
{
  v11.receiver = self;
  v11.super_class = FTABFileBackDeploy;
  v2 = [(FTABFileBackDeploy *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileData = v2->_fileData;
    v2->_fileData = v3;

    manifest = v2->_manifest;
    v2->_manifest = 0;

    v2->_filePointer = [(NSData *)v2->_fileData bytes];
    v2->_fileLength = [(NSData *)v2->_fileData length];
    v6 = +[NSMutableArray array];
    subFileArray = v2->_subFileArray;
    v2->_subFileArray = v6;

    v8 = [NSData dataWithBytes:"rkosftab" length:8];
    magic = v2->_magic;
    v2->_magic = v8;
  }

  return v2;
}

- (BOOL)parseFileData
{
  if (self->_fileLength > 0x2F)
  {
    filePointer = self->_filePointer;
    v5 = (filePointer + 32);
    if (*(filePointer + 4) == 0x42415446534F4B52 || *v5 == 0x62617466736F6B72)
    {
      v6 = [NSData dataWithBytes:v5 length:8];
      magic = self->_magic;
      self->_magic = v6;

      self->_generation = *filePointer;
      self->_valid = *(filePointer + 1);
      v8 = [NSData dataWithBytes:filePointer + 8 length:8];
      bootNonce = self->_bootNonce;
      self->_bootNonce = v8;

      v10 = *(filePointer + 5);
      if (v10)
      {
        v11 = *(filePointer + 4);
        if (![(FTABFileBackDeploy *)self fileValidForOffset:v11 length:*(filePointer + 5)])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            sub_1000363C8();
          }

          goto LABEL_26;
        }

        v12 = [[FTABSubfileBackDeploy alloc] initWithTag:@"Manifest" dataPointer:&self->_filePointer[v11] dataLength:v10];
        manifest = self->_manifest;
        self->_manifest = v12;
      }

      v14 = *(filePointer + 10);
      if (!v14)
      {
        return 1;
      }

      v15 = filePointer + 48;
      v16 = 48;
      while ([(FTABFileBackDeploy *)self fileValidForOffset:v16 length:16])
      {
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        if (![(FTABFileBackDeploy *)self fileValidForOffset:v18 length:v17])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            sub_1000364D4();
          }

          goto LABEL_26;
        }

        v19 = [[NSString alloc] initWithBytes:v15 length:4 encoding:4];
        if (!v19)
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            sub_100036558(v15);
          }

          goto LABEL_26;
        }

        v20 = v19;
        v21 = [[FTABSubfileBackDeploy alloc] initWithTag:v19 dataPointer:&self->_filePointer[v18] dataLength:v17];
        [(NSMutableArray *)self->_subFileArray addObject:v21];
        --v14;
        v15 += 16;
        v16 = (v16 + 16);

        if (!v14)
        {
          return 1;
        }
      }

      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100036448();
      }
    }

    else
    {
      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000362E8(v5, filePointer);
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100036608();
    }
  }

LABEL_26:

  return 0;
}

- (id)subfileWithTag:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_subFileArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 tag];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeSubfileWithTag:(id)a3
{
  v4 = [(FTABFileBackDeploy *)self subfileWithTag:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_subFileArray removeObject:v4];
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = v3;
  if (self->_url)
  {
    [v3 appendFormat:@"FTAB %@:\n", self->_url];
  }

  else
  {
    [v3 appendFormat:@"FTAB:\n", v15];
  }

  [v4 appendFormat:@"\tGeneration: 0x%08x\n", self->_generation];
  [v4 appendFormat:@"\tValid: %u\n", self->_valid];
  [v4 appendFormat:@"\tBoot Nonce: "];
  if ([(NSData *)self->_bootNonce length])
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%02x", *(-[NSData bytes](self->_bootNonce, "bytes") + v5++)];
    }

    while (v5 < [(NSData *)self->_bootNonce length]);
  }

  [v4 appendFormat:@"\n"];
  if (self->_manifest)
  {
    [v4 appendFormat:@"\tManifest: %@\n", self->_manifest];
  }

  if ([(NSMutableArray *)self->_subFileArray count])
  {
    [v4 appendFormat:@"\tSubfiles:\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_subFileArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (-v9 != i)
          {
            [v4 appendString:@"\n"];
          }

          [v4 appendFormat:@"\t\t%@", v12];
        }

        v9 += v8;
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v13 = [NSString stringWithString:v4];

  return v13;
}

- (BOOL)addSubfileWithTagName:(id)a3 contentsOfURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [NSData dataWithContentsOfURL:v7 options:1 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [(FTABFileBackDeploy *)self addSubfileWithTagName:v6 subfileData:v8];
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100036688();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)addSubfileWithTagName:(id)a3 subfileData:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(FTABFileBackDeploy *)self removeSubfileWithTag:v7];
  v8 = [FTABSubfileBackDeploy alloc];
  v9 = [v6 bytes];
  v10 = [v6 length];

  v11 = [(FTABSubfileBackDeploy *)v8 initWithTag:v7 dataPointer:v9 dataLength:v10];
  [(NSMutableArray *)self->_subFileArray addObject:v11];

  return 1;
}

- (void)addSubfiles:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) tag];
        [(FTABFileBackDeploy *)self removeSubfileWithTag:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_subFileArray addObjectsFromArray:v4];
}

- (void)setManifest:(id)a3
{
  v4 = a3;
  v5 = [[FTABSubfileBackDeploy alloc] initWithTag:@"Manifest" data:v4];

  manifest = self->_manifest;
  self->_manifest = v5;
}

- (void)setBootNonce:(id)a3
{
  v4 = a3;
  if ([v4 length] == 8)
  {
    v5 = [v4 copy];
    bootNonce = self->_bootNonce;
    self->_bootNonce = v5;
  }
}

- (id)createFileHandleForWritingToURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [(NSFileManager *)v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [v3 path];
    v18 = 0;
    v8 = [(NSFileManager *)v4 removeItemAtPath:v7 error:&v18];
    v9 = v18;

    if ((v8 & 1) == 0)
    {
      v15 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100036704(v3);
      }

      goto LABEL_14;
    }
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v3 path];
  v12 = [(NSFileManager *)v10 createFileAtPath:v11 contents:0 attributes:0];

  if ((v12 & 1) == 0)
  {
    v9 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100036790(v3);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v13 = [NSFileHandle fileHandleForWritingToURL:v3 error:&v17];
  v9 = v17;
  if (!v13)
  {
    v14 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003681C();
    }
  }

LABEL_15:

  return v13;
}

- (BOOL)configureFileHandleWriteDestinationForURL:(id)a3
{
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;
  v5 = a3;

  v6 = [(FTABFileBackDeploy *)self createFileHandleForWritingToURL:v5];
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = v6;

  return self->_fileHandleWriteDestination != 0;
}

- (void)configureDataWriteDestination
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = 0;

  v4 = +[NSMutableData data];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = v4;
}

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  if (fileHandleWriteDestination)
  {

    LOBYTE(dataWriteDestination) = [(NSFileHandle *)fileHandleWriteDestination writeBytes:a3 length:a4];
  }

  else
  {
    dataWriteDestination = self->_dataWriteDestination;
    if (dataWriteDestination)
    {
      [(NSMutableData *)dataWriteDestination appendBytes:a3 length:a4, v4, v5];
      LOBYTE(dataWriteDestination) = 1;
    }
  }

  return dataWriteDestination;
}

- (BOOL)writeToDestination
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36[0] = *&self->_generation;
  v36[1] = *[(NSData *)self->_bootNonce bytes];
  v3 = 16 * [(NSMutableArray *)self->_subFileArray count];
  manifest = self->_manifest;
  if (manifest)
  {
    v5 = v3 + 48;
    v6 = [(FTABSubfileBackDeploy *)manifest dataLength];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v37 = v5;
  v38 = v6;
  v40 = *[(NSData *)self->_magic bytes];
  LODWORD(v41) = [(NSMutableArray *)self->_subFileArray count];
  if (![(FTABFileBackDeploy *)self writeBytes:v36 length:48])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_100036898();
    }

    goto LABEL_31;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_subFileArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v3 + v6 + 48;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v28 = 0;
        v29 = 0;
        v14 = [v13 tag];
        LODWORD(v28) = *[v14 UTF8String];

        HIDWORD(v28) = v10;
        LODWORD(v29) = [v13 dataLength];
        if (![(FTABFileBackDeploy *)self writeBytes:&v28 length:16])
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000368D8(v13);
          }

LABEL_30:

          goto LABEL_31;
        }

        v10 += [v13 dataLength];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = self->_manifest;
  if (v15 && ![(FTABFileBackDeploy *)self writeBytes:[(FTABSubfileBackDeploy *)v15 dataPointer] length:[(FTABSubfileBackDeploy *)self->_manifest dataLength]])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_100036964();
    }

LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_subFileArray;
  v16 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    while (2)
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if (!-[FTABFileBackDeploy writeBytes:length:](self, "writeBytes:length:", [v20 dataPointer], objc_msgSend(v20, "dataLength")))
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000369A4(v20);
          }

          goto LABEL_30;
        }
      }

      v17 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
      v21 = 1;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_32:

  return v21;
}

- (BOOL)writeToURL:(id)a3
{
  v4 = a3;
  if ([(FTABFileBackDeploy *)self configureFileHandleWriteDestinationForURL:v4])
  {
    v5 = [(FTABFileBackDeploy *)self writeToDestination];
    fileHandleWriteDestination = self->_fileHandleWriteDestination;
    self->_fileHandleWriteDestination = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100036A30(v4);
    }

    v5 = 0;
  }

  return v5;
}

- (id)writeToData
{
  [(FTABFileBackDeploy *)self configureDataWriteDestination];
  [(FTABFileBackDeploy *)self writeToDestination];
  v3 = [NSData dataWithData:self->_dataWriteDestination];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;

  return v3;
}

- (BOOL)writeSubfileToURL:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTABFileBackDeploy *)self subfileWithTag:v7];
  if (v8)
  {
    v9 = [(FTABFileBackDeploy *)self createFileHandleForWritingToURL:v6];
    if (v9)
    {
      v10 = [v9 writeBytes:objc_msgSend(v8 length:{"dataPointer"), objc_msgSend(v8, "dataLength")}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100036ABC();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 handle:(id)a5
{
  v7 = a5;
  v8 = [NSData dataWithBytes:a3 length:a4];
  LOBYTE(a3) = [v7 ftabWriteData:v8 error:0];

  return a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(FTABFileBackDeploy *)self writeToData];
  v4 = [[FTABFileBackDeploy alloc] initWithData:v3];

  return v4;
}

@end