@interface NSData(MobileInstallationAdditions)
- (uint64_t)MI_writeAtomicallyToURL:()MobileInstallationAdditions withMode:owner:group:protectionClass:withBarrier:error:;
- (uint64_t)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:()MobileInstallationAdditions error:;
@end

@implementation NSData(MobileInstallationAdditions)

- (uint64_t)MI_writeAtomicallyToURL:()MobileInstallationAdditions withMode:owner:group:protectionClass:withBarrier:error:
{
  v14 = a9;
  v15 = a3;
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v59 = 0;
  v17 = [v16 URLForDirectory:99 inDomain:1 appropriateForURL:v15 create:1 error:&v59];
  v18 = v59;

  if (!v17)
  {
    v33 = 0;
    v21 = 0;
    if (!a9)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v58 = v15;
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  v21 = [v17 URLByAppendingPathComponent:v20 isDirectory:0];

  v22 = [v21 fileSystemRepresentation];
  v23 = v22;
  if (a7 == -1)
  {
    v24 = open(v22, 2818, a4);
    if (v24 < 0)
    {
      v38 = *__error();
      v35 = *MEMORY[0x1E696A798];
      v36 = v38;
      v56 = v23;
      strerror(v38);
      v29 = @"open failed for %s : %s";
      v30 = 67;
      goto LABEL_14;
    }
  }

  else
  {
    v24 = open_dprotected_np(v22, 2818, a7, 0, a4);
    if (v24 < 0)
    {
      v25 = *__error();
      v26 = *MEMORY[0x1E696A798];
      v27 = v25;
      strerror(v25);
      v56 = v23;
      v29 = @"open_dprotected_np failed for %s for class %d : %s";
      v30 = 56;
      v31 = v26;
LABEL_5:
      v32 = v27;
LABEL_15:
      _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", v30, v31, v32, 0, 0, v29, v28, v56);
      v39 = LABEL_16:;
      goto LABEL_17;
    }
  }

  if (fchmod(v24, a4))
  {
    v34 = *__error();
    v35 = *MEMORY[0x1E696A798];
    v36 = v34;
    strerror(v34);
    v56 = a4;
    v29 = @"Failed to set mode to 0%o for %s : %s";
    v30 = 75;
LABEL_14:
    v31 = v35;
    v32 = v36;
    goto LABEL_15;
  }

  if (fchown(v24, a5, a6))
  {
    v37 = *__error();
    v35 = *MEMORY[0x1E696A798];
    v36 = v37;
    v56 = v23;
    strerror(v37);
    v29 = @"Failed to set owner for %s : %s";
    v30 = 82;
    goto LABEL_14;
  }

  v42 = [a1 bytes];
  v43 = [a1 length];
  v44 = write(v24, v42, v43);
  if (v44 < 0)
  {
    v47 = *__error();
    v48 = *MEMORY[0x1E696A798];
    v27 = v47;
    strerror(v47);
    v56 = v43;
    v29 = @"Failed to write %lu bytes to %s : %s";
    v30 = 92;
    v31 = v48;
    goto LABEL_5;
  }

  if (v44 != v43)
  {
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", 96, *MEMORY[0x1E696A798], 5, 0, 0, @"write() returned %zd but we expected %lu when writing to %s", v45, v44);
    goto LABEL_16;
  }

  if (a8)
  {
    if (!fcntl(v24, 85))
    {
      goto LABEL_39;
    }

    v46 = __error();
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) < 3)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (!fsync(v24))
    {
      goto LABEL_39;
    }

    v46 = __error();
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) < 3)
      {
        goto LABEL_39;
      }
    }
  }

  strerror(*v46);
  MOLogWrite();
LABEL_39:
  close(v24);
  v49 = [v58 fileSystemRepresentation];
  rename(v23, v49, v50);
  if (!v51)
  {
    v33 = 1;
    v24 = -1;
    goto LABEL_20;
  }

  v52 = *__error();
  v53 = *MEMORY[0x1E696A798];
  v54 = v52;
  strerror(v52);
  v39 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", 126, v53, v54, 0, 0, @"Failed to rename %s to %s : %s", v55, v23);
  v24 = -1;
LABEL_17:

  if (v23)
  {
    unlink(v23);
  }

  v33 = 0;
  v18 = v39;
LABEL_20:
  v15 = v58;
  unlink([v17 fileSystemRepresentation]);
  if ((v24 & 0x80000000) == 0)
  {
    close(v24);
  }

  v14 = a9;
  if (a9)
  {
LABEL_23:
    if ((v33 & 1) == 0)
    {
      v40 = v18;
      *v14 = v18;
    }
  }

LABEL_25:

  return v33;
}

- (uint64_t)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:()MobileInstallationAdditions error:
{
  v6 = a3;
  v7 = [v6 fileSystemRepresentation];
  memset(&v29, 0, sizeof(v29));
  v8 = open(v7, 256);
  if (v8 < 0)
  {
    v15 = *__error();
    v16 = *MEMORY[0x1E696A798];
    v17 = v15;
    strerror(v15);
    v14 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 166, v16, v17, 0, 0, @"open failed for %s : %s", v18, v7);
LABEL_6:
    v19 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v8;
  if (fstat(v8, &v29))
  {
    v10 = *__error();
    v11 = *MEMORY[0x1E696A798];
    v12 = v10;
    strerror(v10);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 172, v11, v12, 0, 0, @"fstat failed for %s : %s", v13, v7);
    v14 = LABEL_4:;
    close(v9);
    goto LABEL_6;
  }

  v22 = fcntl(v9, 63);
  if ((v22 & 0x80000000) != 0)
  {
    v24 = *__error();
    v25 = *MEMORY[0x1E696A798];
    v26 = *__error();
    strerror(v24);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 180, v25, v26, 0, 0, @"Failed to getclass of file %s: %s", v27, v7);
    goto LABEL_4;
  }

  v23 = v22;
  close(v9);
  v28 = 0;
  v19 = [a1 MI_writeAtomicallyToURL:v6 withMode:v29.st_mode owner:v29.st_uid group:v29.st_gid protectionClass:v23 error:&v28];
  v14 = v28;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  if ((v19 & 1) == 0)
  {
    v20 = v14;
    *a4 = v14;
  }

LABEL_9:

  return v19;
}

@end