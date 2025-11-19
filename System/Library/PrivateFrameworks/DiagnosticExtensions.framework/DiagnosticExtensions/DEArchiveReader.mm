@interface DEArchiveReader
- (DEArchiveReader)initWithURL:(id)a3;
- (id)listContainedPaths;
- (void)closeArchive;
@end

@implementation DEArchiveReader

- (DEArchiveReader)initWithURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DEArchiveReader;
  v5 = [(DEArchiveReader *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v5->_archive = archive_read_new();
  archive_read_support_filter_all();
  archive = v5->_archive;
  archive_read_support_format_all();
  v7 = v5->_archive;
  v8 = [v4 path];
  [v8 UTF8String];
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    v10 = +[DELogging fwHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DEArchiveReader *)v4 initWithURL:v10];
    }

    v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = v5;
  }

  return v11;
}

- (id)listContainedPaths
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = self->_archive; !archive_read_next_header(); archive = self->_archive)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:archive_entry_pathname() encoding:4];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  v7 = [v3 copy];

  return v7;
}

- (void)closeArchive
{
  if (self->_archive)
  {
    archive_read_close();
    archive = self->_archive;

    MEMORY[0x2821F7080](archive);
  }
}

- (void)initWithURL:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Error opening archive at path %@ %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end