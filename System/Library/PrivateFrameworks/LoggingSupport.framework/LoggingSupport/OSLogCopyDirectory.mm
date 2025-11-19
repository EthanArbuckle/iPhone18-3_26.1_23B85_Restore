@interface OSLogCopyDirectory
@end

@implementation OSLogCopyDirectory

BOOL ___OSLogCopyDirectory_block_invoke(uint64_t a1, int a2, char *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v21, 0, sizeof(v21));
  v5 = fstat(a2, &v21);
  result = 1;
  if (!v5 && v21.st_size)
  {
    if (*(a1 + 84) != 1 || strcmp(a3, "version.plist") && strcmp(a3, "logdata.statistics.0.db"))
    {
      v7 = *(a1 + 64);
      v8 = strrchr(a3, 47);
      if (v8)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a3;
      }

      snprintf(__str, 0x400uLL, "%s/%s", v7, v9);
      *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 32) + 16))();
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        if (fcntl(*(a1 + 80), 50, v22) == -1)
        {
          v19 = *__error();
          _os_assumes_log();
        }

        v10 = *(a1 + 40);
        strerror(*(*(*(a1 + 48) + 8) + 24));
        v20 = *(*(*(a1 + 48) + 8) + 24);
        _OSLogWarningMessage(v10, "copy handler failed: '%s' to '%s': %s (%d)", v11, v12, v13, v14, v15, v16, v22);
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) += v21.st_size;
        v18 = *(a1 + 72);
        if (v18)
        {
          result = *(*(*(a1 + 56) + 8) + 24) < v18;
          goto LABEL_14;
        }
      }
    }

    result = 1;
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end