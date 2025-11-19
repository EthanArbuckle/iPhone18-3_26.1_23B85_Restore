@interface _OSLogVersioning
- (BOOL)checkTimesyncDB:(BOOL *)a3 error:(id *)a4;
- (BOOL)performDestructiveUpdates:(id *)a3;
- (BOOL)repairTimesyncDB:(id *)a3;
- (_OSLogVersioning)initWithCollection:(id)a3 closeOnRelease:(BOOL)a4 error:(id *)a5;
- (_OSLogVersioning)initWithURL:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation _OSLogVersioning

- (BOOL)repairTimesyncDB:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = self->_lcr;
  v5 = [(_OSLogCollectionReference *)v4 timesyncReference];
  v6 = [v5 fileDescriptor];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___OSRepairTimesync_block_invoke;
  v11[3] = &unk_2787AE5B0;
  v12 = v6;
  v11[4] = &v13;
  v11[5] = &v10;
  _timesync_foreach_reg_file_at(v6, v11);
  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  if (v7)
  {
    _OSLogFailWithPOSIXError(v10, a3);
  }

  result = v7 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)checkTimesyncDB:(BOOL *)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = self->_lcr;
  v7 = [(_OSLogCollectionReference *)v6 timesyncReference];
  v8 = [v7 fileDescriptor];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___OSValidateTimesync_block_invoke;
  v13[3] = &unk_2787AE5B0;
  v14 = v8;
  v13[4] = &v15;
  v13[5] = &v12;
  _timesync_foreach_reg_file_at(v8, v13);
  v9 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);

  if (v9 < 0)
  {
    _OSLogFailWithPOSIXError(v12, a4);
  }

  else
  {
    *a3 = v9 != 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 >= 0;
}

- (BOOL)performDestructiveUpdates:(id *)a3
{
  v65 = *MEMORY[0x277D85DE8];
  if (!_os_trace_device_unlocked_since_boot())
  {
LABEL_57:
    v40 = 1;
    v41 = a3;
LABEL_59:
    _OSLogFailWithPOSIXError(v40, v41);
    goto LABEL_54;
  }

  v5 = __str;
  version = self->_version;
  if (version == -1)
  {
    goto LABEL_70;
  }

  if (version <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = self->_version;
  }

  v53 = v7 + 1;
  v54 = a3;
  do
  {
    if (version == 2)
    {
      v55 = self->_lcr;
      v8 = [(_OSLogCollectionReference *)v55 diagnosticsDirectoryReference];
      v9 = [v8 fileDescriptor];

      if (fcntl(v9, 50, &v57) == -1)
      {
        v27 = *__error();
        _os_assumes_log();
      }

      v56[0] = &v57;
      v56[1] = 0;
      v10 = fts_open(v56, 2132, 0);
      if (!v10)
      {
        v42 = 0;
        v11 = -1;
        goto LABEL_63;
      }

      v11 = openat(v9, "timesync", 0);
      if (v11 == -1)
      {
        if (*__error() != 2)
        {
          v11 = -1;
LABEL_62:
          v42 = v10;
LABEL_63:
          v43 = __error();
          _OSLogFailWithPOSIXError(*v43, v54);
          if (v11 != -1 && close(v11) == -1)
          {
            v50 = *__error();
            v51 = *__error();
            if (v50 == 9)
            {
              qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
              qword_27DA527A8 = v51;
              __break(1u);
            }

            _os_assumes_log();
            v61 = 0u;
            v62 = 0u;
            v60 = 0u;
            memset(__str, 0, sizeof(__str));
            os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v52 = *__error();
            v63 = 67109120;
            v64 = v52;
            _os_log_send_and_compose_impl();
            result = _os_crash_msg();
            __break(1u);
            return result;
          }

          if (v10)
          {
            fts_close(v42);
          }

LABEL_54:
          result = 0;
          goto LABEL_55;
        }
      }

      else
      {
        v12 = _os_trace_fdscandir_b();
        if (v12 >= 1)
        {
          v13 = 0;
          v14 = 8 * v12;
          while (1)
          {
            v15 = *v13;
            if ((*(*v13 + 21) != 46 || *(v15 + 22) && (*(v15 + 22) != 46 || *(v15 + 23))) && unlinkat(v11, (*v13 + 21), 0) == -1)
            {
              break;
            }

            if (v14 == ++v13)
            {
              goto LABEL_20;
            }
          }

          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          memset(__str, 0, sizeof(__str));
          a3 = MEMORY[0x277D86220];
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v39 = *__error();
          v63 = 67109120;
          v64 = v39;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_57;
        }

LABEL_20:
        _os_trace_scandir_free_namelist();
        if (unlinkat(v9, "timesync", 128) == -1)
        {
LABEL_69:
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          memset(__str, 0, sizeof(__str));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v45 = *__error();
          v63 = 67109120;
          v64 = v45;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_70:
          *(v5 + 3) = 0u;
          *(v5 + 4) = 0u;
          *(v5 + 1) = 0u;
          *(v5 + 2) = 0u;
          *v5 = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v57 = 134217984;
          v58 = 0;
          _os_log_send_and_compose_impl();
          v46 = _os_crash_msg();
          __break(1u);
          qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_27DA527A8 = v46;
          __break(1u);
          goto LABEL_71;
        }

        if (close(v11) == -1)
        {
LABEL_71:
          v47 = *__error();
          v48 = *__error();
          if (v47 == 9)
          {
            qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
            qword_27DA527A8 = v48;
            __break(1u);
          }

          _os_assumes_log();
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          memset(__str, 0, sizeof(__str));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v49 = *__error();
          v63 = 67109120;
          v64 = v49;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      if (mkdirat(v9, "timesync", 0x1EDu) != -1)
      {
        v16 = openat(v9, "timesync", 0);
        if (v16 != -1)
        {
          v17 = v16;
          v18 = _os_trace_zalloc_typed();
          memset(__str, 170, 26);
          snprintf(__str, 0x1AuLL, "%016llx.timesync", 1);
          v19 = openat(v17, __str, 1537, 420);
          if (v19 < 0)
          {
            free(v18);
            v18 = 0;
          }

          else
          {
            *v18 = v19;
            uuid_clear(v18 + 4);
            *(v18 + 3) = _os_trace_calloc_typed();
            *(v18 + 2) = xmmword_22E0816E0;
          }

          while (1)
          {
            v20 = fts_read(v10);
            v21 = v20;
            if (!v20)
            {
              break;
            }

            fts_info = v20->fts_info;
            if (fts_info == 8)
            {
              v23 = strrchr(v20->fts_name, 46);
              if (v23)
              {
                if (!strcmp(v23, ".tracev3"))
                {
                  fts_path = v21->fts_path;
                  v25 = _os_trace_mmap_at();
                  if (v25)
                  {
                    *__str = MEMORY[0x277D85DD0];
                    *&__str[8] = 0x40000000;
                    *&__str[16] = ___timesync_convert_tracev3_block_invoke;
                    *&__str[24] = &__block_descriptor_tmp_70;
                    *&v60 = v18;
                    munmap(v25, 0);
                  }
                }
              }
            }

            else if (fts_info == 1 && v20->fts_level == 1 && !strcmp(v20->fts_name, "FaultsAndErrors"))
            {
              fts_set(v10, v21, 4);
            }
          }

          fts_close(v10);
          qsort_b(*(v18 + 3), *(v18 + 4), 0x40uLL, &__block_literal_global_73);
          operator new();
        }

        goto LABEL_62;
      }

      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      memset(__str, 0, sizeof(__str));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v44 = *__error();
      v63 = 67109120;
      v64 = v44;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_69;
    }
  }

  while (version++ != v7);
  v28 = [(_OSLogCollectionReference *)self->_lcr diagnosticsDirectoryReference];
  v29 = [v28 fileDescriptor];

  v30 = openat(v29, "Info.plist", 514, 420);
  if (v30 == -1)
  {
    v40 = *__error();
    v41 = v54;
    goto LABEL_59;
  }

  v31 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v30 closeOnDealloc:1];
  v32 = [v31 readDataToEndOfFileAndReturnError:0];
  if ([v32 length])
  {
    v33 = v54;
    v34 = [MEMORY[0x277CCAC58] propertyListWithData:v32 options:1 format:0 error:v54];
    if (!v34)
    {
LABEL_53:

      goto LABEL_54;
    }
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = v54;
  }

  v35 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
  [v34 setObject:v35 forKeyedSubscript:@"OSArchiveVersion"];

  v36 = [MEMORY[0x277CCAC58] dataWithPropertyList:v34 format:100 options:0 error:v33];

  if (!v36)
  {
    v32 = 0;
    goto LABEL_53;
  }

  if (![v31 truncateAtOffset:0 error:v33] || (objc_msgSend(v31, "writeData:error:", v36, v33) & 1) == 0)
  {
    v32 = v36;
    goto LABEL_53;
  }

  [v31 closeAndReturnError:0];

  self->_state = (v7 - 2) < 3;
  self->_version = v53;
  result = 1;
LABEL_55:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  if (self->_closeOnRelease)
  {
    [(_OSLogCollectionReference *)self->_lcr close];
  }

  v3.receiver = self;
  v3.super_class = _OSLogVersioning;
  [(_OSLogVersioning *)&v3 dealloc];
}

- (_OSLogVersioning)initWithURL:(id)a3 error:(id *)a4
{
  v6 = [_OSLogCollectionReference referenceWithURL:a3 error:?];
  if (v6)
  {
    self = [(_OSLogVersioning *)self initWithCollection:v6 closeOnRelease:1 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_OSLogVersioning)initWithCollection:(id)a3 closeOnRelease:(BOOL)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v41.receiver = self;
  v41.super_class = _OSLogVersioning;
  v10 = [(_OSLogVersioning *)&v41 init];
  v11 = v10;
  if (!v10)
  {
LABEL_40:
    v26 = v11;
    goto LABEL_41;
  }

  objc_storeStrong(&v10->_lcr, a3);
  v11->_closeOnRelease = a4;
  v12 = v9;
  v13 = [v12 diagnosticsDirectoryReference];
  v14 = [v13 fileDescriptor];

  v42 = 0;
  if (fcntl(v14, 50, __s1) == -1)
  {
    goto LABEL_17;
  }

  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  v15 = strlen(_os_trace_persist_path);
  if (!strncmp(__s1, _os_trace_persist_path, v15))
  {
    v24 = 0;
LABEL_28:
    v11->_version = v24;
    goto LABEL_29;
  }

  v16 = _os_trace_mmap_at();
  if (!v16)
  {
    if (*__error() == 2)
    {
      memset(&v54, 0, sizeof(v54));
      if (fstatat(v14, "FaultsAndErrors", &v54, 0) || (v54.st_mode & 0xF000) != 0x4000)
      {
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = 0;
        v48 = 0;
        v27 = _os_trace_mmap_at();
        v28 = v27;
        if (v27)
        {
          v29 = v48;
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v44 = ___OSIsAncientArchive_block_invoke;
          v45 = &unk_2787AE588;
          v46 = &v49;
          v47 = v27;
          v30 = v43;
          v31 = 0;
          do
          {
            if (v29 - v31 < 0x10)
            {
              break;
            }

            v32 = *(v28 + v31 + 8);
            if (v29 - 16 - v31 < v32)
            {
              break;
            }

            if (!(v44)(v30))
            {
              break;
            }

            v31 = (v31 + v32 + 23) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v31 - 1 < v29);
        }

        v33 = *(v50 + 24);
        _Block_object_dispose(&v49, 8);
        v24 = 1;
        if (!v33)
        {
          v24 = -1;
        }
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_28;
    }

LABEL_17:
    v25 = __error();
    _OSLogFailWithPOSIXError(*v25, a5);

    goto LABEL_18;
  }

  v17 = objc_alloc(MEMORY[0x277CBEA90]);
  v18 = [v17 initWithBytesNoCopy:v16 length:v42 freeWhenDone:0];
  v19 = [MEMORY[0x277CCAC58] propertyListWithData:v18 options:0 format:0 error:a5];
  munmap(v16, v42);
  if (v19)
  {
    v20 = [v19 objectForKeyedSubscript:@"OSArchiveVersion"];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [v19 objectForKeyedSubscript:@"OSArchiveVersion"];
      v11->_version = [v22 integerValue];

      v23 = [v19 objectForKeyedSubscript:@"EndTimeRef"];
      v11->_hasEndTimeRef = v23 != 0;

LABEL_29:
      version = v11->_version;
      v35 = 1;
      if (version)
      {
        v36 = 2;
        v37 = 3;
        if (version >= 5)
        {
          v37 = 0;
        }

        if (version != -1)
        {
          v36 = v37;
        }

        if ((version - 3) >= 3)
        {
          v38 = v36;
        }

        else
        {
          v38 = 1;
        }

        if (version != 5)
        {
          v35 = v38;
        }
      }

      v11->_state = v35;
      goto LABEL_40;
    }
  }

  _OSLogFailWithPOSIXError(0x16, a5);

LABEL_18:
  v26 = 0;
LABEL_41:

  v39 = *MEMORY[0x277D85DE8];
  return v26;
}

@end