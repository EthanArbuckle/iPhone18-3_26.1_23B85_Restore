@interface NTKUnzipUtilities
+ (BOOL)unzipFile:(id)a3 toPath:(id)a4;
+ (int)_read_extract_flags;
+ (void)_printError:(id)a3;
@end

@implementation NTKUnzipUtilities

+ (BOOL)unzipFile:(id)a3 toPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  archive_read_new();
  archive_read_support_format_zip();
  archive_read_support_filter_gzip();
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v34 = 0;
  [v8 createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:0 error:&v34];
  v10 = v34;

  if (!v10)
  {
    v16 = [v7 path];
    v17 = [v16 UTF8String];

    if (realpath_DARWIN_EXTSN(v17, v35))
    {
      v18 = MEMORY[0x277CBEBC0];
      v19 = 0x277CCA000uLL;
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
      v21 = [v18 fileURLWithPath:v20];

      [v6 fileSystemRepresentation];
      if (!archive_read_open_filename())
      {
        v33 = v6;
        while (1)
        {
          next_header = archive_read_next_header();
          if (next_header)
          {
            break;
          }

          v24 = archive_entry_filetype();
          if (v24 != 0x8000 && v24 != 0x4000)
          {
            v31 = [*(v19 + 3240) stringWithFormat:@"Decompression failed. This file type is not valid."];
            [a1 _printError:v31];

            goto LABEL_19;
          }

          v25 = v19;
          v26 = [*(v19 + 3240) stringWithUTF8String:archive_entry_pathname()];
          v27 = v21;
          v28 = [v21 path];
          v29 = [v28 stringByAppendingPathComponent:v26];

          [v29 UTF8String];
          archive_entry_set_pathname();
          [a1 _read_extract_flags];
          if (archive_read_extract())
          {
            v30 = [*(v25 + 3240) stringWithFormat:@"Decompression failed. Could not extract entry: %@", v26];
            [a1 _printError:v30];

            v15 = 0;
            v21 = v27;
            goto LABEL_20;
          }

          v19 = v25;
          v21 = v27;
        }

        if (next_header == 1)
        {
          v15 = 1;
          goto LABEL_20;
        }

        [a1 _printError:@"Decompression failed. Bad header."];
LABEL_19:
        v15 = 0;
LABEL_20:
        v6 = v33;
        archive_read_free();
        goto LABEL_21;
      }

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decompression failed. Could not open source: %s", objc_msgSend(v6, "fileSystemRepresentation")];
      [a1 _printError:v22];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decompression failed. Could not resolve destination path: %s", v17];
      [a1 _printError:v21];
    }

    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v7 path];
  v13 = [v10 localizedDescription];
  v14 = [v11 stringWithFormat:@"Decompression failed. Could not create ouput folder, path: %@ due to error: %@.", v12, v13];
  [a1 _printError:v14];

  v15 = 0;
LABEL_22:

  return v15;
}

+ (int)_read_extract_flags
{
  if (_read_extract_flags_onceToken != -1)
  {
    +[NTKUnzipUtilities _read_extract_flags];
  }

  if (_read_extract_flags_flags)
  {
    return 776;
  }

  else
  {
    return 0;
  }
}

+ (void)_printError:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTKUnzipUtilities _printError:a3];
  }
}

+ (void)_printError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_22D9C5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

@end