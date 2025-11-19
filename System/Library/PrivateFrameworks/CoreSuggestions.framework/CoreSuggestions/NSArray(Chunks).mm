@interface NSArray(Chunks)
- (void)sg_enumerateChunksOfSize:()Chunks usingBlock:;
@end

@implementation NSArray(Chunks)

- (void)sg_enumerateChunksOfSize:()Chunks usingBlock:
{
  v7 = a4;
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SGArrays.m" lineNumber:191 description:@"Chunk size must be > 0"];
  }

  v8 = 0;
  do
  {
    if (v8 >= [a1 count])
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    v14 = 0;
    v10 = [a1 count];
    v11 = v10 - v8 >= a3 ? a3 : v10 - v8;
    v12 = [a1 subarrayWithRange:{v8, v11}];
    v7[2](v7, v12, &v14);

    LODWORD(v12) = v14;
    v8 += v11;
    objc_autoreleasePoolPop(v9);
  }

  while (v12 != 1);
}

@end