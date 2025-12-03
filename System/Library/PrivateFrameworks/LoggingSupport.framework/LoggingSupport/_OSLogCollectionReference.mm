@interface _OSLogCollectionReference
+ (_OSLogCollectionReference)referenceWithURL:(id)l error:(id *)error;
+ (id)localDBRefWithError:(id *)error;
- (_OSLogCollectionReference)initWithDiagnosticsDirectory:(id)directory timesyncDirectory:(id)timesyncDirectory UUIDTextDirectory:(id)textDirectory;
- (void)close;
@end

@implementation _OSLogCollectionReference

- (void)close
{
  [(_OSLogDirectoryReference *)self->_diagnosticsDirectoryReference close];
  [(_OSLogDirectoryReference *)self->_timesyncReference close];
  UUIDTextReference = self->_UUIDTextReference;

  [(_OSLogDirectoryReference *)UUIDTextReference close];
}

- (_OSLogCollectionReference)initWithDiagnosticsDirectory:(id)directory timesyncDirectory:(id)timesyncDirectory UUIDTextDirectory:(id)textDirectory
{
  directoryCopy = directory;
  timesyncDirectoryCopy = timesyncDirectory;
  textDirectoryCopy = textDirectory;
  v15.receiver = self;
  v15.super_class = _OSLogCollectionReference;
  v12 = [(_OSLogCollectionReference *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_diagnosticsDirectoryReference, directory);
    objc_storeStrong(&v13->_timesyncReference, timesyncDirectory);
    objc_storeStrong(&v13->_UUIDTextReference, textDirectory);
  }

  return v13;
}

+ (id)localDBRefWithError:(id *)error
{
  v32[3] = *MEMORY[0x277D85DE8];
  v5 = OSLogLogdAdminConnection();
  if (v5)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "operation", 6uLL);
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (MEMORY[0x2318E23F0]() == MEMORY[0x277D86480])
    {
      if (error)
      {
        v9 = v7;
        string = xpc_dictionary_get_string(v9, *MEMORY[0x277D86400]);
        if (string)
        {
          v11 = string;
        }

        else
        {
          v11 = "unknown error";
        }

        v31[0] = @"_OSLogErrorInternalCode";
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:15];
        v32[0] = v12;
        v31[1] = @"_OSLogErrorXPCErrorDescription";
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
        v31[2] = *MEMORY[0x277CCA450];
        v32[1] = v13;
        v32[2] = @"Connection to logd failed";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLogErrorDomain" code:10 userInfo:v14];

        v16 = v15;
        v8 = 0;
        *error = v15;
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (xpc_dictionary_get_uint64(v7, "errorcode") == 1)
    {
      if (error)
      {
        _OSLogError(14);
        *error = v8 = 0;
LABEL_26:

        goto LABEL_27;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_26;
    }

    v17 = xpc_dictionary_dup_fd(v7, "persistdir_fd");
    v18 = xpc_dictionary_get_string(v7, "persistdir_sbext");
    if (v17 == -1)
    {
      goto LABEL_18;
    }

    v19 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v17 sandboxExtensionToken:v18];
    if (close(v17) == -1)
    {
      v30 = *__error();
      result = *__error();
      if (v30 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        goto LABEL_33;
      }

      _os_assumes_log();
    }

    v20 = xpc_dictionary_dup_fd(v7, "timesyncdir_fd");
    v21 = xpc_dictionary_get_string(v7, "timesyncdir_sbext");
    if (v20 == -1)
    {
      v22 = 0;
      goto LABEL_20;
    }

    v22 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v20 sandboxExtensionToken:v21];
    if (close(v20) != -1)
    {
LABEL_20:
      v25 = xpc_dictionary_dup_fd(v7, "uuidtextdir_fd");
      v26 = xpc_dictionary_get_string(v7, "uuidtextdir_sbext");
      if (v25 == -1)
      {
        v27 = 0;
        goto LABEL_25;
      }

      v27 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v25 sandboxExtensionToken:v26];
      if (close(v25) != -1)
      {
LABEL_25:
        v8 = [[self alloc] initWithDiagnosticsDirectory:v19 timesyncDirectory:v22 UUIDTextDirectory:v27];

        goto LABEL_26;
      }

      v28 = *__error();
      result = *__error();
      if (v28 != 9)
      {
        _os_assumes_log();
        goto LABEL_25;
      }

LABEL_34:
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = result;
      __break(1u);
      return result;
    }

    v23 = *__error();
    result = *__error();
    if (v23 != 9)
    {
      _os_assumes_log();
      goto LABEL_20;
    }

LABEL_33:
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = result;
    __break(1u);
    goto LABEL_34;
  }

  v8 = 0;
LABEL_27:

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (_OSLogCollectionReference)referenceWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = MEMORY[0x277CCACA8];
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  v8 = [v7 stringWithUTF8String:_os_trace_persist_path];
  path = [lCopy path];
  v10 = [path hasPrefix:v8];

  if (!v10)
  {
    path2 = [lCopy path];
    v13 = [path2 rangeOfString:@".logarchive" options:4];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:3 userInfo:0];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_20;
    }

    v15 = [path2 substringToIndex:v13 + v14];
    v16 = open([v15 fileSystemRepresentation], 0);
    if (v16 == -1)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

    v17 = v16;
    v18 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v16 sandboxExtensionToken:0];
    v19 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v17 sandboxExtensionToken:0];
    if (close(v17) == -1)
    {
      v26 = *__error();
      result = *__error();
      if (v26 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = result;
        __break(1u);
        goto LABEL_28;
      }

      _os_assumes_log();
    }

    v20 = [v15 stringByAppendingPathComponent:@"timesync"];
    v21 = open([v20 fileSystemRepresentation], 0);
    if (v21 == -1)
    {
      v23 = 0;
      goto LABEL_18;
    }

    v22 = v21;
    v23 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v21 sandboxExtensionToken:0];
    if (close(v22) != -1)
    {
LABEL_18:
      v11 = [[self alloc] initWithDiagnosticsDirectory:v18 timesyncDirectory:v23 UUIDTextDirectory:v19];

LABEL_19:
LABEL_20:

      goto LABEL_21;
    }

    v24 = *__error();
    result = *__error();
    if (v24 != 9)
    {
      _os_assumes_log();
      goto LABEL_18;
    }

LABEL_28:
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = result;
    __break(1u);
    return result;
  }

  v11 = [self localDBRefWithError:error];
LABEL_21:

  return v11;
}

@end