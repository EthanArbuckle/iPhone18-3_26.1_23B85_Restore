@interface MBEncryptedFileHandle
+ (id)encryptedFileHandleForBackupWithPath:(id)path keybag:(id)keybag error:(id *)error;
+ (id)encryptedFileHandleForRestoreWithPath:(id)path keybag:(id)keybag key:(id)key error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error;
- (BOOL)validateEncryptionKey:(id)key error:(id *)error;
- (MBEncryptedFileHandle)initWithPath:(id)path keybag:(id)keybag file:(_mkbfileref *)file restore:(BOOL)restore;
- (id)encryptionKeyWithError:(id *)error;
- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error;
- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
- (void)dealloc;
@end

@implementation MBEncryptedFileHandle

+ (id)encryptedFileHandleForBackupWithPath:(id)path keybag:(id)keybag error:(id *)error
{
  pathCopy = path;
  keybagCopy = keybag;
  if (!keybagCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBEncryptedFileHandle.m" lineNumber:39 description:@"No keybag for backing up encrypted file"];
  }

  v11 = MKBFileOpenForBackup();
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v18 = pathCopy;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MKBFileOpenForBackup(%@, ...): %d", buf, 0x12u);
    _MBLog();
  }

  if (v11)
  {
    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v11 path:pathCopy description:@"Error opening encrypted file for backup"];
    }

    if (v11 >= 0xFFFFFFFE)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v18 = pathCopy;
        v19 = 1024;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "MKBFileOpenForBackup failed at %@: %d", buf, 0x12u);
        _MBLog();
      }

      MBDiagnoseFile(pathCopy, v11, "MKBFileOpenForBackup");
    }

    v14 = 0;
  }

  else
  {
    v14 = [[MBEncryptedFileHandle alloc] initWithPath:pathCopy keybag:keybagCopy file:0 restore:0];
  }

  return v14;
}

+ (id)encryptedFileHandleForRestoreWithPath:(id)path keybag:(id)keybag key:(id)key error:(id *)error
{
  pathCopy = path;
  keybagCopy = keybag;
  keyCopy = key;
  v14 = keyCopy;
  if (keybagCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MBEncryptedFileHandle.m" lineNumber:57 description:@"No keybag for restoring encrypted file"];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"MBEncryptedFileHandle.m" lineNumber:58 description:{@"No encrypted file key for restoring file: %@", pathCopy}];

LABEL_3:
  v15 = [keybagCopy encryptedFileForRestoreWithPath:pathCopy key:v14 error:error];
  if (v15)
  {
    v15 = [[MBEncryptedFileHandle alloc] initWithPath:pathCopy keybag:keybagCopy file:v15 restore:1];
  }

  return v15;
}

- (MBEncryptedFileHandle)initWithPath:(id)path keybag:(id)keybag file:(_mkbfileref *)file restore:(BOOL)restore
{
  pathCopy = path;
  keybagCopy = keybag;
  v18.receiver = self;
  v18.super_class = MBEncryptedFileHandle;
  v13 = [(MBEncryptedFileHandle *)&v18 init];
  if (v13)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = pathCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Opened encrypted file at %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong(&v13->_path, path);
    objc_storeStrong(&v13->_keybag, keybag);
    v13->_file = file;
    v15 = [[NSMutableData alloc] initWithCapacity:0];
    buffer = v13->_buffer;
    v13->_buffer = v15;

    v13->_restore = restore;
  }

  return v13;
}

- (void)dealloc
{
  if (self->_file)
  {
    MKBFileClose();
  }

  v3.receiver = self;
  v3.super_class = MBEncryptedFileHandle;
  [(MBEncryptedFileHandle *)&v3 dealloc];
}

- (id)encryptionKeyWithError:(id *)error
{
  if (!self->_keybag)
  {
    __assert_rtn("[MBEncryptedFileHandle encryptionKeyWithError:]", "MBEncryptedFileHandle.m", 93, "_keybag");
  }

  file = self->_file;
  path = self->_path;
  keybag = self->_keybag;

  return [(MBKeyBag *)keybag encryptionKeyForFile:file path:path error:error];
}

- (BOOL)validateEncryptionKey:(id)key error:(id *)error
{
  keyCopy = key;
  keybag = self->_keybag;
  if (!keybag)
  {
    __assert_rtn("[MBEncryptedFileHandle validateEncryptionKey:error:]", "MBEncryptedFileHandle.m", 98, "_keybag");
  }

  v8 = [(MBKeyBag *)keybag validateEncryptionKey:keyCopy file:self->_file path:self->_path error:error];

  return v8;
}

- (BOOL)closeWithError:(id *)error
{
  if (self->_restore)
  {
    file = self->_file;
    v6 = MKBFileWrite();
    v7 = MBGetDefaultLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 < 0)
    {
      if (v8)
      {
        *buf = 134217984;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBFileWrite(0): %zd", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v11 = [MBError posixErrorWithFormat:@"MKBFileWrite error"];
        goto LABEL_16;
      }

      return 0;
    }

    if (v8)
    {
      *buf = 134217984;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBFileWrite(0): %{bytes}zd", buf, 0xCu);
      _MBLog();
    }
  }

  v9 = self->_file;
  v10 = MKBFileClose();
  self->_file = 0;
  if (v10)
  {
    if (error)
    {
      v11 = [MBKeyBag errorWithReturnCode:v10 description:@"MKBFileClose error"];
LABEL_16:
      v15 = v11;
      v16 = v11;
      result = 0;
      *error = v15;
      return result;
    }

    return 0;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    *buf = 138412290;
    v19 = path;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Closed encrypted file at %@", buf, 0xCu);
    v17 = self->_path;
    _MBLog();
  }

  return 1;
}

- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error
{
  v5 = fstat([(MBEncryptedFileHandle *)self fd], buffer);
  v6 = v5;
  if (error && v5)
  {
    *error = [MBError posixErrorWithFormat:@"fstat error"];
  }

  return v6 == 0;
}

- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error
{
  if (self->_restore)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBEncryptedFileHandle.m" lineNumber:135 description:@"Can't read from restore file"];
  }

  if ((IsDatalessFault([(MBEncryptedFileHandle *)self fd]) & 1) == 0)
  {
    if ([(MBKeyBag *)self->_keybag isOTA])
    {
      file = self->_file;
    }

    else
    {
      if (length <= 0xF)
      {
        if (error)
        {
          v10 = [MBError errorWithCode:100 format:@"Buffer for reading from encrypted file too small"];
LABEL_19:
          *error = v10;
        }

        return -1;
      }

      v11 = self->_file;
    }

    v8 = MKBFileRead();
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MKBFileRead(%{bytes}lu): %zd", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      v10 = [MBError posixErrorWithFormat:@"MKBFileRead error"];
      goto LABEL_19;
    }

    return -1;
  }

  v8 = 0;
LABEL_12:
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    lengthCopy2 = length;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MKBFileRead(%{bytes}lu): %{bytes}zd", buf, 0x16u);
    _MBLog();
  }

  return v8;
}

- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  if (!self->_restore)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MBEncryptedFileHandle.m" lineNumber:163 description:@"Can't write to backup file"];
  }

  if ([(MBKeyBag *)self->_keybag isOTA])
  {
    file = self->_file;
    v10 = MKBFileWrite();
    v11 = MBGetDefaultLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        *buf = 134218240;
        lengthCopy2 = length;
        v26 = 2048;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %{bytes}zd", buf, 0x16u);
LABEL_22:
        _MBLog();
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (v12)
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %zd", buf, 0x16u);
      lengthCopy3 = length;
      v23 = v10;
LABEL_27:
      _MBLog();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (![(NSMutableData *)self->_buffer length])
  {
    if ((length & 0xF) != 0)
    {
      [(NSMutableData *)self->_buffer appendBytes:bytes + (length & 0xFFFFFFFFFFFFFFF0) length:length & 0xF];
    }

    v16 = self->_file;
    v17 = MKBFileWrite();
    v11 = MBGetDefaultLog();
    v18 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (v18)
      {
        *buf = 134218240;
        lengthCopy2 = length & 0xFFFFFFFFFFFFFFF0;
        v26 = 2048;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %{bytes}zd", buf, 0x16u);
        goto LABEL_22;
      }

LABEL_23:

      return length;
    }

    if (v18)
    {
      *buf = 134218240;
      lengthCopy2 = length & 0xFFFFFFFFFFFFFFF0;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileWrite(%{bytes}lu): %zd", buf, 0x16u);
      lengthCopy3 = length & 0xFFFFFFFFFFFFFFF0;
      v23 = v17;
      goto LABEL_27;
    }

LABEL_28:

    if (!error)
    {
      return -1;
    }

    goto LABEL_13;
  }

  v13 = [(NSMutableData *)self->_buffer length];
  if (16 - v13 < length)
  {
    length = 16 - v13;
  }

  [(NSMutableData *)self->_buffer appendBytes:bytes length:length];
  if ([(NSMutableData *)self->_buffer length]>= 0x10)
  {
    v14 = self->_file;
    [(NSMutableData *)self->_buffer mutableBytes];
    [(NSMutableData *)self->_buffer length];
    v15 = MKBFileWrite();
    [(NSMutableData *)self->_buffer setLength:0];
    if (v15 < 0)
    {
      if (!error)
      {
        return -1;
      }

LABEL_13:
      *error = [MBError posixErrorWithFormat:@"MKBFileWrite error", lengthCopy3, v23];
      return -1;
    }
  }

  return length;
}

@end