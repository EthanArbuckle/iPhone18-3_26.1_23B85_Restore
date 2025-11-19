@interface DIDataPartition
+ (id)findPartitionSchemeWithIOMedia:(id)a3 error:(id *)a4;
+ (id)newMountURLWithError:(id *)a3;
- (BOOL)findPartitionWithDeviceBSDName:(id)a3 error:(id *)a4;
- (BOOL)findVolumeBSDNameWithError:(id *)a3;
- (BOOL)resizeFileSystemToMinimumWithError:(id *)a3;
@end

@implementation DIDataPartition

+ (id)findPartitionSchemeWithIOMedia:(id)a3 error:(id *)a4
{
  v5 = [a3 newIteratorWithOptions:0 error:?];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [[DIIOObject alloc] initWithIteratorNext:v5];

      if (!v7)
      {
        break;
      }

      v6 = v7;
      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "IOPartitionScheme"))
      {
        goto LABEL_8;
      }
    }

    v7 = [DIError nilWithEnumValue:153 verboseInfo:@"Failed to find partition scheme" error:a4];
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (BOOL)findPartitionWithDeviceBSDName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[DIIOMedia alloc] initWithDevName:v6 error:a4];
  if (v7)
  {
    v8 = [DIDataPartition findPartitionSchemeWithIOMedia:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 newIteratorWithOptions:0 error:a4];
      if (v10)
      {
        v26 = v9;
        v27 = v7;
        v11 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v10];
        if (v11)
        {
          v12 = v11;
          while (1)
          {
            v13 = [(DIIOObject *)v12 copyPropertyWithClass:objc_opt_class() key:@"Content"];
            if (v13)
            {
              v14 = v13;
              v15 = [(DIDataPartition *)self mediaContentUUID];
              v16 = [v14 isEqualToString:v15];

              if (v16)
              {
                break;
              }
            }

            v17 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v10];

            v12 = v17;
            if (!v17)
            {
              goto LABEL_9;
            }
          }

          [(DIDataPartition *)self setIoMedia:v12];
          v19 = [(DIDataPartition *)self ioMedia];
          v20 = [v19 copyPropertyWithClass:objc_opt_class() key:@"Size"];

          v21 = [(DIDataPartition *)self ioMedia];
          v22 = [v21 copyPropertyWithClass:objc_opt_class() key:@"Preferred Block Size"];

          v23 = [(DIDataPartition *)self ioMedia];
          v24 = [v23 copyPropertyWithClass:objc_opt_class() key:@"UUID"];

          if (v20 && [v20 unsignedLongLongValue] && v22 && objc_msgSend(v22, "unsignedLongLongValue") && v24)
          {
            -[DIDataPartition setBlockSize:](self, "setBlockSize:", [v22 unsignedLongLongValue]);
            -[DIDataPartition setNumBlocks:](self, "setNumBlocks:", [v20 unsignedLongLongValue] / -[DIDataPartition blockSize](self, "blockSize"));
            [(DIDataPartition *)self setIoMediaUUID:v24];
            v18 = 1;
          }

          else
          {
            v18 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot get partition size" error:a4];
          }
        }

        else
        {
LABEL_9:
          v18 = [DIError failWithEnumValue:153 verboseInfo:@"Failed to find the data partition" error:a4];
        }

        v9 = v26;
        v7 = v27;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)findVolumeBSDNameWithError:(id *)a3
{
  v4 = [(DIDataPartition *)self ioMedia];
  v5 = [v4 BSDName];
  [(DIDataPartition *)self setVolumeBSDName:v5];

  return 1;
}

+ (id)newMountURLWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 temporaryDirectory];

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [v5 URLByAppendingPathComponent:v7];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a3];

  v11 = 0;
  if (v10)
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)resizeFileSystemToMinimumWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(DIDataPartition *)self getFileSystemMinimalBlocks:?];
  if (v5)
  {
    v6 = v5;
    v7 = *__error();
    if (DIForwardLogs())
    {
      v8 = getDIOSLog();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      *buf = 68158466;
      v18 = 54;
      v19 = 2080;
      v20 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = [(DIDataPartition *)self numBlocks];
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
        free(v9);
      }
    }

    else
    {
      v10 = getDIOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158466;
        v18 = 54;
        v19 = 2080;
        v20 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
        v21 = 2048;
        v22 = v6;
        v23 = 2048;
        v24 = [(DIDataPartition *)self numBlocks];
        _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Minimum data partition size is %lld blocks (estimation was %lld blocks)", buf, 0x26u);
      }
    }

    *__error() = v7;
    if (v6 <= [(DIDataPartition *)self numBlocks])
    {
      if (v6 != [(DIDataPartition *)self numBlocks])
      {
        LODWORD(v5) = [(DIDataPartition *)self resizeFileSystemWithNumBlocks:v6 error:a3];
        if (!v5)
        {
          goto LABEL_20;
        }

        v11 = *__error();
        if (DIForwardLogs())
        {
          v12 = getDIOSLog();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          *buf = 68157954;
          v18 = 54;
          v19 = 2080;
          v20 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
          v13 = _os_log_send_and_compose_impl();

          if (v13)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
            free(v13);
          }
        }

        else
        {
          v14 = getDIOSLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v18 = 54;
            v19 = 2080;
            v20 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
            _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: File system resized", buf, 0x12u);
          }
        }

        *__error() = v11;
        [(DIDataPartition *)self setNumBlocks:v6];
      }

      LOBYTE(v5) = 1;
      goto LABEL_20;
    }

    LOBYTE(v5) = [DIError failWithEnumValue:154 verboseInfo:@"Invalid minimum data partition size" error:a3];
  }

LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end