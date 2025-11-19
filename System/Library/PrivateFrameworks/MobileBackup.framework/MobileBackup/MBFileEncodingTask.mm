@interface MBFileEncodingTask
- (BOOL)_handleCompressionOperation:(int)a3 algorithm:(int)a4 destinationSize:(unint64_t *)a5 error:(id *)a6;
- (MBFileEncodingTask)initWithCoder:(id)a3;
- (id)_archive;
- (id)_compress;
- (id)_decompress;
- (id)_unarchive;
- (void)_finishWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)start;
@end

@implementation MBFileEncodingTask

- (void)start
{
  v3 = [(MBFileEncodingTask *)self type];
  if ((v3 - 3) <= 0xFDu)
  {
    __assert_rtn("[MBFileEncodingTask start]", "MBFileEncodingTask.m", 94, "type == MBFileEncodingTypeEncode || type == MBFileEncodingTypeDecode");
  }

  v4 = v3;
  v5 = [(MBFileEncodingTask *)self group];
  if (!v5)
  {
    __assert_rtn("[MBFileEncodingTask start]", "MBFileEncodingTask.m", 95, "self.group");
  }

  if ([(MBFileEncodingTask *)self validate]&& (MBIsInternalInstall() & 1) == 0)
  {
    __assert_rtn("[MBFileEncodingTask start]", "MBFileEncodingTask.m", 96, "!self.validate || MBIsInternalInstall()");
  }

  v6 = [(MBFileEncodingTask *)self group];
  dispatch_group_enter(v6);

  v7 = [(MBFileEncodingTask *)self sourcePath];
  if (v7 && [(MBFileEncodingTask *)self compressionMethod])
  {
    v8 = [(MBFileEncodingTask *)self protectionClass];

    if (v8 != 255)
    {
      if (v4 == 1)
      {
        if (qword_100421BB8 != -1)
        {
          dispatch_once(&qword_100421BB8, &stru_1003C26D0);
        }

        v9 = qword_100421BB0;
        if (qword_100421BC8 == -1)
        {
          v10 = &qword_100421BC0;
LABEL_21:
          v11 = *v10;
          dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10025DAB4;
          block[3] = &unk_1003BCFC8;
          v18 = v4;
          block[4] = self;
          v17 = v9;
          v12 = v9;
          v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
          dispatch_async(v11, v13);

          return;
        }

        v10 = &qword_100421BC0;
        v14 = &stru_1003C26F0;
      }

      else
      {
        if (qword_100421BD8 != -1)
        {
          dispatch_once(&qword_100421BD8, &stru_1003C2710);
        }

        v9 = qword_100421BD0;
        if (qword_100421BE8 == -1)
        {
          v10 = &qword_100421BE0;
          goto LABEL_21;
        }

        v10 = &qword_100421BE0;
        v14 = &stru_1003C2730;
      }

      dispatch_once(v10 + 1, v14);
      goto LABEL_21;
    }
  }

  else
  {
  }

  v15 = [MBError errorWithCode:1 format:@"Invalid arguments: no source path, or unspecified compression or protection class"];
  [(MBFileEncodingTask *)self _finishWithError:v15];
}

- (void)_finishWithError:(id)a3
{
  if (a3)
  {
    [(MBFileEncodingTask *)self setError:?];
    [(MBFileEncodingTask *)self setDestinationSize:0];
    [(MBFileEncodingTask *)self setCompressionMethod:0];
  }

  v4 = [(MBFileEncodingTask *)self group];
  dispatch_group_leave(v4);

  [(MBFileEncodingTask *)self setGroup:0];
}

- (id)_compress
{
  v40 = 0;
  v39 = 0;
  v3 = sub_10025E24C([(MBFileEncodingTask *)self compressionMethod], &v40, &v39);
  v4 = v39;
  v5 = v4;
  if (!v3)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v37 = v4;
  v38 = 0;
  v6 = [(MBFileEncodingTask *)self _handleCompressionOperation:0 algorithm:v40 destinationSize:&v38 error:&v37];
  v7 = v37;

  if (!v6)
  {
    v21 = 0;
    v5 = v7;
    goto LABEL_19;
  }

  v36 = 0;
  v35 = v7;
  v8 = sub_10025E33C(v40, &v36, &v35);
  v5 = v35;

  if ((v8 & 1) == 0)
  {
    __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 231, "result");
  }

  if (!v36)
  {
    __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 232, "dstCompressionMethod != MBFileCompressionMethodUnspecified");
  }

  if (v36 == 255)
  {
    __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 233, "dstCompressionMethod != MBFileCompressionMethodDefault");
  }

  if (![(MBFileEncodingTask *)self encodingMethod])
  {
    __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 235, "self.encodingMethod != MBFileEncodingMethodUnspecified");
  }

  if ([(MBFileEncodingTask *)self encodingMethod]== -1)
  {
    __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 236, "self.encodingMethod != MBFileEncodingMethodDefault");
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v36];
  [(MBFileEncodingTask *)self setDestinationSize:v38];
  if ([(MBFileEncodingTask *)self validate])
  {
    if (![(MBFileEncodingTask *)self sourceIsLive])
    {
      v9 = [(MBFileEncodingTask *)self sourceDigest];

      if (v9)
      {
        v34 = 0;
        if ((sub_10025E33C(v40, &v34, 0) & 1) == 0)
        {
          __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 246, "result");
        }

        v10 = [(MBFileEncodingTask *)self destinationPath];
        if (!v10)
        {
          __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 248, "destinationPath");
        }

        v11 = v10;
        v12 = dispatch_group_create();
        v13 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        [v13 setSourcePath:v11];
        [v13 setDestinationPath:0];
        [v13 setCompressionMethod:v34];
        [v13 setProtectionClass:{-[MBFileEncodingTask protectionClass](self, "protectionClass")}];
        [v13 setValidate:1];
        [v13 setGroup:v12];
        [v13 start];
        dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
        v14 = [v13 error];

        if (v14)
        {
          v15 = MBGetDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = [(MBFileEncodingTask *)self sourcePath];
            v17 = [(MBFileEncodingTask *)self encodingMethod];
            v18 = v34;
            v19 = [v13 error];
            *buf = 138413314;
            v42 = v11;
            v43 = 2112;
            v44 = v16;
            v45 = 2048;
            v46 = v17;
            v47 = 2048;
            v48 = v18;
            v49 = 2112;
            v50 = v19;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to validate the compressed file at %@(%@), e:%ld/0x%lx, error:%@", buf, 0x34u);

            v20 = [(MBFileEncodingTask *)self sourcePath];
            [(MBFileEncodingTask *)self encodingMethod];
            v33 = [v13 error];
            _MBLog();
          }

          [v13 error];
          v21 = 0;
          v5 = v22 = v5;
        }

        else
        {
          v26 = [v13 destinationDigest];
          if (!v26)
          {
            __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 266, "destinationDigest");
          }

          v22 = v26;
          v27 = [(MBFileEncodingTask *)self sourceDigest];
          v21 = [v27 isEqualToData:v22];

          if ((v21 & 1) == 0)
          {
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              v29 = [(MBFileEncodingTask *)self sourceDigest];
              *buf = 138412802;
              v42 = v11;
              v43 = 2112;
              v44 = v29;
              v45 = 2112;
              v46 = v22;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Mismatched SHA256 for the file at %@, %@ != %@", buf, 0x20u);

              v32 = [(MBFileEncodingTask *)self sourceDigest];
              _MBLog();
            }

            v30 = [(MBFileEncodingTask *)self sourceDigest];
            v31 = [MBError errorWithCode:1 path:v11 format:@"Mismatched digests, %@ != %@", v30, v22];

            v5 = v31;
          }
        }

        if (v21)
        {
LABEL_20:
          v23 = v5;
          if (!v21)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_19:
        if (!v5)
        {
          __assert_rtn("[MBFileEncodingTask _compress]", "MBFileEncodingTask.m", 276, "result || localError");
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v23 = 0;
LABEL_22:
  v24 = v23;

  return v24;
}

- (id)_decompress
{
  v17 = 0;
  v16 = 0;
  v3 = sub_10025E24C([(MBFileEncodingTask *)self compressionMethod], &v17, &v16);
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v14 = v4;
    v15 = 0;
    v6 = [(MBFileEncodingTask *)self _handleCompressionOperation:1 algorithm:v17 destinationSize:&v15 error:&v14];
    v7 = v14;

    if (v6)
    {
      v13 = 0;
      v12 = v7;
      v8 = sub_10025E33C(v17, &v13, &v12);
      v5 = v12;

      if ((v8 & 1) == 0)
      {
        __assert_rtn("[MBFileEncodingTask _decompress]", "MBFileEncodingTask.m", 292, "result");
      }

      [(MBFileEncodingTask *)self setCompressionMethod:v13];
      [(MBFileEncodingTask *)self setDestinationSize:v15];
      v9 = 0;
      goto LABEL_7;
    }

    v5 = v7;
  }

  v9 = v5;
  if (!v5)
  {
    __assert_rtn("[MBFileEncodingTask _decompress]", "MBFileEncodingTask.m", 299, "result || localError");
  }

LABEL_7:
  v10 = v9;

  return v10;
}

- (BOOL)_handleCompressionOperation:(int)a3 algorithm:(int)a4 destinationSize:(unint64_t *)a5 error:(id *)a6
{
  if (a3 >= 2)
  {
    __assert_rtn("[MBFileEncodingTask _handleCompressionOperation:algorithm:destinationSize:error:]", "MBFileEncodingTask.m", 304, "operation == COMPRESSION_STREAM_ENCODE || operation == COMPRESSION_STREAM_DECODE");
  }

  if (!a5)
  {
    __assert_rtn("[MBFileEncodingTask _handleCompressionOperation:algorithm:destinationSize:error:]", "MBFileEncodingTask.m", 305, "destinationSize");
  }

  if (!a6)
  {
    __assert_rtn("[MBFileEncodingTask _handleCompressionOperation:algorithm:destinationSize:error:]", "MBFileEncodingTask.m", 306, "error");
  }

  v11 = [(MBFileEncodingTask *)self sourcePath];
  if (!v11)
  {
    __assert_rtn("[MBFileEncodingTask _handleCompressionOperation:algorithm:destinationSize:error:]", "MBFileEncodingTask.m", 308, "srcPath");
  }

  v12 = v11;
  v13 = [(MBFileEncodingTask *)self destinationPath];
  v14 = [(MBFileEncodingTask *)self protectionClass];
  if (v14 == 255)
  {
    __assert_rtn("[MBFileEncodingTask _handleCompressionOperation:algorithm:destinationSize:error:]", "MBFileEncodingTask.m", 311, "pc != MBProtectionClassUnspecified");
  }

  v15 = v14;
  if (v14 == 7)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v125 = 0.0;
  v126 = 0.0;
  v17 = open([v12 fileSystemRepresentation], 256);
  v18 = v17;
  if (v17 == -1)
  {
    v19 = @"Failed to open src file";
    goto LABEL_13;
  }

  memset(&v124, 0, sizeof(v124));
  if (fstat(v17, &v124))
  {
    v19 = @"Failed to fstat src file";
LABEL_13:
    v20 = v12;
LABEL_14:
    v21 = [MBError posixErrorWithPath:v20 format:v19];
    v22 = 0;
    *a6 = v21;
    goto LABEL_15;
  }

  algorithm = a4;
  v118 = v16;
  v114 = a5;
  st_size = v124.st_size;
  tv_sec = v124.st_mtimespec.tv_sec;
  if (v13)
  {
    v24 = open([v13 fileSystemRepresentation], 1794, 384);
    if (v24 == -1)
    {
      v19 = @"Failed to create dst file";
      v20 = v13;
      goto LABEL_14;
    }

    LODWORD(v25) = v24;
    v123 = 0;
    v26 = [MBProtectionClassUtils setWithFD:v24 value:v118 error:&v123];
    v21 = v123;
    if ((v26 & 1) == 0)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to set protection class on the file at %@, error:%@", buf, 0x16u);
        _MBLog();
      }

      v33 = v21;
      *a6 = v21;
      goto LABEL_134;
    }
  }

  else
  {
    v21 = 0;
    LODWORD(v25) = -1;
  }

  if (*&st_size == 0.0)
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Source file is 0 bytes, returning empty 0 byte file at %@", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_31;
  }

  __fd = v25;
  Current = CFAbsoluteTimeGetCurrent();
  v28 = [(MBFileEncodingTask *)self validate];
  v29 = v28 ^ 1;
  v107 = v21;
  if (a3)
  {
    v30 = &v125;
    if (!v28)
    {
      v30 = 0;
    }

    location = 0;
    v104 = v30;
    v112 = v28 ^ 1;
    v29 = 1;
  }

  else
  {
    v34 = &v126;
    if (!v28)
    {
      v34 = 0;
    }

    location = v34;
    v104 = 0;
    v112 = 1;
  }

  cancellationHandler = self->_cancellationHandler;
  v109 = v13;
  v110 = cancellationHandler;
  v36 = malloc_type_malloc(0x10000uLL, 0xA9F6ACCAuLL);
  v105 = v29;
  if (v29)
  {
    v108 = 0;
  }

  else
  {
    v108 = +[MBDigest sha256];
  }

  if (v112)
  {
    v119 = 0;
  }

  else
  {
    v119 = +[MBDigest sha256];
  }

  if (!v36)
  {
    __assert_rtn("handleCompressionOperation", "MBFileEncodingTask.m", 445, "dstBuffer");
  }

  *v128 = 0;
  memset(buf, 0, sizeof(buf));
  v106 = a6;
  if (compression_stream_init(buf, a3, algorithm))
  {
    v37 = [MBError errorWithCode:1 format:@"compression_stream_init failed"];
LABEL_49:
    free(v36);
    *&v121 = 0.0;
    v38 = 0;
    obj = 0;
  }

  else
  {
    *&v121 = 0.0;
    v39 = 0;
    *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    *buf = v36;
    *&buf[8] = 0x10000;
    v40 = v110;
    obja = 1;
    for (i = v13; ; v13 = i)
    {
      v41 = -1;
LABEL_52:
      if (v40 && v40[2](v40))
      {
        v37 = [MBError errorWithCode:202 format:@"File encoding cancelled"];
        *&v121 = 0.0;
        v99 = 0;
        obj = 0;
        v54 = 0;
        goto LABEL_92;
      }

      if ((obja & 1) == 0)
      {
        break;
      }

      if (*&buf[16] != -1 && (*&buf[16] - v41) > 0x20000)
      {
        __assert_rtn("handleCompressionOperation", "MBFileEncodingTask.m", 474, "stream.src_ptr == MAP_FAILED || (stream.src_ptr - srcBuffer) <= srcBufferSize");
      }

      if (v41 != -1)
      {
        munmap(v41, 0x20000uLL);
      }

      if ((st_size - v39) >= 0x20000)
      {
        v42 = 0x20000;
      }

      else
      {
        v42 = st_size - v39;
      }

      if (st_size > v39)
      {
        v43 = mmap(0, 0x20000uLL, 1, 2, v18, v39);
        if (v43 != -1)
        {
          v44 = v43;
          v98 = v39 + 0x20000;
          [v108 updateWithBytes:v43 length:v42];
          v45 = 0;
          v100 = v44;
          *&buf[16] = v44;
          *&buf[24] = v42;
          goto LABEL_66;
        }

        v37 = [MBError posixErrorWithFormat:@"Failed to mmap the src file"];
        compression_stream_destroy(buf);
        v13 = i;
        goto LABEL_49;
      }

      obja = 0;
      *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    }

    v98 = v39;
    v100 = v41;
    v45 = 1;
    do
    {
      while (1)
      {
LABEL_66:
        v46 = compression_stream_process(buf, v45);
        v47 = v46;
        if (v46 >= 2)
        {
          v52 = MBGetDefaultLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *v145 = 134218240;
            v146 = a3;
            v147 = 2048;
            v148 = v47;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "compression_stream_process(%ld) failed with status:%ld", v145, 0x16u);
            v84 = a3;
            v86 = v47;
            _MBLog();
          }

          if (a3)
          {
            v53 = 11;
          }

          else
          {
            v53 = 10;
          }

          v37 = [MBError errorWithCode:v53 format:@"compression_stream_process failed", v84, v86];
          *&v121 = 0.0;
          v99 = 0;
          obj = 0;
          v54 = 0;
          v13 = i;
          v41 = v100;
          goto LABEL_92;
        }

        v48 = !*&buf[8] && v46 != COMPRESSION_STATUS_END;
        if (v46 == COMPRESSION_STATUS_END || !*&buf[8])
        {
          break;
        }

        if (!v48)
        {
          goto LABEL_82;
        }
      }

      if (*buf - v36 > 0x10000uLL)
      {
        __assert_rtn("handleCompressionOperation", "MBFileEncodingTask.m", 518, "stream.dst_ptr - dstBuffer <= dstBufferSize");
      }

      if (*&buf[8] > 0x10000uLL)
      {
        __assert_rtn("handleCompressionOperation", "MBFileEncodingTask.m", 519, "stream.dst_size <= dstBufferSize");
      }

      if (*&buf[8] != 0x10000)
      {
        v49 = 0x10000 - *&buf[8];
        if (i)
        {
          v50 = write(__fd, v36, v49);
          if (v50 == -1 || v50 != v49)
          {
            if (v50 == -1)
            {
              v77 = *__error();
            }

            else
            {
              v77 = 28;
            }

            v41 = v100;
            v81 = "decompressed";
            if (!a3)
            {
              v81 = "compressed";
            }

            v37 = [MBError errorWithErrno:v77 format:@"Failed to write to the %s file", v81];
            MBDiagnoseFile(v109, v77, "write");
            *&v121 = 0.0;
            v99 = 0;
            obj = 0;
            v54 = 0;
            v13 = i;
            goto LABEL_92;
          }
        }

        [v119 updateWithBytes:v36 length:v49];
        v121 += v49;
      }

      *buf = v36;
      *&buf[8] = 0x10000;
    }

    while (v48);
LABEL_82:
    v51 = v47 == COMPRESSION_STATUS_END;
    v13 = i;
    v40 = v110;
    v39 = v98;
    v41 = v100;
    if (!v51)
    {
      goto LABEL_52;
    }

    if (v105)
    {
      v99 = 0;
    }

    else
    {
      v99 = [v108 final];
      v82 = v99;
    }

    if (v112)
    {
      obj = 0;
    }

    else
    {
      obj = [v119 final];
      v83 = obj;
    }

    v37 = 0;
    v54 = 1;
LABEL_92:
    compression_stream_destroy(buf);
    if (v41 != -1)
    {
      munmap(v41, 0x20000uLL);
    }

    free(v36);
    if (v54)
    {
      v55 = 1;
      v56 = v107;
      v38 = v99;
      goto LABEL_98;
    }

    v38 = v99;
  }

  v57 = v37;
  v55 = 0;
  v56 = v37;
LABEL_98:

  if ((v105 & 1) == 0)
  {
    objc_storeStrong(location, v38);
  }

  v25 = __fd;
  if ((v112 & 1) == 0)
  {
    objc_storeStrong(v104, obj);
  }

  v21 = v56;

  if (v55)
  {
    v58 = CFAbsoluteTimeGetCurrent();
    v59 = v106;
    if (!v13)
    {
      goto LABEL_108;
    }

    if (fstat(__fd, &v124))
    {
      v60 = [MBError posixErrorWithPath:v109 format:@"Failed to fstat dst file"];
LABEL_132:
      v79 = v60;

      v21 = v79;
      goto LABEL_133;
    }

    if (v124.st_size != v121)
    {
      [MBError errorWithCode:1 path:v109 format:@"Mismatched size (%llu != %llu)", v124.st_size, v121, v88, v89, v90, v91, v92, *&v93, *&v94, *&v95, *&v96, *&v97];
    }

    else
    {
LABEL_108:
      if (a3)
      {
        v61 = MBGetDefaultLog();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = [(MBFileEncodingTask *)self encodingMethod];
          v63 = v125;
          v113 = v126;
          v64 = v58 - Current;
          *buf = 138414594;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v109;
          *&buf[22] = 2048;
          *&buf[24] = v62;
          *v128 = 2048;
          *&v128[2] = algorithm;
          v129 = 1024;
          v130 = v118;
          v131 = 2048;
          v132 = st_size;
          v133 = 2048;
          v134 = v121;
          v135 = 2048;
          v136 = v64;
          v137 = 2112;
          v138 = v126;
          v139 = 2112;
          v140 = v125;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Finished decompressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x62u);
          v94 = v113;
          v95 = v63;
          v93 = v64;
          v91 = st_size;
          v92 = v121;
          v89 = algorithm;
          v90 = v118;
          v25 = __fd;
          v86 = v109;
          v88 = [(MBFileEncodingTask *)self encodingMethod];
          v84 = v12;
          _MBLog();
        }

        goto LABEL_117;
      }

      v65 = -1.0;
      if (v121 < st_size)
      {
        v65 = 1.0 - v121 / st_size;
      }

      v66 = MBGetDefaultLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = [(MBFileEncodingTask *)self encodingMethod];
        v68 = v58 - Current;
        v69 = v13;
        v71 = v125;
        v70 = v126;
        *buf = 138415106;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v109;
        *&buf[22] = 2048;
        *&buf[24] = v67;
        *v128 = 2048;
        *&v128[2] = algorithm;
        v129 = 1024;
        v130 = v118;
        v131 = 2048;
        v132 = tv_sec;
        v133 = 2048;
        v134 = st_size;
        v135 = 2048;
        v136 = *&v121;
        v137 = 2048;
        v138 = v65;
        v139 = 2048;
        v140 = v68;
        v141 = 2112;
        v142 = v126;
        v143 = 2112;
        v144 = v125;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Finished compressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x76u);
        v96 = v70;
        v97 = v71;
        v13 = v69;
        v25 = __fd;
        v59 = v106;
        v94 = v65;
        v95 = v68;
        v92 = st_size;
        v93 = *&v121;
        v90 = v118;
        v91 = tv_sec;
        v88 = [(MBFileEncodingTask *)self encodingMethod];
        v89 = algorithm;
        v84 = v12;
        v86 = v109;
        _MBLog();
      }

      v72 = [(MBFileEncodingTask *)self spaceSavingsThreshold];
      [v72 doubleValue];
      v74 = v73;

      if (v74 == 0.0)
      {
        goto LABEL_117;
      }

      if (v65 <= 0.0)
      {
        v85 = *&st_size;
        v87 = *&v121;
        v78 = @"Insufficient space savings, srcSize:%llu, dstSize:%llu";
      }

      else
      {
        if (v74 <= 0.0 || v65 >= v74)
        {
LABEL_117:
          [(MBFileEncodingTask *)self setSourceDigest:*&v126, v84, v86, v88, v89, v90, v91, v92, *&v93, *&v94, *&v95, *&v96, *&v97];
          [(MBFileEncodingTask *)self setDestinationDigest:*&v125];
          *v114 = v121;
          if (v15 != 7)
          {
LABEL_32:
            v22 = 1;
            if (v25 != -1)
            {
LABEL_135:
              close(v25);
              goto LABEL_15;
            }

            goto LABEL_15;
          }

          v122 = 0;
          v75 = [MBProtectionClassUtils setWithFD:v25 value:7 error:&v122];
          v31 = v122;
          if ((v75 & 1) == 0)
          {
            v76 = MBGetDefaultLog();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v109;
              *&buf[12] = 2112;
              *&buf[14] = v31;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to set Cx protection class, leaving as C on %@, error:%@", buf, 0x16u);
              _MBLog();
            }
          }

LABEL_31:

          goto LABEL_32;
        }

        v85 = v65;
        v87 = v74;
        v78 = @"Insufficient space savings: %.3f < %.3f";
      }

      [MBError errorWithCode:1 path:v12 format:v78, *&v85, *&v87, v88, v89, v90, v91, v92, *&v93, *&v94, *&v95, *&v96, *&v97];
    }
    v60 = ;
    goto LABEL_132;
  }

  v59 = v106;
LABEL_133:
  v80 = v21;
  *v59 = v21;
  if (v25 != -1)
  {
LABEL_134:
    ftruncate(v25, 0);
    v22 = 0;
    goto LABEL_135;
  }

  v22 = 0;
LABEL_15:
  if (v18 != -1)
  {
    close(v18);
  }

  return v22;
}

- (id)_archive
{
  v105 = 0;
  v3 = [(MBFileEncodingTask *)self destinationPath];

  if (!v3)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_7;
  }

  v104 = 0;
  v4 = sub_10025E24C([(MBFileEncodingTask *)self compressionMethod], &v105, &v104);
  v5 = v104;
  if (!v4)
  {
LABEL_7:
    LODWORD(v11) = 0;
    goto LABEL_15;
  }

  v6 = [(MBFileEncodingTask *)self sourcePath];
  v7 = [v6 fileSystemRepresentation];

  memset(&v103, 0, sizeof(v103));
  if (stat(v7, &v103))
  {
    v8 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v10 = [MBError posixErrorWithPath:v8 format:v9];

    LODWORD(v11) = 0;
    goto LABEL_14;
  }

  st_size = v103.st_size;
  tv_sec = v103.st_mtimespec.tv_sec;
  v14 = [(MBFileEncodingTask *)self destinationPath];
  v15 = [v14 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  v16 = [(MBFileEncodingTask *)self encodingMethod];
  if (v16 != 3 && v16 != 2)
  {
    __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 594, "0");
  }

  v101 = 0;
  v102 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  [(MBFileEncodingTask *)self sourceIsLive];
  v18 = _sqlite3_apple_archive();
  v19 = CFAbsoluteTimeGetCurrent();
  if (v18)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v20 = [(MBFileEncodingTask *)self encodingMethod];
      v21 = [(MBFileEncodingTask *)self compressionMethod];
      v22 = [(MBFileEncodingTask *)self sourcePath];
      v23 = [(MBFileEncodingTask *)self destinationPath];
      *buf = 67110402;
      *v110 = v18;
      *&v110[4] = 2080;
      *&v110[6] = v102;
      *&v110[14] = 2048;
      *&v110[16] = v20;
      *&v110[24] = 2048;
      *&v110[26] = v21;
      *&v110[34] = 2112;
      *&v110[36] = v22;
      *&v110[44] = 2112;
      *&v110[46] = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "_sqlite3_apple_archive failed, rc:%d, msg:%s, e:%ld/%ld, srcPath:%@, dstPath:%@", buf, 0x3Au);

      [(MBFileEncodingTask *)self encodingMethod];
      [(MBFileEncodingTask *)self compressionMethod];
      v24 = [(MBFileEncodingTask *)self sourcePath];
      v82 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog();
    }

    v25 = [(MBFileEncodingTask *)self sourcePath];
    v10 = [MBError errorWithCode:10 path:v25 format:@"_sqlite3_apple_archive failed, rc:%d, %s", v18, v102];

    sqlite3_free(v102);
    LODWORD(v11) = 0;
    v102 = 0;
    goto LABEL_14;
  }

  v29 = v19;
  sqlite3_free(v101);
  if (stat(v15, &v103))
  {
    v8 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v11 = v103.st_size;
  if (!v103.st_size)
  {
    v53 = [MBError errorWithCode:1 format:@"Invalid size(0) for SQLite archive"];

    v5 = v53;
LABEL_15:
    if (!v5)
    {
      __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 720, "result || localError");
    }

LABEL_16:
    v26 = v5;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v100 = 0;
  v99 = v5;
  v30 = sub_10025E33C(v105, &v100, &v99);
  v10 = v99;

  if ((v30 & 1) == 0)
  {
    __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 631, "result");
  }

  if (!v100)
  {
    __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 632, "dstCompressionMethod != MBFileCompressionMethodUnspecified");
  }

  if (v100 == 255)
  {
    __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 633, "dstCompressionMethod != MBFileCompressionMethodDefault");
  }

  if ([(MBFileEncodingTask *)self encodingMethod]!= 2 && [(MBFileEncodingTask *)self encodingMethod]!= 3)
  {
    __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 634, "self.encodingMethod == MBFileEncodingMethodCompressedSQLiteText || self.encodingMethod == MBFileEncodingMethodCompressedSQLiteBinary");
  }

  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v91 = v10;
    v32 = [(MBFileEncodingTask *)self sourcePath];
    v33 = [(MBFileEncodingTask *)self destinationPath];
    v34 = [(MBFileEncodingTask *)self encodingMethod];
    v35 = v105;
    v36 = [(MBFileEncodingTask *)self protectionClass];
    if (st_size)
    {
      v37 = v11 <= st_size;
    }

    else
    {
      v37 = 0;
    }

    v38 = !v37;
    v89 = v38;
    v39 = v11 / st_size;
    v40 = 0.0;
    *buf = 138414594;
    *v110 = v32;
    *&v110[8] = 2112;
    *&v110[10] = v33;
    *&v110[18] = 2048;
    *&v110[20] = v34;
    *&v110[28] = 2048;
    *&v110[30] = v35;
    v41 = 1.0 - v39;
    if (v38)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 1.0 - v39;
    }

    *&v110[38] = 1024;
    *&v110[40] = v36;
    *&v110[44] = 2048;
    *&v110[46] = tv_sec;
    v111 = 2048;
    v112 = st_size;
    v43 = v29 - Current;
    v113 = 2048;
    v114 = v11;
    v115 = 2048;
    v116 = v42;
    v117 = 2048;
    v118 = v43;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Finished archiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs", buf, 0x62u);

    v44 = [(MBFileEncodingTask *)self sourcePath];
    v45 = [(MBFileEncodingTask *)self destinationPath];
    v46 = [(MBFileEncodingTask *)self encodingMethod];
    v47 = v105;
    v48 = [(MBFileEncodingTask *)self protectionClass];
    if ((v89 & 1) == 0)
    {
      v40 = v41;
    }

    v85 = v40;
    v86 = v43;
    v83 = st_size;
    v84 = v11;
    v80 = v48;
    v81 = tv_sec;
    v78 = v46;
    v79 = v47;
    v76 = v44;
    v77 = v45;
    _MBLog();

    v10 = v91;
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v100];
  [(MBFileEncodingTask *)self setDestinationSize:v11];
  if ([(MBFileEncodingTask *)self validate])
  {
    if ((MBIsInternalInstall() & 1) == 0)
    {
      __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 646, "MBIsInternalInstall()");
    }

    v98 = 0;
    if ((sub_10025E33C(v105, &v98, 0) & 1) == 0)
    {
      __assert_rtn("[MBFileEncodingTask _archive]", "MBFileEncodingTask.m", 650, "result");
    }

    if (!getuid())
    {
      v50 = -1;
      v52 = MBTemporaryPath();
LABEL_62:
      if (v52)
      {
        v90 = v50;
        v11 = dispatch_group_create();
        v55 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        v56 = [(MBFileEncodingTask *)self destinationPath];
        [v55 setSourcePath:v56];

        [v55 setDestinationPath:v52];
        [v55 setCompressionMethod:v98];
        [v55 setProtectionClass:{-[MBFileEncodingTask protectionClass](self, "protectionClass")}];
        [v55 setGroup:v11];
        [v55 start];
        v88 = v11;
        dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        v57 = [v55 error];

        LODWORD(v11) = v57 == 0;
        if (v57)
        {
          v58 = MBGetDefaultLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            v59 = [(MBFileEncodingTask *)self destinationPath];
            v60 = [(MBFileEncodingTask *)self sourcePath];
            log = v58;
            v61 = [(MBFileEncodingTask *)self encodingMethod];
            v92 = v10;
            v62 = v98;
            v63 = [v55 error];
            *buf = 138413314;
            *v110 = v59;
            *&v110[8] = 2112;
            *&v110[10] = v60;
            *&v110[18] = 2048;
            *&v110[20] = v61;
            *&v110[28] = 2048;
            *&v110[30] = v62;
            *&v110[38] = 2112;
            *&v110[40] = v63;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to validate the archived SQLite file at %@(%@), e:%ld/0x%lx: %@", buf, 0x34u);

            v64 = [(MBFileEncodingTask *)self destinationPath];
            v65 = [(MBFileEncodingTask *)self sourcePath];
            v66 = [(MBFileEncodingTask *)self encodingMethod];
            v67 = v98;
            [v55 error];
            v80 = v79 = v67;
            v58 = log;
            v77 = v65;
            v78 = v66;
            v10 = v92;
            v76 = v64;
            _MBLog();
          }

          v68 = [v55 error];

          v93 = v68;
        }

        else
        {
          v93 = v10;
        }

        v69 = [NSFileManager defaultManager:v76];
        [v69 removeItemAtPath:v52 error:0];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v70 = [&off_1003E24C8 countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v95;
          do
          {
            for (i = 0; i != v71; i = i + 1)
            {
              if (*v95 != v72)
              {
                objc_enumerationMutation(&off_1003E24C8);
              }

              v74 = [v52 stringByAppendingString:*(*(&v94 + 1) + 8 * i)];
              v75 = +[NSFileManager defaultManager];
              [v75 removeItemAtPath:v74 error:0];
            }

            v71 = [&off_1003E24C8 countByEnumeratingWithState:&v94 objects:v106 count:16];
          }

          while (v71);
        }

        if (v90 != -1)
        {
          close(v90);
        }

        v10 = v93;
      }

      else
      {
        LODWORD(v11) = 1;
      }

LABEL_14:
      v5 = v10;
      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (qword_100421BA8 != -1)
    {
      dispatch_once(&qword_100421BA8, &stru_1003C26B0);
    }

    if ([qword_100421BA0 getFileSystemRepresentation:buf maxLength:{1025, v76, v77, v78, v79, v80, v81, v83, v84, *&v85, *&v86}])
    {
      v49 = mkstemp(buf);
      if (v49 != -1)
      {
        v50 = v49;
        v51 = +[NSFileManager defaultManager];
        v52 = [v51 stringWithFileSystemRepresentation:buf length:strlen(buf)];
LABEL_61:

        goto LABEL_62;
      }

      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v54 = *__error();
        *v107 = 67109120;
        v108 = v54;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "mkstemp failed: %{errno}d", v107, 8u);
        v76 = *__error();
        goto LABEL_59;
      }
    }

    else
    {
      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "getFileSystemRepresentation failed", v107, 2u);
LABEL_59:
        _MBLog();
      }
    }

    v52 = 0;
    v50 = -1;
    goto LABEL_61;
  }

  v5 = v10;
LABEL_17:
  v26 = 0;
LABEL_18:
  v27 = v26;

  return v27;
}

- (id)_unarchive
{
  v3 = [(MBFileEncodingTask *)self destinationPath];

  if (!v3)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_12;
  }

  v44 = 0;
  v43 = 0;
  v4 = sub_10025E24C([(MBFileEncodingTask *)self compressionMethod], &v44, &v43);
  v5 = v43;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = [(MBFileEncodingTask *)self sourcePath];
  v7 = [v6 fileSystemRepresentation];

  memset(&v42, 0, sizeof(v42));
  if (stat(v7, &v42))
  {
    v8 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v10 = [MBError posixErrorWithPath:v8 format:v9];

LABEL_11:
    v5 = v10;
LABEL_12:
    v22 = v5;
    if (!v5)
    {
      __assert_rtn("[MBFileEncodingTask _unarchive]", "MBFileEncodingTask.m", 789, "result || localError");
    }

    goto LABEL_13;
  }

  st_size = v42.st_size;
  v12 = [(MBFileEncodingTask *)self destinationPath];
  v13 = [v12 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  v40 = 0;
  v41 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v15 = _sqlite3_apple_unarchive();
  v16 = CFAbsoluteTimeGetCurrent();
  if (v15)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [(MBFileEncodingTask *)self sourcePath];
      v19 = [(MBFileEncodingTask *)self destinationPath];
      *buf = 67109890;
      *v46 = v15;
      *&v46[4] = 2080;
      *&v46[6] = v41;
      *&v46[14] = 2112;
      *&v46[16] = v18;
      *&v46[24] = 2112;
      *&v46[26] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "_sqlite3_apple_unarchive failed, rc:%d, msg:%s, srcPath:%@, dstPath:%@", buf, 0x26u);

      v20 = [(MBFileEncodingTask *)self sourcePath];
      v37 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog();
    }

    v21 = [(MBFileEncodingTask *)self sourcePath];
    v10 = [MBError errorWithCode:11 path:v21 format:@"_sqlite3_apple_unarchive failed, rc:%d, %s", v15, v41];

    sqlite3_free(v41);
    v41 = 0;
    goto LABEL_11;
  }

  v25 = v16;
  sqlite3_free(v40);
  if (stat(v13, &v42))
  {
    v8 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v26 = v42.st_size;
  v39 = 0;
  v38 = v5;
  v27 = sub_10025E33C(v44, &v39, &v38);
  v28 = v38;

  if ((v27 & 1) == 0)
  {
    __assert_rtn("[MBFileEncodingTask _unarchive]", "MBFileEncodingTask.m", 779, "result");
  }

  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [(MBFileEncodingTask *)self sourcePath];
    v31 = [(MBFileEncodingTask *)self destinationPath];
    v32 = [(MBFileEncodingTask *)self encodingMethod];
    v33 = v44;
    v34 = [(MBFileEncodingTask *)self protectionClass];
    *buf = 138414082;
    *v46 = v30;
    *&v46[8] = 2112;
    *&v46[10] = v31;
    *&v46[18] = 2048;
    *&v46[20] = v32;
    *&v46[28] = 2048;
    *&v46[30] = v33;
    v47 = 1024;
    v48 = v34;
    v49 = 2048;
    v50 = st_size;
    v51 = 2048;
    v52 = v26;
    v53 = 2048;
    v54 = v25 - Current;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Finished unarchiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs", buf, 0x4Eu);

    v35 = [(MBFileEncodingTask *)self sourcePath];
    v36 = [(MBFileEncodingTask *)self destinationPath];
    [(MBFileEncodingTask *)self encodingMethod];
    [(MBFileEncodingTask *)self protectionClass];
    _MBLog();
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v39];
  [(MBFileEncodingTask *)self setDestinationSize:v26];
  v22 = 0;
  v5 = v28;
LABEL_13:
  v23 = v22;

  return v22;
}

- (MBFileEncodingTask)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MBFileEncodingTask;
  v5 = [(MBFileEncodingTask *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    -[MBFileEncodingTask setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    -[MBFileEncodingTask setEncodingMethod:](v5, "setEncodingMethod:", [v4 decodeIntegerForKey:@"encodingMethod"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourcePath"];
    [(MBFileEncodingTask *)v5 setSourcePath:v7];

    -[MBFileEncodingTask setSourceIsLive:](v5, "setSourceIsLive:", [v4 decodeBoolForKey:@"sourceIsLive"]);
    -[MBFileEncodingTask setCompressionMethod:](v5, "setCompressionMethod:", [v4 decodeIntegerForKey:@"compressionMethod"]);
    -[MBFileEncodingTask setProtectionClass:](v5, "setProtectionClass:", [v4 decodeIntForKey:@"protectionClass"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spaceSavingsThreshold"];
    [(MBFileEncodingTask *)v5 setSpaceSavingsThreshold:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationPath"];
    [(MBFileEncodingTask *)v5 setDestinationPath:v9];

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  [v8 encodeInteger:-[MBFileEncodingTask type](self forKey:{"type"), @"type"}];
  [v8 encodeInteger:-[MBFileEncodingTask encodingMethod](self forKey:{"encodingMethod"), @"encodingMethod"}];
  v5 = [(MBFileEncodingTask *)self sourcePath];
  [v8 encodeObject:v5 forKey:@"sourcePath"];

  [v8 encodeBool:-[MBFileEncodingTask sourceIsLive](self forKey:{"sourceIsLive"), @"sourceIsLive"}];
  [v8 encodeInteger:-[MBFileEncodingTask compressionMethod](self forKey:{"compressionMethod"), @"compressionMethod"}];
  [v8 encodeInt:-[MBFileEncodingTask protectionClass](self forKey:{"protectionClass"), @"protectionClass"}];
  v6 = [(MBFileEncodingTask *)self spaceSavingsThreshold];
  [v8 encodeObject:v6 forKey:@"spaceSavingsThreshold"];

  v7 = [(MBFileEncodingTask *)self destinationPath];
  [v8 encodeObject:v7 forKey:@"destinationPath"];

  objc_autoreleasePoolPop(v4);
}

@end