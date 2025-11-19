@interface _OSLogChunkFileReference
- (BOOL)readXattrForTimespan:(id *)a3;
- (_OSLogChunkFileReference)initWithCollection:(id)a3 subpath:(const char *)a4;
- (id)copyMappedChunkFile:(id *)a3;
- (void)dealloc;
@end

@implementation _OSLogChunkFileReference

- (id)copyMappedChunkFile:(id *)a3
{
  v5 = [(_OSLogCollectionReference *)self->_oslcr diagnosticsDirectoryReference];
  v6 = openat([v5 fileDescriptor], self->_path, 0);

  if (v6 == -1)
  {
    if (!a3)
    {
      return 0;
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *a3 = v7 = 0;
    return v7;
  }

  v7 = [[_OSLogChunkFile alloc] initWithFileDescriptor:v6 error:a3];
  if (close(v6) != -1)
  {
    return v7;
  }

  v8 = *__error();
  result = *__error();
  if (v8 != 9)
  {
    _os_assumes_log();
    return v7;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

- (BOOL)readXattrForTimespan:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = _index_log();
  if (os_signpost_enabled(v5))
  {
    path = self->_path;
    *buf = 136315138;
    *&buf[4] = path;
    _os_signpost_emit_with_name_impl(&dword_22E01A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Read Extended Attributes", "for %s", buf, 0xCu);
  }

  *buf = 0u;
  memset(v22, 0, sizeof(v22));
  v7 = [(_OSLogCollectionReference *)self->_oslcr diagnosticsDirectoryReference];
  [v7 fileDescriptor];
  v8 = self->_path;
  v9 = _os_trace_getxattr_at();

  if (v9 == 40)
  {
    *&self->_xot = *&v22[8];
    v10 = _index_log();
    if (os_signpost_enabled(v10))
    {
      v17 = 67109120;
      v18 = 1;
      v11 = "success: %{BOOL}d";
      v12 = v10;
      v13 = 8;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_22E01A000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Read Extended Attributes", v11, &v17, v13);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    v10 = _index_log();
    if (os_signpost_enabled(v10))
    {
      v14 = *__error();
      v17 = 67109376;
      v18 = 0;
      v19 = 1024;
      v20 = v14;
      v11 = "success: %{BOOL}d %{darwin.errno}d";
      v12 = v10;
      v13 = 14;
      goto LABEL_10;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 == 40;
}

- (void)dealloc
{
  free(self->_path);
  v3.receiver = self;
  v3.super_class = _OSLogChunkFileReference;
  [(_OSLogChunkFileReference *)&v3 dealloc];
}

- (_OSLogChunkFileReference)initWithCollection:(id)a3 subpath:(const char *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _OSLogChunkFileReference;
  v8 = [(_OSLogChunkFileReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_oslcr, a3);
    v9->_path = strdup(a4);
  }

  return v9;
}

@end