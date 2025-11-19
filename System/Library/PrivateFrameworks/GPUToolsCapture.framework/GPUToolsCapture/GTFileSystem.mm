@interface GTFileSystem
@end

@implementation GTFileSystem

uint64_t __GTFileSystem_write_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = *(a1 + 32);
  do
  {
    if ((a5 - v8) >= 0x100000)
    {
      v10 = 0x100000;
    }

    else
    {
      v10 = a5 - v8;
    }

    v11 = pwrite(v9, (a4 + v8), v10, v8 + a3);
    if (v11 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v8 += v12;
  }

  while (v11 != -1 && v8 != a5);
  return 1;
}

@end