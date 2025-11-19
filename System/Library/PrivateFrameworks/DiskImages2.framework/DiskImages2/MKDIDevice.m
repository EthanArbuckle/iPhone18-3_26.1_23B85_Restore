@interface MKDIDevice
- (BOOL)partitionDiskWithGPTTypeID:(unint64_t)a3 error:(id *)a4;
- (BOOL)resizeDataPartitionWithPartitionUUID:(id)a3 partitionNumBlocks:(unint64_t)a4 error:(id *)a5;
- (BOOL)updatePartitionMapWithError:(id *)a3;
- (MKDIDevice)initWithBSDName:(id)a3 numBlocks:(unint64_t)a4 blockSize:(int)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation MKDIDevice

- (MKDIDevice)initWithBSDName:(id)a3 numBlocks:(unint64_t)a4 blockSize:(int)a5 error:(id *)a6
{
  v46[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v34.receiver = self;
  v34.super_class = MKDIDevice;
  v11 = [(MKDIDevice *)&v34 init];
  v12 = v11;
  if (v11)
  {
    v32 = a6;
    v11->_blockSize = a5;
    v45 = @"Writable";
    v46[0] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v33 = v10;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", v10];
    v15 = 0;
    v16 = a5 + 511;
    if (a5 >= 0)
    {
      v16 = a5;
    }

    v17 = (v16 >> 9) * a4;
    v18 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
      if (!v19)
      {
        v28 = [DIError nilWithPOSIXCode:12 verboseInfo:@"Failed to allocate refcon" error:v32];
        goto LABEL_22;
      }

      v20 = v19;
      *v19 = v17;
      [v14 fileSystemRepresentation];
      v21 = MKCreateMediaDeviceRefcon();
      if (v21)
      {
        v29 = v21;
        free(v20);
        v28 = [DIError nilWithOSStatus:v29 verboseInfo:@"Failed creating MediaKit device refcon" error:v32];
        goto LABEL_22;
      }

      if (v15)
      {
        sleep(1u);
      }

      v22 = MKMediaCreate();
      v12->_mediaRef = v22;
      if (v22)
      {
        break;
      }

      v23 = *__error();
      if (DIForwardLogs())
      {
        v24 = getDIOSLog();
        os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        *buf = 68158722;
        ++v15;
        v36 = 56;
        v37 = 2080;
        v38 = "[MKDIDevice initWithBSDName:numBlocks:blockSize:error:]";
        v39 = 1024;
        v40 = 0;
        v41 = 1024;
        v42 = v15;
        v43 = 1024;
        v44 = 3;
        v25 = _os_log_send_and_compose_impl();

        if (v25)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
          free(v25);
        }
      }

      else
      {
        v26 = getDIOSLog();
        ++v15;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158722;
          v36 = 56;
          v37 = 2080;
          v38 = "[MKDIDevice initWithBSDName:numBlocks:blockSize:error:]";
          v39 = 1024;
          v40 = 0;
          v41 = 1024;
          v42 = v15;
          v43 = 1024;
          v44 = 3;
          _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_ERROR, "%.*s: MKMediaCreate failed with error %d (%d/%d)", buf, 0x24u);
        }
      }

      *__error() = v23;
      if (v15 == 3)
      {
        [DIError failWithOSStatus:0 verboseInfo:@"Failed creating MediaKit object" error:v32];
        v27 = 0;
        goto LABEL_23;
      }
    }

    v28 = v12;
LABEL_22:
    v27 = v28;
LABEL_23:

    v10 = v33;
  }

  else
  {
    v27 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)partitionDiskWithGPTTypeID:(unint64_t)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v5 = MKCFBuildPartition();
  v23 = v5;
  v24 = @"Partitions";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v25[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v8 = MKCFCreateMedia();
  [(MKDIDevice *)self blockSize];
  v16 = [(MKDIDevice *)self mediaRef];
  v17 = &v18;
  MKCFCreateMap();
  if (!v18)
  {
    [(MKDIDevice *)self mediaRef:v16];
    v18 = MKCFWriteMedia();
    if (!v18)
    {
      v9 = *__error();
      if (DIForwardLogs())
      {
        v10 = getDIOSLog();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v20 = 47;
        v21 = 2080;
        v22 = "[MKDIDevice partitionDiskWithGPTTypeID:error:]";
        LODWORD(v17) = 18;
        v16 = buf;
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
          *buf = 68157954;
          v20 = 47;
          v21 = 2080;
          v22 = "[MKDIDevice partitionDiskWithGPTTypeID:error:]";
          _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Disk partitioning completed", buf, 0x12u);
        }
      }

      *__error() = v9;
    }
  }

  if (v8)
  {
    MKCFDisposeMedia();
  }

  if (v18)
  {
    v13 = [DIError failWithOSStatus:v16 verboseInfo:v17 error:?];
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)resizeDataPartitionWithPartitionUUID:(id)a3 partitionNumBlocks:(unint64_t)a4 error:(id *)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = 0;
  [(MKDIDevice *)self mediaRef];
  v9 = MKCFReadMedia();
  v10 = 0;
  if (!v9)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = v46;
LABEL_8:
    v14 = [DIError failWithOSStatus:v10 verboseInfo:@"MediaKit read error" error:a5];
    goto LABEL_34;
  }

  if (DIDebugLogsEnabled())
  {
    v11 = *__error();
    if (DIForwardLogs())
    {
      v45 = 0;
      v12 = getDIOSLog();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      *buf = 68158210;
      v49 = 76;
      v50 = 2080;
      v51 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
      v52 = 2112;
      v53 = v9;
      LODWORD(v37) = 28;
      v36 = buf;
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v15 = getDIOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        v49 = 76;
        v50 = 2080;
        v51 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
        v52 = 2112;
        v53 = v9;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEBUG, "%.*s: MediaKit scan dict: %@", buf, 0x1Cu);
      }
    }

    *__error() = v11;
  }

  v16 = [v9 objectForKeyedSubscript:{@"Schemes", v36, v37}];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v16 count] != 1)
  {
    v14 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid schemes returned by MediaKit" error:a5];
LABEL_33:

    goto LABEL_34;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  v18 = [v17 objectForKeyedSubscript:@"Sections"];

  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v18 count] != 1)
  {
    v14 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid sections returned by MediaKit" error:a5];
LABEL_36:

    goto LABEL_33;
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"Partitions"];

  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid partitions returned by MediaKit" error:a5];

    goto LABEL_36;
  }

  v38 = v18;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (!v21)
  {
LABEL_31:
    v26 = obj;

LABEL_41:
    v14 = [DIError failWithEnumValue:150 verboseInfo:@"Cannot find the data partition" error:a5];

    goto LABEL_33;
  }

  v22 = v21;
  v40 = *v42;
LABEL_23:
  v23 = 0;
  while (1)
  {
    if (*v42 != v40)
    {
      objc_enumerationMutation(obj);
    }

    v24 = *(*(&v41 + 1) + 8 * v23);
    v25 = [v24 objectForKeyedSubscript:@"GUID"];
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v25 isEqual:v8])
      {
        break;
      }
    }

    if (v22 == ++v23)
    {
      v22 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v22)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }
  }

  v29 = v24;

  v26 = obj;
  if (!v29)
  {
    goto LABEL_41;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v29 setObject:v30 forKeyedSubscript:@"Size"];

  [(MKDIDevice *)self mediaRef];
  v31 = MKCFWriteMedia();
  v46 = v31;
  if (v31)
  {
    v14 = [DIError failWithOSStatus:v31 verboseInfo:@"MediaKit write error" error:a5];

    goto LABEL_33;
  }

  v32 = *__error();
  if (DIForwardLogs())
  {
    v45 = 0;
    v33 = getDIOSLog();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v49 = 76;
    v50 = 2080;
    v51 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
    v34 = _os_log_send_and_compose_impl();

    if (v34)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v34);
      free(v34);
    }
  }

  else
  {
    v35 = getDIOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v49 = 76;
      v50 = 2080;
      v51 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
      _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Data partition resized", buf, 0x12u);
    }
  }

  *__error() = v32;

  v14 = 1;
LABEL_34:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)updatePartitionMapWithError:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(MKDIDevice *)self mediaRef];
  v5 = MKCFReadMedia();
  v6 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_6:
    v8 = @"MediaKit read error";
    goto LABEL_7;
  }

  [(MKDIDevice *)self mediaRef];
  v7 = MKCFWriteMedia();
  if (v7)
  {
    v6 = v7;
    v8 = @"MediaKit write error";
LABEL_7:
    v9 = [DIError failWithOSStatus:v6 verboseInfo:v8 error:a3];
    goto LABEL_8;
  }

  v12 = *__error();
  if (DIForwardLogs())
  {
    v13 = getDIOSLog();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v17 = 42;
    v18 = 2080;
    v19 = "[MKDIDevice updatePartitionMapWithError:]";
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v17 = 42;
      v18 = 2080;
      v19 = "[MKDIDevice updatePartitionMapWithError:]";
      _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Partition map updated", buf, 0x12u);
    }
  }

  *__error() = v12;
  v9 = 1;
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  mediaRef = self->_mediaRef;
  if (mediaRef)
  {
    CFRelease(mediaRef);
    self->_mediaRef = 0;
  }

  v4.receiver = self;
  v4.super_class = MKDIDevice;
  [(MKDIDevice *)&v4 dealloc];
}

@end