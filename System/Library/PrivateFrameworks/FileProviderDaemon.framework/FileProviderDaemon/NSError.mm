@interface NSError
@end

@implementation NSError

uint64_t __78__NSError_FPFSAdditions__fp_nonEvictableChildrenErrorWithFD_trashIno_busyIno___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a1 + 48))
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  memset(&v14, 0, sizeof(v14));
  if (fstatat(*(a1 + 72), (a2 + 21), &v14, 32) < 0)
  {
    goto LABEL_13;
  }

  if ((v14.st_flags & 0x40000000) != 0)
  {
    if (*a2 != *(a1 + 56))
    {
      return 0;
    }

    v8 = 3;
    goto LABEL_14;
  }

  v7 = v14.st_mode & 0xF000;
  if (v7 == 40960)
  {
    return 0;
  }

  if (v7 != 0x8000)
  {
    goto LABEL_12;
  }

  if (v14.st_nlink > 1u)
  {
    v8 = 4;
    goto LABEL_14;
  }

  v9 = *(a1 + 72);
  if ((fpfs_is_finder_alias_at() & 0x80000000) != 0)
  {
LABEL_13:
    v8 = 1;
  }

  else
  {
LABEL_12:
    v8 = 5;
  }

LABEL_14:
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:a2 + 21];
  v12 = [v10 URLByAppendingPathComponent:v11 isDirectory:*(a2 + 20) == 4];

  v13 = [*(a1 + 64) purgeabilityErrorForReason:v8 atURL:v12];
  if (v13)
  {
    [*(a1 + 40) addObject:v13];
    if ([*(a1 + 40) count] > 0x63)
    {

      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

@end