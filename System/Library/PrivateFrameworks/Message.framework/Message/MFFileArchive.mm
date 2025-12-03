@interface MFFileArchive
+ (id)archive;
- (BOOL)_decompressArchive:(archive *)archive intoArchiveDirectory:(id)directory error:(id *)error;
- (BOOL)_decompressContents:(id)contents inMemoryWithError:(id *)error mainEntry:(BOOL)entry;
- (MFFileArchive)init;
- (_NSRange)inputRange;
- (archive)_compressionArchive;
- (archive)_decompressionArchive;
- (archive_entry)_compressionArchiveEntryWithName:(id)name length:(unint64_t)length isDirectory:(BOOL)directory;
- (id)_compressContents:(id)contents error:(id *)error;
- (id)_errorForArchiveStatus:(int64_t)status;
- (id)compressFolder:(id)folder error:(id *)error;
- (int)_archiveDirectoryName:(id)name withArchive:(archive *)archive error:(id *)error;
- (int)_compressContents:(id)contents fileName:(id)name withArchive:(archive *)archive error:(id *)error;
- (int)_compressContents:(id)contents withArchive:(archive *)archive error:(id *)error;
- (int)_compressWithArchive:(archive *)archive error:(id *)error;
- (int)_compressionCompleteForArchive:(archive *)archive error:(id *)error;
- (int)_decompressionCompleteForArchive:(archive *)archive error:(id *)error;
- (void)compressContents:(id)contents completion:(id)completion;
- (void)dealloc;
- (void)decompressContents:(id)contents completion:(id)completion;
- (void)registerBlocks:(id)blocks writer:(id)writer;
- (void)unregisterBlocks;
@end

@implementation MFFileArchive

- (void)dealloc
{
  [(MFFileArchive *)self unregisterBlocks];
  v3.receiver = self;
  v3.super_class = MFFileArchive;
  [(MFFileArchive *)&v3 dealloc];
}

+ (id)archive
{
  v2 = objc_alloc_init(MFFileArchive);

  return v2;
}

- (MFFileArchive)init
{
  v6.receiver = self;
  v6.super_class = MFFileArchive;
  v2 = [(MFFileArchive *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69AD730]);
    outputData = v2->_outputData;
    v2->_outputData = v3;
  }

  return v2;
}

- (id)_errorForArchiveStatus:(int64_t)status
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (status <= -11)
  {
    if (status == -30)
    {
      v4 = @"MFFileArchiveStatusFatal";
      goto LABEL_18;
    }

    if (status != -25)
    {
      if (status == -20)
      {
        v4 = @"MFFileArchiveStatusWarn";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = @"MFFileArchiveStatusFailed";
  }

  else if (status > 10000)
  {
    if (status != 10001)
    {
      if (status == 10002)
      {
        v4 = @"MFFileArchiveStatusFailedDataWrite";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = @"MFFileArchiveStatusFailedHeaderWrite";
  }

  else
  {
    if (status != -10)
    {
      if (!status)
      {
        v4 = @"MFFileArchiveStatusOK";
        goto LABEL_18;
      }

LABEL_14:
      v4 = @"MFFileArchiveStatusUnknown";
      goto LABEL_18;
    }

    v4 = @"MFFileArchiveStatusRetry";
  }

LABEL_18:
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"MFFileArchiveDomain" code:status userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)registerBlocks:(id)blocks writer:(id)writer
{
  writerCopy = writer;
  v7 = _Block_copy(blocks);
  readerBlock = self->_readerBlock;
  self->_readerBlock = v7;

  v9 = _Block_copy(writerCopy);
  writerBlock = self->_writerBlock;
  self->_writerBlock = v9;
}

- (void)unregisterBlocks
{
  readerBlock = self->_readerBlock;
  self->_readerBlock = 0;

  writerBlock = self->_writerBlock;
  self->_writerBlock = 0;
}

- (id)_compressContents:(id)contents error:(id *)error
{
  contentsCopy = contents;
  _compressionArchive = [(MFFileArchive *)self _compressionArchive];
  v8 = archive_write_open();
  if (v8 || (v8 = [(MFFileArchive *)self _compressContents:contentsCopy withArchive:_compressionArchive error:error]) != 0)
  {
    if (error)
    {
      [(MFFileArchive *)self _errorForArchiveStatus:v8];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = self->_outputData;
  }

  return v9;
}

- (void)compressContents:(id)contents completion:(id)completion
{
  contentsCopy = contents;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MFFileArchive_compressContents_completion___block_invoke;
  block[3] = &unk_1E7AA5738;
  block[4] = self;
  v12 = contentsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contentsCopy;
  dispatch_async(v8, block);
}

void __45__MFFileArchive_compressContents_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v4 = [v2 _compressContents:v3 error:&v6];
  v5 = v6;
  [a1[5] setContents:v4];
  (*(a1[6] + 16))();
}

- (id)compressFolder:(id)folder error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v43 = -86;
  path = [folderCopy path];
  selfCopy = self;
  errorCopy = error;
  LODWORD(error) = [defaultManager fileExistsAtPath:path isDirectory:&v43];
  LODWORD(self) = v43;

  if (error & self)
  {
    path2 = [folderCopy path];
    v36 = [path2 length];

    v8 = +[MFFileArchiveDirectory archiveDirectory];
    v9 = *MEMORY[0x1E695DB78];
    v47[0] = *MEMORY[0x1E695DB78];
    v34 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v11 = [defaultManager enumeratorAtURL:folderCopy includingPropertiesForKeys:v10 options:0 errorHandler:0];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v11;
    v12 = 0;
    v13 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = *v40;
    while (1)
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v39 + 1) + 8 * v15);
        path3 = [v17 path];
        v19 = [path3 substringFromIndex:v36 + 1];

        v37 = 0;
        v38 = 0;
        LOBYTE(path3) = [v17 getResourceValue:&v38 forKey:v9 error:&v37];
        v20 = v38;
        v12 = v37;

        if (path3)
        {
          if ([v20 BOOLValue])
          {
            v21 = [defaultManager contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:0];
            v22 = [v21 count] == 0;

            if (!v22)
            {
              goto LABEL_15;
            }

            v23 = [[MFFileArchiveEntry alloc] initWithDirectoryPath:v19];
            [v34 setArchiveEntry:v23];
          }

          else
          {
            v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17 options:3 error:0];
            v25 = [[MFFileArchiveEntry alloc] initWithContents:v23 path:v19];
            [v34 setArchiveEntry:v25];
          }
        }

        else
        {
          v23 = MFLogGeneral();
          if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v12 ef_publicDescription];
            [(MFFileArchive *)ef_publicDescription compressFolder:buf error:&v45, &v23->super];
          }
        }

LABEL_15:
        ++v15;
        v16 = v12;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (!v13)
      {
LABEL_17:

        v26 = [(MFFileArchive *)selfCopy _compressContents:v34 error:errorCopy];

        v27 = v34;
        goto LABEL_22;
      }
    }
  }

  v27 = MFLogGeneral();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [MFFileArchive compressFolder:v27 error:?];
  }

  v26 = 0;
LABEL_22:

  v28 = *MEMORY[0x1E69E9840];

  return v26;
}

- (archive)_compressionArchive
{
  v2 = archive_write_new();
  archive_write_set_format_zip();
  archive_write_set_options();
  return v2;
}

- (int)_compressContents:(id)contents withArchive:(archive *)archive error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  archiveEntries = [contents archiveEntries];
  v9 = [archiveEntries countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(archiveEntries);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      if ([v12 isDirectory])
      {
        path = [v12 path];
        v14 = [(MFFileArchive *)self _archiveDirectoryName:path withArchive:archive error:error];
      }

      else
      {
        path = [v12 contents];
        path2 = [v12 path];
        v14 = [(MFFileArchive *)self _compressContents:path fileName:path2 withArchive:archive error:error];
      }

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [archiveEntries countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = [(MFFileArchive *)self _compressionCompleteForArchive:archive error:error];
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)_compressWithArchive:(archive *)archive error:(id *)error
{
  readerBlock = self->_readerBlock;
  if (!readerBlock || !self->_writerBlock)
  {
    return [(MFFileArchive *)self _compressionCompleteForArchive:archive error:error];
  }

  v8 = readerBlock[2](readerBlock, a2);
  -[MFFileArchive _compressionArchiveEntryWithName:length:isDirectory:](self, "_compressionArchiveEntryWithName:length:isDirectory:", 0, [v8 length], 0);
  v9 = archive_write_header();
  if (!v9)
  {
    while (1)
    {
      if (![v8 length])
      {
        v9 = 0;
        goto LABEL_15;
      }

      [v8 bytes];
      [v8 length];
      v10 = archive_write_data();
      if (v10 == -1)
      {
        break;
      }

      if (v10 < [v8 length])
      {
        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#Attachments Failed to write entire data buffer", v15, 2u);
        }
      }

      v12 = (*(self->_readerBlock + 2))();

      v8 = v12;
    }

    v9 = 10002;
  }

LABEL_15:
  archive_entry_free();

  v13 = [(MFFileArchive *)self _compressionCompleteForArchive:archive error:error];
  if (!v9)
  {
    return v13;
  }

  return v9;
}

- (archive_entry)_compressionArchiveEntryWithName:(id)name length:(unint64_t)length isDirectory:(BOOL)directory
{
  nameCopy = name;
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v8, 0);
  v6 = archive_entry_new();
  [nameCopy fileSystemRepresentation];
  archive_entry_set_pathname();
  archive_entry_set_size();
  archive_entry_set_filetype();
  archive_entry_set_perm();
  archive_entry_set_mtime();

  return v6;
}

- (int)_compressContents:(id)contents fileName:(id)name withArchive:(archive *)archive error:(id *)error
{
  contentsCopy = contents;
  nameCopy = name;
  -[MFFileArchive _compressionArchiveEntryWithName:length:isDirectory:](self, "_compressionArchiveEntryWithName:length:isDirectory:", nameCopy, [contentsCopy length], 0);
  if (archive_write_header())
  {
    if (error)
    {
      *error = [(MFFileArchive *)self _errorForArchiveStatus:10001];
    }

    v11 = 10001;
  }

  else
  {
    [contentsCopy bytes];
    [contentsCopy length];
    v12 = archive_write_data();
    if (v12 == -1)
    {
      v11 = 10002;
    }

    else
    {
      if (v12 < [contentsCopy length])
      {
        v13 = MFLogGeneral();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "#Attachments Failed to write entire data buffer", v15, 2u);
        }
      }

      v11 = 0;
    }
  }

  archive_entry_free();

  return v11;
}

- (int)_archiveDirectoryName:(id)name withArchive:(archive *)archive error:(id *)error
{
  nameCopy = name;
  [(MFFileArchive *)self _compressionArchiveEntryWithName:nameCopy length:0 isDirectory:1];
  if (archive_write_header())
  {
    if (error)
    {
      *error = [(MFFileArchive *)self _errorForArchiveStatus:10001];
    }

    v8 = 10001;
  }

  else
  {
    v8 = 0;
  }

  archive_entry_free();

  return v8;
}

- (int)_compressionCompleteForArchive:(archive *)archive error:(id *)error
{
  v6 = archive_write_free();
  v7 = v6;
  if (error && v6)
  {
    *error = [(MFFileArchive *)self _errorForArchiveStatus:v6];
  }

  return v7;
}

- (BOOL)_decompressContents:(id)contents inMemoryWithError:(id *)error mainEntry:(BOOL)entry
{
  contentsCopy = contents;
  _decompressionArchive = [(MFFileArchive *)self _decompressionArchive];
  contents = [contentsCopy contents];
  [contents bytes];
  [contents length];
  open_memory = archive_read_open_memory();
  if (open_memory)
  {
    if (error)
    {
      [(MFFileArchive *)self _errorForArchiveStatus:open_memory];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(MFFileArchive *)self _decompressArchive:_decompressionArchive intoArchiveDirectory:contentsCopy error:error];
  }

  v12 = [(MFFileArchive *)self _decompressionCompleteForArchive:_decompressionArchive error:error];
  if (error && v12)
  {
    *error = [(MFFileArchive *)self _errorForArchiveStatus:v12];
  }

  return v11;
}

- (void)decompressContents:(id)contents completion:(id)completion
{
  contentsCopy = contents;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MFFileArchive_decompressContents_completion___block_invoke;
  block[3] = &unk_1E7AA5738;
  block[4] = self;
  v12 = contentsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contentsCopy;
  dispatch_async(v8, block);
}

uint64_t __47__MFFileArchive_decompressContents_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _decompressContents:*(a1 + 40) inMemoryWithError:0 mainEntry:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (archive)_decompressionArchive
{
  v2 = archive_read_new();
  archive_read_support_filter_all();
  archive_read_support_format_all();
  return v2;
}

- (BOOL)_decompressArchive:(archive *)archive intoArchiveDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v7 = NSPageSize();
  v8 = 1;
  v9 = 1000;
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithCString:archive_entry_pathname() encoding:4];
    if (self->_readerBlock)
    {
      writerBlock = self->_writerBlock;
      if (writerBlock)
      {
        writerBlock[2](writerBlock, v11, 0);
      }
    }

    is_set = archive_entry_size_is_set();
    v14 = v7;
    if (is_set)
    {
      v14 = archive_entry_size();
    }

    v15 = [MEMORY[0x1E69AD730] dataWithCapacity:v14];
    while (1)
    {
      data_block = archive_read_data_block();
      if (data_block)
      {
        break;
      }

      if (self->_readerBlock && self->_writerBlock)
      {
        [v15 setLength:0];
        [v15 appendBytes:0xAAAAAAAAAAAAAAAALL length:0xAAAAAAAAAAAAAAAALL];
        (*(self->_writerBlock + 2))();
      }

      else
      {
        [v15 appendBytes:0xAAAAAAAAAAAAAAAALL length:0xAAAAAAAAAAAAAAAALL];
      }
    }

    if (error && data_block != 1)
    {
      [(MFFileArchive *)self _errorForArchiveStatus:data_block];
      *error = v8 = 0;
    }

    if (!self->_readerBlock || !self->_writerBlock)
    {
      v17 = [[MFFileArchiveEntry alloc] initWithContents:v15 path:v11];
      [directoryCopy setArchiveEntry:v17];
    }

    if (!--v9)
    {
      goto LABEL_25;
    }
  }

  if (error && next_header != 1)
  {
    [(MFFileArchive *)self _errorForArchiveStatus:next_header];
    *error = v8 = 0;
  }

LABEL_25:

  return v8 & 1;
}

- (int)_decompressionCompleteForArchive:(archive *)archive error:(id *)error
{
  free = archive_read_free();
  v7 = free;
  if (error && free)
  {
    *error = [(MFFileArchive *)self _errorForArchiveStatus:free];
  }

  return v7;
}

- (_NSRange)inputRange
{
  length = self->_inputRange.length;
  location = self->_inputRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)compressFolder:(void *)a3 error:(os_log_t)log .cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#Attachments Couldn't add file to archive. Error: %{public}@", buf, 0xCu);
}

@end