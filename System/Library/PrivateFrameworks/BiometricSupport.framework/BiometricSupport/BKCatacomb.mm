@interface BKCatacomb
+ (id)catacombWithDir:(id)a3;
- (BKCatacomb)init;
- (id)content;
- (int)commitWrite;
- (int)deleteAll;
- (int)deleteFile:(id)a3;
- (int)readData:(id *)a3 fromFile:(id)a4 logString:(id *)a5;
- (int)recover;
- (int)syncDir:(id)a3;
- (int)writeData:(id)a3 toFile:(id)a4;
- (void)commitWrite;
- (void)deleteAll;
- (void)recover;
@end

@implementation BKCatacomb

- (BKCatacomb)init
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = BKCatacomb;
  v2 = [(BKCatacomb *)&v9 init];
  v3 = v2;
  if (v2)
  {
    catacombDir = v2->_catacombDir;
    v2->_catacombDir = @"/Library/Catacomb/";

    v10 = *MEMORY[0x277CCA1B0];
    v11[0] = *MEMORY[0x277CCA1A0];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    writeAttributes = v3->_writeAttributes;
    v3->_writeAttributes = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)catacombWithDir:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BKCatacomb);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v3];
    catacombDir = v4->_catacombDir;
    v4->_catacombDir = v5;
  }

  return v4;
}

- (int)syncDir:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = open([v3 UTF8String], 0x100000);
    if (v5 == -1)
    {
      [BKCatacomb syncDir:];
      v8 = v10;
    }

    else
    {
      v6 = v5;
      v7 = fcntl(v5, 51);
      v8 = v7;
      if (v7)
      {
        [BKCatacomb syncDir:v7];
      }

      close(v6);
    }
  }

  else
  {
    [BKCatacomb syncDir:];
    v8 = v11;
  }

  return v8;
}

- (int)writeData:(id)a3 toFile:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136316162;
    v39 = "data";
    v40 = 2048;
    v41 = 0;
    v42 = 2080;
    v43 = &unk_223E5FC53;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v46 = 1024;
    v47 = 97;
    goto LABEL_24;
  }

  if (!v7)
  {
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136316162;
    v39 = "fileName";
    v40 = 2048;
    v41 = 0;
    v42 = 2080;
    v43 = &unk_223E5FC53;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v46 = 1024;
    v47 = 98;
LABEL_24:
    _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_25:
    v22 = 0;
    v18 = 0;
    v12 = 0;
    v17 = 0;
    v24 = 22;
    goto LABEL_72;
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [(BKCatacomb *)self catacombCommitDir];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v39 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombCommitDir]]";
      v40 = 2048;
      v41 = 0;
      v42 = 2080;
      v43 = &unk_223E5FC53;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v46 = 1024;
      v47 = 100;
      _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
    v12 = 0;
    v17 = 0;
    v24 = 1;
    goto LABEL_72;
  }

  v12 = [(BKCatacomb *)self catacombPrepareDir];
  if (!v12)
  {
    if (__osLog)
    {
      v29 = __osLog;
    }

    else
    {
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v39 = "prepareDir";
      v40 = 2048;
      v41 = 0;
      v42 = 2080;
      v43 = &unk_223E5FC53;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v46 = 1024;
      v47 = 103;
      _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
    v12 = 0;
    goto LABEL_44;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v12];

  if ((v14 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    writeAttributes = self->_writeAttributes;
    v37 = 0;
    [v15 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:writeAttributes error:&v37];
    v17 = v37;

    if (v17)
    {
      if (__osLog)
      {
        v33 = __osLog;
      }

      else
      {
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v39 = "!nserr";
        v40 = 2048;
        v41 = 0;
        v42 = 2080;
        v43 = &unk_223E5FC53;
        v44 = 2080;
        v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v46 = 1024;
        v47 = 109;
        _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v22 = 0;
      v18 = 0;
      goto LABEL_71;
    }
  }

  v18 = [v12 stringByAppendingPathComponent:v8];
  if (!v18)
  {
    if (__osLog)
    {
      v30 = __osLog;
    }

    else
    {
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v39 = "fullPath";
      v40 = 2048;
      v41 = 0;
      v42 = 2080;
      v43 = &unk_223E5FC53;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v46 = 1024;
      v47 = 113;
      _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
LABEL_44:
    v17 = 0;
    v24 = 12;
    goto LABEL_72;
  }

  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [v19 createFileAtPath:v18 contents:0 attributes:self->_writeAttributes];

  if ((v20 & 1) == 0)
  {
    if (__osLog)
    {
      v31 = __osLog;
    }

    else
    {
      v31 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v39 = "[[NSFileManager defaultManager] createFileAtPath:fullPath contents:((void*)0) attributes:_writeAttributes]";
    v40 = 2048;
    v41 = 0;
    v42 = 2080;
    v43 = &unk_223E5FC53;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v46 = 1024;
    v47 = 116;
    goto LABEL_55;
  }

  v21 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v18];
  v22 = v21;
  if (!v21)
  {
    if (__osLog)
    {
      v31 = __osLog;
    }

    else
    {
      v31 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v39 = "file";
    v40 = 2048;
    v41 = 0;
    v42 = 2080;
    v43 = &unk_223E5FC53;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v46 = 1024;
    v47 = 119;
LABEL_55:
    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_56:
    v22 = 0;
    v17 = 0;
LABEL_71:
    v24 = 5;
    goto LABEL_72;
  }

  [v21 writeData:v6];
  v23 = fcntl([v22 fileDescriptor], 51);
  if (v23)
  {
    [(BKCatacomb *)v23 writeData:v23 toFile:buf];
    v24 = *buf;
    [v22 closeFile];
  }

  else
  {
    [v22 closeFile];

    v24 = [(BKCatacomb *)self syncDir:v12];
    if (!v24)
    {
      v22 = 0;
      v17 = 0;
      goto LABEL_13;
    }

    if (__osLog)
    {
      v32 = __osLog;
    }

    else
    {
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v39 = "err == 0 ";
      v40 = 2048;
      v41 = v24;
      v42 = 2080;
      v43 = &unk_223E5FC53;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v46 = 1024;
      v47 = 143;
      _os_log_impl(&dword_223E00000, v32, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
  }

  v17 = 0;
LABEL_72:
  v34 = [(BKCatacomb *)self recover];
  if (v34)
  {
    v35 = v34;
    if (__osLog)
    {
      v36 = __osLog;
    }

    else
    {
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v39 = "[self recover] == 0 ";
      v40 = 2048;
      v41 = v35;
      v42 = 2080;
      v43 = &unk_223E5FC53;
      v44 = 2080;
      v45 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v46 = 1024;
      v47 = 152;
      _os_log_impl(&dword_223E00000, v36, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int)commitWrite
{
  v2 = self;
  v50 = *MEMORY[0x277D85DE8];
  v3 = [(BKCatacomb *)self catacombPrepareDir];
  if (!v3)
  {
    [BKCatacomb commitWrite];
LABEL_27:
    v33 = v48;
    goto LABEL_24;
  }

  v4 = [(BKCatacomb *)v2 catacombCommitDir];
  if (!v4)
  {
    [BKCatacomb commitWrite];
    goto LABEL_27;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    [(BKCatacomb *)v5 commitWrite];
LABEL_30:
    v33 = 1;
    goto LABEL_24;
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v3];

  if ((v9 & 1) == 0)
  {
    [(BKCatacomb *)v5 commitWrite];
    goto LABEL_30;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v47 = 0;
  [v10 moveItemAtPath:v3 toPath:v5 error:&v47];
  v11 = v47;

  if (v11)
  {
    [BKCatacomb commitWrite];
LABEL_33:
    v33 = 5;
    goto LABEL_24;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v46 = 0;
  v13 = [v12 contentsOfDirectoryAtPath:v5 error:&v46];
  v14 = v46;

  if (v14)
  {
    [(BKCatacomb *)v13 commitWrite];
    goto LABEL_33;
  }

  v37 = v3;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = *v43;
  obj = v15;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v43 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v42 + 1) + 8 * i);
      v21 = v5;
      v22 = [v5 stringByAppendingPathComponent:v20];
      v23 = v2;
      v24 = [(NSString *)v2->_catacombDir stringByAppendingPathComponent:v20];
      v25 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = [v25 fileExistsAtPath:v24];

      if (v26)
      {
        v27 = [MEMORY[0x277CCAA00] defaultManager];
        v41 = 0;
        [v27 removeItemAtPath:v24 error:&v41];
        v28 = v41;

        if (v28)
        {
          [BKCatacomb commitWrite];
          goto LABEL_21;
        }
      }

      v29 = [MEMORY[0x277CCAA00] defaultManager];
      v40 = 0;
      [v29 moveItemAtPath:v22 toPath:v24 error:&v40];
      v30 = v40;

      if (v30)
      {
        [BKCatacomb commitWrite];
LABEL_21:
        v34 = v48;

        goto LABEL_22;
      }

      v5 = v21;
      v2 = v23;
    }

    v15 = obj;
    v17 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v31 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  [v31 removeItemAtPath:v5 error:&v39];
  v32 = v39;

  if (v32)
  {
    [(BKCatacomb *)v15 commitWrite];
LABEL_22:
    v33 = 5;
  }

  else
  {
    [(BKCatacomb *)v2 syncDir:v2->_catacombDir];

    v33 = 0;
  }

  v3 = v37;
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

- (int)readData:(id *)a3 fromFile:(id)a4 logString:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  if (!a3)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136316162;
    v44 = "data";
    v45 = 2048;
    v46 = 0;
    v47 = 2080;
    v48 = &unk_223E5FC53;
    v49 = 2080;
    v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v51 = 1024;
    v52 = 218;
    goto LABEL_47;
  }

  if (!v8)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136316162;
    v44 = "fileName";
    v45 = 2048;
    v46 = 0;
    v47 = 2080;
    v48 = &unk_223E5FC53;
    v49 = 2080;
    v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v51 = 1024;
    v52 = 219;
LABEL_47:
    _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_48:
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v17 = 0;
    v28 = 22;
    goto LABEL_34;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [(BKCatacomb *)self catacombCommitDir];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 136316162;
    v44 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombCommitDir]]";
    v45 = 2048;
    v46 = 0;
    v47 = 2080;
    v48 = &unk_223E5FC53;
    v49 = 2080;
    v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v51 = 1024;
    v52 = 221;
    goto LABEL_59;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [(BKCatacomb *)self catacombPrepareDir];
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 136316162;
    v44 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombPrepareDir]]";
    v45 = 2048;
    v46 = 0;
    v47 = 2080;
    v48 = &unk_223E5FC53;
    v49 = 2080;
    v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v51 = 1024;
    v52 = 222;
LABEL_59:
    _os_log_impl(&dword_223E00000, v39, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_60:
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v17 = 0;
    v28 = 1;
    goto LABEL_34;
  }

  v16 = [(NSString *)self->_catacombDir stringByAppendingPathComponent:v9];
  if (v16)
  {
    v17 = v16;
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    if (!v19)
    {
      v24 = [MEMORY[0x277CBEA90] data];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"File '%@' doesn't exist", v17];
      v22 = 0;
      goto LABEL_11;
    }

    v20 = MEMORY[0x277CCA9F8];
    v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
    v42 = 0;
    v22 = [v20 fileHandleForReadingFromURL:v21 error:&v42];
    v23 = v42;

    if (v22)
    {
      v41 = 0;
      v24 = [v22 readDataToEndOfFileAndReturnError:&v41];
      v25 = v41;

      if (v24)
      {

        v26 = @"Succeeded";
LABEL_11:
        v27 = v24;
        v28 = 0;
        *a3 = v24;
        goto LABEL_34;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"readDataToEndOfFileAndReturnError(file:'%@'): -> %@", v17, v25];
      v32 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v33 = __osLog;
      }

      else
      {
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v26;
        _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_ERROR, "%{public}@\n", buf, 0xCu);
      }

      if (__osLog)
      {
        v34 = __osLog;
      }

      else
      {
        v34 = v32;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v44 = "0";
        v45 = 2048;
        v46 = 0;
        v47 = 2080;
        v48 = &unk_223E5FC53;
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v51 = 1024;
        v52 = 243;
        _os_log_impl(&dword_223E00000, v34, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v23 = v25;
    }

    else
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"fileHandleForReadingFromURL(file:'%@'): -> %@", v17, v23];
      v29 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v30 = __osLog;
      }

      else
      {
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v26;
        _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "%{public}@\n", buf, 0xCu);
      }

      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = v29;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v44 = "0";
        v45 = 2048;
        v46 = 0;
        v47 = 2080;
        v48 = &unk_223E5FC53;
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v51 = 1024;
        v52 = 235;
        _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }
    }

    v24 = 0;
    v28 = 5;
  }

  else
  {
    if (__osLog)
    {
      v40 = __osLog;
    }

    else
    {
      v40 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v44 = "fullPath";
      v45 = 2048;
      v46 = 0;
      v47 = 2080;
      v48 = &unk_223E5FC53;
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v51 = 1024;
      v52 = 225;
      _os_log_impl(&dword_223E00000, v40, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v26 = 0;
    v24 = 0;
    v22 = 0;
    v17 = 0;
    v28 = 12;
  }

LABEL_34:
  if (a5)
  {
    v35 = v26;
    *a5 = v26;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v28;
}

- (int)deleteFile:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BKCatacomb deleteFile:];
LABEL_12:
    v15 = v18;
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(BKCatacomb *)self catacombCommitDir];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [(BKCatacomb *)self catacombPrepareDir];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  v11 = [(NSString *)self->_catacombDir stringByAppendingPathComponent:v4];
  if (!v11)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  [v13 removeItemAtPath:v12 error:&v17];
  v14 = v17;

  if (v14)
  {
    [BKCatacomb deleteFile:];
    v15 = 5;
  }

  else
  {
    [(BKCatacomb *)self syncDir:self->_catacombDir];

    v15 = 0;
  }

LABEL_7:

  return v15;
}

- (int)recover
{
  v2 = self;
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(BKCatacomb *)self catacombPrepareDir];
  if (!v3)
  {
    [BKCatacomb recover];
LABEL_30:
    v5 = v47;
    v14 = v48;
    v32 = v49;
    goto LABEL_22;
  }

  v4 = [(BKCatacomb *)v2 catacombCommitDir];
  if (!v4)
  {
    [BKCatacomb recover];
    goto LABEL_30;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v3];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    [v8 removeItemAtPath:v3 error:&v46];
    v9 = v46;

    if (v9)
    {
      [(BKCatacomb *)v5 recover:v9];
      goto LABEL_30;
    }
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v5];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = 0;
    v13 = [v12 contentsOfDirectoryAtPath:v5 error:&v45];
    v14 = v45;

    if (v14)
    {
      [(BKCatacomb *)v13 recover];
      v32 = 5;
      goto LABEL_22;
    }

    v36 = v3;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = v15;
    v17 = *v42;
    obj = v14;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v41 + 1) + 8 * v18);
      v20 = v5;
      v21 = [v5 stringByAppendingPathComponent:v19];
      v22 = v2;
      v23 = [(NSString *)v2->_catacombDir stringByAppendingPathComponent:v19];
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = [v24 fileExistsAtPath:v23];

      if (v25)
      {
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v40 = 0;
        [v26 removeItemAtPath:v23 error:&v40];
        v27 = v40;

        if (v27)
        {
          break;
        }
      }

      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      [v28 moveItemAtPath:v21 toPath:v23 error:&v39];
      v29 = v39;

      if (v29)
      {
        [BKCatacomb recover];
LABEL_25:
        v35 = v48;
        v5 = v20;

        v32 = 5;
        v14 = v35;
        goto LABEL_26;
      }

      ++v18;
      v5 = v20;
      v2 = v22;
      if (v16 == v18)
      {
        v14 = obj;
        v16 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v16)
        {
          goto LABEL_9;
        }

LABEL_17:

        v30 = [MEMORY[0x277CCAA00] defaultManager];
        v38 = 0;
        [v30 removeItemAtPath:v5 error:&v38];
        v31 = v38;

        if (!v31)
        {
          v3 = v36;
          goto LABEL_20;
        }

        [(BKCatacomb *)v14 recover];
        v32 = 5;
        v14 = v31;
LABEL_26:
        v3 = v36;
        goto LABEL_22;
      }
    }

    [BKCatacomb recover];
    goto LABEL_25;
  }

  v14 = 0;
  if (v7)
  {
LABEL_20:
    [(BKCatacomb *)v2 syncDir:v2->_catacombDir];

    v14 = 0;
  }

  v32 = 0;
LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (int)deleteAll
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:self->_catacombDir];

  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  catacombDir = self->_catacombDir;
  v9 = 0;
  [v5 removeItemAtPath:catacombDir error:&v9];
  v7 = v9;

  if (!v7)
  {
    return 0;
  }

  [(BKCatacomb *)v7 deleteAll];
  return 5;
}

- (id)content
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  catacombDir = self->_catacombDir;
  v7 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:catacombDir error:&v7];

  return v5;
}

- (void)syncDir:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_0();
    v5 = a1;
    v6 = 2080;
    v7 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v8 = 78;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, 0x30u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)syncDir:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncDir:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(22);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeData:(_DWORD *)a3 toFile:.cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v12);
  }

  *a3 = a2;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)commitWrite
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(12);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(12);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(1);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(1);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9(22);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recover
{
  v8 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteAll
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end