@interface OSLogUUIDMapCopySet
@end

@implementation OSLogUUIDMapCopySet

void ___OSLogUUIDMapCopySet_block_invoke(uint64_t a1, const unsigned __int8 *a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v5 = *(a1 + 64);
    v6 = *(*(a1 + 56) + 8);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (a3 == 3)
    {
      v9 = v7;
      v10 = v8;
      if (uuid_is_null(a2) || !_OSLogUUIDMapCopyUUID(v5, a2, 3, v6 + 24, v9, v10))
      {
        v11 = 0;
      }

      else
      {
        v11 = _OSLogUUIDMapCopyUUID(v5, a2, 1, v6 + 24, v9, v10);
        if (!v11)
        {
          v35 = 0;
          v14 = uuidpath_map_header_fd(v5, a2, &v35);
          if (v14)
          {
            v15 = v14;
            if ((v14[8] & 2) != 0)
            {
              if (*(v14 + 3))
              {
                v29 = 0;
                v11 = 0;
                v30 = (v14 + 24);
                do
                {
                  v31 = _OSLogUUIDMapCopyUUID(v5, v30, 1, v6 + 24, v9, v10);
                  if (!v11)
                  {
                    v11 = v31;
                  }

                  ++v29;
                  v30 += 32;
                }

                while (v29 < v15[3]);
              }

              else
              {
                v11 = 0;
              }

              if (munmap(v15, v35) == -1)
              {
                v32 = *__error();
                _os_assumes_log();
              }
            }

            else
            {
              memset(out, 0, 37);
              uuid_unparse_lower(a2, out);
              _OSLogWarningMessage(v10, "dsc header not shared cache: %s", v16, v17, v18, v19, v20, v21, out);
              if (munmap(v15, v35) == -1)
              {
                v33 = *__error();
                _os_assumes_log();
              }

              v11 = 22;
            }
          }

          else
          {
            memset(out, 0, 37);
            uuid_unparse_lower(a2, out);
            v22 = __error();
            strerror(*v22);
            v34 = *__error();
            _OSLogWarningMessage(v10, "failed to map dsc: %s: %s (%d)", v23, v24, v25, v26, v27, v28, out);
            v11 = *__error();
          }
        }
      }
    }

    else
    {
      v11 = _OSLogUUIDMapCopyUUID(*(a1 + 64), a2, a3, v6 + 24, v7, v8);
    }

    *(*(*(a1 + 48) + 8) + 24) = v11;
    v12 = *(*(a1 + 48) + 8);
    if (*(v12 + 24) == 2)
    {
      *(v12 + 24) = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end