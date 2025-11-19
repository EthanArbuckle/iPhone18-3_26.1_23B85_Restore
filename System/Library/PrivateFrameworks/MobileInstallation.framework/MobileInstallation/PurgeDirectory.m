@interface PurgeDirectory
@end

@implementation PurgeDirectory

uint64_t ___PurgeDirectory_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!removefile(*(a2 + 24), *(a1 + 40), 0) && *(a2 + 80) == 1 && *(a2 + 60) == 1)
  {
    v6 = *(a2 + 8);
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 24);
      MOLogWrite();
    }

    *(*(*(a1 + 32) + 8) + 24) += v6;
  }

  *a3 = 1;
  return 1;
}

uint64_t ___PurgeDirectory_block_invoke_2(uint64_t a1, char *path)
{
  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    MOLogWrite();
  }

  if (removefile(path, *(a1 + 32), 1u) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  return 1;
}

@end