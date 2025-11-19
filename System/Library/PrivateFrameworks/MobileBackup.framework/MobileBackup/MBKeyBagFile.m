@interface MBKeyBagFile
+ (BOOL)decryptFileWithPath:(id)a3 keybag:(id)a4 encryptionKey:(id)a5 size:(unint64_t)a6 error:(id *)a7;
+ (BOOL)validateWrappedKey:(id)a3 withKeyBag:(id)a4 forPath:(id)a5 error:(id *)a6;
+ (const)keyBagUUIDForEncryptionKey:(id)a3;
+ (id)keybagFileWithPath:(id)a3 error:(id *)a4;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)validateEncryptionKey:(id)a3 error:(id *)a4;
- (MBKeyBagFile)initWithHandle:(_mkbbackupref *)a3;
- (id)encryptionKeyWithError:(id *)a3;
- (id)updatedEncryptionKeyForCurrentKey:(id)a3 withError:(id *)a4;
- (int)readWithBytes:(void *)a3 count:(unsigned int)a4 offset:(unint64_t)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation MBKeyBagFile

+ (BOOL)decryptFileWithPath:(id)a3 keybag:(id)a4 encryptionKey:(id)a5 size:(unint64_t)a6 error:(id *)a7
{
  if (!a4)
  {
    __assert_rtn("+[MBKeyBagFile decryptFileWithPath:keybag:encryptionKey:size:error:]", "MBKeyBagFile.m", 34, "keybag");
  }

  return [a4 decryptFileWithPath:a3 encryptionKey:a5 size:a6 error:a7];
}

+ (id)keybagFileWithPath:(id)a3 error:(id *)a4
{
  [a3 fileSystemRepresentation];
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
    v12 = a3;
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
    v12 = a3;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupOpen(%@): %d", buf, 0x12u);
LABEL_10:
    _MBLog();
LABEL_11:
    if (!a4)
    {
      return 0;
    }

    v10 = [MBKeyBag errorWithReturnCode:v6 path:a3 description:@"MKBBackupOpen error"];
    result = 0;
    *a4 = v10;
    return result;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v12 = a3;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
    _MBLog();
  }

  return [[MBKeyBagFile alloc] initWithHandle:0];
}

- (MBKeyBagFile)initWithHandle:(_mkbbackupref *)a3
{
  v5.receiver = self;
  v5.super_class = MBKeyBagFile;
  result = [(MBKeyBagFile *)&v5 init];
  if (result)
  {
    result->_handle = a3;
  }

  return result;
}

- (void)dealloc
{
  if (self->_handle)
  {
    [(MBKeyBagFile *)self closeWithError:0];
  }

  v3.receiver = self;
  v3.super_class = MBKeyBagFile;
  [(MBKeyBagFile *)&v3 dealloc];
}

- (id)encryptionKeyWithError:(id *)a3
{
  handle = self->_handle;
  v6 = MKBBackupCopyKeyWithError();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6 == -2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_handle;
      *buf = 134218498;
      v17 = v11;
      v18 = 1024;
      v19 = -2;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      v14 = self->_handle;
LABEL_10:
      _MBLog();
    }
  }

  else
  {
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

      return 0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_handle;
      *buf = 134218498;
      v17 = v12;
      v18 = 1024;
      v19 = v6;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      v15 = self->_handle;
      goto LABEL_10;
    }
  }

  if (a3)
  {
    *a3 = [MBKeyBag errorWithReturnCode:v6 description:@"MKBBackupCopyKey error"];
  }

  return 0;
}

- (id)updatedEncryptionKeyForCurrentKey:(id)a3 withError:(id *)a4
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  handle = self->_handle;
  updated = MKBBackupUpdateKeyWithError();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (updated == -2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_handle;
      *buf = 134218498;
      v19 = v12;
      v20 = 1024;
      v21 = -2;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      v16 = self->_handle;
LABEL_11:
      _MBLog();
    }
  }

  else
  {
    if (!updated)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = self->_handle;
        *buf = 134218240;
        v19 = v11;
        v20 = 1024;
        v21 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) success: %d", buf, 0x12u);
        v15 = self->_handle;
        _MBLog();
      }

      return v4;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_handle;
      *buf = 134218498;
      v19 = v13;
      v20 = 1024;
      v21 = updated;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      v17 = self->_handle;
      goto LABEL_11;
    }
  }

  if (a4)
  {
    *a4 = [MBKeyBag errorWithReturnCode:updated description:@"MKBBackupUpdateKey error"];
  }

  return 0;
}

- (BOOL)validateEncryptionKey:(id)a3 error:(id *)a4
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
        goto LABEL_10;
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
        goto LABEL_10;
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
LABEL_10:
    if (a4)
    {
      *a4 = [MBKeyBag errorWithReturnCode:v7 description:@"MKBBackupValidateKey error"];
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

+ (BOOL)validateWrappedKey:(id)a3 withKeyBag:(id)a4 forPath:(id)a5 error:(id *)a6
{
  if (!a4)
  {
    __assert_rtn("+[MBKeyBagFile validateWrappedKey:withKeyBag:forPath:error:]", "MBKeyBagFile.m", 137, "keybag");
  }

  return [a4 validateWrappedKey:a3 error:{a6, a5}];
}

- (int)readWithBytes:(void *)a3 count:(unsigned int)a4 offset:(unint64_t)a5 error:(id *)a6
{
  handle = self->_handle;
  v12 = MKBBackupPread();
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = self->_handle;
    *buf = 134219008;
    v18 = v14;
    v19 = 2048;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MKBBackupPread(%p, %p, %u, %llu): %ld", buf, 0x30u);
    v16 = self->_handle;
    _MBLog();
  }

  if (v12 < 0)
  {
    LODWORD(v12) = -1;
    if (a6)
    {
      *a6 = [MBKeyBag errorWithReturnCode:0xFFFFFFFFLL description:@"MKBBackupPread error"];
    }
  }

  return v12;
}

- (BOOL)closeWithError:(id *)a3
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

  if (a3 && v5)
  {
    *a3 = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupClose error"];
  }

  return v5 == 0;
}

+ (const)keyBagUUIDForEncryptionKey:(id)a3
{
  if ([a3 length] < 0x10)
  {
    return 0;
  }

  return [a3 bytes];
}

@end