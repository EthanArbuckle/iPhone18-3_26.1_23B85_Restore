@interface MBEncryptionKeyReader
+ (id)encryptionKeyReaderForFileAtPath:(id)path error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)validateEncryptionKey:(id)key error:(id *)error;
- (MBEncryptionKeyReader)initWithHandle:(_mkbbackupref *)handle;
- (id)encryptionKeyWithError:(id *)error;
- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error;
- (void)dealloc;
@end

@implementation MBEncryptionKeyReader

+ (id)encryptionKeyReaderForFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  [pathCopy fileSystemRepresentation];
  v6 = MKBBackupOpen();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6 == -2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v12 = pathCopy;
    v13 = 1024;
    v14 = -2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
    goto LABEL_10;
  }

  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v12 = pathCopy;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupOpen(%@): %d", buf, 0x12u);
LABEL_10:
    _MBLog();
LABEL_11:

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v6 path:pathCopy description:@"MKBBackupOpen error"];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v12 = pathCopy;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
    _MBLog();
  }

  v9 = [[MBEncryptionKeyReader alloc] initWithHandle:0];
LABEL_14:

  return v9;
}

- (MBEncryptionKeyReader)initWithHandle:(_mkbbackupref *)handle
{
  v5.receiver = self;
  v5.super_class = MBEncryptionKeyReader;
  result = [(MBEncryptionKeyReader *)&v5 init];
  if (result)
  {
    result->_handle = handle;
  }

  return result;
}

- (void)dealloc
{
  if (self->_handle)
  {
    [(MBEncryptionKeyReader *)self closeWithError:0];
  }

  v3.receiver = self;
  v3.super_class = MBEncryptionKeyReader;
  [(MBEncryptionKeyReader *)&v3 dealloc];
}

- (id)encryptionKeyWithError:(id *)error
{
  handle = self->_handle;
  v6 = MKBBackupCopyKeyWithError();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6 == -2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v10 = self->_handle;
    *buf = 134218498;
    v17 = v10;
    v18 = 1024;
    v19 = -2;
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
    v14 = self->_handle;
    goto LABEL_10;
  }

  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = self->_handle;
      *buf = 134218240;
      v17 = v9;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupCopyKeyWithError(%p) success: %d", buf, 0x12u);
      v13 = self->_handle;
      _MBLog();
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = self->_handle;
    *buf = 134218498;
    v17 = v11;
    v18 = 1024;
    v19 = v6;
    v20 = 2112;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
    v15 = self->_handle;
LABEL_10:
    _MBLog();
  }

LABEL_11:

  if (error)
  {
    *error = [MBKeyBag errorWithReturnCode:v6 description:@"MKBBackupCopyKey error"];
  }

LABEL_13:

  return 0;
}

- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error
{
  keyCopy = key;
  if (!keyCopy)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  handle = self->_handle;
  updated = MKBBackupUpdateKeyWithError();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (updated == -2)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v13 = self->_handle;
    *buf = 134218498;
    v20 = v13;
    v21 = 1024;
    v22 = -2;
    v23 = 2112;
    v24 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
    v17 = self->_handle;
    goto LABEL_11;
  }

  if (updated)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = self->_handle;
    *buf = 134218498;
    v20 = v14;
    v21 = 1024;
    v22 = updated;
    v23 = 2112;
    v24 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
    v18 = self->_handle;
LABEL_11:
    _MBLog();
LABEL_12:

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:updated description:@"MKBBackupUpdateKey error"];
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = self->_handle;
    *buf = 134218240;
    v20 = v11;
    v21 = 1024;
    v22 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) success: %d", buf, 0x12u);
    v16 = self->_handle;
    _MBLog();
  }

  v12 = keyCopy;
LABEL_15:

  return v12;
}

- (BOOL)validateEncryptionKey:(id)key error:(id *)error
{
  handle = self->_handle;
  v7 = MKBBackupValidateKey();
  if (v7)
  {
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7 == -2)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v10 = self->_handle;
      *buf = 134218240;
      v19 = v10;
      v20 = 1024;
      v21 = -2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
      v15 = self->_handle;
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v13 = self->_handle;
      *buf = 134218240;
      v19 = v13;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
      v17 = self->_handle;
    }

    _MBLog();
LABEL_11:

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v7 description:@"MKBBackupValidateKey error"];
    }

    return v7 == 0;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = self->_handle;
    *buf = 134218240;
    v19 = v12;
    v20 = 1024;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
    v16 = self->_handle;
    _MBLog();
  }

  return v7 == 0;
}

- (BOOL)closeWithError:(id *)error
{
  handle = self->_handle;
  v5 = MKBBackupClose();
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v9 = handle;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MKBBackupClose(%p): %d", buf, 0x12u);
    _MBLog();
  }

  if (error && v5)
  {
    *error = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupClose error"];
  }

  return v5 == 0;
}

@end