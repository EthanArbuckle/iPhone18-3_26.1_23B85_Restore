@interface SIUserCopyUserFSCriteriaForQuery
@end

@implementation SIUserCopyUserFSCriteriaForQuery

uint64_t ___SIUserCopyUserFSCriteriaForQuery_block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a1[4] + 8);
  if (*(v3 + 24) != 1)
  {
    return a2;
  }

  v4 = *(a2 + 48);
  if (v4 == 2 || v4 == 32)
  {
    return a2;
  }

  if (v4 != 4)
  {
    goto LABEL_27;
  }

  v5 = *(a2 + 16);
  v6 = *(v5 + 24);
  if ((v6 | 4) != 5)
  {
    goto LABEL_27;
  }

  v7 = *(v5 + 72);
  if (!v7)
  {
    goto LABEL_27;
  }

  v9 = *v5;
  if (strncmp(*v5, "kMDItemIsTrashed", 0x10uLL))
  {
    if (!strncmp(v9, "_kMDItemBundleID", 0x10uLL) || !strncmp(v9, "kMDItemFileProviderID", 0x15uLL))
    {
      if (*v7 == 42 && !*(v7 + 1) || !strncmp(v7, "com.apple.filesystems.UserFS.FileProvider", 0x29uLL))
      {
        if (v6 == 1)
        {
          return a2;
        }
      }

      else if (v6 != 1)
      {
        return a2;
      }
    }

    else if (!*(*(a1[6] + 8) + 24) && !strncmp(v9, "kMDItemDisplayName", 0x12uLL))
    {
      v10 = strlen(v7);
      if (v10)
      {
        v11 = *(v7 + v10 - 1) == 42;
        if (v10 != v11)
        {
          v12 = *MEMORY[0x1E695E480];
          v13 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v7, v10 - v11, 0x8000100u, 0);
          values = v13;
          if (v13)
          {
            if ((*(*(a2 + 16) + 32) & 0x40) != 0)
            {
              v14 = v13;
              MutableCopy = CFStringCreateMutableCopy(v12, 0, v13);
              if (MutableCopy)
              {
                v20 = MutableCopy;
                CFStringTrimWhitespace(MutableCopy);
                *(*(a1[6] + 8) + 24) = CFStringCreateArrayBySeparatingStrings(v12, v20, @" ");
                CFRelease(v20);
              }
            }

            else
            {
              *(*(a1[6] + 8) + 24) = CFArrayCreate(v12, &values, 1, MEMORY[0x1E695E9C0]);
              v14 = values;
            }

            CFRelease(v14);
          }
        }
      }

      return a2;
    }

LABEL_27:
    *(v3 + 24) = 0;
    return a2;
  }

  if ((v6 | 4) == 5)
  {
    *(*(a1[5] + 8) + 24) = *MEMORY[0x1E695E4C0];
    v15 = *(a2 + 16);
    v16 = atoi(*(v15 + 72));
    v17 = *(v15 + 24);
    if (v16)
    {
      if (v17 != 1)
      {
        return a2;
      }
    }

    else if (v17 != 5)
    {
      return a2;
    }

    *(*(a1[5] + 8) + 24) = *MEMORY[0x1E695E4D0];
  }

  return a2;
}

@end