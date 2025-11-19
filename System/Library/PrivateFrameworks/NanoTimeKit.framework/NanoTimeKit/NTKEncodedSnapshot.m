@interface NTKEncodedSnapshot
- (BOOL)queue_writeToURL:(id)a3 error:(id *)a4;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (NTKEncodedSnapshot)initWithImage:(id)a3;
@end

@implementation NTKEncodedSnapshot

- (NTKEncodedSnapshot)initWithImage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKEncodedSnapshot;
  v6 = [(NTKEncodedSnapshot *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v8 = +[NTKSnapshotFileQueue defaultFileQueue];
    snapshotQueue = v7->_snapshotQueue;
    v7->_snapshotQueue = v8;
  }

  return v7;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v7 = [(NTKSnapshotFileQueue *)self->_snapshotQueue queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__NTKEncodedSnapshot_writeToURL_error___block_invoke;
  v12[3] = &unk_27877DE80;
  v14 = &v22;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v15 = &v16;
  dispatch_sync(v7, v12);

  if (a4)
  {
    v9 = v17[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __39__NTKEncodedSnapshot_writeToURL_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 queue_writeToURL:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)queue_writeToURL:(id)a3 error:(id *)a4
{
  values[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NTKSnapshotFileQueue *)self->_snapshotQueue queue];
  dispatch_assert_queue_V2(v7);

  if (v6 && self->_image)
  {
    v8 = [v6 URLByDeletingLastPathComponent];
    v9 = 0x277CCA000uLL;
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a4];

    if (!v11)
    {
      LOBYTE(v24) = 0;
LABEL_40:

      goto LABEL_41;
    }

    values[0] = [(UIImage *)self->_image CGImage];
    Default = CFAllocatorGetDefault();
    v13 = CFArrayCreate(Default, values, 1, MEMORY[0x277CBF128]);
    v57 = 0;
    v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v15 = NSTemporaryDirectory();
    v16 = [v14 UUIDString];
    v17 = [v15 stringByAppendingPathComponent:v16];
    v18 = [v17 stringByAppendingPathExtension:@"tmp"];

    cf = v13;
    if (CPBitmapWriteImagesToPath())
    {
      v56 = 65541;
      v19 = open([v18 UTF8String], 0);
      if ((v19 & 0x80000000) == 0)
      {
        v20 = v19;
        v21 = v14;
        v22 = v8;
        v23 = ffsctl(v19, 0xC0084A44uLL, &v56, 0);
        v24 = v23 == 0;
        v25 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v47 = __error();
            v48 = strerror(*v47);
            *buf = 138413058;
            v59 = v18;
            v60 = 1024;
            *v61 = v23;
            *&v61[4] = 2080;
            *&v61[6] = v48;
            v62 = 2048;
            v63 = v56;
            _os_log_error_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_ERROR, "Failed to mark %@ as purgeable %d (%s) (flags 0x%llx)", buf, 0x26u);
          }

          v14 = v21;
          if (a4)
          {
            *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKEncodedSnapshotErrorDomain" code:501 userInfo:MEMORY[0x277CBEC10]];
          }
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v18;
            v60 = 2048;
            *v61 = v56;
            _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "Marked %@ purgeable with flags 0x%llx", buf, 0x16u);
          }

          v14 = v21;
        }

        close(v20);
        v8 = v22;
        v9 = 0x277CCA000;
        if (!a4)
        {
          goto LABEL_30;
        }

LABEL_26:
        if (!v24 && v57)
        {
          *a4 = v57;
LABEL_39:
          v45 = [*(v9 + 2560) defaultManager];
          [v45 removeItemAtPath:v18 error:0];

          CFRelease(cf);
          goto LABEL_40;
        }

LABEL_30:
        v50 = v14;
        v51 = v8;
        v31 = [v6 absoluteURL];
        v32 = [v31 path];

        v33 = [*(v9 + 2560) defaultManager];
        v55 = 0;
        v34 = [v33 copyItemAtPath:v18 toPath:v32 error:&v55];
        v35 = v55;

        v49 = v32;
        v36 = [MEMORY[0x277CBEBC0] fileURLWithPath:v32];
        if ((v34 & 1) == 0)
        {
          v37 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
          v38 = [*(v9 + 2560) defaultManager];
          v54 = v35;
          v39 = [v38 replaceItemAtURL:v36 withItemAtURL:v37 backupItemName:0 options:0 resultingItemURL:0 error:&v54];
          v40 = v54;

          if ((v39 & 1) == 0)
          {
            v41 = v40;
            LOBYTE(v24) = 0;
            *a4 = v40;
          }

          v35 = v40;
        }

        v53 = 0;
        v42 = NTKMarkFileAtURLAsPurgeable(v36, &v53);
        v43 = v53;
        if ((v42 & 1) == 0)
        {
          v44 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [(NTKEncodedSnapshot *)v36 queue_writeToURL:v43 error:v44];
          }
        }

        v14 = v50;
        v8 = v51;
        v9 = 0x277CCA000uLL;
        goto LABEL_39;
      }

      v30 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [NTKEncodedSnapshot queue_writeToURL:v18 error:v30];
      }

      if (!a4)
      {
        LOBYTE(v24) = 0;
        goto LABEL_30;
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = MEMORY[0x277CBEC10];
      v29 = 500;
    }

    else
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = MEMORY[0x277CBEC10];
      v29 = 600;
    }

    [v27 errorWithDomain:@"NTKEncodedSnapshotErrorDomain" code:v29 userInfo:v28];
    *a4 = v24 = 0;
    if (!a4)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKEncodedSnapshotErrorDomain" code:400 userInfo:MEMORY[0x277CBEC10]];
    *a4 = LOBYTE(v24) = 0;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

LABEL_41:

  return v24;
}

- (void)queue_writeToURL:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 138412546;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "can't open %@ : %s\n", &v6, 0x16u);
}

- (void)queue_writeToURL:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Marking %@ as purgeable failed: %@", &v3, 0x16u);
}

@end