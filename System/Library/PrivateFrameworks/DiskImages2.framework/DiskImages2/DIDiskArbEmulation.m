@interface DIDiskArbEmulation
- (BOOL)ejectWithBSDName:(id)a3 error:(id *)a4;
- (BOOL)mountWithDeviceName:(id)a3 args:(id)a4 filesystem:(id)a5 mountURL:(id)a6 error:(id *)a7;
- (BOOL)unmountWithMountPoint:(id)a3 error:(id *)a4;
@end

@implementation DIDiskArbEmulation

- (BOOL)ejectWithBSDName:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
    v29 = v5;
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
      v29 = v5;
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", v5];
  v11 = open([v10 fileSystemRepresentation], 0);
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
    v17 = [DIError failWithPOSIXCode:v16 verboseInfo:v15 error:a4];
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
    v29 = v5;
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
      v29 = v5;
      _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
    }
  }

  *__error() = v18;
  v17 = 1;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)mountWithDeviceName:(id)a3 args:(id)a4 filesystem:(id)a5 mountURL:(id)a6 error:(id *)a7
{
  v22[4] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", a3];
  v15 = [MEMORY[0x277CBEB18] array];
  if (v11 && [v11 count])
  {
    [v15 addObject:@"-o"];
    v16 = [v11 componentsJoinedByString:{@", "}];
    [v15 addObject:v16];
  }

  v22[0] = @"-t";
  v22[1] = v12;
  v22[2] = v14;
  v17 = [v13 path];
  v22[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v15 addObjectsFromArray:v18];

  v19 = [DIHelpers executeWithPath:@"/sbin/mount" arguments:v15 error:a7];
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)unmountWithMountPoint:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
    v20 = v5;
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
      v20 = v5;
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  v14 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [DIHelpers executeWithPath:@"/sbin/umount" arguments:v10 error:a4];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end