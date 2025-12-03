@interface DIAPFSPartition
- (BOOL)findVolumeBSDNameWithError:(id *)error;
- (BOOL)formatWithVolumeName:(id)name error:(id *)error;
- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)blocks error:(id *)error;
- (id)newMountVolumeWithDiskArb:(id)arb error:(id *)error;
- (unint64_t)getFileSystemMinimalBlocks:(id *)blocks;
@end

@implementation DIAPFSPartition

- (BOOL)findVolumeBSDNameWithError:(id *)error
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  v6 = [ioMedia newIteratorWithOptions:1 error:error];

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
        bSDName = [(DIIOMedia *)v7 BSDName];
        [(DIDataPartition *)self setVolumeBSDName:bSDName];

        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot find the APFS volume" error:error];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)formatWithVolumeName:(id)name error:(id *)error
{
  v29[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/Filesystems/apfs.fs"];
  v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  v9 = v8;
  if (v8)
  {
    infoDictionary = [v8 infoDictionary];
    v11 = [infoDictionary objectForKeyedSubscript:@"FSPersonalities"];
    v12 = [v11 objectForKeyedSubscript:@"APFS"];
    v13 = [v12 objectForKeyedSubscript:@"FSFormatExecutable"];

    array = [MEMORY[0x277CBEB18] array];
    if (nameCopy)
    {
      v29[0] = @"-v";
      v29[1] = nameCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [array addObjectsFromArray:v15];
    }

    ioMedia = [(DIDataPartition *)self ioMedia];
    bSDName = [ioMedia BSDName];
    [array addObject:bSDName];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"/sbin/%@", v13];
    LODWORD(error) = [DIHelpers executeWithPath:v18 arguments:array error:error];

    if (error)
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
    LOBYTE(error) = [DIError failWithEnumValue:150 verboseInfo:@"Cannot open filesystems bundle" error:error];
  }

  v23 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)newMountVolumeWithDiskArb:(id)arb error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  arbCopy = arb;
  v7 = [DIDataPartition newMountURLWithError:error];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *__error();
  if (DIForwardLogs())
  {
    v9 = getDIOSLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    volumeBSDName = [(DIDataPartition *)self volumeBSDName];
    [v7 path];
    *buf = 68158466;
    v21 = 51;
    v22 = 2080;
    v23 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
    v24 = 2112;
    v25 = volumeBSDName;
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
      volumeBSDName2 = [(DIDataPartition *)self volumeBSDName];
      path = [v7 path];
      *buf = 68158466;
      v21 = 51;
      v22 = 2080;
      v23 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
      v24 = 2112;
      v25 = volumeBSDName2;
      v26 = 2112;
      v27 = path;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Mounting %@ on %@", buf, 0x26u);
    }
  }

  *__error() = v8;
  volumeBSDName3 = [(DIDataPartition *)self volumeBSDName];
  v16 = [arbCopy mountWithDeviceName:volumeBSDName3 args:&unk_285C0F470 filesystem:@"apfs" mountURL:v7 error:error];

  if (v16)
  {
    path2 = [v7 path];
  }

  else
  {
LABEL_10:
    path2 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return path2;
}

- (unint64_t)getFileSystemMinimalBlocks:(id *)blocks
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  bSDName = [ioMedia BSDName];
  [bSDName UTF8String];
  MinimalSize = APFSContainerGetMinimalSize();

  if (MinimalSize)
  {
    LODWORD(result) = [DIError failWithOSStatus:MinimalSize verboseInfo:@"Failed to get minimum APFS container size" error:blocks];
  }

  else
  {
    LODWORD(result) = [DIError failWithEnumValue:154 verboseInfo:@"Minimum container size must be non-zero" error:blocks];
  }

  return result;
}

- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)blocks error:(id *)error
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  bSDName = [ioMedia BSDName];
  [bSDName UTF8String];
  [(DIDataPartition *)self blockSize];
  v8 = APFSContainerResize();

  if (!v8)
  {
    return 1;
  }

  return [DIError failWithOSStatus:v8 verboseInfo:@"Failed resizing the APFS container" error:error];
}

@end