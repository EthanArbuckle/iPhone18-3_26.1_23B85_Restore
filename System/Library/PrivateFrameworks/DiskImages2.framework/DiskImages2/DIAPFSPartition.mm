@interface DIAPFSPartition
- (BOOL)findVolumeBSDNameWithError:(id *)a3;
- (BOOL)formatWithVolumeName:(id)a3 error:(id *)a4;
- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)a3 error:(id *)a4;
- (id)newMountVolumeWithDiskArb:(id)a3 error:(id *)a4;
- (unint64_t)getFileSystemMinimalBlocks:(id *)a3;
@end

@implementation DIAPFSPartition

- (BOOL)findVolumeBSDNameWithError:(id *)a3
{
  v5 = [(DIDataPartition *)self ioMedia];
  v6 = [v5 newIteratorWithOptions:1 error:a3];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7;
      v7 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v6];

      if (!v7)
      {
        break;
      }

      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "AppleAPFSVolume"))
      {
        v9 = [(DIIOMedia *)v7 BSDName];
        [(DIDataPartition *)self setVolumeBSDName:v9];

        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot find the APFS volume" error:a3];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)formatWithVolumeName:(id)a3 error:(id *)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/Filesystems/apfs.fs"];
  v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 infoDictionary];
    v11 = [v10 objectForKeyedSubscript:@"FSPersonalities"];
    v12 = [v11 objectForKeyedSubscript:@"APFS"];
    v13 = [v12 objectForKeyedSubscript:@"FSFormatExecutable"];

    v14 = [MEMORY[0x277CBEB18] array];
    if (v6)
    {
      v29[0] = @"-v";
      v29[1] = v6;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [v14 addObjectsFromArray:v15];
    }

    v16 = [(DIDataPartition *)self ioMedia];
    v17 = [v16 BSDName];
    [v14 addObject:v17];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"/sbin/%@", v13];
    LODWORD(a4) = [DIHelpers executeWithPath:v18 arguments:v14 error:a4];

    if (a4)
    {
      usleep(0x7A120u);
      v19 = *__error();
      if (DIForwardLogs())
      {
        v20 = getDIOSLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v26 = 46;
        v27 = 2080;
        v28 = "[DIAPFSPartition formatWithVolumeName:error:]";
        v21 = _os_log_send_and_compose_impl();

        if (v21)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
          free(v21);
        }
      }

      else
      {
        v22 = getDIOSLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v26 = 46;
          v27 = 2080;
          v28 = "[DIAPFSPartition formatWithVolumeName:error:]";
          _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: APFS container and volume created", buf, 0x12u);
        }
      }

      *__error() = v19;
    }
  }

  else
  {
    LOBYTE(a4) = [DIError failWithEnumValue:150 verboseInfo:@"Cannot open filesystems bundle" error:a4];
  }

  v23 = *MEMORY[0x277D85DE8];
  return a4;
}

- (id)newMountVolumeWithDiskArb:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [DIDataPartition newMountURLWithError:a4];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *__error();
  if (DIForwardLogs())
  {
    v9 = getDIOSLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    v10 = [(DIDataPartition *)self volumeBSDName];
    [v7 path];
    *buf = 68158466;
    v21 = 51;
    v22 = 2080;
    v23 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
    v24 = 2112;
    v25 = v10;
    v27 = v26 = 2112;
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(DIDataPartition *)self volumeBSDName];
      v14 = [v7 path];
      *buf = 68158466;
      v21 = 51;
      v22 = 2080;
      v23 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Mounting %@ on %@", buf, 0x26u);
    }
  }

  *__error() = v8;
  v15 = [(DIDataPartition *)self volumeBSDName];
  v16 = [v6 mountWithDeviceName:v15 args:&unk_285C0F470 filesystem:@"apfs" mountURL:v7 error:a4];

  if (v16)
  {
    v17 = [v7 path];
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unint64_t)getFileSystemMinimalBlocks:(id *)a3
{
  v4 = [(DIDataPartition *)self ioMedia];
  v5 = [v4 BSDName];
  [v5 UTF8String];
  MinimalSize = APFSContainerGetMinimalSize();

  if (MinimalSize)
  {
    LODWORD(result) = [DIError failWithOSStatus:MinimalSize verboseInfo:@"Failed to get minimum APFS container size" error:a3];
  }

  else
  {
    LODWORD(result) = [DIError failWithEnumValue:154 verboseInfo:@"Minimum container size must be non-zero" error:a3];
  }

  return result;
}

- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)a3 error:(id *)a4
{
  v6 = [(DIDataPartition *)self ioMedia];
  v7 = [v6 BSDName];
  [v7 UTF8String];
  [(DIDataPartition *)self blockSize];
  v8 = APFSContainerResize();

  if (!v8)
  {
    return 1;
  }

  return [DIError failWithOSStatus:v8 verboseInfo:@"Failed resizing the APFS container" error:a4];
}

@end