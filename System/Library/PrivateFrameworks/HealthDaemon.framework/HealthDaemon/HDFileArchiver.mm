@interface HDFileArchiver
- (BOOL)compressFileAtURL:(id)a3 to:(id)a4 strippingPathPrefix:(id)a5 error:(id *)a6;
- (BOOL)decompressArchiveAt:(id)a3 to:(id)a4 error:(id *)a5;
- (HDFileArchiver)init;
- (id).cxx_construct;
- (id)_errorFromReaderWithContext:(uint64_t)a1;
- (uint64_t)_reset;
- (void)dealloc;
@end

@implementation HDFileArchiver

- (void)dealloc
{
  [(HDFileArchiver *)self _reset];
  v3.receiver = self;
  v3.super_class = HDFileArchiver;
  [(HDFileArchiver *)&v3 dealloc];
}

- (uint64_t)_reset
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    *(result + 8) = 0;

    v3 = v1[2];
    v1[2] = 0;

    v4 = v1[3];
    v1[3] = 0;

    if (v1[4])
    {
      archive_read_free();
      v1[4] = 0;
    }

    result = v1[5];
    if (result)
    {
      result = archive_write_free();
      v1[5] = 0;
    }
  }

  return result;
}

- (HDFileArchiver)init
{
  v7.receiver = self;
  v7.super_class = HDFileArchiver;
  v2 = [(HDFileArchiver *)&v7 init];
  if (v2)
  {
    std::vector<unsigned char>::vector[abi:ne200100](&v5, 0x10000);
    begin = v2->_nullBuffer.__begin_;
    if (begin)
    {
      v2->_nullBuffer.__end_ = begin;
      operator delete(begin);
      v2->_nullBuffer.__begin_ = 0;
      v2->_nullBuffer.__end_ = 0;
      v2->_nullBuffer.__cap_ = 0;
    }

    *&v2->_nullBuffer.__begin_ = v5;
    v2->_nullBuffer.__cap_ = v6;
  }

  return v2;
}

- (id)_errorFromReaderWithContext:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    v5 = archive_errno();
    v6 = *(a1 + 32);
    if (v5 < 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Internal libarchive error %s", v3, archive_error_string()];
      v11 = [MEMORY[0x277CCA9B8] hk_error:100 description:v12];
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s (errno = %d)", v3, archive_error_string(), v5];
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v9 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)compressFileAtURL:(id)a3 to:(id)a4 strippingPathPrefix:(id)a5 error:(id *)a6
{
  *(&v66[2] + 2) = *MEMORY[0x277D85DE8];
  v62 = a3;
  v11 = a4;
  v12 = a5;
  [(HDFileArchiver *)self _reset];
  objc_storeStrong(&self->_sourceURL, a3);
  objc_storeStrong(&self->_prefixURL, a5);
  self->_reader = archive_read_disk_new();
  p_reader = &self->_reader;
  archive_read_disk_set_metadata_filter_callback();
  reader = self->_reader;
  [(NSURL *)self->_sourceURL fileSystemRepresentation];
  if (archive_read_disk_open())
  {
    v15 = *p_reader;
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"Failed to open source: %s", archive_error_string()}];
    [(HDFileArchiver *)self _reset];
    v16 = 0;
    goto LABEL_58;
  }

  self->_writer = archive_write_new();
  p_writer = &self->_writer;
  archive_write_add_filter_gzip();
  writer = self->_writer;
  archive_write_set_format_pax_restricted();
  v19 = self->_writer;
  [v11 fileSystemRepresentation];
  archive_write_open_filename();
  v61 = @"Failed to write sparse block for entry %s: %s";
  while (1)
  {
    archive_entry_new();
    v20 = *p_reader;
    next_header2 = archive_read_next_header2();
    v22 = next_header2;
    if (next_header2)
    {
      if (next_header2 == 1)
      {
        v16 = 1;
        goto LABEL_57;
      }

      _HKInitializeLogging();
      v23 = HKLogInfrastructure();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v47 = *p_reader;
        v48 = archive_errno();
        v49 = *p_reader;
        v50 = archive_error_string();
        *buf = 138543874;
        v64 = self;
        v65 = 1024;
        LODWORD(v66[0]) = v48;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = v50;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read next file from disk during compression: %d: %s", buf, 0x1Cu);
      }

      if (v22 == -25 || v22 == -30)
      {
        v52 = *p_reader;
        [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"Failed to read next file from disk during compression: %s", archive_error_string()}];
        goto LABEL_56;
      }

      if (v22 <= -21)
      {
        _HKInitializeLogging();
        v24 = HKLogInfrastructure();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Skipping bad entry", buf, 2u);
        }

        goto LABEL_47;
      }
    }

    if (self->_prefixURL)
    {
      v25 = archive_entry_pathname();
      if (!v25)
      {
        goto LABEL_47;
      }

      v26 = [(NSURL *)self->_prefixURL fileSystemRepresentation];
      _HKInitializeLogging();
      v27 = HKLogInfrastructure();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v64 = v26;
        v65 = 2080;
        v66[0] = v25;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Stripping %s from %s", buf, 0x16u);
      }

      if (v26)
      {
        v28 = strstr(v25, v26);
        if (v28 == v25)
        {
          v29 = v28;
          v30 = strlen(v26);
          if (v29[v30] == 47)
          {
            v25 = &v29[v30 + 1];
          }

          else
          {
            v25 = &v29[v30];
          }
        }
      }

      if (!*v25)
      {
        goto LABEL_47;
      }

      archive_entry_copy_pathname();
    }

    _HKInitializeLogging();
    v31 = HKLogInfrastructure();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = archive_entry_pathname();
      *buf = 136315138;
      v64 = v32;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "Writing entry %s", buf, 0xCu);
    }

    v33 = *p_writer;
    if (archive_write_header() < -20)
    {
      v53 = MEMORY[0x277CCA9B8];
      v54 = archive_entry_pathname();
      v55 = *p_writer;
      [v53 hk_assignError:a6 code:100 format:{@"Failed to write entry header for %s: %s", v54, archive_error_string()}];
      goto LABEL_56;
    }

    if (archive_entry_size() >= 1)
    {
      break;
    }

LABEL_47:
    archive_entry_free();
  }

  for (i = 0; ; i += v44)
  {
    v35 = *p_reader;
    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block >= -20)
      {
        goto LABEL_47;
      }

      p_writer = &self->_reader;
      v51 = @"Failed to read data block for entry %s: %s";
      goto LABEL_54;
    }

    v37 = -i;
    v38 = i >= 0 || v37 < 1;
    if (!v38)
    {
      break;
    }

LABEL_42:
    v43 = *p_writer;
    v44 = archive_write_data();
    if (v44 < 0)
    {
      v51 = @"Failed to write data block for entry %s: %s";
LABEL_54:
      v61 = v51;
      goto LABEL_55;
    }
  }

  while (1)
  {
    begin = self->_nullBuffer.__begin_;
    v40 = self->_writer;
    v41 = (self->_nullBuffer.__end_ - begin >= v37 ? v37 : self->_nullBuffer.__end_ - begin);
    v42 = archive_write_data();
    if (v42 < 0)
    {
      break;
    }

    if (v42 < v41)
    {
      _HKInitializeLogging();
      v45 = HKLogInfrastructure();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = archive_entry_pathname();
        *buf = 138543618;
        v64 = self;
        v65 = 2080;
        v66[0] = v46;
        _os_log_impl(&dword_228986000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: Truncated write for %s; file may have grown while being archived.", buf, 0x16u);
      }

      goto LABEL_47;
    }

    i += v42;
    v38 = v37 <= v42;
    v37 -= v42;
    if (v38)
    {
      goto LABEL_42;
    }
  }

LABEL_55:
  v56 = MEMORY[0x277CCA9B8];
  v57 = archive_entry_pathname();
  v58 = *p_writer;
  [v56 hk_assignError:a6 code:100 format:{v61, v57, archive_error_string()}];
LABEL_56:
  v16 = 0;
LABEL_57:
  archive_entry_free();
  [(HDFileArchiver *)self _reset];
LABEL_58:

  v59 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)decompressArchiveAt:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [(HDFileArchiver *)self _reset];
  objc_storeStrong(&self->_destinationDirectoryURL, a4);
  self->_reader = archive_read_new();
  archive_read_support_filter_all();
  reader = self->_reader;
  archive_read_support_format_all();
  v11 = self->_reader;
  [v8 fileSystemRepresentation];
  if (archive_read_open_filename())
  {
    v12 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
    v13 = v12;
    if (v12)
    {
      if (a5)
      {
        v14 = v12;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [(HDFileArchiver *)self _reset];
    v22 = 0;
  }

  else
  {
    self->_writer = archive_write_disk_new();
    archive_write_disk_set_options();
    while (1)
    {
      do
      {
        v15 = self->_reader;
        next_header = archive_read_next_header();
      }

      while (next_header == -10);
      if (next_header)
      {
        break;
      }

      destinationDirectoryURL = self->_destinationDirectoryURL;
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:archive_entry_pathname()];
      v19 = [(NSURL *)destinationDirectoryURL URLByAppendingPathComponent:v18];

      [v19 fileSystemRepresentation];
      archive_entry_copy_pathname();
      v20 = self->_reader;
      writer = self->_writer;
      if (archive_read_extract2())
      {
        v25 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
        v26 = v25;
        if (v25)
        {
          if (a5)
          {
            v27 = v25;
            *a5 = v26;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_24;
      }
    }

    if (next_header == 1)
    {
      v22 = 1;
      goto LABEL_25;
    }

    v23 = [(HDFileArchiver *)self _errorFromReaderWithContext:?];
    v19 = v23;
    if (v23)
    {
      if (a5)
      {
        v24 = v23;
        *a5 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v22 = 0;
LABEL_25:
    [(HDFileArchiver *)self _reset];
  }

  return v22;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end