@interface NUAbstractBufferStorage
@end

@implementation NUAbstractBufferStorage

void __51___NUAbstractBufferStorage_copyFromStorage_region___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___NUAbstractBufferStorage_copyFromStorage_region___block_invoke_2;
  v7[3] = &unk_1E810A960;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  *(*(a1[6] + 8) + 24) = [v5 writeBufferInRegion:v9 block:v7];
}

void __51___NUAbstractBufferStorage_copyFromStorage_region___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bytesPerPixel];

  [*(a1 + 32) rowBytes];
  [v3 rowBytes];
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 bounds];
  }

  [*(a1 + 32) bytesAtPoint:{0, 0, 0}];
  [v3 mutableBytesAtPoint:v6];
}

@end