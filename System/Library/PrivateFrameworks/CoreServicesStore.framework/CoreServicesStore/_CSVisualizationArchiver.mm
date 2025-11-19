@interface _CSVisualizationArchiver
+ (void)beginProvidingVisualizationArchivesWithMachServiceName:(id)a3 queue:(id)a4 creatingVisualizersWithBlock:(id)a5;
+ (void)processCommandFromConnection:(void *)a3 fileHandle:(__sFILE *)a4 providerBlock:(id)a5;
+ (void)provideVisualizerToConnection:(void *)a3 fileHandle:(__sFILE *)a4 providerBlock:(id)a5;
- (BOOL)fwrite:(const void *)a3 size:(unint64_t)a4 numberOfItems:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeDictionary:(id)a3 error:(id *)a4;
- (BOOL)writeMetadata:(id)a3 forStore:(__CSStore *)a4 error:(id *)a5;
- (_CSVisualizationArchiver)initWithVisualizer:(id)a3 fileHandle:(__sFILE *)a4 closeWhenDone:(BOOL)a5 allowCompression:(BOOL)a6 error:(id *)a7;
- (void)dealloc;
- (void)finishWriting;
- (void)setUnitDescriptionPredicate:(id)a3;
- (void)writeAllUnitsWithBlock:(id)a3;
@end

@implementation _CSVisualizationArchiver

- (void)setUnitDescriptionPredicate:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_unitDescriptionPredicate, a3);
  if (v5)
  {
    v10 = @"predicate";
    v6 = [v5 predicateFormat];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(_CSVisualizationArchiver *)self visualizer];
    -[_CSVisualizationArchiver writeMetadata:forStore:error:](self, "writeMetadata:forStore:error:", v7, [v8 store], 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishWriting
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    fflush(fileHandle);
    if (self->_closeWhenDone)
    {
      fclose(self->_fileHandle);
    }

    self->_fileHandle = 0;
  }
}

- (void)writeAllUnitsWithBlock:(id)a3
{
  v5 = a3;
  v6 = [(_CSVisualizationArchiver *)self visualizer];
  v7 = [v6 store];

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CSVisualizationArchiver.mm" lineNumber:490 description:@"Missing CSStore"];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___CSVisualizationArchiver_writeAllUnitsWithBlock___block_invoke;
  v10[3] = &unk_1E7ED32E8;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  _CSStoreEnumerateTables(v7, v10);
}

- (BOOL)fwrite:(const void *)a3 size:(unint64_t)a4 numberOfItems:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v9 = fwrite(a3, a4, a5, self->_fileHandle);
  fileHandle = self->_fileHandle;
  if (v9 == v7 && !ferror(self->_fileHandle))
  {
    result = 1;
    goto LABEL_22;
  }

  v11 = MEMORY[0x1E696A798];
  if (fileHandle->_close == CSStore2::closeGzipFile)
  {
    errnum = 0;
    v16 = gzerror(fileHandle->_cookie, &errnum);
    v17 = errnum;
    if (errnum == -1)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *__error();
      v29 = *MEMORY[0x1E696A278];
      v30 = @"Line";
      v31 = @"errno";
      v32 = &unk_1F37D78F8;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v29 count:2];
      v15 = [v22 errorWithDomain:*v11 code:v23 userInfo:v7];
    }

    else
    {
      if (errnum < 2)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v18 = v16;
      v19 = MEMORY[0x1E696ABC0];
      if (v16)
      {
        v29 = *MEMORY[0x1E696A578];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v31 = v7;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v29 count:1];
      }

      else
      {
        v20 = 0;
      }

      v15 = [v19 errorWithDomain:@"Z" code:v17 userInfo:v20];
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *__error();
  v29 = *MEMORY[0x1E696A278];
  v30 = @"Line";
  v31 = @"errno";
  v32 = &unk_1F37D7910;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v29 count:2];
  v15 = [v12 errorWithDomain:*v11 code:v13 userInfo:v14];

LABEL_16:
  if (a6)
  {
    v24 = v15;
    *a6 = v15;
  }

  if ([v15 code] == 32)
  {
    v25 = [v15 domain];
    v26 = [v25 isEqual:*v11];

    if (v26)
    {
      atomic_store(1u, &self->_hadEPIPE);
    }
  }

  result = 0;
LABEL_22:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)writeDictionary:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 copy];

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v10 = v9;
  if (self->_outputAsXML)
  {
    [v9 setOutputFormat:100];
  }

  [v10 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];
  [v10 finishEncoding];
  v11 = [v10 encodedData];

  objc_autoreleasePoolPop(v8);
  if (!v11)
  {
    v15 = 0;
    LOBYTE(v14) = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12 = [v11 length];
  v23 = v12;
  v13 = CSStore2::GetLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v25 = 8;
    v26 = 2048;
    v27 = v12;
    _os_log_debug_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_DEBUG, "Writing %llu+%llu bytes to gzip stream", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictWriteLock);
  v22 = 0;
  v14 = [(_CSVisualizationArchiver *)self fwrite:&v23 size:8 numberOfItems:1 error:&v22];
  v15 = v22;
  if (v14)
  {
    v16 = v11;
    v21 = v15;
    v14 = -[_CSVisualizationArchiver fwrite:size:numberOfItems:error:](self, "fwrite:size:numberOfItems:error:", [v11 bytes], objc_msgSend(v11, "length"), 1, &v21);
    v17 = v21;

    if (v14)
    {
      fflush(self->_fileHandle);
      LOBYTE(v14) = 1;
    }

    v15 = v17;
  }

  os_unfair_lock_unlock(&self->_dictWriteLock);
  if (a4)
  {
LABEL_13:
    if (!v14)
    {
      v18 = v15;
      *a4 = v15;
    }
  }

LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)writeMetadata:(id)a3 forStore:(__CSStore *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"metadata"];
  if (v8)
  {
    [v10 addEntriesFromDictionary:v8];
  }

  else
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CSStore");
    if (BundleWithIdentifier)
    {
      [v10 setObject:CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier forKeyedSubscript:{*MEMORY[0x1E695E500]), @"framework-version"}];
    }

    v12 = _CFCopySystemVersionDictionary();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
      [v10 setObject:v14 forKeyedSubscript:@"os"];

      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695E208]];
      [v10 setObject:v15 forKeyedSubscript:@"os-version"];

      v16 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
      [v10 setObject:v16 forKeyedSubscript:@"os-build"];
    }

    if (a4)
    {
      v17 = -37516;
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{CSStoreGetUnitCount(a4, v17)}];
    [v10 setObject:v18 forKeyedSubscript:@"tableCount"];

    v19 = [(_CSVisualizationArchiver *)self visualizer];
    v20 = [v19 breakDownUsage];

    if (v20)
    {
      [v10 setObject:v20 forKeyedSubscript:@"breakdown"];
    }
  }

  v26 = 0;
  v21 = [(_CSVisualizationArchiver *)self writeDictionary:v10 error:&v26];
  v22 = v26;

  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    v23 = v21;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v22;
    *a5 = v22;
  }

  return v21;
}

- (void)dealloc
{
  fileHandle = self->_fileHandle;
  if (fileHandle && self->_closeWhenDone)
  {
    fclose(fileHandle);
  }

  v4.receiver = self;
  v4.super_class = _CSVisualizationArchiver;
  [(_CSVisualizationArchiver *)&v4 dealloc];
}

- (_CSVisualizationArchiver)initWithVisualizer:(id)a3 fileHandle:(__sFILE *)a4 closeWhenDone:(BOOL)a5 allowCompression:(BOOL)a6 error:(id *)a7
{
  v9 = a5;
  v88 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v77.receiver = self;
  v77.super_class = _CSVisualizationArchiver;
  v15 = [(_CSVisualizationArchiver *)&v77 init];
  if (!v14)
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:v15 file:@"CSVisualizationArchiver.mm" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"visualizer != nil"}];
  }

  if (!a4)
  {
    v72 = [MEMORY[0x1E696AAA8] currentHandler];
    [v72 handleFailureInMethod:a2 object:v15 file:@"CSVisualizationArchiver.mm" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"fileHandle != NULL"}];
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E696ABC0];
    v78[0] = *MEMORY[0x1E696A278];
    v78[1] = @"Line";
    v79[0] = @"ENOMEM";
    v79[1] = &unk_1F37D78E0;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
    v21 = [v19 errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v20];

    goto LABEL_11;
  }

  objc_storeStrong(&v15->_visualizer, a3);
  *__str = 0;
  v87 = 0;
  v16 = getenv("CS_VISUALIZATION_COMPRESSION_LEVEL");
  if (v16)
  {
    v17 = strtoul(v16, 0, 0);
    v18 = 9;
    if (v17 < 9)
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 6;
  }

  snprintf(__str, 0x10uLL, "%cb%lu", 119, v18);
  v23 = fileno(a4);
  if ((v23 & 0x80000000) != 0)
  {
    v31 = CSStore2::GetLog(v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_impl(&dword_1B9D5B000, v31, OS_LOG_TYPE_INFO, "File handle %p passed to _CSVisualization[Un]Archiver is not backed by a file descriptor. Will not compress/decompress.", buf, 0xCu);
    }

    v28 = 0;
    if (a4)
    {
      goto LABEL_48;
    }

LABEL_23:
    v32 = v28;
    a4 = 0;
    v33 = v28;
    goto LABEL_49;
  }

  v24 = v23;
  if (a6)
  {
    v24 = dup(v23);
    if (v24 < 0)
    {
      v25 = MEMORY[0x1E696ABC0];
      v26 = *__error();
      *&v83 = *MEMORY[0x1E696A278];
      *(&v83 + 1) = @"Line";
      v84 = @"errno";
      v85 = &unk_1F37D7928;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:2];
      v28 = [v25 errorWithDomain:*MEMORY[0x1E696A798] code:v26 userInfo:v27];

      v30 = CSStore2::GetLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v65 = *__error();
        v66 = __error();
        v67 = strerror(*v66);
        *buf = 136446722;
        *&buf[4] = "writing";
        *&buf[12] = 1024;
        *&buf[14] = v65;
        v81 = 2080;
        v82 = v67;
        _os_log_error_impl(&dword_1B9D5B000, v30, OS_LOG_TYPE_ERROR, "Error duplicating file descriptor for %{public}s: %i (%s)", buf, 0x1Cu);
      }

      goto LABEL_39;
    }
  }

  else
  {
    v34 = CSStore2::GetLog(v23);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_impl(&dword_1B9D5B000, v34, OS_LOG_TYPE_INFO, "Disabling compression for file handle %p passed to _CSVisualization[Un]Archiver. Will not compress/decompress.", buf, 0xCu);
    }

    if (a4)
    {
      v33 = 0;
      v28 = 0;
      goto LABEL_49;
    }
  }

  *__error() = 0;
  v35 = gzdopen(v24, __str);
  v36 = v35;
  if (!v35)
  {
    v38 = *__error();
    v73 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A798];
    if (v38)
    {
      *&v83 = *MEMORY[0x1E696A278];
      *(&v83 + 1) = @"Line";
      v84 = @"errnum";
      v85 = &unk_1F37D7958;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:2];
      v28 = [v73 errorWithDomain:v39 code:v38 userInfo:v40];

      v42 = CSStore2::GetLog(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = strerror(v38);
        *buf = 136446722;
        *&buf[4] = "writing";
        *&buf[12] = 1024;
        *&buf[14] = v38;
        v81 = 2080;
        v82 = v43;
        v44 = "Error opening file handle for %{public}s with gzdopen(): %i (%s)";
        v45 = buf;
        v46 = v42;
        v47 = 28;
LABEL_67:
        _os_log_error_impl(&dword_1B9D5B000, v46, OS_LOG_TYPE_ERROR, v44, v45, v47);
      }
    }

    else
    {
      v84 = *MEMORY[0x1E696A278];
      v85 = @"Line";
      *buf = @"ENOMEM";
      *&buf[8] = &unk_1F37D7970;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v84 count:2];
      v28 = [v73 errorWithDomain:v39 code:12 userInfo:v52];

      v42 = CSStore2::GetLog(v53);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v83) = 136446210;
        *(&v83 + 4) = "writing";
        v44 = "Unknown error opening file handle for %{public}s with gzdopen()";
        v45 = &v83;
        v46 = v42;
        v47 = 12;
        goto LABEL_67;
      }
    }

    close(v24);
    goto LABEL_39;
  }

  v37 = funopen(v35, CSStore2::readFromGzipFile, CSStore2::writeToGzipFile, 0, CSStore2::closeGzipFile);
  if (v37)
  {
    v28 = 0;
    goto LABEL_40;
  }

  v48 = MEMORY[0x1E696ABC0];
  *&v83 = *MEMORY[0x1E696A278];
  *(&v83 + 1) = @"Line";
  v84 = @"ENOMEM";
  v85 = &unk_1F37D7940;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:2];
  v28 = [v48 errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v49];

  v51 = CSStore2::GetLog(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v68 = *__error();
    v69 = __error();
    v70 = strerror(*v69);
    *buf = 136446722;
    *&buf[4] = "writing";
    *&buf[12] = 1024;
    *&buf[14] = v68;
    v81 = 2080;
    v82 = v70;
    _os_log_error_impl(&dword_1B9D5B000, v51, OS_LOG_TYPE_ERROR, "Error funopening file handle for %{public}s: %i (%s)", buf, 0x1Cu);
  }

  gzclose(v36);
LABEL_39:
  v37 = 0;
LABEL_40:
  v54 = v37 != a4 || v9;
  if (v37 == a4 || !v9)
  {
    LOBYTE(v9) = v54;
  }

  else
  {
    fclose(a4);
    LOBYTE(v9) = 1;
  }

  a4 = v37;
  if (!v37)
  {
    goto LABEL_23;
  }

LABEL_48:
  v33 = 0;
LABEL_49:

  v21 = v33;
  v15->_fileHandle = a4;
  v15->_closeWhenDone = v9;
  if (a4)
  {
    v55 = getenv("CS_VISUALIZATION_OUTPUT_XML");
    if (v55)
    {
      v56 = strtol(v55, 0, 0) != 0;
    }

    else
    {
      v56 = 0;
    }

    v15->_outputAsXML = v56;
    v15->_dictWriteLock._os_unfair_lock_opaque = 0;
    v76 = v21;
    v57 = [(_CSVisualizationArchiver *)v15 fwrite:"csviz0jg" size:8 numberOfItems:1 error:&v76];
    v58 = v76;

    if (!v57)
    {

      goto LABEL_61;
    }

    v59 = [(_CSVisualizer *)v15->_visualizer store];
    v60 = 4294929780;
    if (!v59)
    {
      v60 = 0;
    }

    *buf = v60;
    v75 = v58;
    v61 = [(_CSVisualizationArchiver *)v15 fwrite:buf size:8 numberOfItems:1 error:&v75];
    v21 = v75;

    if (v61)
    {
      fflush(v15->_fileHandle);
      v74 = v21;
      v62 = -[_CSVisualizationArchiver writeMetadata:forStore:error:](v15, "writeMetadata:forStore:error:", 0, [v14 store], &v74);
      v58 = v74;

      if (v62)
      {
        v21 = v58;
        goto LABEL_63;
      }

LABEL_61:
      v21 = v58;
      if (!a7)
      {
        goto LABEL_62;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_11:
  if (!a7)
  {
LABEL_62:
    v15 = 0;
    goto LABEL_63;
  }

LABEL_12:
  v22 = v21;
  v15 = 0;
  *a7 = v21;
LABEL_63:

  v63 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (void)beginProvidingVisualizationArchivesWithMachServiceName:(id)a3 queue:(id)a4 creatingVisualizersWithBlock:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"CSVisualizationArchiver.mm" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"serviceName != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"CSVisualizationArchiver.mm" lineNumber:1093 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  if (lockdownLibrary(void)::sLib)
  {
    v13 = dlsym(lockdownLibrary(void)::sLib, "soft_lockdown_checkin_xpc");
    if (v13)
    {
      v14 = CSStore2::GetLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_debug_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_DEBUG, "Beginning remote visualization service '%{public}@'", buf, 0xCu);
      }

      v15 = v9;
      v16 = [v9 UTF8String];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __141___CSVisualizationArchiver_CSRemoteVisualization__beginProvidingVisualizationArchivesWithMachServiceName_queue_creatingVisualizersWithBlock___block_invoke;
      v20[3] = &unk_1E7ED3338;
      v21 = v9;
      v23 = a1;
      v22 = v12;
      softLinklockdown_checkin_xpc(v16, 0, v10, v20);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)provideVisualizerToConnection:(void *)a3 fileHandle:(__sFILE *)a4 providerBlock:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106___CSVisualizationArchiver_CSRemoteVisualization__provideVisualizerToConnection_fileHandle_providerBlock___block_invoke;
  block[3] = &unk_1E7ED3310;
  v11 = v7;
  v12 = a3;
  v13 = a4;
  v8 = v7;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  v9[2]();
}

+ (void)processCommandFromConnection:(void *)a3 fileHandle:(__sFILE *)a4 providerBlock:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a5;
  __ptr = -1;
  if (fread(&__ptr, 8uLL, 1uLL, a4) == 1)
  {
    v9 = __ptr;
    v10 = objc_autoreleasePoolPush();
    v11 = CSStore2::GetLog(v10);
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v16 = v9;
        _os_log_error_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_ERROR, "Unrecognized reserved value %llu received from the Mac, ignoring and closing.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_DEFAULT, "Mac commanded we send a store archive", buf, 2u);
      }

      [a1 provideVisualizerToConnection:a3 fileHandle:a4 providerBlock:v8];
    }

    objc_autoreleasePoolPop(v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end