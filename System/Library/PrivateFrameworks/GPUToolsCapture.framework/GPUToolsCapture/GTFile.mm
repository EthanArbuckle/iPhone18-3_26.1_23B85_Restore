@interface GTFile
@end

@implementation GTFile

uint64_t __GTFile_append_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 32);
  do
  {
    if ((a5 - v7) >= 0x100000)
    {
      v9 = 0x100000;
    }

    else
    {
      v9 = a5 - v7;
    }

    v10 = pwrite(v8, (a4 + v7), v9, v7);
    if (v10 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v7 += v11;
  }

  while (v10 != -1 && v7 != a5);
  return 1;
}

uint64_t __GTFile_write_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32) + a3;
  do
  {
    if ((a5 - v7) >= 0x100000)
    {
      v10 = 0x100000;
    }

    else
    {
      v10 = a5 - v7;
    }

    v11 = pwrite(v8, (a4 + v7), v10, v9 + v7);
    if (v11 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v7 += v12;
  }

  while (v11 != -1 && v7 != a5);
  return 1;
}

@end