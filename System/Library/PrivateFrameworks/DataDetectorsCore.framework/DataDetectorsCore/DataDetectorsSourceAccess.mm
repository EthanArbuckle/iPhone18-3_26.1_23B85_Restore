@interface DataDetectorsSourceAccess
- (BOOL)clientCanWriteSource:(int)source;
- (BOOL)privacySystemWriteEntitled;
- (BOOL)privacyUserReadEntitled;
- (BOOL)privacyUserWriteEntitled;
- (BOOL)pushSourcesContent:(id)content forSource:(int)source signature:(id)signature;
- (id)fileHandleForSourceRead:(int)read resourceType:(unint64_t)type;
- (void)fileForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply;
- (void)filesForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply;
- (void)writeSourceFromJSONFile:(id)file source:(id)source withReply:(id)reply;
- (void)writeSourceFromRawData:(id)data source:(id)source signature:(id)signature withReply:(id)reply;
@end

@implementation DataDetectorsSourceAccess

- (BOOL)pushSourcesContent:(id)content forSource:(int)source signature:(id)signature
{
  keys[3] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  signatureCopy = signature;
  if ([contentCopy count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = signatureCopy;
      sourceCopy = source;
      v70[0] = self;
      if ((source - 1) > 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = qword_1BD018C28[source - 1];
      }

      StreamCompressor = DDLookupTableCreate();
      v70[1] = v70;
      MEMORY[0x1EEE9AC00](StreamCompressor);
      v76 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([contentCopy count])
      {
        v14 = 0;
        v15 = 0;
        v73 = *MEMORY[0x1E695E738];
        v16 = 0x1E695D000uLL;
        do
        {
          firstObject = [contentCopy firstObject];
          [contentCopy removeObjectAtIndex:0];
          if ([contentCopy count] < v10)
          {
            *&v76[4 * v14] = 0;
            v18 = *(v16 + 3872);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = firstObject;
              v20 = [v19 objectForKeyedSubscript:@"threshold"];
              v21 = [v19 objectForKeyedSubscript:@"domain"];
              v22 = [v19 objectForKeyedSubscript:@"entities"];
              v23 = [v19 objectForKeyedSubscript:@"keywords"];
              if (v21)
              {
                v24 = v21;
              }

              else
              {
                v24 = v73;
              }

              [v75 addObject:v24];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  DDSourceAddDomainContent(StreamCompressor, sourceCopy, v14, v22, v23);
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v26 = 0;
                  if (isKindOfClass)
                  {
                    [v20 floatValue];
                  }

                  *&v76[4 * v14] = v26;
                }
              }

              v15 = 1;
              v16 = 0x1E695D000;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                DDSourceAddDomainContent(StreamCompressor, sourceCopy, v14, firstObject, 0);
              }
            }

            ++v14;
          }
        }

        while ([contentCopy count]);
        if (v14 >= 1)
        {
          if (v15)
          {
            DDLookupTableSetContextThresholds(StreamCompressor, sourceCopy, v76, v14);
          }

          v27 = v71;
          if (v71)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = 0;
            }
          }

          if ([v75 count] || v27)
          {
            DDSourceAddDomainsNames(StreamCompressor, sourceCopy, v75, v27);
          }
        }
      }

      v12 = StreamCompressor;
      if (!StreamCompressor)
      {
        goto LABEL_67;
      }

      v28 = *(v70[0] + 44);
      FinalizedSourceContent = DDSourceCreateFinalizedSourceContent(StreamCompressor);
      CFRelease(v12);
      if (FinalizedSourceContent)
      {
        v30 = sourceCopy;
        if (_DDTriePathForSource(sourceCopy, v79, 0, 1, v28))
        {
          Length = CFDataGetLength(FinalizedSourceContent);
          if (_DDTriePathForSource(v30, v78, 0, 0, v28))
          {
            v32 = mkstemp(v78);
            if (v32 != -1)
            {
              v33 = v32;
              BytePtr = CFDataGetBytePtr(FinalizedSourceContent);
              if (Length)
              {
                if (VolumeSupportsCompression())
                {
                  v35 = *MEMORY[0x1E695E480];
                  v36 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
                  if (v36)
                  {
                    v37 = v36;
                    v76 = BytePtr;
                    v77[0] = *MEMORY[0x1E695E4D0];
                    v77[1] = v77[0];
                    v77[2] = v36;
                    v38 = *MEMORY[0x1E698C1B0];
                    keys[0] = *MEMORY[0x1E698C1B8];
                    keys[1] = v38;
                    keys[2] = *MEMORY[0x1E698C1A8];
                    v39 = CFDictionaryCreate(v35, keys, v77, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (v39)
                    {
                      v40 = v39;
                      StreamCompressorQueueWithOptions = CreateStreamCompressorQueueWithOptions();
                      CFRelease(v40);
                      CFRelease(v37);
                      BytePtr = v76;
                      if (StreamCompressorQueueWithOptions)
                      {
                        StreamCompressor = CreateStreamCompressor();
                        if (StreamCompressor)
                        {
                          v42 = Length;
                          if (WriteToStreamCompressor() != Length)
                          {
                            if (DDLogHandle_onceToken != -1)
                            {
                              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                            }

                            v43 = DDLogHandle_error_log_handle;
                            if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                            {
                              v68 = __error();
                              v69 = strerror(*v68);
                              LODWORD(v77[0]) = 136315138;
                              *(v77 + 4) = v69;
                              _os_log_error_impl(&dword_1BCFDD000, v43, OS_LOG_TYPE_ERROR, "DD Failed writing stream (error: %s)", v77, 0xCu);
                            }

                            v42 = 0;
                          }

                          if (!CloseStreamCompressor())
                          {
LABEL_57:
                            if (FinishStreamCompressorQueue())
                            {
                              if (DDLogHandle_onceToken != -1)
                              {
                                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                              }

                              v45 = DDLogHandle_error_log_handle;
                              if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                              {
                                v64 = __error();
                                v65 = strerror(*v64);
                                LODWORD(v77[0]) = 136315138;
                                *(v77 + 4) = v65;
                                _os_log_error_impl(&dword_1BCFDD000, v45, OS_LOG_TYPE_ERROR, "DD Failed compressing (error: %s)", v77, 0xCu);
                              }

                              v42 = 0;
                            }

                            BytePtr = v76;
                            if (StreamCompressor)
                            {
                              goto LABEL_78;
                            }

                            goto LABEL_77;
                          }

                          if (DDLogHandle_onceToken != -1)
                          {
                            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                          }

                          v44 = DDLogHandle_error_log_handle;
                          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                          {
                            v66 = __error();
                            v67 = strerror(*v66);
                            LODWORD(v77[0]) = 136315138;
                            *(v77 + 4) = v67;
                            _os_log_error_impl(&dword_1BCFDD000, v44, OS_LOG_TYPE_ERROR, "DD Failed closing stream (error: %s)", v77, 0xCu);
                          }
                        }

                        v42 = 0;
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      CFRelease(v37);
                      BytePtr = v76;
                    }
                  }
                }
              }

LABEL_77:
              v42 = write(v33, BytePtr, Length);
LABEL_78:
              if ((v30 & 0xFFFFFFFD) != 4)
              {
                fchmod(v33, 0x184u);
              }

              close(v33);
              if (v42 != Length)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v71;
                v58 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                LODWORD(v77[0]) = 136315138;
                *(v77 + 4) = v78;
                v55 = "DDCore: Could not write tmp lookup file %s";
                v56 = v58;
                v57 = 12;
                goto LABEL_96;
              }

              if (unlink(v79) && *__error() != 2)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v71;
                v59 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                v60 = __error();
                v61 = strerror(*v60);
                LODWORD(v77[0]) = 136315394;
                *(v77 + 4) = v61;
                WORD2(v77[1]) = 2080;
                *(&v77[1] + 6) = v78;
                v55 = "DDCore: Could not unlink lookup file (%s) %s";
                v56 = v59;
                v57 = 22;
                goto LABEL_96;
              }

              rename(v78, v79, v50);
              if (v51)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v71;
                v52 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                v53 = __error();
                v54 = strerror(*v53);
                LODWORD(v77[0]) = 136315650;
                *(v77 + 4) = v78;
                WORD2(v77[1]) = 2080;
                *(&v77[1] + 6) = v79;
                HIWORD(v77[2]) = 2080;
                v77[3] = v54;
                v55 = "DDCore: Could not move lookup file from %s to %s (error: %s)";
                v56 = v52;
                v57 = 32;
LABEL_96:
                _os_log_error_impl(&dword_1BCFDD000, v56, OS_LOG_TYPE_ERROR, v55, v77, v57);
LABEL_97:
                unlink(v78);
LABEL_98:
                CFRelease(FinalizedSourceContent);
                LOBYTE(v12) = 0;
                goto LABEL_99;
              }

              CFRelease(FinalizedSourceContent);
              LOBYTE(v12) = 1;
              DDSourceRemoveFile(v30, v28, 1);
LABEL_67:
              signatureCopy = v71;
LABEL_99:

              goto LABEL_100;
            }
          }

          else
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            signatureCopy = v71;
            v46 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_74;
            }

            LODWORD(v77[0]) = 136315138;
            *(v77 + 4) = v79;
            _os_log_error_impl(&dword_1BCFDD000, v46, OS_LOG_TYPE_ERROR, "DDCore: Could create tmp path file for %s", v77, 0xCu);
          }

          signatureCopy = v71;
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

LABEL_74:
          v47 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            v48 = __error();
            v49 = strerror(*v48);
            LODWORD(v77[0]) = 136315394;
            *(v77 + 4) = v49;
            WORD2(v77[1]) = 2080;
            *(&v77[1] + 6) = v78;
            _os_log_error_impl(&dword_1BCFDD000, v47, OS_LOG_TYPE_ERROR, "DDCore: Could not create tmp lookup file (%s) %s", v77, 0x16u);
          }

          goto LABEL_98;
        }

        CFRelease(FinalizedSourceContent);
      }

      LOBYTE(v12) = 0;
      goto LABEL_67;
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    LODWORD(v12) = self->_clientuid;
    v11 = DDSourceRemoveFile(source, v12, 0);
    DDSourceRemoveFile(source, v12, 1);
    LOBYTE(v12) = v11;
  }

LABEL_100:

  v62 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)clientCanWriteSource:(int)source
{
  if (altPath)
  {
    return 1;
  }

  if ((source & 0xFFFFFFFD) == 4)
  {
    if ([(DataDetectorsSourceAccess *)self privacyUserWriteEntitled:v3])
    {
      return 1;
    }
  }

  else if ([(DataDetectorsSourceAccess *)self privacySystemWriteEntitled:v3])
  {
    return 1;
  }

  return 0;
}

- (id)fileHandleForSourceRead:(int)read resourceType:(unint64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  if (altPath)
  {
    v7 = 0;
  }

  else
  {
    v7 = (read & 0xFFFFFFFD) == 4;
  }

  if ((!v7 || [(DataDetectorsSourceAccess *)self privacyUserReadEntitled]) && _DDTriePathForSource(read, v12, type == 1, 1, self->_clientuid) && (v8 = open(v12, 0), v8 >= 3))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v8 closeOnDealloc:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)privacySystemWriteEntitled
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_privacySystemWriteEntitlementChecked)
  {
    [(DataDetectorsSourceAccess *)self auditToken];
    v3 = SecTaskCreateWithAuditToken(0, &v12);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.datadetectors.source-write.system", 0);
      if (v5)
      {
        v6 = v5;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]))
        {
          self->_privacySystemWriteEntitled = 1;
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }

    if (!self->_privacySystemWriteEntitled)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        clientpid = self->_clientpid;
        v12.val[0] = 67109378;
        v12.val[1] = clientpid;
        LOWORD(v12.val[2]) = 2112;
        *(&v12.val[2] + 2) = @"com.apple.datadetectors.source-write.system";
        _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v12, 0x12u);
      }
    }

    self->_privacySystemWriteEntitlementChecked = 1;
  }

  result = self->_privacySystemWriteEntitled;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)privacyUserWriteEntitled
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_privacyUserWriteEntitlementChecked)
  {
    [(DataDetectorsSourceAccess *)self auditToken];
    v3 = SecTaskCreateWithAuditToken(0, &v12);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.datadetectors.source-write.user", 0);
      if (v5)
      {
        v6 = v5;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]))
        {
          self->_privacyUserWriteEntitled = 1;
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }

    if (!self->_privacyUserWriteEntitled)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        clientpid = self->_clientpid;
        v12.val[0] = 67109378;
        v12.val[1] = clientpid;
        LOWORD(v12.val[2]) = 2112;
        *(&v12.val[2] + 2) = @"com.apple.datadetectors.source-write.user";
        _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v12, 0x12u);
      }
    }

    self->_privacyUserWriteEntitlementChecked = 1;
  }

  result = self->_privacyUserWriteEntitled;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)privacyUserReadEntitled
{
  if (_dd_dispatch_get_queue_for_read_entitlements_onceToken != -1)
  {
    dispatch_once(&_dd_dispatch_get_queue_for_read_entitlements_onceToken, &__block_literal_global_90);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__DataDetectorsSourceAccess_privacyUserReadEntitled__block_invoke;
  block[3] = &unk_1E80026C0;
  block[4] = self;
  dispatch_sync(_dd_dispatch_get_queue_for_read_entitlements_sQueue, block);
  return self->_privacyUserReadEntitled;
}

void __52__DataDetectorsSourceAccess_privacyUserReadEntitled__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[49])
  {
    [v2 auditToken];
    v3 = SecTaskCreateWithAuditToken(0, &v12);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.datadetectors.source-read.user", 0);
      if (v5)
      {
        v6 = v5;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]))
        {
          *(*(a1 + 32) + 48) = 1;
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }

    v8 = *(a1 + 32);
    if ((*(v8 + 48) & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v9 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 40);
        v12.val[0] = 67109378;
        v12.val[1] = v11;
        LOWORD(v12.val[2]) = 2112;
        *(&v12.val[2] + 2) = @"com.apple.datadetectors.source-read.user";
        _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v12, 0x12u);
      }

      v8 = *(a1 + 32);
    }

    *(v8 + 49) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)writeSourceFromJSONFile:(id)file source:(id)source withReply:(id)reply
{
  fileCopy = file;
  sourceCopy = source;
  replyCopy = reply;
  v11 = _dd_dispatch_get_queue_for_writing();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__DataDetectorsSourceAccess_writeSourceFromJSONFile_source_withReply___block_invoke;
  v15[3] = &unk_1E8002698;
  v16 = sourceCopy;
  selfCopy = self;
  v18 = fileCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = fileCopy;
  v14 = sourceCopy;
  dispatch_async(v11, v15);
}

void __70__DataDetectorsSourceAccess_writeSourceFromJSONFile_source_withReply___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) intValue];
  if (*(a1 + 32))
  {
    v4 = v3;
    if ([*(a1 + 40) clientCanWriteSource:v3])
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        if ([v5 fileDescriptor] >= 3)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [*(a1 + 48) readDataToEndOfFile];
          v21 = 0;
          v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:1 error:&v21];
          v9 = v21;
          if (v9)
          {
            v10 = 0;
            v11 = 0;
          }

          else
          {
            v11 = [v8 objectForKeyedSubscript:@"domains"];
            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v16 = DDLogHandle_error_log_handle;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v19 = objc_opt_class();
                *buf = 138412290;
                v23 = v19;
                _os_log_error_impl(&dword_1BCFDD000, v16, OS_LOG_TYPE_ERROR, "Domains is not a NSMutableDictionary (%@)", buf, 0xCu);
              }

              v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DataDetectorsCoreSourceAccess" code:2 userInfo:0];
            }

            else
            {
              v9 = 0;
            }

            v10 = [v8 objectForKeyedSubscript:@"signature"];
            if (v10)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                v17 = DDLogHandle_error_log_handle;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  v20 = objc_opt_class();
                  *buf = 138412546;
                  v23 = v20;
                  v24 = 2112;
                  v25 = v10;
                  _os_log_error_impl(&dword_1BCFDD000, v17, OS_LOG_TYPE_ERROR, "Signature is not a NSString (%@:%@)", buf, 0x16u);
                }

                v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DataDetectorsCoreSourceAccess" code:1 userInfo:0];

                v9 = v18;
              }
            }
          }

          objc_autoreleasePoolPop(v6);
          if (v9)
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v12 = DDLogHandle_error_log_handle;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v9;
              _os_log_error_impl(&dword_1BCFDD000, v12, OS_LOG_TYPE_ERROR, "Could not read JSON content (%@)", buf, 0xCu);
            }
          }

          else
          {
            [*(a1 + 40) pushSourcesContent:v11 forSource:v4 signature:v10];
          }
        }
      }

      else
      {
        v14 = [*(a1 + 32) intValue];
        v15 = *(*(a1 + 40) + 44);
        DDSourceRemoveFile(v14, v15, 0);
        DDSourceRemoveFile(v14, v15, 1);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)writeSourceFromRawData:(id)data source:(id)source signature:(id)signature withReply:(id)reply
{
  dataCopy = data;
  sourceCopy = source;
  signatureCopy = signature;
  replyCopy = reply;
  v14 = _dd_dispatch_get_queue_for_writing();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__DataDetectorsSourceAccess_writeSourceFromRawData_source_signature_withReply___block_invoke;
  block[3] = &unk_1E8002670;
  v20 = sourceCopy;
  selfCopy = self;
  v22 = dataCopy;
  v23 = signatureCopy;
  v24 = replyCopy;
  v15 = replyCopy;
  v16 = signatureCopy;
  v17 = dataCopy;
  v18 = sourceCopy;
  dispatch_sync(v14, block);
}

void __79__DataDetectorsSourceAccess_writeSourceFromRawData_source_signature_withReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) intValue];
  if (*(a1 + 32))
  {
    v4 = v3;
    if ([*(a1 + 40) clientCanWriteSource:v3])
    {
      [*(a1 + 40) pushSourcesContent:*(a1 + 48) forSource:v4 signature:*(a1 + 56)];
    }
  }

  (*(*(a1 + 64) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)filesForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  readCopy = read;
  replyCopy = reply;
  context = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(readCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = readCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = -[DataDetectorsSourceAccess fileHandleForSourceRead:resourceType:](self, "fileHandleForSourceRead:resourceType:", [*(*(&v20 + 1) + 8 * i) intValue], type);
        if (v15)
        {
          [v9 addObject:v15];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v9 addObject:null];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  replyCopy[2](replyCopy, v9);
  objc_autoreleasePoolPop(context);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fileForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  v9 = objc_autoreleasePoolPush();
  v10 = -[DataDetectorsSourceAccess fileHandleForSourceRead:resourceType:](self, "fileHandleForSourceRead:resourceType:", [readCopy intValue], type);
  replyCopy[2](replyCopy, v10);

  objc_autoreleasePoolPop(v9);
}

@end