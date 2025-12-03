@interface DIDiskArbEmulation
- (BOOL)ejectWithBSDName:(id)name error:(id *)error;
- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error;
- (BOOL)unmountWithMountPoint:(id)point error:(id *)error;
@end

@implementation DIDiskArbEmulation

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = *__error();
  if (DIForwardLogs())
  {
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v25 = 45;
    v26 = 2080;
    v27 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v28 = 2112;
    v29 = nameCopy;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = getDIOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v25 = 45;
      v26 = 2080;
      v27 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v28 = 2112;
      v29 = nameCopy;
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", nameCopy];
  v11 = open([nameCopy fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    v16 = *__error();
    v15 = @"Failed to eject - cannot open device";
    goto LABEL_11;
  }

  v12 = v11;
  v13 = ioctl(v11, 0x20006415uLL, 0);
  v14 = *__error();
  close(v12);
  if (v13)
  {
    v15 = @"Failed to eject";
    v16 = v14;
LABEL_11:
    v17 = [DIError failWithPOSIXCode:v16 verboseInfo:v15 error:error];
    goto LABEL_19;
  }

  v18 = *__error();
  if (DIForwardLogs())
  {
    v19 = getDIOSLog();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v25 = 45;
    v26 = 2080;
    v27 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v28 = 2112;
    v29 = nameCopy;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
      free(v20);
    }
  }

  else
  {
    v21 = getDIOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v25 = 45;
      v26 = 2080;
      v27 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v28 = 2112;
      v29 = nameCopy;
      _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
    }
  }

  *__error() = v18;
  v17 = 1;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
  v22[4] = *MEMORY[0x277D85DE8];
  argsCopy = args;
  filesystemCopy = filesystem;
  lCopy = l;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", name];
  array = [MEMORY[0x277CBEB18] array];
  if (argsCopy && [argsCopy count])
  {
    [array addObject:@"-o"];
    v16 = [argsCopy componentsJoinedByString:{@", "}];
    [array addObject:v16];
  }

  v22[0] = @"-t";
  v22[1] = filesystemCopy;
  v22[2] = name;
  path = [lCopy path];
  v22[3] = path;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [array addObjectsFromArray:v18];

  v19 = [DIHelpers executeWithPath:@"/sbin/mount" arguments:array error:error];
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v6 = *__error();
  if (DIForwardLogs())
  {
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158211;
    v16 = 50;
    v17 = 2080;
    v18 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
    v19 = 2113;
    v20 = pointCopy;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = getDIOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v16 = 50;
      v17 = 2080;
      v18 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
      v19 = 2113;
      v20 = pointCopy;
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  v14 = pointCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [DIHelpers executeWithPath:@"/sbin/umount" arguments:v10 error:error];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end