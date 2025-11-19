CFStringRef _CSChunkStoreCreate()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v80 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  bzero(__s1, 0x400uLL);
  memset(&v71, 0, sizeof(v71));
  if (!v8 && v4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_35();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"read only location and no tmp path makes ChunkStore unhappy!");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_36();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
LABEL_43:
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", v79, 0xCu);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  alloc = v2;
  v70 = v6;
  if (!gVerbose)
  {
    if (getenv("CK_CHUNKSTORE_VERBOSE"))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    gVerbose = v14;
  }

  v15 = getenv("CS_LOG_PATH");
  CKPointerHash(v15);
  v16 = getenv("CHUNK_STORE_UNIT_TESTS");
  v17 = getenv("CS_LOG_VERBOSE");
  if (getenv("CS_LOG_STDOUT"))
  {
    CKPointerHash(1);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"logging to stdout\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_2();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", v79, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  if (v16 | v17)
  {
    CKPointerHash(7);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCreate_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"log debug enabled\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", v79, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  if (!stat(v10, &v71))
  {
    if (snprintf(__str, 0x400uLL, "%s/%s", v10, ".cs") > 0x3FF)
    {
      goto LABEL_87;
    }

    if ((v4 & 1) == 0 && mkdir(__str, 0x1C0u) && *__error() != 17)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_7();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      v29 = *MEMORY[0x277CBECE8];
      v30 = *__error();
      v31 = __error();
      v32 = strerror(*v31);
      v12 = CFStringCreateWithFormat(v29, 0, @"unable to create directory: %s : %d:%s", __str, v30, v32);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_8();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_9();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"path:%s", __str);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_10();
        }

        v26 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
          *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v25;
          _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", v79, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    CFInstanceZeroed = _CreateCFInstanceZeroed(v11, @"struct __CSChunkStore", "struct __CSChunkStore", _CSChunkStoreCSChunkStoreFinalize, 0x218uLL);
    if (!CFInstanceZeroed)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_33();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_87;
      }

      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to create chunk store object for %s", v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_34();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    v12 = CFInstanceZeroed;
    *(CFInstanceZeroed + 17) = v4;
    *(CFInstanceZeroed + 16) = alloc;
    *(CFInstanceZeroed + 112) = strdup(__str);
    LODWORD(v12[4].isa) = v71.st_dev;
    LODWORD(v12[3].info) = v70;
    LODWORD(v12[17].isa) = 0;
    if (!v8 || !v4)
    {
LABEL_67:
      cs_rwlock_init(&v12[8].data);
      pthread_mutex_init(&v12[4].data, 0);
      pthread_cond_init(&v12[6].data, 0);
      pthread_mutex_init(&v12[1], 0);
      v12[4].info = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      cs_wrlock(&v12[8].data);
      p_length = &v12->length;
      if (v12->length)
      {
        goto LABEL_68;
      }

      bzero(v74, 0x400uLL);
      if (BYTE1(v12->data) == 1)
      {
        if (CKChunkStoreRelocateDB(v12))
        {
          if (snprintf(v74, 0x400uLL, "%s/%s/%s", v12[3].length, ".cs", "ChunkStoreDatabase") >= 0x400)
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSChunkStoreCreate_cold_17();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", v74);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSChunkStoreCreate_cold_18();
              }

              v52 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v51;
                goto LABEL_177;
              }

              goto LABEL_178;
            }

LABEL_180:
            *p_length = 0;
            goto LABEL_181;
          }

          v37 = 0;
          v67 = 0;
LABEL_102:
          alloca = *MEMORY[0x277CBECE8];
          while (2)
          {
            v39 = CSopenDB(v74, &v12->length, LODWORD(v12[3].info) != 0);
            if (v39 == 5)
            {
              if ((BYTE1(v12->data) & 1) == 0)
              {
                *v37 = 0;
                bzero(v79, 0x400uLL);
                bzero(&__to, 0x400uLL);
                if (__strlcpy_chk() <= 0x3FF)
                {
                  v40 = strlen(v79);
                  if (v40)
                  {
                    for (i = (&v78 + v40); v79 <= i; i = (i - 1))
                    {
                      v42 = i->__pn_.__r_.__value_.__s.__data_[0];
                      if (v42 != 47 && v42 != 92)
                      {
                        break;
                      }

                      i->__pn_.__r_.__value_.__s.__data_[0] = 0;
                    }

                    if (v79[0].__pn_.__r_.__value_.__s.__data_[0])
                    {
                      v43 = 1;
                      while (1)
                      {
                        if (snprintf(&__to, 0x400uLL, "%s_old_%u", v79, v43) > 0x3FF)
                        {
                          goto LABEL_163;
                        }

                        if (access(&__to, 0))
                        {
                          break;
                        }

                        if (++v43 == 0x40000)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_25();
                          }

                          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_165;
                          }

                          v53 = CFStringCreateWithFormat(alloca, 0, @"can't rename %s, too many old files (%u)\n", v79, 0x40000);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_26();
                          }

                          v54 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138543362;
                            v76 = v53;
                            _os_log_impl(&dword_243431000, v54, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                          }

                          if (v53)
                          {
LABEL_162:
                            CFRelease(v53);
                            goto LABEL_163;
                          }

                          goto LABEL_163;
                        }
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_19();
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v45 = CFStringCreateWithFormat(alloca, 0, @"renaming %s to %s\n", v79, &__to);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSChunkStoreCreate_cold_20();
                        }

                        v46 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138543362;
                          v76 = v45;
                          _os_log_impl(&dword_243431000, v46, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                        }

                        if (v45)
                        {
                          CFRelease(v45);
                        }
                      }

                      rename(v79, &__to, v44);
                      if (!v47)
                      {
                        if (!mkdir(v74, 0x1C0u))
                        {
                          *v37 = v67;
                          continue;
                        }

                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSChunkStoreCreate_cold_23();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v64 = __error();
                          v65 = strerror(*v64);
                          v51 = CFStringCreateWithFormat(alloca, 0, @"unable to create directory %s : %s", v74, v65);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSChunkStoreCreate_cold_24();
                          }

                          v66 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                            *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v51;
                            _os_log_impl(&dword_243431000, v66, OS_LOG_TYPE_ERROR, "%{public}@", v79, 0xCu);
                          }

                          if (v51)
                          {
                            goto LABEL_179;
                          }
                        }

                        goto LABEL_180;
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_21();
                      }

                      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_165;
                      }

                      v60 = *__error();
                      v61 = __error();
                      v62 = strerror(*v61);
                      v53 = CFStringCreateWithFormat(alloca, 0, @"unable to rename %s: %d (%s)\n", v79, v60, v62);
                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSChunkStoreCreate_cold_22();
                      }

                      v63 = CK_DEFAULT_LOG_INTERNAL_1;
                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v76 = v53;
                        _os_log_impl(&dword_243431000, v63, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                      }

                      if (v53)
                      {
                        goto LABEL_162;
                      }
                    }
                  }
                }

LABEL_163:
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSChunkStoreCreate_cold_27();
                }

LABEL_165:
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  v55 = __error();
                  v56 = strerror(*v55);
                  v51 = CFStringCreateWithFormat(alloca, 0, @"unable to rename old chunk store at %s: %s\n", v74, v56);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSChunkStoreCreate_cold_28();
                  }

                  v52 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                    *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v51;
                    goto LABEL_177;
                  }

LABEL_178:
                  if (v51)
                  {
LABEL_179:
                    CFRelease(v51);
                  }

                  goto LABEL_180;
                }
              }
            }

            else if (!v39)
            {
              v59 = *p_length;
              *p_length = *p_length;
              if (v59)
              {
LABEL_68:
                if (!LODWORD(v12[3].info))
                {
                  v12[8].info = malloc_type_calloc(5uLL, 8uLL, 0x2004093837F09uLL);
                }

                cs_unlock(&v12[8].data);
                CKCheckChunkStoreDB(v12);
                if (LODWORD(v12[3].info) && _CSBeginTransactionSqlRc(v12))
                {
                  goto LABEL_45;
                }

                goto LABEL_88;
              }

LABEL_181:
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSChunkStoreCreate_cold_29();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v57 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable open chunk store database for %s", v10);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSChunkStoreCreate_cold_30();
                }

                v58 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
                  *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v57;
                  _os_log_impl(&dword_243431000, v58, OS_LOG_TYPE_ERROR, "%{public}@", v79, 0xCu);
                }

                if (v57)
                {
                  CFRelease(v57);
                }
              }

              cs_unlock(&v12[8].data);
              goto LABEL_45;
            }

            goto LABEL_180;
          }
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_15();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_180;
        }

        v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkStoreRelocateDB failed to copy database to temp location!");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_16();
        }

        v52 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_178;
        }

        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v51;
      }

      else
      {
        v38 = strlen(v12[3].data);
        if (snprintf(v74, 0x400uLL, "%s/%s", v12[3].data, "ChunkStoreDatabase") < 0x400)
        {
          v37 = &v74[v38 + 1];
          v67 = *v37;
          goto LABEL_102;
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_13();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_180;
        }

        v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", v74);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSChunkStoreCreate_cold_14();
        }

        v52 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_178;
        }

        LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
        *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v51;
      }

LABEL_177:
      _os_log_impl(&dword_243431000, v52, OS_LOG_TYPE_ERROR, "%{public}@", v79, 0xCu);
      goto LABEL_178;
    }

    if (snprintf(__s1, 0x400uLL, "%s/chunk_store_XXXXXX", v8) >= 0x400)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", __s1);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_12();
      }

      v36 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_138;
      }

      LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v35;
    }

    else
    {
      if (mkdtemp(__s1))
      {
        v12[3].length = strdup(__s1);
        goto LABEL_67;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_31();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v48 = *MEMORY[0x277CBECE8];
      v49 = __error();
      v50 = strerror(*v49);
      v35 = CFStringCreateWithFormat(v48, 0, @"mkdtemp failed to create %s : %s", __s1, v50);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkStoreCreate_cold_32();
      }

      v36 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
LABEL_138:
        if (v35)
        {
          CFRelease(v35);
        }

        goto LABEL_45;
      }

      LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v35;
    }

    _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_ERROR, "%{public}@", v79, 0xCu);
    goto LABEL_138;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCreate_cold_5();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_87;
  }

  v22 = *MEMORY[0x277CBECE8];
  v23 = __error();
  v24 = strerror(*v23);
  v12 = CFStringCreateWithFormat(v22, 0, @"stat failed for %s: %s", v10, v24);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCreate_cold_6();
  }

  v13 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v79[0].__pn_.__r_.__value_.__l.__data_) = 138543362;
    *(v79[0].__pn_.__r_.__value_.__r.__words + 4) = v12;
    goto LABEL_43;
  }

LABEL_44:
  if (v12)
  {
LABEL_45:
    CFRelease(v12);
LABEL_87:
    v12 = 0;
  }

LABEL_88:
  v33 = *MEMORY[0x277D85DE8];
  return v12;
}

CFStringRef CKChunkStoreCreate(uint64_t a1, const __CFURL *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ERROR: NULL location parameter");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_4();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buffer = 138543362;
    v14 = v4;
    v6 = buffer;
    goto LABEL_18;
  }

  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v7 = *MEMORY[0x277CBECE8];
    v8 = __error();
    v9 = strerror(*v8);
    v4 = CFStringCreateWithFormat(v7, 0, @"CFURLGetFileSystemRepresentation(%s) error: %s\n", buffer, v9);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreCreate_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      if (v4)
      {
        CFRelease(v4);
      }

LABEL_21:
      result = 0;
      goto LABEL_22;
    }

    *buf = 138543362;
    v12 = v4;
    v6 = buf;
LABEL_18:
    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", v6, 0xCu);
    goto LABEL_19;
  }

  result = _CSChunkStoreCreate();
LABEL_22:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CreateCFInstanceZeroed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  os_unfair_lock_lock(&registered_classes_lock);
  Mutable = registered_classes;
  if (!registered_classes)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    registered_classes = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a2);
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x68uLL, 0x10D0040D425F453uLL);
    *Value = 0;
    Value[1] = a3;
    Value[2] = 0;
    Value[3] = 0;
    Value[4] = a4;
    *(Value + 5) = 0u;
    *(Value + 7) = 0u;
    Value[12] = _CFRuntimeRegisterClass();
    CFDictionarySetValue(registered_classes, a2, Value);
  }

  os_unfair_lock_unlock(&registered_classes_lock);
  v11 = Value[12];
  Instance = _CFRuntimeCreateInstance();
  v13 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a5);
  }

  return v13;
}

uint64_t cs_rwlock_init(uint64_t a1)
{
  result = pthread_rwlock_init(a1, 0);
  if (!result)
  {
    result = pthread_mutex_init((a1 + 200), 0);
  }

  *(a1 + 264) = 0;
  return result;
}

uint64_t cs_wrlock(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 200));
  if (!v2)
  {
    v2 = pthread_rwlock_wrlock(a1);
    if (v2)
    {
      pthread_mutex_unlock((a1 + 200));
    }

    else
    {
      *(a1 + 264) = pthread_self();
    }
  }

  return v2;
}

uint64_t CSopenDB(const char *a1, sqlite3 **a2, int a3)
{
  v59 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  pDb = 0;
  v56 = 0;
  pStmt = 0;
  v6 = CS_corruption_checking_sqlite3_open_v2(a1, a3, &pDb, 65570);
  if (!v6)
  {
LABEL_9:
    sqlite3_busy_timeout(pDb, 5000);
    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA locking_mode = EXCLUSIVE;", &v56))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v58 = v56;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "failed to set locking_mode on db (%s)", buf, 0xCu);
      }

      sqlite3_free(v56);
      v56 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA page_size = 4096;", &v56))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_3();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v58 = v56;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "failed to set page_size pragma on db (%s)", buf, 0xCu);
      }

      sqlite3_free(v56);
      v56 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA journal_mode = WAL;", &v56))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_4();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v58 = v56;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "failed to set journal mode (%s)", buf, 0xCu);
      }

      sqlite3_free(v56);
      v56 = 0;
    }

    if (CS_corruption_checking_sqlite3_exec(a1, a3, pDb, "PRAGMA wal_autocheckpoint = 2000;", &v56))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_5();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v58 = v56;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "failed to set wal_autocheckpoint (%s)", buf, 0xCu);
      }

      sqlite3_free(v56);
      v56 = 0;
    }

    CSsql_corruption_checking_do(a1, a3, pDb, "PRAGMA temp_store = MEMORY");
    v14 = CSsql_corruption_checking_do(a1, a3, pDb, "BEGIN EXCLUSIVE");
    if (v14)
    {
      goto LABEL_35;
    }

    v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE TABLE IF NOT EXISTS CSDatabaseVersion (version INTEGER)");
    if (v14)
    {
      goto LABEL_35;
    }

    v29 = pDb;
    if (CSSQLiteCorruptionTestingEnabled())
    {
      v30 = CS_corruption_causing_sqlite3_prepare_v2(v29, "SELECT version FROM CSDatabaseVersion", -1, &pStmt, 0);
    }

    else
    {
      v30 = sqlite3_prepare_v2(v29, "SELECT version FROM CSDatabaseVersion", -1, &pStmt, 0);
    }

    v31 = v30;
    _CSHandleDatabaseIOError(v30);
    if (v31)
    {
      if (v31 == 26 || v31 == 11)
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSopenDB_cold_12();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_prepare_v2", v31);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_13();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v58 = v32;
            _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }

        _CSBruteForceDatabaseCorruptionRecovery(a1, v29, a3);
      }

      goto LABEL_47;
    }

    v35 = pStmt;
    v34 = pDb;
    if (CSSQLiteCorruptionTestingEnabled())
    {
      v36 = CS_corruption_causing_sqlite3_step(v35);
    }

    else
    {
      v36 = sqlite3_step(v35);
    }

    v37 = v36;
    _CSHandleDatabaseIOError(v36);
    switch(v37)
    {
      case 0xB:
        goto LABEL_77;
      case 0x64:
        v40 = sqlite3_column_int64(pStmt, 0);
LABEL_89:
        sqlite3_reset(pStmt);
        sqlite3_finalize(pStmt);
        pStmt = 0;
        if (a3)
        {
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_9();
          }

          v41 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            if (v40)
            {
              v42 = v40;
            }

            else
            {
              v42 = 10;
            }

            *buf = 134218498;
            *v58 = v42;
            v43 = "Y";
            if (v40)
            {
              v43 = "N";
            }

            *&v58[8] = 2048;
            *&v58[10] = 10;
            *&v58[18] = 2082;
            *&v58[20] = v43;
            _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_DEFAULT, "ChunkRegistry ver=%llu/%llu isNew=%{public}s", buf, 0x20u);
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE TABLE IF NOT EXISTS CSRegisteredFileTable (crt_rowid INTEGER PRIMARY KEY,crt_id\tBLOB,crt_iid BIGINT,crt_filekey BLOB,crt_filesize BIGINT,crt_profileType INTEGER,crt_profileTypeIsDefault INTEGER,crt_profileConfigurationVersion TEXT,crt_profileResolvedFileExtension TEXT)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE INDEX IF NOT EXISTS CSRegisteredFileTable_crt_id_inx ON CSRegisteredFileTable(crt_id)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 1, pDb, "CREATE UNIQUE INDEX IF NOT EXISTS CSRegisteredFileTable_crt_iid_inx ON CSRegisteredFileTable(crt_iid)");
          if (v14)
          {
            goto LABEL_35;
          }

          if (v40)
          {
            if (v40 > 6)
            {
              if (v40 != 7)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_filekey BLOB");
              if (v14)
              {
                goto LABEL_35;
              }

              v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_filesize BIGINT");
              if (v14)
              {
                goto LABEL_35;
              }
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileType INTEGER");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileTypeIsDefault INTEGER");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileConfigurationVersion TEXT");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSRegisteredFileTable ADD COLUMN crt_profileResolvedFileExtension TEXT");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_8();
          }

          v44 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            if (v40)
            {
              v45 = v40;
            }

            else
            {
              v45 = 8;
            }

            *buf = 134218498;
            *v58 = v45;
            v46 = "Y";
            if (v40)
            {
              v46 = "N";
            }

            *&v58[8] = 2048;
            *&v58[10] = 8;
            *&v58[18] = 2082;
            *&v58[20] = v46;
            _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_DEFAULT, "ChunkStore ver=%llu/%llu isNew=%{public}s", buf, 0x20u);
          }

          if (v40)
          {
            v20 = _CSMigrateChunkStore(a1, pDb, v40);
            if (v20)
            {
              goto LABEL_48;
            }
          }
        }

LABEL_118:
        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE TABLE IF NOT EXISTS CSChunkTable (ct_rowid INTEGER PRIMARY KEY,cid BLOB,ct_iid BIGINT,ft_rowid BIGINT,offset BIGINT,dataLen INTEGER,refCount INTEGER,timeStamp BIGINT,location INTEGER,key BLOB,subchunksBlob BLOB)");
        if (v14)
        {
          goto LABEL_35;
        }

        v47 = v40 - 1;
        if (a3)
        {
          if (v47 <= 5)
          {
            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStorageFileTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStorageChunkListTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStoragePendingChunksTable");
            if (v14)
            {
              goto LABEL_35;
            }

            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "DROP TABLE IF EXISTS CSStoragePendingFileChunklistTable");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        if (a3)
        {
          if (v47 <= 8)
          {
            v14 = CSsql_corruption_checking_do(a1, 1, pDb, "ALTER TABLE CSChunkTable ADD COLUMN subchunksBlob BLOB");
            if (v14)
            {
              goto LABEL_35;
            }
          }
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_cid_inx ON CSChunkTable(cid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_iid_inx ON CSChunkTable(ct_iid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "CREATE INDEX IF NOT EXISTS CSChunkTable_ftrowid_inx ON CSChunkTable(ft_rowid)");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_refCount_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_loc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_iidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_rowidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_rowidrefcnt_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "DROP INDEX IF EXISTS CSChunkTable_cidloc_inx");
        if (v14)
        {
          goto LABEL_35;
        }

        if (a3)
        {
          if (v40)
          {
            if (v40 >= 0xB)
            {
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                CSopenDB_cold_11();
              }

              v48 = CK_DEFAULT_LOG_INTERNAL;
              if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *buf = 134217984;
              *v58 = v40;
              v23 = "odd database version %llu";
              v24 = v48;
              v25 = 12;
              goto LABEL_46;
            }

            if (v40 == 10)
            {
              goto LABEL_178;
            }

            v49 = 10;
LABEL_173:
            v51 = CSsql_corruption_checking_do(a1, a3, pDb, "UPDATE CSDatabaseVersion SET version = %lld", v49);
            if (v51)
            {
              v7 = v51;
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                CSopenDB_cold_10();
              }

              v52 = CK_DEFAULT_LOG_INTERNAL;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                v53 = sqlite3_errmsg(pDb);
                *buf = 136315138;
                *v58 = v53;
                v17 = "UPDATE CSDatabaseVersion SET version failed: %s";
                v18 = v52;
                v19 = 12;
                goto LABEL_40;
              }

              goto LABEL_41;
            }

LABEL_178:
            v14 = CSsql_corruption_checking_do(a1, a3, pDb, "COMMIT");
            if (!v14)
            {
              v20 = 0;
              *a2 = pDb;
              goto LABEL_54;
            }

            goto LABEL_35;
          }

          v50 = 10;
        }

        else
        {
          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStorageFileTable (ft_rowid INTEGER PRIMARY KEY,ft_inode BIGINT,ft_space INTEGER,ft_pspace INTEGER,vt_rowid BIGINT,ft_status INTEGER)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_rowid_inx ON CSStorageFileTable(ft_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_inode_inx ON CSStorageFileTable(ft_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_space_inx ON CSStorageFileTable(ft_space)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_pspace_inx ON CSStorageFileTable(ft_pspace)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_vt_rowid_inx ON CSStorageFileTable(vt_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageFileTable_ft_status_inx ON CSStorageFileTable(ft_status)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStorageChunkListTable (clt_rowid INTEGER PRIMARY KEY AUTOINCREMENT,clt_inode BIGINT,clt_count BIGINT,clt_chunkRowIDs BLOB)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageChunkListTable_clt_rowid_inx ON CSStorageChunkListTable(clt_rowid)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStorageChunkListTable_clt_inode_inx ON CSStorageChunkListTable(clt_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStoragePendingChunksTable (pct_rowid INTEGER PRIMARY KEY,pct_inode BIGINT,pct_count BIGINT,pct_chunkRowIDs BLOB)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingChunksTable_pct_inode_inx ON CSStoragePendingChunksTable(pct_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE TABLE IF NOT EXISTS CSStoragePendingFileChunklistTable (pft_rowid INTEGER PRIMARY KEY,pft_token BIGINT,pft_inode BIGINT)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingFileChunklistTable_pft_token_inx ON CSStoragePendingFileChunklistTable(pft_token)");
          if (v14)
          {
            goto LABEL_35;
          }

          v14 = CSsql_corruption_checking_do(a1, 0, pDb, "CREATE INDEX IF NOT EXISTS CSStoragePendingFileChunklistTable_pft_inode_inx ON CSStoragePendingFileChunklistTable(pft_inode)");
          if (v14)
          {
            goto LABEL_35;
          }

          if (v40)
          {
            if (v40 == 8)
            {
              goto LABEL_178;
            }

            v49 = 8;
            goto LABEL_173;
          }

          v50 = 8;
        }

        v14 = CSsql_corruption_checking_do(a1, a3, pDb, "INSERT INTO CSDatabaseVersion (version) VALUES (%llu)", v50);
        if (!v14)
        {
          goto LABEL_178;
        }

LABEL_35:
        v7 = v14;
        goto LABEL_41;
      case 0x1A:
LABEL_77:
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSopenDB_cold_6();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_step", v37);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CSopenDB_cold_7();
          }

          v39 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v58 = v38;
            _os_log_impl(&dword_243431000, v39, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v38)
          {
            CFRelease(v38);
          }
        }

        _CSBruteForceDatabaseCorruptionRecovery(a1, v34, a3);
        break;
    }

    v40 = 0;
    goto LABEL_89;
  }

  v7 = v6;
  if (v6 == 14)
  {
    sqlite3_close(pDb);
    pDb = 0;
    if (CS_corruption_checking_sqlite3_open_v2(a1, a3, &pDb, 65574))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSopenDB_cold_1();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_errmsg(pDb);
        *buf = 136315394;
        *v58 = a1;
        *&v58[8] = 2080;
        *&v58[10] = v9;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "sqlite3_open_v2 failed, dbname:%s: %s", buf, 0x16u);
      }

      sqlite3_close(pDb);
      pDb = 0;
      v7 = 14;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSopenDB_cold_14();
  }

  v15 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v16 = sqlite3_errmsg(pDb);
    *buf = 136315650;
    *v58 = a1;
    *&v58[8] = 1024;
    *&v58[10] = v7;
    *&v58[14] = 2080;
    *&v58[16] = v16;
    v17 = "sqlite3_open_v2 failed, dbname:%s: %d %s";
    v18 = v15;
    v19 = 28;
LABEL_40:
    _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_41:
  v20 = 0xFFFFFFFFLL;
  if (v7 != 101)
  {
LABEL_42:
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSopenDB_cold_15();
    }

    v21 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    v22 = sqlite3_errmsg(pDb);
    *buf = 67109378;
    *v58 = v7;
    *&v58[4] = 2080;
    *&v58[6] = v22;
    v23 = "sqlite3 error: %d %s";
    v24 = v21;
    v25 = 18;
LABEL_46:
    _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
LABEL_47:
    v20 = 0xFFFFFFFFLL;
  }

LABEL_48:
  if (pStmt)
  {
    sqlite3_finalize(pStmt);
  }

  CScloseDB(pDb);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSopenDB_cold_16();
  }

  v26 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v58 = v20;
    _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_ERROR, "rc:%d", buf, 8u);
  }

LABEL_54:
  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t CS_corruption_checking_sqlite3_open_v2(const char *a1, char a2, sqlite3 **a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v8 = CS_corruption_causing_sqlite3_open_v2(a1, a3, a4, 0);
  }

  else
  {
    v8 = sqlite3_open_v2(a1, a3, a4, 0);
  }

  v9 = v8;
  _CSHandleDatabaseIOError(v8);
  if (v9 == 26 || v9 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CS_corruption_checking_sqlite3_open_v2_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_open_v2", v9);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CS_corruption_checking_sqlite3_open_v2_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, 0, a2);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _CSHandleDatabaseIOError(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result == 10)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSHandleDatabaseIOError_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk store database I/O error. Forcing process exit.");
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSHandleDatabaseIOError_cold_2();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v4 = 138543362;
        v5 = v2;
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v4, 0xCu);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    exit(1);
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSHandleDatabaseIOError_0(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result == 10)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSHandleDatabaseIOError_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk store database I/O error. Forcing process exit.");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSHandleDatabaseIOError_cold_2_0();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v4 = 138543362;
        v5 = v2;
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v4, 0xCu);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    exit(1);
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CS_corruption_checking_sqlite3_exec(const char *a1, char a2, sqlite3 *a3, const char *a4, char **a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v10 = CS_corruption_causing_sqlite3_exec(a3, a4, 0, 0, a5);
  }

  else
  {
    v10 = sqlite3_exec(a3, a4, 0, 0, a5);
  }

  v11 = v10;
  _CSHandleDatabaseIOError(v10);
  if (v11 == 26 || v11 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CS_corruption_checking_sqlite3_exec_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_exec", v11);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CS_corruption_checking_sqlite3_exec_cold_2();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, a3, a2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t CS_corruption_checking_sqlite3_exec_0(uint64_t a1, sqlite3 *a2, const char *a3, char **a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v8 = CS_corruption_causing_sqlite3_exec(a2, a3, 0, 0, a4);
  }

  else
  {
    v8 = sqlite3_exec(a2, a3, 0, 0, a4);
  }

  v9 = v8;
  _CSHandleDatabaseIOError_0(v8);
  if (v9 == 26 || v9 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CS_corruption_checking_sqlite3_exec_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_exec", v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CS_corruption_checking_sqlite3_exec_cold_2_0();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    _CSHandleCorruptDatabase(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t CSsql_corruption_checking_do(const char *a1, char a2, sqlite3 *a3, char *a4, ...)
{
  va_start(va, a4);
  v15 = *MEMORY[0x277D85DE8];
  v7 = CSsql_doV(a3, a4, va);
  _CSHandleDatabaseIOError(v7);
  if (v7 == 26 || v7 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_corruption_checking_do_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in CSsql_do", v7, va);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_corruption_checking_do_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    _CSBruteForceDatabaseCorruptionRecovery(a1, a3, a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CSsql_corruption_checking_do_0(uint64_t a1, sqlite3 *a2, char *a3, ...)
{
  va_start(va, a3);
  v12 = *MEMORY[0x277D85DE8];
  v4 = CSsql_doV(a2, a3, va);
  _CSHandleDatabaseIOError_0(v4);
  if (v4 == 26 || v4 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CSsql_corruption_checking_do_cold_1_0();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in CSsql_do", v4, va);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CSsql_corruption_checking_do_cold_2_0();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    _CSHandleCorruptDatabase(a1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t CSsql_doV(sqlite3 *a1, char *a2, va_list a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_vmprintf(a2, a3);
  if (!v4)
  {
LABEL_15:
    v9 = 1;
    goto LABEL_28;
  }

  v5 = v4;
  if (!a1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_doV_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SQL DB not open: '%s'\n", v5);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_doV_cold_4();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    sqlite3_free(v5);
    goto LABEL_15;
  }

  sqlite3_busy_timeout(a1, 5000);
  errmsg = 0;
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v6 = CS_corruption_causing_sqlite3_exec(a1, v5, 0, 0, &errmsg);
  }

  else
  {
    v6 = sqlite3_exec(a1, v5, 0, 0, &errmsg);
  }

  v9 = v6;
  if (v6)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_doV_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SQL error: '%s', (%d) %s\n", v5, v9, errmsg);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_doV_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  sqlite3_free(v5);
  sqlite3_free(errmsg);
LABEL_28:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t cs_unlock(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = pthread_self();
  if (pthread_equal(v2, v3))
  {
    *(a1 + 264) = 0;
    result = pthread_rwlock_unlock(a1);
    if (!result)
    {

      return pthread_mutex_unlock((a1 + 200));
    }
  }

  else
  {

    return pthread_rwlock_unlock(a1);
  }

  return result;
}

uint64_t _CSBeginTransactionSqlRc(uint64_t a1)
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong_explicit((a1 + 260), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSBeginTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NESTED TRANSACTION!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSBeginTransactionSqlRc_cold_2();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  v10 = 0;
  v5 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "BEGIN TRANSACTION", &v10);
  if (v5)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSBeginTransactionSqlRc_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to begin transaction: %d (%s)\n", v5, v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSBeginTransactionSqlRc_cold_4();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    sqlite3_free(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t CKCheckChunkStoreDB(uint64_t result)
{
  if (!*(result + 104))
  {
    v1 = result;
    result = CKLockChunkStore(result);
    if (!result)
    {
      _CSCheckChunkStoreDB(v1, 0);

      return cs_unlock(v1 + 272);
    }
  }

  return result;
}

uint64_t _CSCommitDatabaseTransactions(uint64_t result, char a2)
{
  if (*(result + 104))
  {
    v2 = result;
    if (a2)
    {
      _CSEndTransactionSqlRc(result);

      return _CSBeginTransactionSqlRc(v2);
    }

    else
    {
      result = CKLockChunkStore(result);
      if (!result)
      {
        _CSEndTransactionSqlRc(v2);
        _CSBeginTransactionSqlRc(v2);

        return cs_unlock(v2 + 272);
      }
    }
  }

  return result;
}

uint64_t CKLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = cs_wrlock(a1 + 272);
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t _CSEndTransactionSqlRc(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "END TRANSACTION", &v10);
  if (v2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSEndTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to commit transaction: %d (%s)\n", v2, v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSEndTransactionSqlRc_cold_2();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    sqlite3_free(v10);
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 260), &v5, 0, memory_order_relaxed, memory_order_relaxed);
  if (v5 != 1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSEndTransactionSqlRc_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"TRANSACTION COUNT ALREADY ZERO!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSEndTransactionSqlRc_cold_4();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t CKChunkStoreInvalidate(uint64_t a1)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    _CSChunkStoreClose(a1);

    return cs_unlock(a1 + 272);
  }

  return result;
}

void _CSChunkStoreClose(uint64_t a1)
{
  if (*(a1 + 264))
  {
    for (i = 0; i != 40; i += 8)
    {
      _CSCloseStorageFile(a1, *(*(a1 + 264) + i), 0);
    }
  }

  if (*(a1 + 24))
  {
    pthread_mutex_lock((a1 + 32));
    v3 = *(a1 + 96);
    if (v3)
    {
      CFDictionaryApplyFunction(v3, _CSFinalizeDBStmts, a1);
      CFRelease(*(a1 + 96));
      *(a1 + 96) = 0;
    }

    if (*(a1 + 104))
    {
      _CSEndTransactionSqlRc(a1);
    }

    pthread_mutex_unlock((a1 + 32));
    if ((*(a1 + 16) & 1) == 0)
    {
      CScloseDB(*(a1 + 24));
    }

    *(a1 + 24) = 0;
  }
}

void CScloseDB(sqlite3 *pDb)
{
  v7 = *MEMORY[0x277D85DE8];
  if (pDb)
  {
    while (1)
    {
      stmt = sqlite3_next_stmt(pDb, 0);
      if (!stmt)
      {
        break;
      }

      sqlite3_finalize(stmt);
    }

    if (sqlite3_close(pDb))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CScloseDB_cold_1();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = sqlite3_errmsg(pDb);
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "sqlite3_close failed: %s", &v5, 0xCu);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void _CSChunkStoreCSChunkStoreFinalize(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkStoreCSChunkStoreFinalize_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"path:%s\n", *(a1 + 112));
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkStoreCSChunkStoreFinalize_cold_2();
    }

    v3 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v11 = v2;
      _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  cs_wrlock(a1 + 272);
  v4 = *(a1 + 120);
  if (v4)
  {
    removefile(v4, 0, 1u);
    free(*(a1 + 120));
    *(a1 + 120) = 0;
  }

  _CSChunkStoreClose(a1);
  v5 = *(a1 + 264);
  if (v5)
  {
    free(v5);
    *(a1 + 264) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    free(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 136) = 0;
  }

  pthread_mutex_destroy((a1 + 32));
  pthread_mutex_destroy((a1 + 144));
  pthread_cond_destroy((a1 + 208));
  cs_unlock(a1 + 272);
  v8 = cs_rwlock_destroy(a1 + 272);
  CKPointerHash(v8);
  *buf = -559038737;
  memset_pattern4((a1 + 16), buf, 0x218uLL);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t cs_rwlock_destroy(uint64_t a1)
{
  result = pthread_rwlock_destroy(a1);
  if (!result)
  {
    result = pthread_mutex_destroy((a1 + 200));
  }

  *(a1 + 264) = 0;
  return result;
}

uint64_t get_path_for_fd(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  v4 = -5;
  v7 = 0;
  while (1)
  {
    if (fstat(a1, &v8) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7.val[1] = 0;
    v7.val[0] = v8.st_dev;
    if ((fsgetpath(a2, 0x400uLL, &v7, v8.st_ino) & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 35 || v4++ == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t mkdir_recursive(uint64_t a1, mode_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(path, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
    v3 = 63;
LABEL_4:
    *__error() = v3;
    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  result = mkpath_np(path, a2);
  v3 = result;
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

const void **CKChunkCryptorV2Finalize(uint64_t a1)
{
  result = **(a1 + 40);
  if (result)
  {
    return CSContext_Destroy(result, 0);
  }

  return result;
}

uint64_t CKChunkCryptorV2Init(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v20 = 0;
  v8 = CKChunkDigestResultsChunkKey(a3);
  v9 = *MEMORY[0x277CBECE8];
  v10 = CKEncryptionKeySize();
  v11 = CFDataCreate(v9, (v8 + 1), v10);
  v12 = CKChunkDigestResultsChunkSignature(a3);
  v13 = CKChunkSignatureSize(v12);
  v14 = CFDataCreate(v9, (v12 + 1), v13);
  v15 = CKChunkDigestResultsChunkLength(a3);
  v16 = v15;
  if (v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = v15;
  }

  if (v4 < v15)
  {
    CKChunkCryptorV2Init_cold_1();
  }

  if (!CSContext_Initialize(*(a1 + 40), &v20))
  {
    goto LABEL_11;
  }

  v17 = **(a1 + 40);
  if (a2)
  {
    if (CSChunkCryptor_InitializeEncryptor(v17, v11, v14, v16, v4, &v20))
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!CSChunkCryptor_InitializeDecryptor(v17, v11, v14, v16, v4, &v20))
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = 1;
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (v14)
  {
    CFRelease(v14);
  }

  return v18;
}

uint64_t CKChunkCryptorV2Update(uint64_t a1, uint64_t a2, unsigned int a3)
{
  cf = 0;
  v3 = CSChunkCryptor_Update(**(a1 + 40), a2, a3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t CKChunkCryptorV2Finish(uint64_t a1, CFErrorRef *a2)
{
  v4 = CKChunkDigestResultsChunkSignature(*(a1 + 24));
  v5 = **(a1 + 40);
  v6 = CKChunkSignatureSize(v4);

  return CSChunkCryptor_Finalize(v5, (v4 + 1), v6, a2);
}

uint64_t CKChunkSignatureGeneratorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkSignatureGeneratorGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 56);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = result + 56;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKChunkSignatureGeneratorCreate(void *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  Class = CKChunkDigestArgumentsGetClass(a2);
  if (Class != 1)
  {
    if (Class == 2)
    {
      cf = 0;
      v5 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  cf = 0;
  v5 = 104;
LABEL_7:
  v11 = 0;
  *a1 = 0;
  v7 = CKChunkSignatureGeneratorAllocate(&v11, Class, v5);
  v6 = 0;
  v8 = v11;
  if (v7 && v11)
  {
    cf = 0;
    CKBaseRetain(a2);
    *(v8 + 3) = a2;
    v9 = _requestCallbacks[4 * v8[4]];
    if (v9 && (v9)(v8, a2, &cf))
    {
      CFRetain(v8);
      *a1 = v8;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t CKChunkSignatureGeneratorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkSignatureGeneratorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks[4 * v1 + 2]();
  }

  else
  {
    return 0;
  }
}

void _CKChunkSignatureGeneratorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    CKBaseRelease(v4);
  }

  *(a1 + 32) = 0;
}

uint64_t CSCopier_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 64)) != 0)
  {
    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 8) = 0;
    }

    v6 = *(v4 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(v4 + 16) = 0;
    }

    v7 = *(v4 + 24);
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 24) = 0;
    }

    v8 = *(v4 + 32);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 32) = 0;
    }

    v9 = *(v4 + 40);
    if (v9)
    {
      CFRelease(v9);
    }

    free(v4);
    *(a1 + 64) = 0;
    return 1;
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v11;
  }

  return result;
}

uint64_t CSCopier_Initialize(uint64_t a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFErrorRef *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = *MEMORY[0x277CBEE48];
    v18 = 6;
LABEL_8:
    v19 = CFErrorCreate(v16, v17, v18, 0);
    result = 0;
    *a5 = v19;
    goto LABEL_11;
  }

  v10 = malloc_type_malloc(0x30uLL, 0x60040620FCCB7uLL);
  if (!v10)
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = *MEMORY[0x277CBEE48];
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v10;
  v23 = a5;
  v12 = ccsha256_di();
  *bytes = 0u;
  v25 = 0u;
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  v13 = cchkdf();
  v14 = *MEMORY[0x277CBECE8];
  if (v13)
  {
    goto LABEL_10;
  }

  v15 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
  *v11 = v15;
  *bytes = 0u;
  v25 = 0u;
  if (a4)
  {
    CFDataGetLength(a4);
    CFDataGetBytePtr(a4);
    v15 = *v11;
  }

  CFDataGetLength(v15);
  CFDataGetBytePtr(*v11);
  if (cchkdf())
  {
LABEL_10:
    v21 = CFErrorCreate(v14, *MEMORY[0x277CBEE48], 2, 0);
    result = 0;
    *v23 = v21;
  }

  else
  {
    v11[1] = CFDataCreate(v14, bytes, 32);
    cc_clear();
    *(a1 + 64) = v11;
    result = _CSCopier_DeriveKeysFromCopyKey(a1, v12, v23);
  }

LABEL_11:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSCopier_DeriveKeysFromCopyKey(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  if (v4)
  {
    v18 = 0;
    *bytes = 0u;
    v17 = 0u;
    CFDataGetLength(*(v4 + 8));
    CFDataGetBytePtr(*(v4 + 8));
    v5 = cchkdf();
    v6 = *MEMORY[0x277CBECE8];
    if (!v5)
    {
      *(v4 + 16) = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
      *(v4 + 24) = CFDataCreate(v6, &bytes[8], 32);
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      CFDataGetLength(*(v4 + 8));
      CFDataGetBytePtr(*(v4 + 8));
      if (!cchkdf())
      {
        *(v4 + 32) = CFDataCreate(v6, v13, 8);
        *(v4 + 40) = CFDataCreate(v6, &v13[8], 32);
        cc_clear();
        cc_clear();
        result = 1;
        goto LABEL_7;
      }
    }

    v7 = *MEMORY[0x277CBEE48];
    v8 = v6;
    v9 = 2;
  }

  else
  {
    v8 = *MEMORY[0x277CBECE8];
    v7 = *MEMORY[0x277CBEE48];
    v9 = 6;
  }

  v10 = CFErrorCreate(v8, v7, v9, 0);
  result = 0;
  *a3 = v10;
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSCopier_InitializeFromKey(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v6 = malloc_type_malloc(0x30uLL, 0x60040620FCCB7uLL);
  if (v6)
  {
    v7 = v6;
    *(a1 + 64) = v6;
    v8 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(a2);
    v7[1] = CFDataCreateMutableCopy(v8, Length, a2);
    v10 = ccsha256_di();
    result = _CSCopier_DeriveKeysFromCopyKey(a1, v10, a3);
    if (result)
    {
      *(a1 + 64) = v7;
      return 1;
    }
  }

  else
  {
    v12 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    result = 0;
    *a3 = v12;
  }

  return result;
}

uint64_t CSCopier_ExportCopyKey(uint64_t a1, CFMutableDataRef *a2, CFErrorRef *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277CBECE8];
    if (v5)
    {
      Length = CFDataGetLength(v5);
      *a2 = CFDataCreateMutableCopy(v6, Length, *(v4 + 8));
      return 1;
    }

    v11 = *MEMORY[0x277CBEE48];
    v10 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = *MEMORY[0x277CBEE48];
  }

  v12 = CFErrorCreate(v10, v11, 6, 0);
  result = 0;
  *a3 = v12;
  return result;
}

uint64_t CSCopier_ExportCopyCredentials(uint64_t a1, CFMutableDataRef *a2, CFMutableDataRef *a3, CFErrorRef *a4)
{
  v5 = *(a1 + 64);
  if (v5 && (v6 = *(v5 + 16)) != 0 && *(v5 + 24))
  {
    v9 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(v6);
    *a2 = CFDataCreateMutableCopy(v9, Length, *(v5 + 16));
    v11 = CFDataGetLength(*(v5 + 24));
    *a3 = CFDataCreateMutableCopy(v9, v11, *(v5 + 24));
    return 1;
  }

  else
  {
    v13 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t CSCopier_CreateChunkSignature(uint64_t a1, uint64_t a2, const __CFData *a3, CFErrorRef *a4)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = *MEMORY[0x277CBEE48];
    v11 = 6;
LABEL_8:
    *a4 = CFErrorCreate(v9, v10, v11, 0);
    return 0;
  }

  if (!a2)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = *MEMORY[0x277CBEE48];
    v11 = 11;
    goto LABEL_8;
  }

  v7 = *(v5 + 40);

  return _CSCopier_PermuteChunkSignature(a1, a2, v7, a3, a4);
}

uint64_t _CSCopier_PermuteChunkSignature(uint64_t a1, uint64_t a2, const __CFData *a3, const __CFData *a4, CFErrorRef *a5)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  if (v6 && (v7 = *(v6 + 32)) != 0)
  {
    v15[0] = a2;
    v15[1] = 0;
    if (CFDataGetLength(v7) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(v15 + v10);
        *(v15 + v10) = CFDataGetBytePtr(*(v6 + 32))[v10] ^ v11;
        ++v10;
      }

      while (CFDataGetLength(*(v6 + 32)) > v10);
    }

    if (_CSCopier_EncryptBlob(v15, a3, a4, a5))
    {
      result = 1;
    }

    else
    {
      cc_clear();
      result = 0;
    }
  }

  else
  {
    v13 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a5 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSCopier_CreateFORD(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = *(v4 + 24);

    return _CSCopier_PermuteFORD(a1, v6, a2, a3);
  }

  else
  {
    *a3 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    return 0;
  }
}

uint64_t _CSCopier_PermuteFORD(uint64_t a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 64);
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v14[0] = 0;
    v14[1] = 0;
    CFDataGetLength(v6);
    __memset_chk();
    if (CFDataGetLength(*(v5 + 16)) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(v14 + v9);
        *(v14 + v9) = CFDataGetBytePtr(*(v5 + 16))[v9] ^ v10;
        ++v9;
      }

      while (CFDataGetLength(*(v5 + 16)) > v9);
    }

    if (_CSCopier_EncryptBlob(v14, a2, a3, a4))
    {
      result = 1;
    }

    else
    {
      cc_clear();
      result = 0;
    }
  }

  else
  {
    v12 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a4 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSCopier_PermuteFileSignature(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  if (v4 && (v5 = *(v4 + 32)) != 0)
  {
    v12[0] = 0;
    v12[1] = 0;
    CFDataGetLength(v5);
    __memset_chk();
    if (CFDataGetLength(*(v4 + 32)) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v12 + v7);
        *(v12 + v7) = CFDataGetBytePtr(*(v4 + 32))[v7] ^ v8;
        ++v7;
      }

      while (CFDataGetLength(*(v4 + 32)) > v7);
    }

    if (_CSCopier_EncryptBlob(v12, *(v4 + 40), a2, a3))
    {
      result = 1;
    }

    else
    {
      cc_clear();
      result = 0;
    }
  }

  else
  {
    v10 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a3 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _CSCopier_EncryptBlob(uint64_t a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4)
{
  ccaes_ctr_crypt_mode();
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  CFDataGetBytePtr(a3);
  if (!ccctr_one_shot())
  {
    return 1;
  }

  v7 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 10, 0);
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t CKStreamKeyDerivation(CFDataRef theData, const __CFData *a2, const __CFData *a3, CFDataRef *a4, CFDataRef *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  *bytes = 0u;
  v23 = 0u;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!theData || CFDataGetLength(theData) != 16)
  {
    v10 = @"Bad assetKey";
    goto LABEL_14;
  }

  if (!a3 || CFDataGetLength(a3) != 16)
  {
    v10 = @"Bad salt";
    goto LABEL_14;
  }

  if (!a2 || CFDataGetLength(a2) <= 15)
  {
    v10 = @"Bad concatenatedChunkKeys";
LABEL_14:
    v11 = CKErrorCreateWithFormat(6, v10);
    goto LABEL_15;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a3);
  v21 = CFDataGetLength(a3);
  v18 = CCKeyDerivationHMac();
  if (v18)
  {
    v11 = CKErrorCreateWithFormat(5, @"CCKeyDerivationHMac %d", v18, 0, 0, BytePtr, v21, bytes, 32);
  }

  else
  {
    if (!a4)
    {
      result = 1;
      goto LABEL_20;
    }

    v19 = SecCFAllocatorZeroize();
    v20 = CFDataCreate(v19, bytes, 32);
    if (v20)
    {
      v12 = v20;
      CFRetain(v20);
      *a4 = v12;
      v13 = 1;
      goto LABEL_19;
    }

    v11 = CKErrorCreateWithFormat(2, @"CKStreamKeyDerivation", Length, 0, 0, BytePtr, v21, bytes, 32);
  }

LABEL_15:
  v12 = v11;
  if (a5 && v11)
  {
    CFRetain(v11);
    v13 = 0;
    *a5 = v12;
LABEL_19:
    CFRelease(v12);
    result = v13;
    goto LABEL_20;
  }

  v13 = 0;
  result = 0;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CKChunkCryptorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkCryptorGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 48);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 40) = result + 48;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKChunkCryptorCreate(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  Class = CKChunkDigestResultsGetClass(a3);
  if (Class != 1)
  {
    if (Class == 2)
    {
      cf = 0;
      v9 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  cf = 0;
  v9 = 16;
LABEL_7:
  v15 = 0;
  *a1 = 0;
  v11 = CKChunkCryptorAllocate(&v15, Class, v9);
  v10 = 0;
  v12 = v15;
  if (v11 && v15)
  {
    cf = 0;
    CKBaseRetain(a3);
    *(v12 + 3) = a3;
    v13 = _requestCallbacks_0[4 * v12[4]];
    if (v13 && (v13)(v12, a2, a3, a4, &cf))
    {
      CFRetain(v12);
      *a1 = v12;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t CKChunkCryptorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_0[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkCryptorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_0[4 * v1 + 2]();
  }

  else
  {
    return 0;
  }
}

void _CKChunkCryptorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_0[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
}

uint64_t CKChunkDigestResultsV1Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKChunkDigestResultsAllocate(&v3, 1, 0);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKChunkDigestResultsV1Create(void *a1, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  v12 = 0;
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  cf = 0;
  v8 = 0;
  if (CKChunkDigestResultsAllocate(&cf, 1, 0) && cf)
  {
    if (_CKChunkDigestResultsInit(cf, a2, a3, a4, &v12))
    {
      if (cf)
      {
        CFRetain(cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      *a1 = v9;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL CKChunkDigestResultsV1SignatureAndKeyEqual(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      result = CKChunkSignaturesEqual(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        v5 = *(a1 + 32);
        v6 = *(a2 + 32);
        if (!(v5 | v6))
        {
          return 1;
        }

        return CKChunkKeysEqual(v5, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CKChunkDigestArgumentsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkDigestArgumentsGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 32);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 24) = result + 32;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t _CKChunkDigestArgumentsInit(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  *(a1 + 20) = a2;
  return 1;
}

uint64_t CKChunkDigestArgumentsChunkScheme(uint64_t a1)
{
  v1 = _requestCallbacks_1[6 * *(a1 + 16)];
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkSchemeByte(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkEncryptionKeyScheme(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkDigestArgumentsChunkEncryptionKeySchemeByte(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOBYTE(result) = (_requestCallbacks_1[6 * v1 + 2])();
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t CKChunkDigestArgumentsBoundaryKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return (_requestCallbacks_1[6 * v1 + 3])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKChunkDigestArgumentsCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 5])();
  }

  return result;
}

uint64_t _CKChunkDigestArgumentsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKChunkDigestArgumentsCFCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_1[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileDigestArgumentsV2Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKFileDigestArgumentsAllocate(&v3, 1, 24);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

void CKFileDigestArgumentsV2Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 24);
  }

  *(v2 + 8) = 0;
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 24);
  }

  *(v4 + 16) = 0;
}

uint64_t _CKFileDigestArgumentsV2Create(CFTypeRef *a1, int a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  v17 = 0;
  *a1 = 0;
  if ((a3 != 0) == (a4 != 0))
  {
    return 0;
  }

  v10 = CKFileDigestArgumentsAllocate(&cf, 2, 24);
  v11 = 0;
  v12 = cf;
  if (v10 && cf)
  {
    if (_CKChunkDigestArgumentsInit(cf, 1, &v17))
    {
      v13 = cf;
      **(cf + 3) = a2;
      if (a3)
      {
        CFRetain(a3);
        v13 = cf;
        *(*(cf + 3) + 8) = a3;
      }

      if (a4)
      {
        CFRetain(a4);
        v13 = cf;
        *(*(cf + 3) + 16) = a4;
      }

      CFRetain(v13);
      v14 = v17;
      *a1 = cf;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v14 = v17;
      if (a5 && v17)
      {
        CFRetain(v17);
        v11 = 0;
        v14 = v17;
        *a5 = v17;
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

CFStringRef CKFileDigestArgumentsV2CopyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = @"boundaryKey";
  }

  else
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = @"fileKey";
  }

  hex_with_data = ck_cfstring_create_hex_with_data(v3);
  if (hex_with_data)
  {
    v6 = hex_with_data;
    if (*(a1 + 20))
    {
      v7 = &unk_243480212;
    }

    else
    {
      v7 = "un";
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 %sencrypted %@ %@", v7, v4, hex_with_data);
    CFRelease(v6);
    return v8;
  }

LABEL_10:
  if (*(a1 + 20))
  {
    v10 = &unk_243480212;
  }

  else
  {
    v10 = "un";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 %sencrypted (null keys)", v10);
}

uint64_t CKFileSignatureGeneratorAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKFileSignatureGeneratorGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 56);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = result + 56;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKFileSignatureGeneratorCreate(void *a1, const void *a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  Class = CKFileDigestArgumentsGetClass(a2);
  if (Class == 1)
  {
    cf = 0;
    v5 = 96;
  }

  else
  {
    if (Class != 2)
    {
      return 0;
    }

    cf = 0;
    v5 = 8;
  }

  v11 = 0;
  *a1 = 0;
  v6 = CKFileSignatureGeneratorAllocate(&v11, Class, v5);
  v7 = 0;
  v8 = v11;
  if (v6 && v11)
  {
    cf = 0;
    CKBaseRetain(a2);
    *(v8 + 3) = a2;
    v9 = _requestCallbacks_2[4 * v8[4]];
    if (v9 && (v9)(v8, a2, &cf))
    {
      CFRetain(v8);
      *a1 = v8;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t CKFileSignatureGeneratorUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_2[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileSignatureGeneratorFinish(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_2[4 * v1 + 2]();
  }

  else
  {
    return 0;
  }
}

void _CKFileSignatureGeneratorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_2[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CKBaseRelease(v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    CKBaseRelease(v4);
  }

  *(a1 + 32) = 0;
}

const void *CSsql_get64(uint64_t a1, char a2, char *a3, ...)
{
  va_start(va, a3);
  v25 = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  va_copy(&ppStmt[1], va);
  v6 = sqlite3_vmprintf(a3, va);
  if ((a2 & 1) != 0 || !CKReadLockChunkStore(a1))
  {
    DB = CSChunkStoreGetDB(a1);
    if (!DB)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s SQL DB not open: '%s'", "CSsql_get64", a3);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_6();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v24 = v7;
      goto LABEL_20;
    }

    v9 = DB;
    v10 = sqlite3_prepare_v2(DB, v6, -1, ppStmt, 0);
    if (v10)
    {
      v11 = v10;
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v12 = *MEMORY[0x277CBECE8];
      v13 = sqlite3_errmsg(v9);
      v7 = CFStringCreateWithFormat(v12, 0, @"sqlite3_prepare_v2 failed: %d %s", v11, v13);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        if (!v7)
        {
          goto LABEL_24;
        }

        CFRelease(v7);
LABEL_23:
        v7 = 0;
LABEL_24:
        if (a2)
        {
          goto LABEL_26;
        }

LABEL_25:
        CKUnlockChunkStore(a1);
        goto LABEL_26;
      }

      *buf = 138543362;
      v24 = v7;
LABEL_20:
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_21;
    }

    v17 = sqlite3_step(ppStmt[0]);
    if (v17 != 101)
    {
      v18 = v17;
      if (v17 == 100)
      {
        v7 = sqlite3_column_int64(ppStmt[0], 0);
        goto LABEL_40;
      }

      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v19 = *MEMORY[0x277CBECE8];
        v20 = sqlite3_errmsg(v9);
        v7 = CFStringCreateWithFormat(v19, 0, @"sqlite3_step failed: %d %s", v18, v20);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSsql_get64_cold_4();
        }

        v21 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v24 = v7;
          _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!v7)
        {
LABEL_40:
          sqlite3_finalize(ppStmt[0]);
          if (a2)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        CFRelease(v7);
      }
    }

    v7 = 0;
    goto LABEL_40;
  }

  v7 = 0;
LABEL_26:
  sqlite3_free(v6);
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CSsql_get64_safe(uint64_t a1, char a2, sqlite3_int64 *a3, char *a4, ...)
{
  va_start(va, a4);
  v30 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v27 = 0;
  if (a3)
  {
    va_copy(v27, va);
    v8 = sqlite3_vmprintf(a4, va);
    if ((a2 & 1) == 0 && CKReadLockChunkStore(a1))
    {
      v9 = 0;
LABEL_37:
      sqlite3_free(v8);
      goto LABEL_38;
    }

    DB = CSChunkStoreGetDB(a1);
    if (!DB)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s SQL DB not open: '%s'", "CSsql_get64_safe", a4);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_6();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 138543362;
      v29 = v9;
      goto LABEL_31;
    }

    v11 = DB;
    v12 = sqlite3_prepare_v2(DB, v8, -1, &ppStmt, 0);
    if (v12)
    {
      v13 = v12;
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v14 = *MEMORY[0x277CBECE8];
      v15 = sqlite3_errmsg(v11);
      v9 = CFStringCreateWithFormat(v14, 0, @"sqlite3_prepare_v2 failed: %d %s", v13, v15);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_2();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        if (!v9)
        {
          goto LABEL_35;
        }

        CFRelease(v9);
LABEL_34:
        v9 = 0;
LABEL_35:
        if (a2)
        {
          goto LABEL_37;
        }

LABEL_36:
        CKUnlockChunkStore(a1);
        goto LABEL_37;
      }

      *buf = 138543362;
      v29 = v9;
LABEL_31:
      _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_32;
    }

    v21 = sqlite3_step(ppStmt);
    if (v21 != 101)
    {
      v22 = v21;
      if (v21 == 100)
      {
        *a3 = sqlite3_column_int64(ppStmt, 0);
        v9 = 1;
        goto LABEL_52;
      }

      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSsql_get64_safe_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v23 = *MEMORY[0x277CBECE8];
        v24 = sqlite3_errmsg(v11);
        v9 = CFStringCreateWithFormat(v23, 0, @"sqlite3_step failed: %d %s", v22, v24);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSsql_get64_safe_cold_4();
        }

        v25 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v9;
          _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!v9)
        {
LABEL_52:
          sqlite3_finalize(ppStmt);
          if (a2)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        CFRelease(v9);
      }
    }

    v9 = 0;
    goto LABEL_52;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSsql_get64_safe_cold_7();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"out64 parameter is NULL!");
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSsql_get64_safe_cold_8();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v9 = 0;
LABEL_38:
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

os_log_t __CSopenDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_85()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_90()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_95()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_100()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_105()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_113()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t _CSMigrateChunkStore(const char *a1, sqlite3 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 == 8)
  {
    result = 0;
    goto LABEL_28;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _CSMigrateChunkStore_cold_1();
  }

  v7 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    *v14 = a3;
    *&v14[8] = 2048;
    *&v14[10] = 8;
    _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEFAULT, "migrating chunk store from version %llu to version %llu", &v13, 0x16u);
  }

  if ((a3 - 5) < 2)
  {
LABEL_13:
    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "ALTER TABLE CSStorageFileTable ADD COLUMN ft_status INTEGER");
    if (!result)
    {
      LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSRegisteredFileTable_crt_id_inx");
      if (!result)
      {
        LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSRegisteredFileTable_crt_iid_inx");
        if (!result)
        {
          LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP TABLE IF EXISTS CSRegisteredFileTable");
          if (!result)
          {
LABEL_17:
            result = CSsql_corruption_checking_do(a1, 0, a2, "ALTER TABLE CSChunkTable ADD COLUMN subchunksBlob BLOB");
            if (!result)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_18:
    v8 = result;
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSMigrateChunkStore_cold_2();
    }

    v9 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(a2);
      v13 = 67109378;
      *v14 = v8;
      *&v14[4] = 2080;
      *&v14[6] = v10;
      _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "sqlite3 error on migration: %d %s", &v13, 0x12u);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  if (a3 == 7)
  {
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSStorageFileTable_ft_rowid_inx");
    if (result)
    {
      goto LABEL_18;
    }

    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP INDEX IF EXISTS CSStorageFileTable_ft_inode_inx");
    if (result)
    {
      goto LABEL_18;
    }

    LODWORD(result) = CSsql_corruption_checking_do(a1, 0, a2, "DROP TABLE IF EXISTS CSStorageVolumeTable");
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _CSMigrateChunkStore_cold_3();
  }

  v11 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v13 = 134218240;
    *v14 = a3;
    *&v14[8] = 2048;
    *&v14[10] = 8;
    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "attempting to migrate chunk store from version %llu to version %llu, which is not supported", &v13, 0x16u);
  }

  result = 5;
LABEL_28:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CSopenDB_block_invoke_119()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_163()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_168()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_173()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSopenDB_block_invoke_179()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CScloseDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

void _CSRetainChunk(uint64_t a1, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _CSTokenForChunkSignature(a1, a2, 115);
  if ((_CSRetainChunkForRowID(a1, v4) & 1) == 0)
  {
    memset(v8, 0, 57);
    DWORD1(v8[3]) = 101;
    if (!_CSAddChunk(a1, a2, v8))
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSRetainChunk_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to create entry for chunk:\n");
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _CSRetainChunk_cold_2();
        }

        v6 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v10 = v5;
          _os_log_impl(&dword_243431000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      printStoredChunk(v8);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t CSReadChunkData(uint64_t a1, int *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 1);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CSReadChunkData_cold_1();
  }

  v5 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109632;
    *v16 = v3;
    *&v16[4] = 2048;
    *&v16[6] = v4;
    v17 = 2048;
    v18 = 0;
    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "fsopen(%d,%llu,0x%0llx): unimplemented; returning -1\n", buf, 0x1Cu);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSReadChunkData_cold_2();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = __error();
    v10 = strerror(*v9);
    v11 = CFStringCreateWithFormat(v6, 0, @"%s unable to open storage file %lld,%lld:%s\n", "CSReadChunkData", v7, v8, v10);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSReadChunkData_cold_3();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v16 = v11;
      _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

os_log_t __CSReadChunkData_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSReadChunkData_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKLockChunks(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    for (; a3; --a3)
    {
      v7 = *a2++;
      _CSRetainChunk(a1, v7);
    }

    return CKUnlockChunkStore(a1);
  }

  return result;
}

uint64_t CKUnlockChunks(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    for (; a3; --a3)
    {
      v7 = *a2++;
      _CSReleaseChunkForSignature(a1, v7);
    }

    return CKUnlockChunkStore(a1);
  }

  return result;
}

const char *CKCreateChunkIDsFromFile(const void *a1, const __CFURL *a2, uint64_t a3, uint64_t a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateChunkIDsFromFile_cold_1();
  }

  result = createPathFromUrl(a2);
  if (result)
  {
    v9 = result;
    v10 = CSChunkFile(a1, result, a3, a4, 0);
    free(v9);
    return v10;
  }

  return result;
}

CFStringRef CSChunkFile(const void *a1, const char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v20 = 0;
  if (CKChunkStoreIsReadOnly(a1))
  {
    goto LABEL_2;
  }

  v11 = open(a2, 0);
  if (v11 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFile_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    v15 = *MEMORY[0x277CBECE8];
    v16 = __error();
    v17 = strerror(*v16);
    v10 = CFStringCreateWithFormat(v15, 0, @"open failed for %s: %s", a2, v17);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFile_cold_2();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
LABEL_2:
      v10 = 0;
    }
  }

  else
  {
    v12 = v11;
    v19 = a2;
    LODWORD(v20) = v11;
    v21 = a3;
    v22 = a4;
    if (chunkFdForStorage(a1, &v19, a5, &v23))
    {
      v10 = 0;
    }

    else
    {
      v10 = v23;
    }

    CKCommitDatabaseTransactions(a1);
    close(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CKCreateChunkIDsFromFD(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateChunkIDsFromFD_cold_1();
  }

  return CSChunkFD(a1, a2, a3, a4);
}

uint64_t CSChunkFD(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v18 = 0;
  v8 = 0;
  if (CKChunkStoreIsReadOnly(a1))
  {
    goto LABEL_17;
  }

  v9 = v24;
  bzero(v24, 0x400uLL);
  if (get_path_for_fd(a2, v24))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CSChunkFD_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v9 = CFStringCreateWithFormat(v10, 0, @"get_path_for_fd failed for fd:%d: %d (%s)\n", a2, v11, v13);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSChunkFD_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v9;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v9)
      {
        goto LABEL_13;
      }

      CFRelease(v9);
    }

    v9 = 0;
  }

LABEL_13:
  v17 = v9;
  LODWORD(v18) = a2;
  v19 = a3;
  v20 = a4;
  if (chunkFdForStorage(a1, &v17, 0, &v21))
  {
    v8 = 0;
  }

  else
  {
    v8 = v21;
  }

  CKCommitDatabaseTransactions(a1);
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

__CFArray *CKChunkListForToken(uint64_t a1, sqlite3_int64 a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKChunkListForToken_cold_1();
  }

  v15 = 0;
  Mutable = 0;
  if (!CKLockChunkStore(a1))
  {
    v5 = _CSChunkRefsForToken(a1, a2, &v15);
    if (v5)
    {
      v6 = v5;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (v15)
      {
        v7 = 0;
        v8 = v6;
        do
        {
          v14 = 0;
          v9 = *v8;
          v8 += 2;
          if (_CSChunkForToken(a1, &v14, v9))
          {
            v10 = v14;
            v11 = CKSignatureSize(v14 + 56);
            v12 = CFDataCreate(0, v10, v11 + 57);
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v12);
            free(v14);
          }

          ++v7;
        }

        while (v7 < v15);
      }

      free(v6);
    }

    else
    {
      Mutable = 0;
    }

    CKUnlockChunkStore(a1);
  }

  return Mutable;
}

unsigned int *CKChunkRefsForToken(uint64_t a1, sqlite3_int64 a2, size_t *a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKChunkRefsForToken_cold_1();
  }

  if (CKLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSChunkRefsForToken(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

__CFData *CKCopyDataForChunkID(uint64_t a1, _BYTE *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCopyDataForChunkID_cold_5();
  }

  v14 = 0;
  Mutable = 0;
  if (!CKLockChunkStore(a1))
  {
    v5 = _CSTokenForChunkSignature(a1, a2, 115);
    if (v5 && _CSChunkForToken(a1, &v14, v5))
    {
      v6 = *MEMORY[0x277CBECE8];
      Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], *(v14 + 10));
      CFDataSetLength(Mutable, *(v14 + 10));
      BytePtr = CFDataGetBytePtr(Mutable);
      v8 = *(v14 + 10);
      CSReadChunkData(BytePtr, v14);
      if (v8)
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CKCopyDataForChunkID_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v9 = CFStringCreateWithFormat(v6, 0, @"%s failed short read of StoredChunk for token: %llu\n", "CKCopyDataForChunkID", v5);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            CKCopyDataForChunkID_cold_2();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v16 = v9;
            _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }

      free(v14);
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CKCopyDataForChunkID_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        Mutable = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s failed to get StoredChunk for token: %llu\n", "CKCopyDataForChunkID", v5);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CKCopyDataForChunkID_cold_4();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v16 = Mutable;
          _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!Mutable)
        {
          goto LABEL_26;
        }

        CFRelease(Mutable);
      }

      Mutable = 0;
    }

LABEL_26:
    CKUnlockChunkStore(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Mutable;
}

os_log_t __CKCopyDataForChunkID_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_234()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKCopyDataForChunkID_block_invoke_2_241()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t _StoreChunk(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v72.tv_sec = 0;
  *&v72.tv_usec = 0;
  v6 = _CSGetStorageFile(a1, a2);
  if (!v6 || (v7 = v6, v8 = v6[2], v8 == -1))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_23();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = __error();
    v18 = strerror(*v17);
    v13 = CFStringCreateWithFormat(v16, 0, @"unable to open storage file: %s\n", v18);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_24();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v75.st_dev = 138543362;
    *&v75.st_mode = v13;
    v15 = &v75;
    goto LABEL_19;
  }

  memset(&v75, 0, sizeof(v75));
  if (fstat(v8, &v75))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v9 = *MEMORY[0x277CBECE8];
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    v13 = CFStringCreateWithFormat(v9, 0, @"fstat failed: (%d) %s\n", v10, v12);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      if (v13)
      {
        CFRelease(v13);
      }

LABEL_22:
      v19 = 0;
      goto LABEL_23;
    }

    *buf = 138543362;
    v74 = v13;
    goto LABEL_11;
  }

  st_size = v75.st_size;
  if (lseek(*(v7 + 8), v75.st_size, 0) == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_21();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v29 = *MEMORY[0x277CBECE8];
    v30 = *__error();
    v31 = __error();
    v32 = strerror(*v31);
    v13 = CFStringCreateWithFormat(v29, 0, @"lseek failed: (%d) %s\n", v30, v32);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_22();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138543362;
    v74 = v13;
    goto LABEL_11;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    _StoreChunk_cold_3();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
  {
    v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Writing to SF rowID:%llu at o:0x%llx\n", *(v7 + 16), v75.st_size);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_4();
    }

    v24 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v74 = v23;
      _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  v25 = *(a2 + 1);
  v26 = CKSchemeAndSignatureSize(a2 + 84);
  v27 = v26;
  if (v25)
  {
    v28 = v26 + a2[20] + 4;
    __buf = bswap32(v28);
    if ((st_size + v28) >= 20971621)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"orig_sz (%lld) + used_sz (%u) is too big: %u < %llu \n", st_size, v28, 20971620, st_size + v28);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_12();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 138543362;
      v74 = v13;
LABEL_11:
      v15 = buf;
LABEL_19:
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", v15, 0xCu);
      goto LABEL_20;
    }

    if (write(*(v7 + 8), &__buf, 4uLL) == 4)
    {
      if (write(*(v7 + 8), a2 + 21, v27) == v27)
      {
        v37 = write(*(v7 + 8), *(a2 + 1), a2[20]);
        v36 = a2[20];
        if (v37 == v36)
        {
          goto LABEL_57;
        }

        v62 = v37;
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_9();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
LABEL_107:
          v63 = *(v7 + 8);
          if (v63 != -1 && ftruncate(v63, st_size))
          {
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              _StoreChunk_cold_19();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              v64 = *MEMORY[0x277CBECE8];
              v65 = *(v7 + 16);
              v66 = *__error();
              v67 = __error();
              v68 = strerror(*v67);
              v69 = CFStringCreateWithFormat(v64, 0, @"ftruncate failed for rowId:%lld: %d (%s)\n", v65, v66, v68);
              if (CK_DEFAULT_LOG_BLOCK != -1)
              {
                _StoreChunk_cold_20();
              }

              v70 = CK_DEFAULT_LOG_INTERNAL;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
              {
                v75.st_dev = 138543362;
                *&v75.st_mode = v69;
                _os_log_impl(&dword_243431000, v70, OS_LOG_TYPE_ERROR, "%{public}@", &v75, 0xCu);
              }

              if (v69)
              {
                CFRelease(v69);
              }
            }
          }

          _CSCloseStorageFile(a1, v7, 0);
          goto LABEL_22;
        }

        v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"write failed: %d != %d\n", v62, a2[20]);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_10();
        }

        v47 = CK_DEFAULT_LOG_INTERNAL;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
LABEL_105:
          if (v46)
          {
            CFRelease(v46);
          }

          goto LABEL_107;
        }

        *buf = 138543362;
        v74 = v46;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_7();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_107;
        }

        v57 = *MEMORY[0x277CBECE8];
        v58 = *(v7 + 16);
        v59 = *__error();
        v60 = __error();
        v61 = strerror(*v60);
        v46 = CFStringCreateWithFormat(v57, 0, @"write failed for rowID:%llu: %d (%s)\n", v58, v59, v61);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          _StoreChunk_cold_8();
        }

        v47 = CK_DEFAULT_LOG_INTERNAL;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        *buf = 138543362;
        v74 = v46;
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      v48 = *MEMORY[0x277CBECE8];
      v49 = *(v7 + 16);
      v50 = *__error();
      v51 = __error();
      v52 = strerror(*v51);
      v46 = CFStringCreateWithFormat(v48, 0, @"write failed for rowID:%llu: %d (%s)\n", v49, v50, v52);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _StoreChunk_cold_6();
      }

      v47 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = 138543362;
      v74 = v46;
    }

LABEL_104:
    _os_log_impl(&dword_243431000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_105;
  }

  __buf = bswap32(a2[1]);
  if (write(*(v7 + 8), &__buf, 4uLL) != 4)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_13();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v42 = *MEMORY[0x277CBECE8];
    v43 = *(v7 + 8);
    v44 = __error();
    v45 = strerror(*v44);
    v46 = CFStringCreateWithFormat(v42, 0, @"write of %ld bytes on fd %d failed : %s", 4, v43, v45);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_14();
    }

    v47 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v74 = v46;
    goto LABEL_104;
  }

  if (v27 != write(*(v7 + 8), a2 + 21, v27))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_15();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v53 = *MEMORY[0x277CBECE8];
    v54 = *(v7 + 8);
    v55 = __error();
    v56 = strerror(*v55);
    v46 = CFStringCreateWithFormat(v53, 0, @"write of %ld bytes on fd %d failed : %s", v27, v54, v56);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_16();
    }

    v47 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v74 = v46;
    goto LABEL_104;
  }

  v33 = a2[20];
  v34 = CSCopyData(*a2, *(v7 + 8), v33, 0x8000);
  v35 = v34;
  if (v33 != v34)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_17();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CSCopyData failed, copied %d bytes\n", v35);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _StoreChunk_cold_18();
    }

    v47 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 138543362;
    v74 = v46;
    goto LABEL_104;
  }

  v28 = (v27 + v34 + 4);
  LODWORD(v36) = a2[20];
LABEL_57:
  v39 = *(v7 + 16);
  v38 = *(v7 + 24);
  v40 = v38 >= v28;
  v41 = v38 - v28;
  if (!v40)
  {
    v41 = 0;
  }

  *(v7 + 24) = v41;
  *(a3 + 12) = v39;
  *(a3 + 4) = v75.st_ino;
  *a3 = v75.st_dev;
  *(a3 + 24) = v75.st_size;
  *(a3 + 40) = v36;
  *(a3 + 52) = 115;
  gettimeofday(&v72, 0);
  *(a3 + 44) = v72.tv_sec;
  if (*(v7 + 24) >> 10 > 0xCuLL)
  {
    _CSUpdateStorageFileInfo(a1, v7);
    v19 = 1;
  }

  else
  {
    v19 = 1;
    _CSCloseStorageFile(a1, v7, 1);
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t addSourceChunk(uint64_t a1, unsigned int a2, const void **a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v7 == v6)
  {
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = 2 * v8;
    if (v7 >> 4 >= 0x271)
    {
      v6 = v7 + 100;
    }

    else
    {
      v6 = v9;
    }

    if (v6 >= v7 && ((a2 * v6) & 0xFFFFFFFF00000000) == 0)
    {
      v10 = malloc_type_realloc(*a1, v6 * a2, 0x100004077774924uLL);
      if (v10)
      {
        *a1 = v10;
        *(a1 + 12) = v6;
        v11 = *(a1 + 8);
        goto LABEL_14;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 8);
LABEL_14:
  if (v11 >= v6)
  {
    addSourceChunk_cold_1();
  }

  if (!*a1)
  {
    addSourceChunk_cold_3();
  }

  v12 = *a1 + v7 * a2;
  memcpy(v12, a3, a2);
  *(v12 + 8) = 0;
  v13 = malloc_type_malloc(*(v12 + 80), 0x42246CBCuLL);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  memcpy(v13, a3[1], *(v12 + 80));
  *(v12 + 8) = v14;
  v15 = *(a1 + 8) + 1;
  *(a1 + 8) = v15;
  if (v7 >= v15)
  {
    addSourceChunk_cold_2();
  }

  return 0;
}

uint64_t CSChunkStorageCallback(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    if (!CKLockChunkStore(*a1))
    {
      v8 = _CSFlushChunkBatch(a1);
      CKUnlockChunkStore(*a1);
      return v8;
    }

    return 0xFFFFFFFFLL;
  }

  if (addSourceChunk(a1 + 264, *(a1 + 308), v2))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 312) + *(v2 + 80);
  *(a1 + 312) = v3;
  v4 = *(a1 + 424);
  v5 = *(a1 + 80);
  if (v4 != v5 && v3 > 0x500000)
  {
    if (!CKLockChunkStore(*a1))
    {
      v6 = _CSFlushChunkBatch(a1);
      CKUnlockChunkStore(*a1);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 == v5)
  {
    if (!CKLockChunkStore(*a1))
    {
      v10 = _CSFlushChunkBatch(a1);
      v11 = *a1;
      if (v10)
      {
        CKUnlockChunkStore(v11);
      }

      else
      {
        v12 = _CSRegisterStorageChunkList(v11, *(a1 + 296), *(a1 + 288), *(a1 + 56));
        CKUnlockChunkStore(*a1);
        if (v12)
        {
          *(a1 + 280) = v12;
          v13 = *(a1 + 344);
          if (v13)
          {
            v15 = 0;
            memset(v14, 0, sizeof(v14));
            v13(v2, *(a1 + 352));
            (*(a1 + 344))(v14, *(a1 + 352));
          }

          return 0;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  v9 = *(a1 + 344);
  if (v9)
  {
    v9(v2, *(a1 + 352));
  }

  return 0;
}

uint64_t _CSFlushChunkBatch(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 272);
  v2 = *(a1 + 304);
  v3 = v1 - v2;
  if (v1 < v2)
  {
    _CSFlushChunkBatch_cold_4();
  }

  if (v1 == v2)
  {
    result = 0;
    goto LABEL_25;
  }

  v6 = *(a1 + 308);
  if (!v6)
  {
    _CSFlushChunkBatch_cold_3();
  }

  v7 = *(a1 + 264);
  v8 = malloc_type_realloc(*(a1 + 296), 8 * (*(a1 + 288) + v3), 0x100004000313F17uLL);
  if (!v8)
  {
LABEL_24:
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v9 = v7 + v6 * v2;
  *(a1 + 296) = v8;
  if ((_CSStoreChunks(*a1, v9, v3, v6, &v8[*(a1 + 288)], a1) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      _CSFlushChunkBatch_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSStoreChunks failed, batchIndex:%u, batchCount:%u\n", v2, v3);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        _CSFlushChunkBatch_cold_2();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    goto LABEL_24;
  }

  v10 = 0;
  *(a1 + 288) += v3;
  do
  {
    v11 = v9 + v10;
    v12 = *(v11 + 8);
    if (v12)
    {
      free(v12);
      *(v11 + 8) = 0;
    }

    if (*(v11 + 24) == 1 && *(a1 + 181) == 1)
    {
      *(a1 + 432) += *(v11 + 80);
      ++*(a1 + 456);
    }

    v10 += v6;
    --v3;
  }

  while (v3);
  result = 0;
  *(a1 + 304) = *(a1 + 272);
  *(a1 + 312) = 0;
LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CKRemoveStoredFile(uint64_t a1, sqlite3_int64 a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKRemoveStoredFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    result = CKLockChunkStore(a1);
    if (!result)
    {
      _CSRemoveStoredFile(a1, a2);

      return CKUnlockChunkStore(a1);
    }
  }

  return result;
}

unint64_t CKCompactStorage(uint64_t a1, unint64_t a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCompactStorage_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStoreNoFlag(a1))
  {
    return 0;
  }

  v5 = _CSCompactStorage(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

CFStringRef CKCreateStoredFileWithFlags(const void *a1, const char *a2, char a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateStoredFileWithFlags_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    return 0;
  }

  return CSChunkFile(a1, a2, 0, 0, a3);
}

CFStringRef CKCreateStoredFile(const void *a1, const char *a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCreateStoredFile_cold_1();
  }

  return CKCreateStoredFileWithFlags(a1, a2, 0);
}

uint64_t CKCommitChunkedFile(uint64_t *a1, sqlite3_int64 a2, int a3)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCommitChunkedFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    if (a3)
    {

      return _CSCommitChunkedFile(a1, a2);
    }

    else
    {
      result = CKLockChunkStore(a1);
      if (!result)
      {
        _CSCommitChunkedFile(a1, a2);

        return CKUnlockChunkStore(a1);
      }
    }
  }

  return result;
}

unsigned int *CKCopyChunkListForStoredFileToken(uint64_t a1, sqlite3_int64 a2, size_t *a3, int a4)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKCopyChunkListForStoredFileToken_cold_1();
  }

  if (a4)
  {

    return _CSChunkRefsForToken(a1, a2, a3);
  }

  else if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  else
  {
    v9 = _CSChunkRefsForToken(a1, a2, a3);
    CKUnlockChunkStore(a1);
    return v9;
  }
}

uint64_t CKGetLocationOfChunkInStorage(uint64_t a1, sqlite3_int64 a2, _DWORD *a3, void *a4, void *a5, int a6)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKGetLocationOfChunkInStorage_cold_1();
  }

  if (a6 || !CKReadLockChunkStore(a1))
  {
    v16 = 0;
    v12 = _CSChunkForToken(a1, &v16, a2);
    v13 = v12 & (_CSChunkIsInvalid(a1, a2) ^ 1);
    if (a6)
    {
      if (v13)
      {
LABEL_5:
        v14 = v16;
        if (a3)
        {
          *a3 = *v16;
        }

        if (a4)
        {
          *a4 = *(v14 + 4);
        }

        if (a5)
        {
          *a5 = v14[3];
        }

        goto LABEL_15;
      }
    }

    else
    {
      CKUnlockChunkStore(a1);
      if (v13)
      {
        goto LABEL_5;
      }
    }

    v14 = v16;
LABEL_15:
    free(v14);
    return v13;
  }

  return 0;
}

sqlite3_int64 CKTokenForStoredChunk(uint64_t a1, _BYTE *a2)
{
  if (CKChunkStoreIsRegistry(a1))
  {
    CKTokenForStoredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSTokenForChunkSignature(a1, a2, 115);
  CKUnlockChunkStore(a1);
  return v5;
}

BOOL CKRegisteredItemCount(uint64_t a1, sqlite3_int64 *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisteredItemCount_cold_1();
  }

  v4 = CKLockChunkStore(a1);
  if (!v4)
  {
    _CSRegisteredItemCount(a1, a2);
    CKUnlockChunkStore(a1);
  }

  return v4 == 0;
}

BOOL CKGetRegisteredItems(uint64_t a1, sqlite3_int64 a2, uint64_t a3, sqlite3_int64 *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredItems_cold_1();
  }

  v8 = CKLockChunkStore(a1);
  if (!v8)
  {
    _CSGetRegisteredItems(a1, a2, a3, a4);
    CKUnlockChunkStore(a1);
  }

  return v8 == 0;
}

char *CKCreateRegisteredChunkWithSubchunkBlob(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = CKChunkSchemeAndSignatureSize(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (a2)
  {
    v10 = CKChunkSchemeAndEncryptionKeySize(a2);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = 0;
  if (a3 && a4)
  {
    v13 = CKSubchunkBlobSize(a4, a3);
  }

  v14 = malloc_type_calloc(1uLL, v9 + v10 + v13 + 35, 0x10000408AA14F5FuLL);
  v11 = v14;
  if (v14)
  {
    v15 = v14 + 35;
    memcpy(v14 + 35, a1, v9);
    if (a2)
    {
      memcpy(&v15[v9], a2, v10);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v11[30] = v16;
    v11[29] = v13 != 0;
    if (v13)
    {
      memcpy(&v15[v10 + v9], a4, v13);
    }
  }

  return v11;
}

const char *CKChunkTypeDescription(unsigned int a1)
{
  if (a1 > 9)
  {
    return "unknown cs_chunk_type_t";
  }

  else
  {
    return off_278DB5538[a1];
  }
}

uint64_t CKRegisterChunksForFileWithHint(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunksForFileWithHint_cold_1();
  }

  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(&v36, 0, sizeof(v36));
  if (fstat(a2, &v36) == -1)
  {
    goto LABEL_19;
  }

  if ((v36.st_flags & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v10 = fgetxattr(a2, "com.apple.decmpfs", 0, 0, 0, 32);
  if (v10 < 0x10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10, 0x1000040451B5BE8uLL);
  if (fgetxattr(a2, "com.apple.decmpfs", v12, v11, 0, 32) != v11)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*v12 != 1668116582)
  {
LABEL_18:
    free(v12);
    goto LABEL_19;
  }

  v13 = v12[1];
  free(v12);
  if (v13 == -2147483647)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterChunksForFileWithHint_cold_2();
    }

    result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_36;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NOT registering chunks for dataless file fd:%d, itemID:%lld\n", a2, a3);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterChunksForFileWithHint_cold_3();
    }

    v16 = CK_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v36.st_dev = 138543362;
      *&v36.st_mode = v15;
      _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", &v36, 0xCu);
    }

    v17 = 0;
    result = 0;
    if (!v15)
    {
      goto LABEL_36;
    }

LABEL_35:
    CFRelease(v15);
    result = v17;
    goto LABEL_36;
  }

LABEL_19:
  v18 = v35;
  bzero(v35, 0x400uLL);
  if (!get_path_for_fd(a2, v35))
  {
    goto LABEL_30;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CKRegisterChunksForFileWithHint_cold_4();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  v19 = *MEMORY[0x277CBECE8];
  v20 = *__error();
  v21 = __error();
  v22 = strerror(*v21);
  v18 = CFStringCreateWithFormat(v19, 0, @"get_path_for_fd failed for fd:%d: %d (%s)\n", a2, v20, v22);
  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    CKRegisterChunksForFileWithHint_cold_5();
  }

  v23 = CK_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
  {
    v36.st_dev = 138543362;
    *&v36.st_mode = v18;
    _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@", &v36, 0xCu);
  }

  if (v18)
  {
    CFRelease(v18);
LABEL_29:
    v18 = 0;
  }

LABEL_30:
  LODWORD(v31) = 1;
  *(&v31 + 1) = a3;
  LODWORD(v32) = 0;
  *(&v32 + 1) = a4;
  *(&v33 + 1) = a5;
  *&v34[0] = v18;
  DWORD2(v34[0]) = a2;
  LODWORD(v25) = 2;
  *(&v25 + 1) = v34;
  if (v18)
  {
    result = CFStringCreateWithCString(0, v18, 0x8000100u);
    v15 = result;
    if (!result)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v15 = 0;
  }

  *(&v26 + 1) = v15;
  *&v28 = openFd;
  *(&v28 + 1) = closeFd;
  *&v29 = statFd;
  *(&v29 + 1) = readFd;
  *&v30 = getCacheBlobFd;
  *(&v30 + 1) = setCacheBlobFd;
  result = CKRegisterChunksForItem(a1, &v25, &v31, 0, 0, 0, 0, 0);
  v17 = result;
  if (v15)
  {
    goto LABEL_35;
  }

LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_414()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterChunksForFileWithHint_block_invoke_2_421()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKRegisterChunksForItem(const void *a1, void *a2, uint64_t a3, void *a4, unint64_t *a5, CFTypeRef *a6, CFTypeRef *a7, void *a8)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunksForItem_cold_1();
  }

  return registerChunksForItem(a1, a2, a3, 0, a4, a5, a6, a7, a8);
}

uint64_t registerChunksForItem(const void *a1, void *a2, uint64_t a3, char a4, void *a5, unint64_t *a6, CFTypeRef *a7, CFTypeRef *a8, void *a9)
{
  v113 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    registerChunksForItem_cold_1();
  }

  v95 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v87 = a5;
  v17 = a9;
  v85 = a7 != 0;
  if (a7)
  {
    *a7 = 0;
    v18 = 1;
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (a8)
  {
LABEL_8:
    *a8 = 0;
  }

LABEL_9:
  v86 = a6;
  if (a9)
  {
    *a9 = 0;
  }

  v93 = 0;
  cf = 0;
  valuePtr = 0;
  v92 = 0;
  memset(v112, 0, sizeof(v112));
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  *buffer = 0u;
  bzero(__s, 0x400uLL);
  v90 = 0;
  Only = CKChunkStoreIsReadOnly(a1);
  v20 = 0;
  v21 = 0;
  if (!a3 || !a2)
  {
    v22 = 0;
    if (a9)
    {
      goto LABEL_98;
    }

    goto LABEL_94;
  }

  v84 = a8;
  v22 = 0;
  if (Only)
  {
LABEL_97:
    if (!v17)
    {
      goto LABEL_94;
    }

    goto LABEL_98;
  }

  if (*a3 != 1)
  {
LABEL_96:
    v21 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_97;
  }

  if (!a2[6])
  {
    registerChunksForItem_cold_24();
  }

  if (!a2[7])
  {
    registerChunksForItem_cold_23();
  }

  if (!a2[9])
  {
    registerChunksForItem_cold_22();
  }

  if (!a2[8])
  {
    registerChunksForItem_cold_21();
  }

  valuePtr = *(a3 + 8);
  buffer[0] = 0;
  __s[0] = 0;
  v23 = a2[2];
  if (v23 && !CFStringGetCString(v23, buffer, 255, 0x8000100u))
  {
    buffer[0] = 0;
  }

  v24 = a2[3];
  if (v24 && !CFStringGetCString(v24, __s, 1024, 0x8000100u))
  {
    __s[0] = 0;
  }

  v25 = CKFileDigestArgumentsFileScheme(*(a3 + 24));
  v83 = CKFileDigestArgumentsFileSchemeByte(*(a3 + 24));
  v26 = CKFileDigestArgumentsFileEncrypted(*(a3 + 24));
  if (gVerbose == 2)
  {
    v27 = v26;
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_2();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s, hint:%s, itemID:%lld, encrypt:%u, scheme:0x%x, fixedChunkSize:0x%x, %u", __s, buffer, valuePtr, v27, v25, *(a3 + 16), v18);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_3();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  v30 = strcmp(buffer, "com.apple.ChunkingLibrary.CustomFixedChunk");
  v31 = v30;
  if (v30)
  {
    v32 = a2[2] == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (!v30 && !*(a3 + 16))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_4();
    }

    v17 = a9;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid custom fixed chunk size:0x%x for itemID:%lld\n", *(a3 + 16), valuePtr);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_5();
      }

      v41 = CK_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 138543362;
      *&buf[4] = v40;
      goto LABEL_89;
    }

    goto LABEL_96;
  }

  if (v25 <= 8 && ((1 << v25) & 0x116) != 0)
  {
    v34 = *MEMORY[0x277CBECE8];
    v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    if (v35)
    {
        ;
      }

      if (CKLockChunkStore(a1))
      {
        v22 = 0;
        v20 = 0;
        v37 = 0;
        v82 = 0;
LABEL_51:
        v38 = 0;
        v39 = 0;
LABEL_52:
        v17 = a9;
        goto LABEL_53;
      }

      alloc = v34;
      if (v87 | a7)
      {
        v42 = _CSCopyChunkListForItemID(a1, valuePtr, &v92);
        v20 = v42;
      }

      else
      {
        v42 = CSsql_get64(a1, 1, "SELECT ct_rowid FROM CSChunkTable WHERE ct_iid = %lld", valuePtr);
        v20 = 0;
      }

      v49 = v42 != 0;
      CKUnlockChunkStore(a1);
      v82 = v49;
      if (v49 && (a4 & 1) == 0)
      {
        if (!a7)
        {
          goto LABEL_255;
        }

        v17 = a9;
        if (CKReadLockChunkStore(a1))
        {
LABEL_124:
          v22 = 0;
LABEL_162:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          goto LABEL_53;
        }

        v56 = _CSGetSignatureForItemID(a1, valuePtr, v83, &v90, &v95);
        CKUnlockChunkStore(a1);
        if (v56)
        {
LABEL_255:
          if (CKFileDigestResultsHasFileLength(v90))
          {
            v22 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 1;
            goto LABEL_52;
          }

          if (v92)
          {
            v57 = 0;
            v58 = 0;
            while (1)
            {
              v59 = CKRegisteredChunkAtIndex(v20, v58);
              if (!v59)
              {
                break;
              }

              if (v57 <= *(v59 + 16) + *(v59 + 24))
              {
                v57 = *(v59 + 16) + *(v59 + 24);
              }

              if (++v58 >= v92)
              {
                goto LABEL_202;
              }
            }
          }

          else
          {
            v57 = 0;
LABEL_202:
            *buf = 0;
            v65 = CKFileDigestResultsFileSignature(v90);
            v66 = CKFileDigestResultsFileVerificationKey(v90);
            if (CKFileDigestResultsCreate(buf, v65, v57, v66))
            {
              v17 = a9;
              if (v90)
              {
                CFRelease(v90);
              }

              v22 = 0;
              v37 = 0;
              v38 = 0;
              v90 = *buf;
              v39 = 1;
LABEL_53:
              CSUnregisterOperation(a1, i);
              CFRelease(i);
              if (v38)
              {
                freeOpCtx(v37);
                if ((v39 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              else if (!v39)
              {
LABEL_55:
                v21 = v82;
                if (!v17)
                {
                  goto LABEL_94;
                }

LABEL_98:
                v43 = v21;
                v44 = v17;
                v17 = 0;
                *v44 = cf;
                cf = 0;
                goto LABEL_99;
              }

              if (v86)
              {
                *v86 = v92;
              }

              if (v87)
              {
                *v87 = v20;
                v20 = 0;
              }

              if (a7 && v90)
              {
                CKBaseRetain(v90);
                *a7 = v90;
              }

              if (v84)
              {
                CKBaseRetain(v95);
                *v84 = v95;
              }

              v17 = 1;
              v21 = v82;
              goto LABEL_94;
            }
          }

          v22 = 0;
          v37 = 0;
          v38 = 0;
          v17 = a9;
LABEL_213:
          v39 = v85;
          goto LABEL_53;
        }

        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_6();
        }

        v17 = a9;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_124;
        }

        v61 = CFStringCreateWithFormat(alloc, 0, @"failed to get file sig for itemID:%lld\n", valuePtr);
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_7();
        }

        v62 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v61;
          _os_log_impl(&dword_243431000, v62, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v61)
        {
          CFRelease(v61);
        }

        v22 = 0;
LABEL_160:
        v37 = 0;
        goto LABEL_51;
      }

      if (a4)
      {
        if (v20)
        {
          free(v20);
        }
      }

      else
      {
        if (v20)
        {
          v50 = 1;
        }

        else
        {
          v50 = v49;
        }

        if (v50)
        {
          registerChunksForItem_cold_8();
        }
      }

      v92 = 0;
      if (CKUnregisterChunksForItem(a1, valuePtr))
      {
        if ((a2[6])(a2[1], &v93, &cf))
        {
          v51 = a2[6];
          v52 = v51 == openFd || v51 == openFdUncached;
          v38 = !v52;
          if (v52)
          {
            OpCtx = v93;
          }

          else
          {
            OpCtx = createOpCtx();
          }

          if (!OpCtx)
          {
            goto LABEL_181;
          }

          *(OpCtx + 1) = v93;
          *(OpCtx + 2) = a2;
          v89 = 0;
          memset(v88, 0, sizeof(v88));
          if (((a2[8])() & 1) == 0)
          {
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              registerChunksForItem_cold_13();
            }

            v37 = OpCtx;
            v17 = a9;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              v85 = 0;
              v20 = 0;
              v22 = 0;
              goto LABEL_212;
            }

            v63 = CFStringCreateWithFormat(alloc, 0, @"stat failed on itemID:%lld, path:%s, ino:%llu, error:%@", valuePtr, __s, *(OpCtx + 5), cf);
            if (CK_DEFAULT_LOG_BLOCK != -1)
            {
              registerChunksForItem_cold_14();
            }

            v64 = CK_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v63;
              _os_log_impl(&dword_243431000, v64, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v63)
            {
              CFRelease(v63);
            }

            goto LABEL_210;
          }

          setOpCtxStatInfo(OpCtx, v88);
          setOpCtxFileDigestArguments(OpCtx, *(a3 + 24));
          if (a7)
          {
            if (!CKFileSignatureGeneratorCreate(OpCtx + 24, *(a3 + 24)))
            {
              goto LABEL_210;
            }

            v60 = *(a3 + 32);
            if (v60)
            {
              CKBaseRetain(v60);
              *(OpCtx + 25) = *(a3 + 32);
            }
          }

          if (setOpCtxPath(OpCtx, __s))
          {
LABEL_181:
            v85 = 0;
            v20 = 0;
            v22 = 0;
            v17 = a9;
            v37 = OpCtx;
LABEL_212:
            (a2[7])(a2[1], v93, 0);
            goto LABEL_213;
          }

          if (!setOpCtxChunkScheme(OpCtx, 1, *(a3 + 40)))
          {
            if (a1)
            {
              v67 = CFRetain(a1);
            }

            else
            {
              v67 = 0;
            }

            *OpCtx = v67;
            *(OpCtx + 16) = CSRegisterChunksForFileCallback;
            *(OpCtx + 7) = valuePtr;
            v68 = buffer;
            if (!v33)
            {
              v68 = 0;
            }

            *(OpCtx + 12) = v68;
            v22 = *&v88[0];
            *(OpCtx + 10) = *&v88[0];
            if (v31)
            {
              v69 = 0;
            }

            else
            {
              v69 = *(a3 + 16);
            }

            OpCtx[160] = 5;
            *(OpCtx + 41) = 10000;
            *(OpCtx + 54) = v69;
            *(OpCtx + 55) = 0;
            v70 = *(OpCtx + 2);
            if (*v70 >= 3)
            {
              v71 = *(v70 + 96);
              if (v71)
              {
                v72 = v71(*(OpCtx + 1), @"kCKItemChunkLength");
                if (v72)
                {
                  v73 = v72;
                  *(OpCtx + 55) = ck_get_int32_from_cftype_using_description(@"kCKItemChunkLength", v72, *(OpCtx + 55));
                  CFRelease(v73);
                }

                v74 = (*(*(OpCtx + 2) + 96))(*(OpCtx + 1), @"kCKItemSubchunkLength");
                if (v74)
                {
                  v75 = v74;
                  *(OpCtx + 57) = ck_get_int32_from_cftype_using_description(@"kCKItemSubchunkLength", v74, *(OpCtx + 57));
                  CFRelease(v75);
                  v76 = *(OpCtx + 57);
                  if ((v76 & 0x3FF) != 0)
                  {
                    *(OpCtx + 57) = (v76 & 0xFFFFFC00) + 1024;
                  }
                }
              }
            }

            v37 = OpCtx;
            if (chunkItem(OpCtx, &cf))
            {
              v85 = 0;
              v20 = 0;
            }

            else
            {
              v77 = *(OpCtx + 26);
              if (!v77)
              {
                registerChunksForItem_cold_16();
              }

              if (v90)
              {
                CFRelease(v90);
                v77 = *(OpCtx + 26);
              }

              v90 = v77;
              *(OpCtx + 26) = 0;
              v78 = *(OpCtx + 30);
              if (v78)
              {
                if (v95)
                {
                  CFRelease(v95);
                  v78 = *(OpCtx + 30);
                  v77 = v90;
                }

                v95 = v78;
                *(OpCtx + 30) = 0;
              }

              if (v77)
              {
                v79 = *(OpCtx + 25);
                if (v79)
                {
                  if (!CKFileDigestResultsEqual(v77, v79))
                  {
                    registerChunksForItem_cold_15();
                  }
                }
              }

              if (CKLockChunkStore(a1) || (v80 = _CSRegisterChunkList(a1, OpCtx), CKUnlockChunkStore(a1), !v80))
              {
                v85 = 0;
                v20 = 0;
                goto LABEL_211;
              }

              v37 = OpCtx;
              v92 = *(OpCtx + 68);
              v20 = *(OpCtx + 33);
              *(OpCtx + 33) = 0;
              clearChunksArray((OpCtx + 264));
              v85 = 1;
            }

            v17 = a9;
            goto LABEL_212;
          }

LABEL_210:
          v85 = 0;
          v20 = 0;
          v22 = 0;
LABEL_211:
          v37 = OpCtx;
          v17 = a9;
          goto LABEL_212;
        }

        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_11();
        }

        v17 = a9;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v54 = CFStringCreateWithFormat(alloc, 0, @"open failed on itemID:%lld, path:%s, error:%@", valuePtr, __s, cf);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            registerChunksForItem_cold_12();
          }

          v55 = CK_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          *buf = 138543362;
          *&buf[4] = v54;
LABEL_156:
          _os_log_impl(&dword_243431000, v55, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_157:
          if (v54)
          {
            CFRelease(v54);
          }

          v22 = 0;
          v20 = 0;
          goto LABEL_160;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          registerChunksForItem_cold_9();
        }

        v17 = a9;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          v54 = CFStringCreateWithFormat(alloc, 0, @"Failed to unregister chunks for itemID:%llu", valuePtr);
          if (CK_DEFAULT_LOG_BLOCK != -1)
          {
            registerChunksForItem_cold_10();
          }

          v55 = CK_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          *buf = 138543362;
          *&buf[4] = v54;
          goto LABEL_156;
        }
      }

      v22 = 0;
      v20 = 0;
      goto LABEL_162;
    }

    v21 = 0;
    v20 = 0;
    v22 = 0;
LABEL_93:
    v17 = a9;
    if (!a9)
    {
      goto LABEL_94;
    }

    goto LABEL_98;
  }

  if (CK_DEFAULT_LOG_BLOCK != -1)
  {
    registerChunksForItem_cold_17();
  }

  v17 = a9;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature scheme:0x%x for itemID:%lld\n", v25, valuePtr);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_18();
    }

    v41 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    *buf = 138543362;
    *&buf[4] = v40;
LABEL_89:
    _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_90:
    if (v40)
    {
      CFRelease(v40);
    }

    v21 = 0;
    v20 = 0;
    v22 = 0;
    goto LABEL_93;
  }

  v21 = 0;
  v20 = 0;
  v22 = 0;
  if (a9)
  {
    goto LABEL_98;
  }

LABEL_94:
  v43 = v21;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_99:
  if (v20)
  {
    free(v20);
  }

  if (v90)
  {
    CKBaseRelease(v90);
  }

  v90 = 0;
  if (v95)
  {
    CKBaseRelease(v95);
  }

  v95 = 0;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      registerChunksForItem_cold_19();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"rc:%u, itemID:%lld, size:%llu, chunkCount:%llu, ac:%u", v17, valuePtr, v22, v92, v43);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        registerChunksForItem_cold_20();
      }

      v46 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v45;
        _os_log_impl(&dword_243431000, v46, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v45)
      {
        CFRelease(v45);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t CKRegisterItemAndChunks(const void *a1, void *a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, void *a7, void *a8)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterItemAndChunks_cold_1();
  }

  v23 = 0;
  cf = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || !registerChunksForItem(a1, a2, a3, 1, a4, a5, &cf, &v23, a8))
  {
    goto LABEL_18;
  }

  if (!cf)
  {
    CKRegisterItemAndChunks_cold_2();
  }

  valuePtr = *(a3 + 8);
    ;
  }

  if (!CKLockChunkStore(a1))
  {
    v17 = registerItem(a1, cf, valuePtr, v23, 0);
    CKUnlockChunkStore(a1);
    if (i)
    {
      CSUnregisterOperation(a1, i);
      CFRelease(i);
    }

    if (v17)
    {
      goto LABEL_15;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_27;
  }

  if (i)
  {
    CSUnregisterOperation(a1, i);
    CFRelease(i);
  }

LABEL_15:
  if (a6)
  {
    if (cf)
    {
      CFRetain(cf);
      v18 = cf;
    }

    else
    {
      v18 = 0;
    }

    *a6 = v18;
  }

  if (a7)
  {
    if (v23)
    {
      CFRetain(v23);
      v20 = v23;
    }

    else
    {
      v20 = 0;
    }

    *a7 = v20;
  }

  v19 = 1;
LABEL_27:
  if (cf)
  {
    CKBaseRelease(cf);
  }

  cf = 0;
  if (v23)
  {
    CKBaseRelease(v23);
  }

  return v19;
}

uint64_t CKUnregisterFile(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterFile_cold_1();
  }

  result = CKChunkStoreIsReadOnly(a1);
  if ((result & 1) == 0)
  {
    result = CKLockChunkStore(a1);
    if (!result)
    {
      unregisterItem(a1, a2);
      _CSUnregisterAllChunksForItem(a1, a2);

      return CKUnlockChunkStore(a1);
    }
  }

  return result;
}

BOOL CKGetRegisteredChunksForItemID(uint64_t a1, sqlite3_int64 a2, CFStringRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunksForItemID_cold_1();
  }

  result = 0;
  if (a3 && a4)
  {
    if (CKReadLockChunkStore(a1))
    {
      return 0;
    }

    else
    {
      *a3 = _CSCopyChunkListForItemID(a1, a2, a4);
      CKUnlockChunkStore(a1);
      return *a3 != 0;
    }
  }

  return result;
}

BOOL CKGetRegisteredChunksForFileSignature(uint64_t a1, unsigned __int8 *a2, CFStringRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunksForFileSignature_cold_1();
  }

  result = 0;
  if (a3 && a4)
  {
    if (CKReadLockChunkStore(a1))
    {
      return 0;
    }

    else
    {
      *a3 = _CSCopyChunkListForFileSignature(a1, a2, a4);
      CKUnlockChunkStore(a1);
      return *a3 != 0;
    }
  }

  return result;
}

BOOL CKRegisterChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v4 = _CSRegisterChunk(a1, a2, *(a2 + 28)) != 0;
  CKUnlockChunkStore(a1);
  return v4;
}

uint64_t CKGetRegisteredChunk(uint64_t a1, _BYTE *a2, char **a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSGetRegisteredChunk(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

uint64_t CKGetRegisteredChunks(uint64_t a1, _BYTE *a2, void *a3, int *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredChunks_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v9 = _CSGetRegisteredChunks(a1, a2, a3, a4);
  CKUnlockChunkStore(a1);
  return v9;
}

BOOL CKRegisterFile(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v15 = *MEMORY[0x277D85DE8];
  valuePtr = a3;
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterFile_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRegisterFile_cold_2();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"can't register file %lld because the chunkstore is readonly", a3, valuePtr);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CKRegisterFile_cold_3();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v8 = 0;
  }

  else
  {
      ;
    }

    if (CKLockChunkStore(a1))
    {
      v8 = 0;
    }

    else
    {
      _CSUnregisterTemporaryChunks(a1, valuePtr);
      v8 = registerItem(a1, a2, valuePtr, 0, 1) != 0;
      CKUnlockChunkStore(a1);
    }

    CSUnregisterOperation(a1, i);
    CFRelease(i);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

os_log_t __CKRegisterFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRegisterFile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKGetRegisteredFileSignature(uint64_t a1, CFTypeRef *a2, sqlite3_int64 a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileSignature_cold_1();
  }

  return CKGetRegisteredFileMetadata(a1, a3, a2, 0);
}

uint64_t CKGetRegisteredFileMetadata(uint64_t a1, sqlite3_int64 a2, CFTypeRef *a3, void *a4)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileMetadata_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v12 = 0;
  cf = 0;
  v8 = _CSGetSignatureForItemID(a1, a2, 0, &cf, &v12);
  CKUnlockChunkStore(a1);
  v9 = cf;
  if (v8)
  {
    if (a3 && cf)
    {
      CFRetain(cf);
      v9 = cf;
      *a3 = cf;
    }

    if (a4)
    {
      v10 = v12;
      if (v12)
      {
        CFRetain(v12);
        v10 = v12;
        v9 = cf;
      }

      *a4 = v10;
    }
  }

  if (v9)
  {
    CKBaseRelease(v9);
  }

  cf = 0;
  if (v12)
  {
    CKBaseRelease(v12);
  }

  return v8;
}

uint64_t CKGetRegisteredFileItemID(uint64_t a1, unsigned __int8 *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKGetRegisteredFileItemID_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSGetItemIdForFileSignature(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterAllTemporaryChunks(uint64_t a1)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterAllTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v3 = _CSUnregisterAllTemporaryChunks(a1);
  CKUnlockChunkStore(a1);
  return v3;
}

uint64_t CKUnregisterTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterTemporaryChunks(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

unint64_t CKRegisterTemporaryChunk(uint64_t a1, void *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterTemporaryChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  *a2 = 0;
  v5 = _CSRelocateRegisteredChunk(a1, a2, 110, 116);
  CKUnlockChunkStore(a1);
  return v5;
}

BOOL CKRegisterTemporaryChunks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v8 = CKRegisteredChunkSize(a2);
  if (a3)
  {
    v9 = v8;
    if (_CSRegisterTemporaryChunk(a1, a2))
    {
      v10 = a2 + v9;
      v11 = 1;
      do
      {
        v12 = v11;
        if (a3 == v11)
        {
          break;
        }

        v13 = _CSRegisterTemporaryChunk(a1, v10);
        v10 += v9;
        v11 = v12 + 1;
      }

      while (v13);
      v6 = v12 >= a3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  CKUnlockChunkStore(a1);
  return v6;
}

uint64_t CKUnregisterTemporaryChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 110);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterTemporaryNChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryNChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 110);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKUnregisterTemporaryTChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterTemporaryTChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterChunk(a1, a2, 116);
  CKUnlockChunkStore(a1);
  return v5;
}

unint64_t CKRelocateTemporaryChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRelocateTemporaryChunk_cold_1();
  }

  if (CKChunkStoreIsReadOnly(a1))
  {
    goto LABEL_3;
  }

  if (!*a2)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_4();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk rowID, itemID:%lld, o:0x%llx, sz:0x%x\n", *(a2 + 8), *(a2 + 16), *(a2 + 24));
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_5();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v15 = v12;
LABEL_25:
    _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_26:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_3;
  }

  if (a3 != 116 && a3 != 110 || a4 != 110 && a4 != 116)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_2();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk relocation ('%c'/'%c') for itemID:%lld, o:0x%llx, sz:0x%x, rowID:%llu\n", a3, a4, *(a2 + 8), *(a2 + 16), *(a2 + 24), *a2);
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      CKRelocateTemporaryChunk_cold_3();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v15 = v12;
    goto LABEL_25;
  }

  if (CKLockChunkStore(a1))
  {
LABEL_3:
    v8 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v10 = _CSRelocateRegisteredChunk(a1, a2, a3, a4);
  CKUnlockChunkStore(a1);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_475()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CKRelocateTemporaryChunk_block_invoke_2_482()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKConvertTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKConvertTemporaryChunks_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSConvertTemporaryChunks(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

uint64_t CKKeyForRegisteredChunk(uint64_t a1, _BYTE *a2, void *a3)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKKeyForRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v7 = _CSKeyForRegisteredChunk(a1, a2, a3);
  CKUnlockChunkStore(a1);
  return v7;
}

BOOL CKRegisterNeededChunk(uint64_t a1, uint64_t a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKRegisterNeededChunk_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v4 = _CSRegisterChunk(a1, a2, 110) != 0;
  CKUnlockChunkStore(a1);
  return v4;
}

uint64_t CKUnregisterChunksForItem(uint64_t a1, sqlite3_int64 a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKUnregisterChunksForItem_cold_1();
  }

  if ((CKChunkStoreIsReadOnly(a1) & 1) != 0 || CKLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSUnregisterAllChunksForItem(a1, a2);
  CKUnlockChunkStore(a1);
  return v5;
}

sqlite3_int64 CKTokenForRegisteredChunk(uint64_t a1, _BYTE *a2)
{
  if (!CKChunkStoreIsRegistry(a1))
  {
    CKTokenForRegisteredChunk_cold_1();
  }

  if (CKReadLockChunkStore(a1))
  {
    return 0;
  }

  v5 = _CSTokenForChunkSignature(a1, a2, 114);
  CKUnlockChunkStore(a1);
  return v5;
}

os_log_t __CSChunkFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSChunkFile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t chunkFdForStorage(const void *a1, char **a2, char a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  if (CKChunkStoreIsRegistry(a1))
  {
    chunkFdForStorage_cold_6();
  }

  if (!a2)
  {
    chunkFdForStorage_cold_5();
  }

  v38 = 0;
  valuePtr = 0;
  v36 = 0;
  v37 = 0;
  *a4 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 2;
  v27 = a2;
  v8 = *a2;
  if (*a2)
  {
    v9 = strrchr(*a2, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = strrchr(v10, 46);
    if (v11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v30 = openFd;
  v31 = closeFd;
  v32 = statFd;
  v33 = readFd;
  v34 = getCacheBlobFd;
  v35 = setCacheBlobFd;
  v13 = openFd(a2, &v37, &v38);
  v27 = 0;
  if ((v13 & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      chunkFdForStorage_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed on path:%s, error:%@\n", v8, v38);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        chunkFdForStorage_cold_2();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v15;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_31;
      }

      CFRelease(v15);
    }

    goto LABEL_30;
  }

  v14 = v37;
  *(v37 + 1) = v37;
  *(v14 + 2) = &v26;
  if (!CKChunkDigestArgumentsV1Create(&v36, 0, 0) || setOpCtxPath(v14, v8) || setOpCtxChunkScheme(v14, 0, v36))
  {
LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  valuePtr = *(v14 + 5);
  v15 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
LABEL_31:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  while (!CSRegisterOperation(a1, v15))
  {
    CSWaitForOperation(a1, v15);
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  if ((v32(v37, v24, 0) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK != -1)
    {
      chunkFdForStorage_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed on itemID:%lld, path:%s, ino:%llu, error:%@\n", valuePtr, v8, *(v14 + 5), v38);
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        chunkFdForStorage_cold_4();
      }

      v22 = CK_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v21;
        _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    goto LABEL_31;
  }

  setOpCtxStatInfo(v14, v24);
  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  *v14 = v16;
  *(v14 + 2) = &v26;
  *(v14 + 16) = CSChunkStorageCallback;
  *(v14 + 7) = valuePtr;
  *(v14 + 12) = v12;
  v14[176] = a3 & 1;
  v14[160] = 3;
  *(v14 + 55) = 0;
  *(v14 + 41) = 20000;
  v18 = chunkItem(v14, 0);
  v23 = 0;
  if (!v18)
  {
    v23 = *(v14 + 35);
  }

  *a4 = v23;
LABEL_32:
  if (v36)
  {
    CKBaseRelease(v36);
  }

  v36 = 0;
  if (v15)
  {
    CSUnregisterOperation(a1, v15);
    CFRelease(v15);
  }

  if (v13)
  {
    v31(v27, v37, 0);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

os_log_t __CSChunkFD_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSChunkFD_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __fsopen_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_569()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_576()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_580()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_587()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_592()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_599()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_604()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_611()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_615()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_622()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_626()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_2_633()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CSRegisterChunksForFileCallback(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 136);
  if (v1)
  {
    if (*(v1 + 84) < 0)
    {
      v3 = v1 + CKChunkSchemeAndSignatureSize(v1 + 84) + 84;
    }

    else
    {
      v3 = 0;
    }

    v5 = *(a1 + 256);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 56 * *(a1 + 252) + 32);
    }

    result = addRegisteredChunk(a1 + 264, 0, *v1, v1[9], *(v1 + 20), 114, v1[7], v1 + 84, v3, v5);
    if (result)
    {
      if (CK_DEFAULT_LOG_BLOCK != -1)
      {
        CSRegisterChunksForFileCallback_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"addRegisteredChunk failed, itemID:%lld, offset:0x%llx, size:0x%x\n", *v1, v1[9], *(v1 + 20));
        if (CK_DEFAULT_LOG_BLOCK != -1)
        {
          CSRegisterChunksForFileCallback_cold_2();
        }

        v7 = CK_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v10 = v6;
          _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __registerChunksForItem_block_invoke_639()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __registerChunksForItem_block_invoke_3_650()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSRegisterChunksForFileCallback_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __CSRegisterChunksForFileCallback_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_675()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

os_log_t __chunkFdForStorage_block_invoke_2_682()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL = result;
  return result;
}

uint64_t CKFileDigestResultsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKFileDigestResultsGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 48);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 40) = result + 48;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t _CKFileDigestResultsInit(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = CKFileSignatureCopy(a2);
  return 1;
}

uint64_t CKFileDigestResultsCreate(void *a1, _BYTE *a2, uint64_t a3, const void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2 & 0x7F;
  if (v4 == 8 || v4 == 4)
  {
    return CKFileDigestResultsV2Create(a1, a2, a3, a4);
  }

  else
  {
    return CKFileDigestResultsV1Create(a1, a2, a3);
  }
}

uint64_t CKFileDigestResultsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      v3 = *(a1 + 16);
      if (v3)
      {
        if (v3 == *(a2 + 16))
        {
          return _requestCallbacks_3[4 * v3 + 2]();
        }
      }
    }
  }

  return v2;
}

uint64_t CKFileDigestResultsFileVerificationKey(uint64_t a1)
{
  v1 = _requestCallbacks_3[4 * *(a1 + 16)];
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void _CKFileDigestResultsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_3[4 * v2 + 3])(a1);
  }

  v3 = *(a1 + 32);

  free(v3);
}

uint64_t _CKFileDigestResultsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_3[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKFileDigestResultsCFCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return _requestCallbacks_3[4 * v1 + 1]();
  }

  else
  {
    return 0;
  }
}

uint64_t doEncrypt(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  if (!CKChunkCryptorCreate(&v6, 1, a3, a4))
  {
    return 0;
  }

  if (CKChunkCryptorUpdate(v6))
  {
    v4 = CKChunkCryptorFinish(v6);
  }

  else
  {
    v4 = 0;
  }

  if (v6)
  {
    CKBaseRelease(v6);
  }

  v6 = 0;
  if (v7)
  {
    CKBaseRelease(v7);
  }

  return v4;
}

uint64_t doDecrypt(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  if (!CKChunkCryptorCreate(&v6, 0, a3, a4))
  {
    return 0;
  }

  if (CKChunkCryptorUpdate(v6))
  {
    v4 = CKChunkCryptorFinish(v6);
  }

  else
  {
    v4 = 0;
  }

  if (v6)
  {
    CKBaseRelease(v6);
  }

  v6 = 0;
  if (v7)
  {
    CKBaseRelease(v7);
  }

  return v4;
}

uint64_t getChunkListCacheBlob(uint64_t a1, CFMutableDataRef *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  theData = 0;
  v4 = *(a1 + 104);
  CacheBlob = getCacheBlob(a1, "com.apple.cscache", &theData);
  if (!CacheBlob)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    Length = CFDataGetLength(theData);
    if ((Length & 0xFFFFFFFE) >= 0x3AuLL && ((v8 = MutableBytePtr[20], v8 != 3) ? (v9 = v8 == 5) : (v9 = 1), v9))
    {
      if (*(a1 + 160) == v8)
      {
        CacheBlob = 0;
        *a2 = theData;
        goto LABEL_30;
      }

      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Different type chunk list cache found for %s, size:%u, type:%u expected %u\n", v4, Length, MutableBytePtr[20], *(a1 + 160));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      *buf = 138543362;
      v16 = v10;
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, size:%u, type:%u\n", v4, Length, MutableBytePtr[20]);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        getChunkListCacheBlob_cold_4();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:
        if (v10)
        {
          CFRelease(v10);
        }

LABEL_27:
        CacheBlob = 22;
        goto LABEL_28;
      }

      *buf = 138543362;
      v16 = v10;
    }

    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_18;
  }

LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

LABEL_30:
  v12 = *MEMORY[0x277D85DE8];
  return CacheBlob;
}

os_log_t __getChunkListCacheBlob_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_8()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCacheBlob_block_invoke_2_15()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t setChunkListCacheBlob(uint64_t a1, CFMutableDataRef theData)
{
  v2 = a1;
  if (theData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if ((CFDataGetLength(theData) & 0xFFFFFFFEuLL) <= 0x39)
    {
      setChunkListCacheBlob_cold_2();
    }

    v5 = *(v2 + 160);
    if (v5 != 3 && v5 != 5)
    {
      setChunkListCacheBlob_cold_1();
    }

    MutableBytePtr[20] = v5;
    a1 = v2;
    v7 = theData;
  }

  else
  {
    v7 = 0;
  }

  return setCacheBlob(a1, "com.apple.cscache", v7);
}

uint64_t chunkItem(uint64_t a1, void *a2)
{
  v319 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  cf = 0;
  if (*v3 < 2)
  {
    v5 = 0;
    v6 = 0xFFFFFFFFLL;
    if (!a2)
    {
      goto LABEL_389;
    }

LABEL_388:
    *a2 = cf;
    goto LABEL_391;
  }

  v302 = a2;
  v7 = *(a1 + 104);
  v8 = *(a1 + 56);
  v9 = CKChunkDigestArgumentsChunkScheme(*(a1 + 152));
  if (gVerbose == 2)
  {
    v10 = v9;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s, hint:%s, scheme:0x%x, size:%llu, fileID:0x%016llx(%llu), itemID:%lld", v7, *(a1 + 96), v10, *(a1 + 80), *(a1 + 40), *(a1 + 40), v8);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_2();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v293 = v8;
  v296 = v7;
  v13 = *(v3 + 32);
  if (v13)
  {
    v13(v4);
  }

  *v318 = 0;
  v14 = *(a1 + 104);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v309 = a1;
  v19 = a1 + 80;
  v18 = *(a1 + 80);
  v17 = *(v19 + 8);
  if (getenv("CS_DISABLE_CL_CACHE"))
  {
    v20 = 0;
LABEL_21:
    v21 = v309;
    goto LABEL_22;
  }

  v20 = malloc_type_calloc(1uLL, 0x20uLL, 0x10700401F352568uLL);
  if (!v20 || getChunkListCacheBlob(v309, v318))
  {
    goto LABEL_21;
  }

  v277 = v3;
  v280 = v4;
  v88 = *v318;
  MutableBytePtr = CFDataGetMutableBytePtr(*v318);
  v90 = CFDataGetLength(v88);
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_3();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v91 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"generation:%u, mtime:%llu, ino:%llu, sz:%llu, fileSignatureSize:%u, chunkInfoSize:%u, chunkInfoCount:%u\n", *(MutableBytePtr + 21), *(MutableBytePtr + 25), *(MutableBytePtr + 33), *(MutableBytePtr + 41), *(MutableBytePtr + 49), *(MutableBytePtr + 51), *(MutableBytePtr + 53));
    v92 = v20;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_4();
    }

    v93 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v91;
      _os_log_impl(&dword_243431000, v93, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v20 = v92;
    if (v91)
    {
      CFRelease(v91);
    }
  }

  if (v15 != *(MutableBytePtr + 21) || v17 != *(MutableBytePtr + 25) || v16 != *(MutableBytePtr + 33) || v18 != *(MutableBytePtr + 41))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v3 = v277;
      v4 = v280;
      goto LABEL_21;
    }

    v98 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu, chunkInfoCount:%u\n", v14, MutableBytePtr[20], *(MutableBytePtr + 25), v17, *(MutableBytePtr + 33), v16, *(MutableBytePtr + 21), v15, *(MutableBytePtr + 41), v18, *(MutableBytePtr + 53));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_6();
    }

    v102 = CK_DEFAULT_LOG_INTERNAL_0;
    v4 = v280;
    v21 = v309;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_237;
    }

    *buf = 138543362;
    *&buf[4] = v98;
    v103 = v102;
    v104 = OS_LOG_TYPE_DEBUG;
LABEL_236:
    _os_log_impl(&dword_243431000, v103, v104, "%{public}@", buf, 0xCu);
    goto LABEL_237;
  }

  v304 = v20;
  v94 = CKFileDigestArgumentsFileScheme(*(v309 + 144));
  LOBYTE(v314) = CKFileDigestArgumentsFileSchemeByte(*(v309 + 144));
  v95 = *(MutableBytePtr + 49);
  if (*(MutableBytePtr + 49))
  {
    if (CKFileSignatureSize(&v314) > v95 || (v96 = v95 + 57, v95 + 57 > v90))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_9();
      }

      v4 = v280;
      v21 = v309;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v3 = v277;
        v20 = v304;
        goto LABEL_22;
      }

      v98 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature size for %s, %u/%u\n", v14, v95, v90);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_10();
      }

      v99 = CK_DEFAULT_LOG_INTERNAL_0;
      v20 = v304;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_237;
      }

      *buf = 138543362;
      *&buf[4] = v98;
      goto LABEL_323;
    }

    v97 = MutableBytePtr + 57;
    if (v94 != (MutableBytePtr[57] & 0x7F))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_7();
      }

      v4 = v280;
      v20 = v304;
      v21 = v309;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }

      v98 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature scheme for %s: 0x%x\n", v14, *v97);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_8();
      }

      v99 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_237;
      }

      *buf = 138543362;
      *&buf[4] = v98;
LABEL_323:
      v103 = v99;
      v104 = OS_LOG_TYPE_ERROR;
      goto LABEL_236;
    }
  }

  else
  {
    v97 = 0;
    v96 = 57;
  }

  v115 = *(MutableBytePtr + 51);
  v116 = *(MutableBytePtr + 53);
  if (v115 < 5 || !v116 || ((v116 * *(MutableBytePtr + 51)) & 0xFFFFFFFF00000000) != 0 || __CFADD__(v116 * v115, v96) || v116 * v115 + v96 > v90)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_40();
    }

    v4 = v280;
    v20 = v304;
    v21 = v309;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_239;
    }

    v98 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk info size/count for %s, %u/%u/%u\n", v14, v116, v115, v90);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_41();
    }

    v99 = CK_DEFAULT_LOG_INTERNAL_0;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_237;
    }

    *buf = 138543362;
    *&buf[4] = v98;
    goto LABEL_323;
  }

  v299 = *(MutableBytePtr + 53);
  lengtha = v97;
  __srca = 0;
  v171 = 0;
  v172 = 0;
  __dsta = &MutableBytePtr[v96];
  v173 = (v115 - 4);
  v174 = &MutableBytePtr[v95 + 61];
  v307 = v173;
  v290 = v173 + 4;
  do
  {
    v175 = CKChunkSchemeAndSignatureSize(v174);
    if (v175 - 1 >= v307)
    {
      goto LABEL_582;
    }

    if (*v174 < 0)
    {
      v177 = v175;
      if (v307 == v175)
      {
        goto LABEL_582;
      }

      v178 = v174[v175];
      v179 = v178 == 4 || v178 == 1;
      if (!v179 || v307 - v175 != CKChunkSchemeAndEncryptionKeySize(&v174[v175]))
      {
        goto LABEL_582;
      }

      v176 = *v174;
      if (!v172)
      {
        __srca = v174[v177];
LABEL_474:
        v171 = v176;
        goto LABEL_475;
      }

      if (v171 != v176 || __srca != v174[v177])
      {
        goto LABEL_582;
      }
    }

    else
    {
      v176 = *v174;
      if (!v172)
      {
        goto LABEL_474;
      }

      if (v171 != v176)
      {
        goto LABEL_582;
      }
    }

LABEL_475:
    ++v172;
    v174 += v290;
  }

  while (v299 != v172);
  if ((v171 & 0x7F) == 1 || (v171 & 0x7F) == 4)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_11();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v181 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found chunk list cache %s for %s, blobSize:%u, chunkInfoCount:%u, sz:%llu, ino:%llu, mtime:%llu, generation:%u\n", "com.apple.cscache", v14, v90, v299, v18, v16, *(MutableBytePtr + 25), *(MutableBytePtr + 21));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_12();
      }

      v182 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v181;
        _os_log_impl(&dword_243431000, v182, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v181)
      {
        CFRelease(v181);
      }
    }

    v304[1] = lengtha;
    v304[2] = __dsta;
    *(v304 + 24) = v171;
    *(v304 + 25) = __srca;
    *v304 = *v318;
    freeChunkListCacheInfo(0);
    *v318 = 0;
    v314 = 0;
    if (!*v304)
    {
      chunkItem_cold_37();
    }

    v300 = *(v309 + 104);
    v291 = *(v309 + 36);
    v308 = *(v309 + 179);
    v183 = *(v309 + 136);
    BytePtr = CFDataGetBytePtr(*v304);
    if (*(v183 + 8))
    {
      chunkItem_cold_13();
    }

    if (*(v309 + 440))
    {
      chunkItem_cold_14();
    }

    if (*(v309 + 424))
    {
      chunkItem_cold_15();
    }

    v185 = BytePtr;
    v186 = CKChunkDigestArgumentsChunkSchemeByte(*(v309 + 152));
    v313 = v186;
    v312 = CKChunkDigestArgumentsChunkEncryptionKeyScheme(*(v309 + 152));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_16();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v187 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using cache %s for %s, ino:%llu, (0x%x/%u/%u)\n", "com.apple.cscache", v300, *(v309 + 40), v186, v308, *(v309 + 192) != 0);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_17();
      }

      v188 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v187;
        _os_log_impl(&dword_243431000, v188, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v187)
      {
        CFRelease(v187);
      }
    }

    if (((v313 ^ *(v304 + 24)) & 0x7F) != 0 || (v304[3] & 0x80) == 0 && v313 < 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_18();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_516;
      }

      v189 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Signature scheme mismatch: 0x%x/0x%x\n", *(v304 + 24), v313);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_19();
      }

      v190 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_514;
      }

      *buf = 138543362;
      *&buf[4] = v189;
      goto LABEL_513;
    }

    if ((v313 & v304[3] & 0x80) != 0 && *(v304 + 25) != v312)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_20();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_516;
      }

      v189 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Key scheme mismatch: 0x%x/0x%x\n", *(v304 + 25), v312);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_21();
      }

      v190 = CK_DEFAULT_LOG_INTERNAL_0;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_514;
      }

      *buf = 138543362;
      *&buf[4] = v189;
LABEL_513:
      _os_log_impl(&dword_243431000, v190, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_514:
      if (v189)
      {
        CFRelease(v189);
      }

      goto LABEL_516;
    }

    v216 = *(v309 + 144);
    if (v216)
    {
      v217 = v304[1];
      if (v217)
      {
        v218 = *v217;
        if (v218 != CKFileDigestArgumentsFileSchemeByte(v216))
        {
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_22();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_516;
          }

          v220 = *MEMORY[0x277CBECE8];
          v221 = *v304[1];
          v222 = CKFileDigestArgumentsFileSchemeByte(*(v309 + 144));
          v189 = CFStringCreateWithFormat(v220, 0, @"File signature mismatch: 0x%x/0x%x\n", v221, v222);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_23();
          }

          v190 = CK_DEFAULT_LOG_INTERNAL_0;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_514;
          }

          *buf = 138543362;
          *&buf[4] = v189;
          goto LABEL_513;
        }
      }
    }

    v219 = v304[1];
    if (v308)
    {
      if (!v219 || *(v309 + 216))
      {
LABEL_516:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_517;
      }
    }

    else if (!v219)
    {
      alloca = *(v309 + 192) != 0;
LABEL_611:
      v223 = *(v185 + 51);
      if (v223 <= 4)
      {
        chunkItem_cold_36();
      }

      __srcc = *(v185 + 53);
      if (__srcc)
      {
        v224 = 0;
        v262 = 0;
        v225 = 0;
        v287 = 0;
        v259 = *MEMORY[0x277CBECE8];
        v261 = v183 + 84;
        v226 = v304[2] + 6;
        __dstc = (v223 - 4) + 4;
        while (1)
        {
          v227 = *(v226 - 6);
          if ((v308 ^ 1 | alloca))
          {
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_24();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
            {
              v228 = CFStringCreateWithFormat(v259, 0, @"Reading chunk, o:0x%llx, size:0x%x\n", v225, v227);
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_25();
              }

              v229 = CK_DEFAULT_LOG_INTERNAL_0;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v228;
                _os_log_impl(&dword_243431000, v229, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v228)
              {
                CFRelease(v228);
              }
            }

            if (v227 && v262 < v227)
            {
              if (v227 <= 0x8000)
              {
                v230 = 0x8000;
              }

              else
              {
                v230 = v227;
              }

              v262 = v230;
              v231 = malloc_type_realloc(v224, v230, 0x388868F6uLL);
              if (!v231)
              {
                v6 = 0xFFFFFFFFLL;
                v231 = v224;
                goto LABEL_647;
              }
            }

            else
            {
              v231 = v224;
            }

            v311 = 0;
            if (!readOpCtx(v309, v225, v231, v227, &v311))
            {
              goto LABEL_646;
            }

            if (v227 != v311)
            {
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_26();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
              {
                v248 = CFStringCreateWithFormat(v259, 0, @"Failed to read chunk bytes: %u != %u\n", v227, v311);
                if (CK_DEFAULT_LOG_BLOCK_0 != -1)
                {
                  chunkItem_cold_27();
                }

                v249 = CK_DEFAULT_LOG_INTERNAL_0;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v248;
                  _os_log_impl(&dword_243431000, v249, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v248)
                {
                  CFRelease(v248);
                }
              }

              goto LABEL_646;
            }

            if (alloca)
            {
              CKFileSignatureGeneratorUpdate(*(v309 + 192));
            }
          }

          else
          {
            v231 = v224;
          }

          if (v308)
          {
            v232 = 0;
            *v183 = *(v309 + 56);
          }

          else
          {
            *(v183 + 25) = 1;
            v232 = v231;
            *v183 = v291;
          }

          v233 = *(v309 + 440);
          *(v309 + 440) = v233 + 1;
          *(v183 + 8) = v232;
          *(v183 + 16) = v233;
          *(v183 + 80) = v227;
          *(v183 + 72) = v225;
          *(v183 + 84) = v313;
          v234 = CKChunkSignatureSize(&v313);
          memcpy((v183 + 85), (v226 - 1), v234);
          if (v313 < 0)
          {
            *(v234 + v261 + 1) = v312;
            v235 = CKChunkEncryptionKeySize(&v312);
            memcpy((v234 + v261 + 2), (v226 + v234), v235);
          }

          *(v309 + 424) += v227;
          v236 = (*(v309 + 128))();
          if (v236)
          {
            v6 = v236;
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_28();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
            {
              v237 = CFStringCreateWithFormat(v259, 0, @"callback failed for chunk %u: %d\n", v287, v6);
              if (CK_DEFAULT_LOG_BLOCK_0 != -1)
              {
                chunkItem_cold_29();
              }

              v238 = CK_DEFAULT_LOG_INTERNAL_0;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v237;
                _os_log_impl(&dword_243431000, v238, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
              }

              if (v237)
              {
                CFRelease(v237);
              }
            }

            goto LABEL_647;
          }

          v225 += v227;
          v226 += __dstc;
          v224 = v231;
          v287 = (v287 + 1);
          if (__srcc == v287)
          {
            v6 = 0xFFFFFFFFLL;
            goto LABEL_658;
          }
        }
      }

      LODWORD(v287) = 0;
      v225 = 0;
      v231 = 0;
LABEL_646:
      v6 = 0xFFFFFFFFLL;
LABEL_647:
      if (v287 != __srcc)
      {
        goto LABEL_680;
      }

LABEL_658:
      v239 = *(v309 + 192);
      if (alloca)
      {
        v240 = CKFileSignatureGeneratorFinish(v239);
        v241 = *(v309 + 192);
        if (v241)
        {
          CFRelease(v241);
        }

        *(v309 + 192) = 0;
        if (!v240)
        {
          goto LABEL_680;
        }
      }

      else if (v239)
      {
        v242 = v304[1];
        if ((*v242 & 0x7F) != 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_30();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_680;
          }

          v250 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"cache file signature not supported\n");
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_31();
          }

          v251 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v250;
            _os_log_impl(&dword_243431000, v251, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (!v250)
          {
            goto LABEL_680;
          }

          v252 = v250;
LABEL_718:
          CFRelease(v252);
          goto LABEL_680;
        }

        if (!CKFileDigestResultsCreate(&v314, v242, v225, 0))
        {
LABEL_680:
          if (v231)
          {
            free(v231);
          }

          v191 = v314;
          if (v6 || !v314)
          {
            goto LABEL_518;
          }

          setOpCtxFileDigestResults(v309, v314);
          v6 = 0;
LABEL_517:
          v191 = v314;
LABEL_518:
          if (v191)
          {
            CFRelease(v191);
          }

          v314 = 0;
          *(v183 + 8) = 0;
          if (*v318)
          {
            CFRelease(*v318);
          }

          if (!v6)
          {
            v3 = v277;
            v4 = v280;
            goto LABEL_385;
          }

          v3 = v277;
          v4 = v280;
          v21 = v309;
          goto LABEL_25;
        }
      }

      if (!v308 || !v314 || (v243 = *(v309 + 200)) == 0 || CKFileDigestResultsEqual(v314, v243))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_34();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          v244 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found %u chunks for %s, ino:%llu\n", __srcc, v300, *(v309 + 40));
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_35();
          }

          v245 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v244;
            _os_log_impl(&dword_243431000, v245, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v244)
          {
            CFRelease(v244);
          }
        }

        v246 = *(v309 + 128);
        v247 = *(v309 + 136);
        *(v309 + 136) = 0;
        v6 = v246(v309);
        *(v309 + 136) = v247;
        goto LABEL_680;
      }

      v253 = CFCopyDescription(v314);
      v254 = CFCopyDescription(*(v309 + 200));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_32();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v255 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file signature mismatch for %lld item has %@ != %@ for the chunk store", *(v309 + 56), v253, v254);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_33();
        }

        v256 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v255;
          _os_log_impl(&dword_243431000, v256, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v255)
        {
          CFRelease(v255);
        }
      }

      *v318 = CKErrorCreateWithFormat(3, @"The file signature changed: from %@ on the item to %@ registered in the chunk store for item %lld. Perhaps the item should be unregistered.", v253, v254, *(v309 + 56));
      if (v253)
      {
        CFRelease(v253);
      }

      if (!v254)
      {
        goto LABEL_680;
      }

      v252 = v254;
      goto LABEL_718;
    }

    alloca = 0;
    goto LABEL_611;
  }

  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_38();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
LABEL_582:
    v3 = v277;
    v4 = v280;
    v20 = v304;
    goto LABEL_21;
  }

  v98 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk signature/key scheme for %s: 0x%x/0x%x\n", v14, v171, __srca);
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    chunkItem_cold_39();
  }

  v215 = CK_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v98;
    _os_log_impl(&dword_243431000, v215, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v4 = v280;
  v20 = v304;
  v21 = v309;
LABEL_237:
  if (v98)
  {
    CFRelease(v98);
  }

LABEL_239:
  v3 = v277;
LABEL_22:
  if (*v318)
  {
    CFRelease(*v318);
  }

  freeChunkListCacheInfo(v20);
  v304 = 0;
  v6 = 0xFFFFFFFFLL;
LABEL_25:
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_42();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunking %s", v296);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_43();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

  ChunkProfile = createChunkProfile(v21, (v21 + 256), (v21 + 240));
  *(v21 + 248) = ChunkProfile;
  if (!ChunkProfile)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_90();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v100 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Not chunking %s - no chunking profile!\n", v296);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_91();
      }

      v101 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v100;
        _os_log_impl(&dword_243431000, v101, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v100)
      {
        CFRelease(v100);
      }
    }

    goto LABEL_387;
  }

  cf = 0;
  clearChunksArray(v21 + 264);
  clearChunksArray(v21 + 264);
  *(v21 + 440) = 0;
  *(v21 + 472) = 0;
  *(v21 + 64) = 0;
  clearOpCtxError(v21);
  v25 = getenv("CHUNK_BUFFER_LENGTH");
  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = v25;
  v27 = strtoll(v25, 0, 0);
  if (v27 < 0x8000)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_44();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to use env value %s for CHUNK_BUFFER_LENGTH. Parsed %lld and the minimum is %d. Using default value %lu\n", v26, v27, 0x8000, 0x8000);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_45();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

LABEL_48:
    v27 = 0x8000;
  }

  v30 = malloc_type_malloc(v27, 0x100004077774924uLL);
  if (!v30)
  {
    LOBYTE(v33) = 0;
    v32 = 0;
    goto LABEL_337;
  }

  v31 = CSrabin_init();
  v32 = v31;
  if (!v31)
  {
    goto LABEL_303;
  }

  *(v21 + 252) = 0;
  if (!*(v21 + 248))
  {
    LOBYTE(v33) = 0;
    v6 = 0;
    goto LABEL_340;
  }

  v33 = 0;
  v288 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v305 = v31;
  __src = v27;
  while (1)
  {
    if ((v36 & 1) != 0 && v37 <= v288)
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_64();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v109 = v33;
        v110 = CFStringCreateWithFormat(alloc, 0, @"not all sections chunked before eof reached\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_65();
        }

        v111 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v110;
          _os_log_impl(&dword_243431000, v111, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v110)
        {
          CFRelease(v110);
        }

        v6 = 0;
        LOBYTE(v33) = v109;
        goto LABEL_339;
      }

LABEL_304:
      v6 = 0;
      goto LABEL_339;
    }

    if (getOpCtxSectionLengthAtIndex(v21, v35))
    {
      break;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_62();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v38 = v33;
      v39 = CFStringCreateWithFormat(alloc, 0, @"Skipping zero length section %u.\n", *(v21 + 252));
      v282 = v34;
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_63();
      }

      v40 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v39;
        _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      v33 = v38;
      v27 = __src;
      v34 = v282;
    }

LABEL_69:
    v41 = *(v21 + 248);
    v35 = (*(v21 + 252) + 1);
    *(v21 + 252) = v35;
    if (v35 >= v41)
    {
      goto LABEL_304;
    }
  }

  LODWORD(v33) = *(*(v21 + 256) + 56 * *(v21 + 252) + 52);
  length = *(*(v21 + 256) + 56 * *(v21 + 252) + 52);
  if (v33 == 1)
  {
    if (_SetSourceChunk(v21, v34))
    {
      goto LABEL_259;
    }
  }

  else
  {
    v42 = v37 - v288;
    if (v37 > v288)
    {
      memmove(v30, &v30[v288], v37 - v288);
      v288 = 0;
      v37 = v42;
    }

    LOBYTE(v33) = length;
  }

  v276 = v3;
  while (2)
  {
    v43 = v37;
    while (2)
    {
      v44 = v43;
      if (v27 < v43)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_58();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_329;
        }

        v105 = CFStringCreateWithFormat(alloc, 0, @"overflow; buffer length: %lu producer location %lu\n", v27, v43);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_59();
        }

        v106 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v105;
          _os_log_impl(&dword_243431000, v106, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v105)
        {
          CFRelease(v105);
        }

LABEL_327:
        LOBYTE(v33) = length;
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_60();
        }

LABEL_329:
        v3 = v276;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_337;
        }

        v107 = CFStringCreateWithFormat(alloc, 0, @"CSchunklist_streamRead failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_61();
        }

        v118 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v107;
          _os_log_impl(&dword_243431000, v118, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v107)
        {
          LOBYTE(v33) = length;
          goto LABEL_336;
        }

        v6 = 0xFFFFFFFFLL;
        LOBYTE(v33) = length;
        goto LABEL_338;
      }

      v298 = v27 != v43;
      if (v27 != v43)
      {
        *buf = 0;
        if ((readOpCtx(v21, *(v21 + 64), &v30[v43], v27 - v43, buf) & 1) == 0)
        {
          goto LABEL_327;
        }

        v45 = *buf;
        v43 += *buf;
        *(v21 + 64) += *buf;
        if (!v45)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v43 = v27;
LABEL_82:
    v46 = *(v21 + 192);
    if (v46)
    {
      v47 = v43 <= v37;
    }

    else
    {
      v47 = 1;
    }

    if (!v47 && !CKFileSignatureGeneratorUpdate(v46))
    {
      v117 = *(v21 + 192);
      if (v117)
      {
        CFRelease(v117);
      }

      *(v21 + 192) = 0;
      goto LABEL_327;
    }

    v279 = v4;
    __dst = v30;
    if (v33)
    {
      v283 = v34;
      v48 = v34;
      if (v43 - v288 < 1 || (v49 = (*(v309 + 256) + 56 * *(v309 + 252)), v50 = *v49, v48 = v34, *v49 <= v34))
      {
LABEL_164:
        if (v48 - v283 >= 0)
        {
          v58 = v48 - v283 + v288;
          v34 = v48;
          v32 = v305;
          v21 = v309;
          v30 = __dst;
          v27 = __src;
          goto LABEL_166;
        }
      }

      else
      {
        v48 = v34;
        v258 = &v30[v288];
        v257 = v49[1];
        v260 = v49[3];
        v51 = v43 - v288;
        v52 = *(v309 + 136);
        while (1)
        {
          v53 = v43 - v288 - v51;
          v54 = v257 - *(v52 + 80);
          if (v50 - v48 < v54)
          {
            break;
          }

          v55 = v51 - v54;
          if (v51 < v54)
          {
            if (v260 && CSfixed_subchunk_stream(v309, v258 + v53, v51, v260, 0))
            {
              goto LABEL_250;
            }

            goto LABEL_162;
          }

          if (v260 && CSfixed_subchunk_stream(v309, v258 + v53, v257 - *(v52 + 80), v260, 1))
          {
            goto LABEL_250;
          }

          if (CS_fixed_chunk_stream_accumulate(v309, v258 + v53, v54))
          {
            goto LABEL_250;
          }

          if (CSchunklist_add_stream(v309))
          {
            goto LABEL_250;
          }

          v48 += v54;
          _ClearSourceChunk(v309);
          if (_SetSourceChunk(v309, v48))
          {
            goto LABEL_250;
          }

          if (v48 < v50)
          {
            v51 -= v54;
            if (v55 > 0)
            {
              continue;
            }
          }

          goto LABEL_164;
        }

        if (v51 < v50 - v48)
        {
LABEL_162:
          if (CS_fixed_chunk_stream_accumulate(v309, v258 + v53, v51))
          {
            goto LABEL_250;
          }

          v48 += v51;
          goto LABEL_164;
        }

        if ((!v260 || !CSfixed_subchunk_stream(v309, v258 + v53, v50 - v48, v260, 1)) && !CS_fixed_chunk_stream_accumulate(v309, v258 + v53, v50 - v48) && !CSchunklist_add_stream(v309))
        {
          _ClearSourceChunk(v309);
          v48 = v50;
          if (!_SetSourceChunk(v309, v50))
          {
            goto LABEL_164;
          }
        }
      }

LABEL_250:
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_54();
      }

      v3 = v276;
      v32 = v305;
      v21 = v309;
      v30 = __dst;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v107 = CFStringCreateWithFormat(alloc, 0, @"CSfixed_chunk_stream failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_55();
        }

        v108 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v107;
          _os_log_impl(&dword_243431000, v108, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        LOBYTE(v33) = 1;
        if (!v107)
        {
LABEL_337:
          v6 = 0xFFFFFFFFLL;
          goto LABEL_338;
        }

LABEL_336:
        CFRelease(v107);
        goto LABEL_337;
      }

LABEL_259:
      v6 = 0xFFFFFFFFLL;
      LOBYTE(v33) = 1;
      goto LABEL_338;
    }

    v56 = *(v21 + 256);
    v57 = *(v21 + 252);
    v58 = v288;
    while (2)
    {
      v59 = v43 - v58;
      v60 = *(v56 + 56 * v57 + 16);
      if (v27 == v44 && v59 < v60)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_46();
        }

        v3 = v276;
        v4 = v279;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        v107 = CFStringCreateWithFormat(alloc, 0, @"under-read for rabin chunking; only read %lld bytes and not at EOF\n", v59);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_47();
        }

        v112 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_301;
        }

        *buf = 138543362;
        *&buf[4] = v107;
        goto LABEL_300;
      }

      if (v43 == v58)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_52();
        }

        v3 = v276;
        v4 = v279;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_303;
        }

        v107 = CFStringCreateWithFormat(alloc, 0, @"At EOF and zero bytes left. We should be done by now. Chunk profile inconsistent?\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_53();
        }

        v112 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_301;
        }

        *buf = 138543362;
        *&buf[4] = v107;
LABEL_300:
        _os_log_impl(&dword_243431000, v112, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        goto LABEL_301;
      }

      v61 = v56 + 56 * v57;
      if (*v61 < v34)
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_48();
        }

        v3 = v276;
        v4 = v279;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
LABEL_295:
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
          {
            v107 = CFStringCreateWithFormat(alloc, 0, @"CSrabin_chunk_stream failed\n");
            if (CK_DEFAULT_LOG_BLOCK_0 != -1)
            {
              chunkItem_cold_51();
            }

            v112 = CK_DEFAULT_LOG_INTERNAL_0;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v107;
              goto LABEL_300;
            }

LABEL_301:
            LOBYTE(v33) = 0;
            if (!v107)
            {
              goto LABEL_337;
            }

            goto LABEL_336;
          }

LABEL_303:
          LOBYTE(v33) = 0;
          goto LABEL_337;
        }

        v113 = CFStringCreateWithFormat(alloc, 0, @"File offset is already great than sectionEnd. Shouldn't we be in a different section?\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_49();
        }

        v114 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v113;
          _os_log_impl(&dword_243431000, v114, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v72 = v309;
        if (v113)
        {
          CFRelease(v113);
        }

LABEL_293:
        v3 = v276;
        v21 = v72;
        v30 = __dst;
        v32 = v305;
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_50();
        }

        goto LABEL_295;
      }

      v284 = v34;
      v289 = v58;
      v62 = &v30[v58];
      v63 = *(v61 + 12);
      v64 = (v63 - 48);
      if (*v61 - v34 >= v59)
      {
        v65 = v43 - v58;
      }

      else
      {
        v65 = *v61 - v34;
      }

      if (v65 <= v64)
      {
        CSchunklist_add(v21, *(v21 + 440), v34, v62, v65);
        v4 = v279;
        v72 = v21;
        if (!v73)
        {
          ++*(v21 + 440);
          goto LABEL_146;
        }

        goto LABEL_293;
      }

      if (*(v21 + 183) == 1)
      {
        *(v21 + 464) = mach_absolute_time();
      }

      v66 = 0;
      v67 = (v63 - 47);
      v68 = 1;
      while (1)
      {
        v69 = CSrabin_slide8(v305, *(v62 + v64));
        v70 = v64 + 1;
        if (v64 + 1 >= v63)
        {
          break;
        }

LABEL_118:
        v68 = v70 < v65;
        v67 = (v67 + 1);
        ++v64;
        if (v65 == v70)
        {
          v68 = 0;
          v71 = 0;
          v4 = v279;
          v72 = v309;
          goto LABEL_139;
        }
      }

      if ((~v69 & 0x7FF) == 0)
      {
        v72 = v309;
        if (*(v309 + 183) == 1)
        {
          *(v309 + 472) += mach_absolute_time() - *(v309 + 464);
        }

        CSchunklist_add(v309, *(v309 + 440), v284, v62, v67);
        v4 = v279;
        if (v74)
        {
          goto LABEL_293;
        }

        goto LABEL_136;
      }

      if ((~v69 & 0x3FF) == 0)
      {
        v66 = v64;
      }

      if (v70 < v60)
      {
        goto LABEL_118;
      }

      v75 = *(v309 + 183);
      v4 = v279;
      if (v66 < 1)
      {
        v72 = v309;
        if (*(v309 + 183))
        {
          *(v309 + 472) += mach_absolute_time() - *(v309 + 464);
        }

        if (*(v309 + 181) == 1)
        {
          ++*(v309 + 448);
        }

        CSchunklist_add(v309, *(v309 + 440), v284, v62, v67);
        if (v77)
        {
          goto LABEL_293;
        }

LABEL_136:
        v71 = v64 + 1;
        ++*(v72 + 440);
        goto LABEL_137;
      }

      if (*(v309 + 183))
      {
        *(v309 + 472) += mach_absolute_time() - *(v309 + 464);
      }

      v72 = v309;
      CSchunklist_add(v309, *(v309 + 440), v284, v62, (v66 + 1));
      if (v76)
      {
        goto LABEL_293;
      }

      ++*(v309 + 440);
      v71 = v66 + 1;
LABEL_137:
      if (*(v72 + 183))
      {
        *(v72 + 464) = mach_absolute_time();
      }

LABEL_139:
      if (*(v72 + 183) == 1)
      {
        *(v72 + 472) += mach_absolute_time() - *(v72 + 464);
      }

      if (v68 || v65 + v284 != *(*(v72 + 256) + 56 * *(v72 + 252)))
      {
        v65 = v71;
      }

      else
      {
        CSchunklist_add(v72, *(v72 + 440), v284, v62, v65);
        if (v78)
        {
          goto LABEL_293;
        }

        ++*(v72 + 440);
        v65 += v71;
      }

LABEL_146:
      v72 = v309;
      if (v65 < 0)
      {
        goto LABEL_293;
      }

      v58 = v65 + v289;
      v34 = v65 + v284;
      v56 = *(v309 + 256);
      v57 = *(v309 + 252);
      v79 = v56 + 56 * v57;
      v179 = *v79 == v65 + v284;
      v21 = v309;
      v30 = __dst;
      v32 = v305;
      v27 = __src;
      if (!v179 && (__src != v44 || v43 - v58 >= *(v79 + 16)))
      {
        continue;
      }

      break;
    }

    v80 = v43 - v58;
    if (v43 > v58)
    {
      memmove(__dst, &__dst[v58], v43 - v58);
      v58 = 0;
      v43 = v80;
    }

    v4 = v279;
LABEL_166:
    if (v58 == v43)
    {
      v37 = 0;
    }

    else
    {
      v37 = v43;
    }

    if (v58 == v43)
    {
      v58 = 0;
    }

    v288 = v58;
    if (*(*(v21 + 256) + 56 * *(v21 + 252)) != v34)
    {
      v33 = length;
      if (v27 != v44 && v58 >= v37)
      {
        v36 = 1;
        v3 = v276;
        goto LABEL_189;
      }

      continue;
    }

    break;
  }

  v3 = v276;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_56();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v81 = v34;
      v82 = *(v21 + 256) + 56 * *(v21 + 252);
      v83 = CFStringCreateWithFormat(alloc, 0, @"section %u done (%u, eo:0x%llx, %u)", *(v21 + 252), length, *v82, *(v82 + 48));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_57();
      }

      v84 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v83;
        _os_log_impl(&dword_243431000, v84, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v3 = v276;
      v4 = v279;
      v32 = v305;
      v21 = v309;
      v34 = v81;
      if (v83)
      {
        CFRelease(v83);
      }
    }
  }

  if (*(v21 + 180))
  {
    v33 = length;
    v36 = v298;
    goto LABEL_189;
  }

  v85 = *(v21 + 128);
  v86 = *(v21 + 136);
  *(v21 + 136) = 0;
  v87 = v85(v21);
  *(v21 + 136) = v86;
  v33 = length;
  v36 = v298;
  if (!v87)
  {
LABEL_189:
    if (v33)
    {
      _ClearSourceChunk(v21);
      v33 = 1;
    }

    v27 = __src;
    goto LABEL_69;
  }

  v6 = v87;
LABEL_338:
  cf = *(v21 + 336);
  *(v21 + 336) = 0;
LABEL_339:
  if (v32)
  {
LABEL_340:
    CSrabin_free(v32);
  }

  if (v30)
  {
    free(v30);
  }

  if (v33)
  {
    _ClearSourceChunk(v21);
  }

  if (*(v21 + 181) == 1)
  {
    v119 = v21;
    v120 = v3;
    v121 = v4;
    v122 = *(v119 + 256);
    v124 = *(v122 + 12);
    v123 = *(v122 + 16);
    v125 = *(v119 + 448);
    v126 = *(v119 + 456);
    v128 = *(v119 + 432);
    v127 = *(v119 + 440);
    pthread_mutex_lock((v119 + 360));
    v129 = getenv("CK_CHUNK_COUNT");
    if (v129)
    {
      v130 = strtoll(v129, 0, 0);
    }

    else
    {
      v130 = 0;
    }

    bzero(buf, 0x400uLL);
    __sprintf_chk(buf, 0, 0x400uLL, "%llu", v130 + v127);
    setenv("CK_CHUNK_COUNT", buf, 1);
    v131 = getenv("CK_STORED_CHUNK_COUNT");
    if (v131)
    {
      v131 = strtoll(v131, 0, 0);
    }

    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v131[v126]);
    setenv("CK_STORED_CHUNK_COUNT", buf, 1);
    v132 = getenv("CK_STORED_SIZE");
    if (v132)
    {
      v132 = strtoll(v132, 0, 0);
    }

    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v132[v128]);
    setenv("CK_STORED_SIZE", buf, 1);
    v133 = getenv("CK_HARD_BREAK_COUNT");
    if (v133)
    {
      v133 = strtoll(v133, 0, 0);
    }

    v4 = v121;
    __sprintf_chk(buf, 0, 0x400uLL, "%llu", &v133[v125]);
    setenv("CK_HARD_BREAK_COUNT", buf, 1);
    __sprintf_chk(buf, 0, 0x400uLL, "%d", v124);
    setenv("CK_CHUNK_TMIN", buf, 1);
    __sprintf_chk(buf, 0, 0x400uLL, "%d", v123);
    setenv("CK_CHUNK_TMAX", buf, 1);
    pthread_mutex_unlock((v309 + 360));
    v3 = v120;
    v21 = v309;
  }

  if (*(v21 + 544))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_66();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v134 = *(v21 + 544);
      v135 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\nBegin stats for %s\n\n%s\nEnd stats for %s\n", *(v21 + 104), v134, *(v21 + 104));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_67();
      }

      v136 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v135;
        _os_log_impl(&dword_243431000, v136, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v135)
      {
        CFRelease(v135);
      }
    }
  }

  v137 = *(v21 + 192);
  if (v137)
  {
    v138 = *(v21 + 200);
    v139 = CKFileSignatureGeneratorFinish(v137);
    v140 = *(v21 + 192);
    if (v140)
    {
      CFRelease(v140);
    }

    *(v21 + 192) = 0;
    if (!v139)
    {
      v6 = 0xFFFFFFFFLL;
      goto LABEL_387;
    }
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_68();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v141 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Done chunking %s, rc:%d, chunkCount:%llu, itemID:%lld", v296, v6, *(v21 + 440), v293);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_69();
      }

      v142 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v141;
        _os_log_impl(&dword_243431000, v142, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v141)
      {
        CFRelease(v141);
      }
    }
  }

  if (v6)
  {
LABEL_387:
    a2 = v302;
    v5 = v304;
    if (!v302)
    {
      goto LABEL_389;
    }

    goto LABEL_388;
  }

  v143 = *(v21 + 8);
  v144 = *(v21 + 16);
  v145 = CKChunkDigestArgumentsChunkEncryptionKeyScheme(*(v21 + 152));
  if (*(v21 + 176))
  {
    goto LABEL_384;
  }

  v146 = v145;
  v306 = *(v21 + 104);
  v147 = *(v21 + 24);
  v148 = *(v21 + 40);
  v151 = v21 + 80;
  v150 = *(v21 + 80);
  v149 = *(v151 + 8);
  if (getenv("CS_DISABLE_CL_CACHE"))
  {
    goto LABEL_384;
  }

  v317 = 0;
  *buf = 0u;
  v316 = 0u;
  if (((*(v144 + 64))(v143, buf, 0) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_70();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_384;
    }

    v155 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed for %s, ino:%llu\n", v306, v148);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_71();
    }

    v159 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v318 = 138543362;
      *&v318[4] = v155;
LABEL_412:
      v157 = v159;
      v158 = OS_LOG_TYPE_ERROR;
      goto LABEL_413;
    }

LABEL_414:
    if (v155)
    {
      CFRelease(v155);
    }

    goto LABEL_384;
  }

  if (*buf <= 0x10000uLL)
  {
    goto LABEL_396;
  }

  if (BYTE8(v316) != 1)
  {
    goto LABEL_384;
  }

  if (v150 != *buf || v149 != v316 || v147 != HIDWORD(v316))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_72();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v167 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s changed, mtime:%llu/%llu, sz:%llu/%llu, generation:%u/%u\n", v306, v149, v316, v150, *buf, v147, HIDWORD(v316));
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_73();
      }

      v168 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *v318 = 138543362;
        *&v318[4] = v167;
        _os_log_impl(&dword_243431000, v168, OS_LOG_TYPE_DEBUG, "%{public}@", v318, 0xCu);
      }

      if (v167)
      {
        CFRelease(v167);
      }
    }

LABEL_396:
    if (setCacheBlob(v309, "com.apple.cscache", 0))
    {
      goto LABEL_384;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_88();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_384;
    }

    v155 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Removed chunk list cache for %s, sz:%llu ino:%llu, mtime:%llu, generation:%u\n", v306, v150, v148, v149, v147);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_89();
    }

    v156 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *v318 = 138543362;
      *&v318[4] = v155;
      v157 = v156;
      v158 = OS_LOG_TYPE_DEBUG;
LABEL_413:
      _os_log_impl(&dword_243431000, v157, v158, "%{public}@", v318, 0xCu);
      goto LABEL_414;
    }

    goto LABEL_414;
  }

  if (!*(v309 + 264) || !*(v309 + 272))
  {
    v169 = *(v309 + 272);
    v170 = *(v309 + 264);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_86();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_384;
    }

    v155 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk array, chunkArray:%p, chunkCount:%llu\n", v170, v169);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_87();
    }

    v159 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *v318 = 138543362;
      *&v318[4] = v155;
      goto LABEL_412;
    }

    goto LABEL_414;
  }

  v303 = *(v309 + 264);
  v297 = *(v309 + 272);
  v285 = *(v309 + 179);
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_74();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v160 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Storing cache %s for %s, scheme:0x%x, ino:%llu, chunkCount:%llu, mtime:%llu, generation:%u, registering:%u\n", "com.apple.cscache", v306, v146, v148, v297, v149, v147, v285);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_75();
      }

      v161 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *v318 = 138543362;
        *&v318[4] = v160;
        _os_log_impl(&dword_243431000, v161, OS_LOG_TYPE_DEBUG, "%{public}@", v318, 0xCu);
      }

      if (v160)
      {
        CFRelease(v160);
      }
    }
  }

  v162 = *(v309 + 208);
  if (v162)
  {
    v163 = CKFileDigestResultsFileSignature(v162);
    v164 = CKFileSignatureCopy(v163);
    if (!v164)
    {
      chunkItem_cold_77();
    }

    v165 = v164;
    v166 = CKFileSchemeAndSignatureSize(v164);
    if (v166 >= 0x10000)
    {
      chunkItem_cold_76();
    }
  }

  else
  {
    v165 = 0;
    v166 = 0;
  }

  __srcb = v165;
  v192 = 35;
  if (!v285)
  {
    v192 = 84;
  }

  v301 = v192;
  v193 = CKChunkSchemeSignatureAndKeySize((v303 + v192));
  v194 = v193;
  v195 = v193 + 4;
  if (v193 + 4 >= 0x10000)
  {
    chunkItem_cold_85();
  }

  v278 = v193 + 4;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_78();
    }

    v196 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG);
    v195 = v278;
    if (v196)
    {
      v197 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG);
      v195 = v278;
      if (v197)
      {
        v294 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fileSignatureSize:%u, chunkInfoSize:%u, chunkInfoCount:%u", v166, v278, v297);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_79();
        }

        v198 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *v318 = 138543362;
          *&v318[4] = v294;
          _os_log_impl(&dword_243431000, v198, OS_LOG_TYPE_DEBUG, "%{public}@", v318, 0xCu);
        }

        v195 = v278;
        if (v294)
        {
          CFRelease(v294);
          v195 = v278;
        }
      }
    }
  }

  v199 = (v166 + 57);
  if (v195 < 5 || ((v195 * v297) & 0xFFFFFFFF00000000) != 0 || __CFADD__(v195 * v297, v199))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      chunkItem_cold_83();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v200 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid size/count: 0x%x/0x%x/0x%x\n", v199, v278, v297);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        chunkItem_cold_84();
      }

      v201 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *v318 = 138543362;
        *&v318[4] = v200;
        _os_log_impl(&dword_243431000, v201, OS_LOG_TYPE_ERROR, "%{public}@", v318, 0xCu);
      }

      if (v200)
      {
LABEL_571:
        CFRelease(v200);
      }
    }
  }

  else
  {
    lengthb = v195 * v297 + v199;
    Mutable = CFDataCreateMutable(0, lengthb);
    if (Mutable)
    {
      v203 = Mutable;
      v281 = v4;
      CFDataSetLength(Mutable, lengthb);
      __dstb = v203;
      v204 = CFDataGetMutableBytePtr(v203);
      v205 = v204;
      *(v204 + 1) = 0u;
      *(v204 + 2) = 0u;
      *(v204 + 42) = 0u;
      *v204 = 0u;
      *(v204 + 21) = v147;
      *(v204 + 25) = v149;
      *(v204 + 33) = v148;
      *(v204 + 41) = v150;
      v206 = v166;
      *(v204 + 49) = v166;
      *(v204 + 51) = v278;
      *(v204 + 53) = v297;
      if (v166)
      {
        memcpy(v204 + 57, __srcb, v166);
      }

      v207 = 0;
      v295 = *(v309 + 308);
      v292 = v194;
      v208 = 80;
      if (v285)
      {
        v208 = 24;
      }

      v286 = v208;
      v209 = v206 - lengthb + 57;
      v210 = &v205[v206 + 61];
      v211 = v297;
      do
      {
        v212 = v303 + v207;
        *(v210 - 1) = *(v212 + v286);
        memcpy(v210, (v212 + v301), v292);
        v207 += v295;
        v209 += v278;
        v210 += v278;
        --v211;
      }

      while (v211);
      if (v209)
      {
        chunkItem_cold_80();
      }

      if (!setChunkListCacheBlob(v309, __dstb))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          chunkItem_cold_81();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          v213 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Stored chunk list cache for %s, chunkCount:%llu, blobSize:%u, sz:%llu, ino:%llu, mtime:%llu, generation:%u\n", v306, v297, lengthb, v150, v148, v149, v147);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            chunkItem_cold_82();
          }

          v214 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            *v318 = 138543362;
            *&v318[4] = v213;
            _os_log_impl(&dword_243431000, v214, OS_LOG_TYPE_DEBUG, "%{public}@", v318, 0xCu);
          }

          if (v213)
          {
            CFRelease(v213);
          }
        }
      }

      v4 = v281;
      v200 = __dstb;
      goto LABEL_571;
    }
  }

  if (__srcb)
  {
    free(__srcb);
  }

LABEL_384:
  v6 = 0;
LABEL_385:
  v5 = v304;
LABEL_389:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_391:
  freeChunkListCacheInfo(v5);
  v152 = *(v3 + 40);
  if (v152)
  {
    v152(v4);
  }

  v153 = *MEMORY[0x277D85DE8];
  return v6;
}