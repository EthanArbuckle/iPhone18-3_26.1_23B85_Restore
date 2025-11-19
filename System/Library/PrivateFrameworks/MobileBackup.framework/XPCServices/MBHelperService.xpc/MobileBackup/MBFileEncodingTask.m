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
    sub_100014D90();
  }

  v4 = v3;
  v5 = [(MBFileEncodingTask *)self group];
  if (!v5)
  {
    sub_100014D64();
  }

  if ([(MBFileEncodingTask *)self validate]&& (MBIsInternalInstall() & 1) == 0)
  {
    sub_100014CE8();
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
        if (qword_10002A288 != -1)
        {
          sub_100014D3C();
        }

        v9 = qword_10002A280;
        if (qword_10002A298 != -1)
        {
          sub_100014D50();
        }

        v10 = &qword_10002A290;
      }

      else
      {
        if (qword_10002A2A8 != -1)
        {
          sub_100014D14();
        }

        v9 = qword_10002A2A0;
        if (qword_10002A2B8 != -1)
        {
          sub_100014D28();
        }

        v10 = &qword_10002A2B0;
      }

      v11 = *v10;
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001086C;
      block[3] = &unk_100024BB8;
      v17 = v4;
      block[4] = self;
      v16 = v9;
      v12 = v9;
      v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v11, v13);

      return;
    }
  }

  else
  {
  }

  v14 = [MBError errorWithCode:1 format:@"Invalid arguments: no source path, or unspecified compression or protection class"];
  [(MBFileEncodingTask *)self _finishWithError:v14];
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
  v52 = 0;
  v51 = 0;
  v3 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v52, &v51);
  v4 = v51;
  v5 = v4;
  if (!v3)
  {
    v27 = 0;
    goto LABEL_19;
  }

  v49 = v4;
  v50 = 0;
  v6 = [(MBFileEncodingTask *)self _handleCompressionOperation:0 algorithm:v52 destinationSize:&v50 error:&v49];
  v7 = v49;

  if (!v6)
  {
    v27 = 0;
    v5 = v7;
    goto LABEL_19;
  }

  v48 = 0;
  v47 = v7;
  v8 = sub_100010FDC(v52, &v48, &v47);
  v5 = v47;

  if ((v8 & 1) == 0)
  {
    sub_100014DBC();
  }

  if (!v48)
  {
    sub_100014E14();
  }

  if (v48 == 255)
  {
    sub_100014DE8();
  }

  if (![(MBFileEncodingTask *)self encodingMethod])
  {
    sub_100014F1C();
  }

  if ([(MBFileEncodingTask *)self encodingMethod]== -1)
  {
    sub_100014EF0();
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v48];
  [(MBFileEncodingTask *)self setDestinationSize:v50];
  if ([(MBFileEncodingTask *)self validate])
  {
    if (![(MBFileEncodingTask *)self sourceIsLive])
    {
      v9 = [(MBFileEncodingTask *)self sourceDigest];

      if (v9)
      {
        v46 = 0;
        if ((sub_100010FDC(v52, &v46, 0) & 1) == 0)
        {
          sub_100014E40();
        }

        v10 = [(MBFileEncodingTask *)self destinationPath];
        if (!v10)
        {
          sub_100014EC4();
        }

        v11 = v10;
        v12 = dispatch_group_create();
        v13 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        [v13 setSourcePath:v11];
        [v13 setDestinationPath:0];
        [v13 setCompressionMethod:v46];
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
            v18 = v46;
            v19 = [v13 error];
            *buf = 138413314;
            v54 = v11;
            v55 = 2112;
            v56 = v16;
            v57 = 2048;
            v58 = v17;
            v59 = 2048;
            v60 = v18;
            v61 = 2112;
            v62 = v19;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to validate the compressed file at %@(%@), e:%ld/0x%lx, error:%@", buf, 0x34u);

            v20 = [(MBFileEncodingTask *)self sourcePath];
            [(MBFileEncodingTask *)self encodingMethod];
            v45 = [v13 error];
            _MBLog(@"F ", "Failed to validate the compressed file at %@(%@), e:%ld/0x%lx, error:%@", v21, v22, v23, v24, v25, v26, v11);
          }

          [v13 error];
          v27 = 0;
          v5 = v28 = v5;
        }

        else
        {
          v32 = [v13 destinationDigest];
          if (!v32)
          {
            sub_100014E98();
          }

          v28 = v32;
          v33 = [(MBFileEncodingTask *)self sourceDigest];
          v27 = [v33 isEqualToData:v28];

          if ((v27 & 1) == 0)
          {
            v34 = MBGetDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              v35 = [(MBFileEncodingTask *)self sourceDigest];
              *buf = 138412802;
              v54 = v11;
              v55 = 2112;
              v56 = v35;
              v57 = 2112;
              v58 = v28;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Mismatched SHA256 for the file at %@, %@ != %@", buf, 0x20u);

              v44 = [(MBFileEncodingTask *)self sourceDigest];
              _MBLog(@"F ", "Mismatched SHA256 for the file at %@, %@ != %@", v36, v37, v38, v39, v40, v41, v11);
            }

            v42 = [(MBFileEncodingTask *)self sourceDigest];
            v43 = [MBError errorWithCode:1 path:v11 format:@"Mismatched digests, %@ != %@", v42, v28];

            v5 = v43;
          }
        }

        if (v27)
        {
LABEL_20:
          v29 = v5;
          if (!v27)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_19:
        if (!v5)
        {
          sub_100014E6C();
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v29 = 0;
LABEL_22:
  v30 = v29;

  return v30;
}

- (id)_decompress
{
  v17 = 0;
  v16 = 0;
  v3 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v17, &v16);
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
      v8 = sub_100010FDC(v17, &v13, &v12);
      v5 = v12;

      if ((v8 & 1) == 0)
      {
        sub_100014FF8();
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
    sub_100014FCC();
  }

LABEL_7:
  v10 = v9;

  return v10;
}

- (BOOL)_handleCompressionOperation:(int)a3 algorithm:(int)a4 destinationSize:(unint64_t *)a5 error:(id *)a6
{
  if (a3 >= 2)
  {
    sub_100015184();
  }

  if (!a5)
  {
    sub_100015158();
  }

  if (!a6)
  {
    sub_10001512C();
  }

  v11 = [(MBFileEncodingTask *)self sourcePath];
  if (!v11)
  {
    sub_100015100();
  }

  v12 = v11;
  v13 = [(MBFileEncodingTask *)self destinationPath];
  v14 = [(MBFileEncodingTask *)self protectionClass];
  if (v14 == 255)
  {
    sub_1000150D4();
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

  v156 = 0.0;
  v157 = 0.0;
  v17 = open([v12 fileSystemRepresentation], 256);
  v18 = v17;
  if (v17 == -1)
  {
    v19 = @"Failed to open src file";
    goto LABEL_13;
  }

  memset(&v155, 0, sizeof(v155));
  if (fstat(v17, &v155))
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
  v149 = v16;
  v145 = a5;
  st_size = v155.st_size;
  tv_sec = v155.st_mtimespec.tv_sec;
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
    v154 = 0;
    v26 = [MBProtectionClassUtils setWithFD:v24 value:v149 error:&v154];
    v21 = v154;
    if ((v26 & 1) == 0)
    {
      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to set protection class on the file at %@, error:%@", buf, 0x16u);
        _MBLog(@"E ", "Failed to set protection class on the file at %@, error:%@", v39, v40, v41, v42, v43, v44, v13);
      }

      v45 = v21;
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
      _MBLog(@"Df", "Source file is 0 bytes, returning empty 0 byte file at %@", v32, v33, v34, v35, v36, v37, v13);
    }

    goto LABEL_31;
  }

  __fd = v25;
  Current = CFAbsoluteTimeGetCurrent();
  v28 = [(MBFileEncodingTask *)self validate];
  v29 = v28 ^ 1;
  v139 = v21;
  if (a3)
  {
    v30 = &v156;
    if (!v28)
    {
      v30 = 0;
    }

    location = 0;
    v136 = v30;
    v144 = v28 ^ 1;
    v29 = 1;
  }

  else
  {
    v46 = &v157;
    if (!v28)
    {
      v46 = 0;
    }

    location = v46;
    v136 = 0;
    v144 = 1;
  }

  cancellationHandler = self->_cancellationHandler;
  v141 = v13;
  v142 = cancellationHandler;
  v48 = malloc_type_malloc(0x10000uLL, 0xA9F6ACCAuLL);
  v137 = v29;
  if (v29)
  {
    v140 = 0;
  }

  else
  {
    v140 = +[MBDigest sha256];
  }

  if (v144)
  {
    v150 = 0;
  }

  else
  {
    v150 = +[MBDigest sha256];
  }

  if (!v48)
  {
    sub_1000150A8();
  }

  *v159 = 0;
  memset(buf, 0, sizeof(buf));
  v138 = a6;
  if (compression_stream_init(buf, a3, algorithm))
  {
    v49 = [MBError errorWithCode:1 format:@"compression_stream_init failed"];
LABEL_49:
    free(v48);
    v152 = 0.0;
    v50 = 0;
    obj = 0;
  }

  else
  {
    v152 = 0.0;
    v51 = 0;
    *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    *buf = v48;
    *&buf[8] = 0x10000;
    v52 = v142;
    obja = 1;
    for (i = v13; ; v13 = i)
    {
      v53 = -1;
LABEL_52:
      if (v52 && v52[2](v52))
      {
        v49 = [MBError errorWithCode:202 format:@"File encoding cancelled"];
        v152 = 0.0;
        v131 = 0;
        obj = 0;
        v72 = 0;
        goto LABEL_92;
      }

      if ((obja & 1) == 0)
      {
        break;
      }

      if (*&buf[16] != -1 && (*&buf[16] - v53) > 0x20000)
      {
        sub_10001507C();
      }

      if (v53 != -1)
      {
        munmap(v53, 0x20000uLL);
      }

      if ((st_size - v51) >= 0x20000)
      {
        v54 = 0x20000;
      }

      else
      {
        v54 = st_size - v51;
      }

      if (st_size > v51)
      {
        v55 = mmap(0, 0x20000uLL, 1, 2, v18, v51);
        if (v55 != -1)
        {
          v56 = v55;
          v130 = v51 + 0x20000;
          [v140 updateWithBytes:v55 length:v54];
          v57 = 0;
          v132 = v56;
          *&buf[16] = v56;
          *&buf[24] = v54;
          goto LABEL_66;
        }

        v49 = [MBError posixErrorWithFormat:@"Failed to mmap the src file"];
        compression_stream_destroy(buf);
        v13 = i;
        goto LABEL_49;
      }

      obja = 0;
      *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    }

    v130 = v51;
    v132 = v53;
    v57 = 1;
    do
    {
      while (1)
      {
LABEL_66:
        v58 = compression_stream_process(buf, v57);
        v59 = v58;
        if (v58 >= 2)
        {
          v64 = MBGetDefaultLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *v176 = 134218240;
            v177 = a3;
            v178 = 2048;
            v179 = v59;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "compression_stream_process(%ld) failed with status:%ld", v176, 0x16u);
            _MBLog(@"Df", "compression_stream_process(%ld) failed with status:%ld", v65, v66, v67, v68, v69, v70, a3);
          }

          if (a3)
          {
            v71 = 11;
          }

          else
          {
            v71 = 10;
          }

          v49 = [MBError errorWithCode:v71 format:@"compression_stream_process failed"];
          v152 = 0.0;
          v131 = 0;
          obj = 0;
          v72 = 0;
          v13 = i;
          v53 = v132;
          goto LABEL_92;
        }

        v60 = !*&buf[8] && v58 != COMPRESSION_STATUS_END;
        if (v58 == COMPRESSION_STATUS_END || !*&buf[8])
        {
          break;
        }

        if (!v60)
        {
          goto LABEL_82;
        }
      }

      if (*buf - v48 > 0x10000uLL)
      {
        sub_100015050();
      }

      if (*&buf[8] > 0x10000uLL)
      {
        sub_100015024();
      }

      if (*&buf[8] != 0x10000)
      {
        v61 = 0x10000 - *&buf[8];
        if (i)
        {
          v62 = write(__fd, v48, v61);
          if (v62 == -1 || v62 != v61)
          {
            if (v62 == -1)
            {
              v111 = *__error();
            }

            else
            {
              v111 = 28;
            }

            v53 = v132;
            v115 = "decompressed";
            if (!a3)
            {
              v115 = "compressed";
            }

            v49 = [MBError errorWithErrno:v111 format:@"Failed to write to the %s file", v115];
            MBDiagnoseFile(v141, v111, "write");
            v152 = 0.0;
            v131 = 0;
            obj = 0;
            v72 = 0;
            v13 = i;
            goto LABEL_92;
          }
        }

        [v150 updateWithBytes:v48 length:v61];
        *&v152 += v61;
      }

      *buf = v48;
      *&buf[8] = 0x10000;
    }

    while (v60);
LABEL_82:
    v63 = v59 == COMPRESSION_STATUS_END;
    v13 = i;
    v52 = v142;
    v51 = v130;
    v53 = v132;
    if (!v63)
    {
      goto LABEL_52;
    }

    if (v137)
    {
      v131 = 0;
    }

    else
    {
      v131 = [v140 final];
      v116 = v131;
    }

    if (v144)
    {
      obj = 0;
    }

    else
    {
      obj = [v150 final];
      v117 = obj;
    }

    v49 = 0;
    v72 = 1;
LABEL_92:
    compression_stream_destroy(buf);
    if (v53 != -1)
    {
      munmap(v53, 0x20000uLL);
    }

    free(v48);
    if (v72)
    {
      v73 = 1;
      v74 = v139;
      v50 = v131;
      goto LABEL_98;
    }

    v50 = v131;
  }

  v75 = v49;
  v73 = 0;
  v74 = v49;
LABEL_98:

  if ((v137 & 1) == 0)
  {
    objc_storeStrong(location, v50);
  }

  v25 = __fd;
  if ((v144 & 1) == 0)
  {
    objc_storeStrong(v136, obj);
  }

  v21 = v74;

  if (v73)
  {
    v76 = CFAbsoluteTimeGetCurrent();
    v77 = v138;
    if (!v13)
    {
      goto LABEL_108;
    }

    if (fstat(__fd, &v155))
    {
      v78 = [MBError posixErrorWithPath:v141 format:@"Failed to fstat dst file"];
LABEL_132:
      v113 = v78;

      v21 = v113;
      goto LABEL_133;
    }

    if (v155.st_size != *&v152)
    {
      [MBError errorWithCode:1 path:v141 format:@"Mismatched size (%llu != %llu)", v155.st_size, *&v152, v120, v121, v122, v123, v124, *&v125, *&v126, *&v127, *&v128, *&v129];
    }

    else
    {
LABEL_108:
      if (a3)
      {
        v79 = MBGetDefaultLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = [(MBFileEncodingTask *)self encodingMethod];
          *buf = 138414594;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v141;
          *&buf[22] = 2048;
          *&buf[24] = v80;
          *v159 = 2048;
          *&v159[2] = algorithm;
          v160 = 1024;
          v161 = v149;
          v162 = 2048;
          v163 = st_size;
          v164 = 2048;
          v165 = v152;
          v166 = 2048;
          v167 = v76 - Current;
          v168 = 2112;
          v169 = v157;
          v170 = 2112;
          v171 = v156;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "Finished decompressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x62u);
          v25 = __fd;
          [(MBFileEncodingTask *)self encodingMethod];
          _MBLog(@"I ", "Finished decompressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs, srcDigest:%@, dstDigest:%@", v81, v82, v83, v84, v85, v86, v12);
        }

        goto LABEL_117;
      }

      v87 = -1.0;
      if (*&v152 < st_size)
      {
        v87 = 1.0 - *&v152 / st_size;
      }

      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        v89 = [(MBFileEncodingTask *)self encodingMethod];
        v90 = v76 - Current;
        v91 = v13;
        v93 = v156;
        v92 = v157;
        *buf = 138415106;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v141;
        *&buf[22] = 2048;
        *&buf[24] = v89;
        *v159 = 2048;
        *&v159[2] = algorithm;
        v160 = 1024;
        v161 = v149;
        v162 = 2048;
        v163 = tv_sec;
        v164 = 2048;
        v165 = *&st_size;
        v166 = 2048;
        v167 = v152;
        v168 = 2048;
        v169 = v87;
        v170 = 2048;
        v171 = v90;
        v172 = 2112;
        v173 = v157;
        v174 = 2112;
        v175 = v156;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Finished compressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x76u);
        v128 = v92;
        v129 = v93;
        v13 = v91;
        v25 = __fd;
        v77 = v138;
        v126 = v87;
        v127 = v90;
        v124 = st_size;
        v125 = v152;
        v122 = v149;
        v123 = tv_sec;
        v120 = [(MBFileEncodingTask *)self encodingMethod];
        v121 = algorithm;
        _MBLog(@"I ", "Finished compressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs, srcDigest:%@, dstDigest:%@", v94, v95, v96, v97, v98, v99, v12);
      }

      v100 = [(MBFileEncodingTask *)self spaceSavingsThreshold];
      [v100 doubleValue];
      v102 = v101;

      if (v102 == 0.0)
      {
        goto LABEL_117;
      }

      if (v87 <= 0.0)
      {
        v118 = *&st_size;
        v119 = v152;
        v112 = @"Insufficient space savings, srcSize:%llu, dstSize:%llu";
      }

      else
      {
        if (v102 <= 0.0 || v87 >= v102)
        {
LABEL_117:
          [(MBFileEncodingTask *)self setSourceDigest:*&v157];
          [(MBFileEncodingTask *)self setDestinationDigest:*&v156];
          *v145 = v152;
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

          v153 = 0;
          v103 = [MBProtectionClassUtils setWithFD:v25 value:7 error:&v153];
          v31 = v153;
          if ((v103 & 1) == 0)
          {
            v104 = MBGetDefaultLog();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v141;
              *&buf[12] = 2112;
              *&buf[14] = v31;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Failed to set Cx protection class, leaving as C on %@, error:%@", buf, 0x16u);
              _MBLog(@"E ", "Failed to set Cx protection class, leaving as C on %@, error:%@", v105, v106, v107, v108, v109, v110, v141);
            }
          }

LABEL_31:

          goto LABEL_32;
        }

        v118 = v87;
        v119 = v102;
        v112 = @"Insufficient space savings: %.3f < %.3f";
      }

      [MBError errorWithCode:1 path:v12 format:v112, *&v118, *&v119, v120, v121, v122, v123, v124, *&v125, *&v126, *&v127, *&v128, *&v129];
    }
    v78 = ;
    goto LABEL_132;
  }

  v77 = v138;
LABEL_133:
  v114 = v21;
  *v77 = v21;
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
  v110 = 0;
  v3 = [(MBFileEncodingTask *)self destinationPath];

  if (!v3)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_7;
  }

  v109 = 0;
  v4 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v110, &v109);
  v5 = v109;
  if (!v4)
  {
LABEL_7:
    LODWORD(v11) = 0;
    goto LABEL_15;
  }

  v6 = [(MBFileEncodingTask *)self sourcePath];
  v7 = [v6 fileSystemRepresentation];

  memset(&v108, 0, sizeof(v108));
  if (stat(v7, &v108))
  {
    v8 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v10 = [MBError posixErrorWithPath:v8 format:v9];

    LODWORD(v11) = 0;
    goto LABEL_14;
  }

  st_size = v108.st_size;
  tv_sec = v108.st_mtimespec.tv_sec;
  v14 = [(MBFileEncodingTask *)self destinationPath];
  v15 = [v14 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  v16 = [(MBFileEncodingTask *)self encodingMethod];
  if (v16 != 3 && v16 != 2)
  {
    sub_10001530C();
  }

  v106 = 0;
  v107 = 0;
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
      *v115 = v18;
      *&v115[4] = 2080;
      *&v115[6] = v107;
      *&v115[14] = 2048;
      *&v115[16] = v20;
      *&v115[24] = 2048;
      *&v115[26] = v21;
      *&v115[34] = 2112;
      *&v115[36] = v22;
      *&v115[44] = 2112;
      *&v115[46] = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "_sqlite3_apple_archive failed, rc:%d, msg:%s, e:%ld/%ld, srcPath:%@, dstPath:%@", buf, 0x3Au);

      [(MBFileEncodingTask *)self encodingMethod];
      [(MBFileEncodingTask *)self compressionMethod];
      v24 = [(MBFileEncodingTask *)self sourcePath];
      v92 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog(@"F ", "_sqlite3_apple_archive failed, rc:%d, msg:%s, e:%ld/%ld, srcPath:%@, dstPath:%@", v25, v26, v27, v28, v29, v30, v18);
    }

    v31 = [(MBFileEncodingTask *)self sourcePath];
    v10 = [MBError errorWithCode:10 path:v31 format:@"_sqlite3_apple_archive failed, rc:%d, %s", v18, v107];

    sqlite3_free(v107);
    LODWORD(v11) = 0;
    v107 = 0;
    goto LABEL_14;
  }

  v35 = v19;
  sqlite3_free(v106);
  if (stat(v15, &v108))
  {
    v8 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v11 = v108.st_size;
  if (!v108.st_size)
  {
    v56 = [MBError errorWithCode:1 format:@"Invalid size(0) for SQLite archive"];

    v5 = v56;
LABEL_15:
    if (!v5)
    {
      sub_100015338();
    }

LABEL_16:
    v32 = v5;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v105 = 0;
  v104 = v5;
  v36 = sub_100010FDC(v110, &v105, &v104);
  v10 = v104;

  if ((v36 & 1) == 0)
  {
    sub_1000151DC();
  }

  if (!v105)
  {
    sub_100015234();
  }

  if (v105 == 255)
  {
    sub_100015208();
  }

  if ([(MBFileEncodingTask *)self encodingMethod]!= 2 && [(MBFileEncodingTask *)self encodingMethod]!= 3)
  {
    sub_100015260();
  }

  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v96 = v10;
    v38 = [(MBFileEncodingTask *)self sourcePath];
    v39 = [(MBFileEncodingTask *)self destinationPath];
    v40 = [(MBFileEncodingTask *)self encodingMethod];
    v41 = v110;
    v42 = [(MBFileEncodingTask *)self protectionClass];
    *buf = 138414594;
    *v115 = v38;
    *&v115[8] = 2112;
    *&v115[10] = v39;
    *&v115[18] = 2048;
    *&v115[20] = v40;
    *&v115[28] = 2048;
    *&v115[30] = v41;
    v43 = 1.0 - v11 / st_size;
    if (v11 > st_size)
    {
      v43 = 0.0;
    }

    if (!st_size)
    {
      v43 = 0.0;
    }

    *&v115[38] = 1024;
    *&v115[40] = v42;
    *&v115[44] = 2048;
    *&v115[46] = tv_sec;
    v116 = 2048;
    v117 = st_size;
    v118 = 2048;
    v119 = v11;
    v120 = 2048;
    v121 = v43;
    v122 = 2048;
    v123 = v35 - Current;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Finished archiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs", buf, 0x62u);

    v44 = [(MBFileEncodingTask *)self sourcePath];
    v45 = [(MBFileEncodingTask *)self destinationPath];
    [(MBFileEncodingTask *)self encodingMethod];
    [(MBFileEncodingTask *)self protectionClass];
    _MBLog(@"I ", "Finished archiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs", v46, v47, v48, v49, v50, v51, v44);

    v10 = v96;
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v105];
  [(MBFileEncodingTask *)self setDestinationSize:v11];
  if ([(MBFileEncodingTask *)self validate])
  {
    if ((MBIsInternalInstall() & 1) == 0)
    {
      sub_10001528C();
    }

    v103 = 0;
    if ((sub_100010FDC(v110, &v103, 0) & 1) == 0)
    {
      sub_1000152B8();
    }

    if (!getuid())
    {
      v53 = -1;
      v55 = MBTemporaryPath();
LABEL_55:
      if (v55)
      {
        v95 = v53;
        v11 = dispatch_group_create();
        v65 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        v66 = [(MBFileEncodingTask *)self destinationPath];
        [v65 setSourcePath:v66];

        [v65 setDestinationPath:v55];
        [v65 setCompressionMethod:v103];
        [v65 setProtectionClass:{-[MBFileEncodingTask protectionClass](self, "protectionClass")}];
        [v65 setGroup:v11];
        [v65 start];
        v94 = v11;
        dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        v67 = [v65 error];

        LODWORD(v11) = v67 == 0;
        if (v67)
        {
          v68 = MBGetDefaultLog();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            v69 = [(MBFileEncodingTask *)self destinationPath];
            v70 = [(MBFileEncodingTask *)self sourcePath];
            log = v68;
            v71 = [(MBFileEncodingTask *)self encodingMethod];
            v97 = v10;
            v72 = v103;
            v73 = [v65 error];
            *buf = 138413314;
            *v115 = v69;
            *&v115[8] = 2112;
            *&v115[10] = v70;
            *&v115[18] = 2048;
            *&v115[20] = v71;
            *&v115[28] = 2048;
            *&v115[30] = v72;
            *&v115[38] = 2112;
            *&v115[40] = v73;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to validate the archived SQLite file at %@(%@), e:%ld/0x%lx: %@", buf, 0x34u);

            v74 = [(MBFileEncodingTask *)self destinationPath];
            v75 = [(MBFileEncodingTask *)self sourcePath];
            [(MBFileEncodingTask *)self encodingMethod];
            v91 = [v65 error];
            v68 = log;
            v10 = v97;
            _MBLog(@"F ", "Failed to validate the archived SQLite file at %@(%@), e:%ld/0x%lx: %@", v76, v77, v78, v79, v80, v81, v74);
          }

          v82 = [v65 error];

          v98 = v82;
        }

        else
        {
          v98 = v10;
        }

        v83 = +[NSFileManager defaultManager];
        [v83 removeItemAtPath:v55 error:0];

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v84 = [&off_100026388 countByEnumeratingWithState:&v99 objects:v111 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v100;
          do
          {
            for (i = 0; i != v85; i = i + 1)
            {
              if (*v100 != v86)
              {
                objc_enumerationMutation(&off_100026388);
              }

              v88 = [v55 stringByAppendingString:*(*(&v99 + 1) + 8 * i)];
              v89 = +[NSFileManager defaultManager];
              [v89 removeItemAtPath:v88 error:0];
            }

            v85 = [&off_100026388 countByEnumeratingWithState:&v99 objects:v111 count:16];
          }

          while (v85);
        }

        if (v95 != -1)
        {
          close(v95);
        }

        v10 = v98;
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

    if (qword_10002A278 != -1)
    {
      sub_1000152E4();
    }

    if ([qword_10002A270 getFileSystemRepresentation:buf maxLength:1025])
    {
      v52 = mkstemp(buf);
      if (v52 != -1)
      {
        v53 = v52;
        v54 = +[NSFileManager defaultManager];
        v55 = [v54 stringWithFileSystemRepresentation:buf length:strlen(buf)];
LABEL_54:

        goto LABEL_55;
      }

      v54 = MBGetDefaultLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v64 = *__error();
        *v112 = 67109120;
        v113 = v64;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "mkstemp failed: %{errno}d", v112, 8u);
        v90 = *__error();
        v63 = "mkstemp failed: %{errno}d";
        goto LABEL_52;
      }
    }

    else
    {
      v54 = MBGetDefaultLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "getFileSystemRepresentation failed", v112, 2u);
        v63 = "getFileSystemRepresentation failed";
LABEL_52:
        _MBLog(@"E ", v63, v57, v58, v59, v60, v61, v62, v90);
      }
    }

    v55 = 0;
    v53 = -1;
    goto LABEL_54;
  }

  v5 = v10;
LABEL_17:
  v32 = 0;
LABEL_18:
  v33 = v32;

  return v33;
}

- (id)_unarchive
{
  v3 = [(MBFileEncodingTask *)self destinationPath];

  if (!v3)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_12;
  }

  v56 = 0;
  v55 = 0;
  v4 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v56, &v55);
  v5 = v55;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = [(MBFileEncodingTask *)self sourcePath];
  v7 = [v6 fileSystemRepresentation];

  memset(&v54, 0, sizeof(v54));
  if (stat(v7, &v54))
  {
    v8 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v10 = [MBError posixErrorWithPath:v8 format:v9];

LABEL_11:
    v5 = v10;
LABEL_12:
    v28 = v5;
    if (!v5)
    {
      sub_1000153BC();
    }

    goto LABEL_13;
  }

  st_size = v54.st_size;
  v12 = [(MBFileEncodingTask *)self destinationPath];
  v13 = [v12 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  v52 = 0;
  v53 = 0;
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
      *v58 = v15;
      *&v58[4] = 2080;
      *&v58[6] = v53;
      *&v58[14] = 2112;
      *&v58[16] = v18;
      *&v58[24] = 2112;
      *&v58[26] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "_sqlite3_apple_unarchive failed, rc:%d, msg:%s, srcPath:%@, dstPath:%@", buf, 0x26u);

      v20 = [(MBFileEncodingTask *)self sourcePath];
      v49 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog(@"F ", "_sqlite3_apple_unarchive failed, rc:%d, msg:%s, srcPath:%@, dstPath:%@", v21, v22, v23, v24, v25, v26, v15);
    }

    v27 = [(MBFileEncodingTask *)self sourcePath];
    v10 = [MBError errorWithCode:11 path:v27 format:@"_sqlite3_apple_unarchive failed, rc:%d, %s", v15, v53];

    sqlite3_free(v53);
    v53 = 0;
    goto LABEL_11;
  }

  v31 = v16;
  sqlite3_free(v52);
  if (stat(v13, &v54))
  {
    v8 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v32 = v54.st_size;
  v51 = 0;
  v50 = v5;
  v33 = sub_100010FDC(v56, &v51, &v50);
  v34 = v50;

  if ((v33 & 1) == 0)
  {
    sub_100015390();
  }

  v35 = MBGetDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = [(MBFileEncodingTask *)self sourcePath];
    v37 = [(MBFileEncodingTask *)self destinationPath];
    v38 = [(MBFileEncodingTask *)self encodingMethod];
    v39 = v56;
    v40 = [(MBFileEncodingTask *)self protectionClass];
    *buf = 138414082;
    *v58 = v36;
    *&v58[8] = 2112;
    *&v58[10] = v37;
    *&v58[18] = 2048;
    *&v58[20] = v38;
    *&v58[28] = 2048;
    *&v58[30] = v39;
    v59 = 1024;
    v60 = v40;
    v61 = 2048;
    v62 = st_size;
    v63 = 2048;
    v64 = v32;
    v65 = 2048;
    v66 = v31 - Current;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Finished unarchiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs", buf, 0x4Eu);

    v41 = [(MBFileEncodingTask *)self sourcePath];
    v42 = [(MBFileEncodingTask *)self destinationPath];
    [(MBFileEncodingTask *)self encodingMethod];
    [(MBFileEncodingTask *)self protectionClass];
    _MBLog(@"I ", "Finished unarchiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs", v43, v44, v45, v46, v47, v48, v41);
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v51];
  [(MBFileEncodingTask *)self setDestinationSize:v32];
  v28 = 0;
  v5 = v34;
LABEL_13:
  v29 = v28;

  return v28;
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