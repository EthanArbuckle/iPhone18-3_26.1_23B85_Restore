@interface MBRestoreFileHandle
- (BOOL)closeWithError:(id *)a3;
- (MBRestoreFileHandle)initWithEngine:(id)a3 fileHandle:(id)a4 file:(id)a5;
- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
@end

@implementation MBRestoreFileHandle

- (MBRestoreFileHandle)initWithEngine:(id)a3 fileHandle:(id)a4 file:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MBRestoreFileHandle;
  v11 = [(MBFileHandleProxy *)&v18 initWithFileHandle:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engine, a3);
    objc_storeStrong(&v12->_file, a5);
    digest = [v10 domain];
    if ([digest shouldDigest])
    {
      v14 = [v9 shouldVerifyDigests];

      if (!v14)
      {
LABEL_6:
        +[NSDate timeIntervalSinceReferenceDate];
        v12->_startTime = v16;
        goto LABEL_7;
      }

      v15 = objc_alloc_init(MBDigestSHA1);
      digest = v12->_digest;
      v12->_digest = v15;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (int64_t)writeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = [(MBFileHandleProxy *)self fileHandle];
  v10 = [v9 writeWithBytes:a3 length:a4 error:a5];

  if (v10 >= 1)
  {
    [(MBDigest *)self->_digest updateWithBytes:a3 length:v10];
  }

  return v10;
}

- (BOOL)closeWithError:(id *)a3
{
  v5 = [(MBDigest *)self->_digest final];
  if (!v5)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(MBFile *)self->_file absolutePath];
      *buf = 138412290;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Not digested: %@", buf, 0xCu);

      v12 = [(MBFile *)self->_file absolutePath];
      v32 = v12;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_16;
  }

  v6 = [(MBFile *)self->_file digest];

  if (v6)
  {
    v7 = [(MBFile *)self->_file digest];
    v8 = [v5 isEqualToData:v7];

    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [(MBFile *)self->_file absolutePath];
        *buf = 138412290;
        v40 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Digest matches: %@", buf, 0xCu);

        v12 = [(MBFile *)self->_file absolutePath];
        v32 = v12;
LABEL_8:
        _MBLog();

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MBFile *)self->_file digest];
      v19 = [(MBFile *)self->_file absolutePath];
      v20 = [(MBFile *)self->_file fileID];
      *buf = 138413058;
      v40 = v5;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "File digest does not match manifest (%@ vs %@): %@ (%@)", buf, 0x2Au);

      v16 = [(MBFile *)self->_file digest];
      v17 = [(MBFile *)self->_file absolutePath];
      [(MBFile *)self->_file fileID];
      v38 = v36 = v17;
      v32 = v5;
      v34 = v16;
      _MBLog();

      goto LABEL_14;
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MBFile *)self->_file absolutePath];
      v15 = [(MBFile *)self->_file fileID];
      *buf = 138412546;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Digest missing from file: %@ (%@)", buf, 0x16u);

      v16 = [(MBFile *)self->_file absolutePath];
      v17 = [(MBFile *)self->_file fileID];
      v32 = v16;
      v34 = v17;
      _MBLog();
LABEL_14:
    }
  }

  [(MBDriveRestoreEngine *)self->_engine digestDidNotMatchForFile:self->_file];
LABEL_16:
  [NSDate timeIntervalSinceReferenceDate:v32];
  v22 = v21;
  startTime = self->_startTime;
  v24 = [(MBFile *)self->_file size];
  v25 = [(MBFile *)self->_file absolutePath];

  if (v25)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v22 - startTime;
      v28 = [(MBFile *)self->_file absolutePath];
      *buf = 138412802;
      v40 = v28;
      v41 = 2048;
      v42 = v24;
      v43 = 2048;
      v44 = (v24 / v27);
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Downloaded: %@ (%{bytes}llu at %{bytes}llu/s)", buf, 0x20u);

      [(MBFile *)self->_file absolutePath];
      v35 = v24;
      v33 = v37 = (v24 / v27);
      _MBLog();
    }
  }

  v29 = [(MBFileHandleProxy *)self fileHandle:v33];
  v30 = [v29 closeWithError:a3];

  return v30;
}

@end