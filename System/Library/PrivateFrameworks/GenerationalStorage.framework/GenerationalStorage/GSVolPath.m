@interface GSVolPath
+ (id)_volPathOnVolume:(id)a3 withFD:(int)a4 withPath:(id)a5 error:(id *)a6;
- (BOOL)_canReadFileWithCreds:(const GSCredential *)a3;
- (BOOL)isInIgnoredLocation;
- (BOOL)isValidForCreds:(const GSCredential *)a3 documentIdentifier:(id)a4 error:(id *)a5;
- (BOOL)setCopyOnWrite;
- (id)description;
- (void)performOnResolvedPath:(id)a3;
@end

@implementation GSVolPath

- (id)description
{
  docID = self->_docID;
  parentID = self->_parentID;
  path = self->_path;
  device = self->_device;
  v7 = [(NSString *)path lastPathComponent];
  v8 = [NSString stringWithFormat:@"<%@ dev:%x docID:%lld parentid:%lld name:%@ fileid:%lld>", path, device, docID, parentID, v7, self->_fileID];

  return v8;
}

- (BOOL)isInIgnoredLocation
{
  v3 = 0;
  do
  {
    result = [(NSString *)self->_path hasPrefix:off_1000411E0[v3]];
    if (result)
    {
      break;
    }
  }

  while (v3++ != 4);
  return result;
}

- (BOOL)setCopyOnWrite
{
  if (self->_docID)
  {
    return 1;
  }

  v4 = openat([(GSManager *)self->_library volDirFd], [(NSString *)self->_path fileSystemRepresentation]+ 1, 256);
  v14 = 0;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v6 = sub_1000092B0(v4, &v14);
    if (v6)
    {
      self->_docID = v6;
    }

    else
    {
      v8 = sub_100009364(v5);
      self->_docID = v8;
      if (!v8)
      {
        v9 = sub_100003164();
        if (os_log_type_enabled(v9, 0x90u))
        {
          sub_1000278E0(&self->_path, self);
        }

        goto LABEL_12;
      }
    }

    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      docID = self->_docID;
      path = self->_path;
      device = self->_device;
      *buf = 134218498;
      v16 = docID;
      v17 = 2112;
      v18 = path;
      v19 = 1024;
      v20 = device;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] allocated docID:%lld to %@ on device %x", buf, 0x1Cu);
    }

LABEL_12:

    v10 = *__error();
    close(v5);
    *__error() = v10;
    return self->_docID != 0;
  }

  v7 = sub_100003164();
  if (os_log_type_enabled(v7, 0x90u))
  {
    sub_100027978(&self->_path, self);
  }

  return 0;
}

- (BOOL)_canReadFileWithCreds:(const GSCredential *)a3
{
  if (fcntl([(GSManager *)self->_library volDirFd], 50, v8) < 0)
  {
    return 0;
  }

  v5 = [NSString stringWithFormat:@"%s%@", v8, self->_path];
  v6 = sub_100010A70(a3, [v5 fileSystemRepresentation], 1);

  return v6;
}

- (BOOL)isValidForCreds:(const GSCredential *)a3 documentIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!self->_docID)
  {
    v11 = [NSString stringWithFormat:@"File has no storage"];
    v14 = sub_100003164();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10002525C();
    }

    if (!a5)
    {
      goto LABEL_20;
    }

    v13 = 102;
    goto LABEL_19;
  }

  if (![(GSVolPath *)self isInIgnoredLocation]&& (!a3 || [(GSVolPath *)self _canReadFileWithCreds:a3]))
  {
    if (!v8 || (v17 = 0, v18 = 0, -[GSManager volumeUUID](self->_library, "volumeUUID"), v9 = objc_claimAutoreleasedReturnValue(), [v9 getUUIDBytes:&v17], v9, self->_docID == v8[3]) && (v17 == v8[1] ? (v10 = v18 == v8[2]) : (v10 = 0), v10))
    {
      v15 = 1;
      goto LABEL_21;
    }
  }

  v11 = [NSString stringWithFormat:@"invalid path"];
  v12 = sub_100003164();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100027A10();
  }

  if (a5)
  {
    v13 = 104;
LABEL_19:
    *a5 = sub_10000F0F8(v13, v11, 0);
  }

LABEL_20:

  v15 = 0;
LABEL_21:

  return v15;
}

+ (id)_volPathOnVolume:(id)a3 withFD:(int)a4 withPath:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  v27 = xmmword_100031338;
  v28 = 0x400000000;
  memset(v31, 0, 480);
  v29 = 0u;
  v30 = 0u;
  if (a4 < 0)
  {
    if (!v10)
    {
LABEL_16:
      v16 = 0;
      goto LABEL_23;
    }

    if (getattrlist([v10 fileSystemRepresentation], &v27, &v29, 0x428uLL, 0x20u) < 0)
    {
      v12 = [NSString stringWithFormat:@"invalid path"];
      v13 = sub_100003164();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (fgetattrlist(a4, &v27, &v29, 0x428uLL, 0x20u) < 0)
  {
    v12 = [NSString stringWithFormat:@"invalid path", v27, v28];
    v13 = sub_100003164();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v9)
  {
    v9 = [GSStorageManager createLibraryForDevice:DWORD1(v29) error:a6];
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v14 = [v9 device];
  if (v14 == DWORD1(v29))
  {
    v15 = SLODWORD(v31[0]);
    if (*(v31 + SLODWORD(v31[0])) != 47)
    {
      sub_100027A7C();
    }

    v12 = +[NSFileManager defaultManager];
    v16 = objc_alloc_init(GSVolPath);
    *&v16->_fileID = v30;
    v16->_device = DWORD1(v29);
    objc_storeStrong(&v16->_library, v9);
    v16->_docID = HIDWORD(v29);
    v17 = [v12 stringWithFileSystemRepresentation:v31 + v15 length:strlen(v31 + v15)];
    path = v16->_path;
    v16->_path = v17;

    v16->_resolveTime = time(0);
    v19 = sub_100003164();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100027AA8(v16, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_22;
  }

  v12 = [NSString stringWithFormat:@"path isn't on the proper device"];
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
LABEL_18:
    sub_100027A10();
  }

LABEL_19:

  if (a6)
  {
    sub_10000F0F8(104, v12, 0);
    *a6 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

LABEL_23:

  return v16;
}

- (void)performOnResolvedPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  library = self->_library;
  if (library)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000115EC;
    v10[3] = &unk_100041218;
    v10[4] = self;
    v11 = v4;
    [(GSManager *)library dispatchSync:v10];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"No library for volPath"];
    v8 = sub_100003164();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100027B14();
    }

    v9 = sub_10000F0F8(101, v7, 0);

    (v5)[2](v5, 0, 0, v9);
  }
}

@end