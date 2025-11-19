@interface NSMutableArray(OSABinaryImageListExtension)
- (void)addImage:()OSABinaryImageListExtension address:size:;
- (void)addImageLegacy:()OSABinaryImageListExtension address:size:name:path:arch:;
- (void)addJITImage:()OSABinaryImageListExtension size:;
- (void)sortByAddressAndSetInferredSizes;
@end

@implementation NSMutableArray(OSABinaryImageListExtension)

- (void)sortByAddressAndSetInferredSizes
{
  v2 = [a1 count];
  if (v2)
  {
    v3 = v2;
    [a1 sortUsingComparator:&__block_literal_global_8];
    v4 = [a1 firstObject];
    v5 = v4;
    if (v3 == 1)
    {
      v18 = v4;
      [v4 symbolInfo];
    }

    else
    {
      for (i = 1; i != v3; ++i)
      {
        v18 = [a1 objectAtIndexedSubscript:i];
        v7 = [v5 symbolInfo];
        v8 = [v7 size];

        if (!v8)
        {
          v9 = [v18 symbolInfo];
          v10 = [v9 start];
          v11 = [v5 symbolInfo];
          v12 = v10 - [v11 start];

          if (v12 >= 0x40000000)
          {
            v13 = 0x40000000;
          }

          else
          {
            v13 = v12;
          }

          v14 = [v5 symbolInfo];
          [v14 setSize:v13];
        }

        v5 = v18;
      }

      [v18 symbolInfo];
    }
    v15 = ;
    v16 = [v15 size];

    if (!v16)
    {
      v17 = [v18 symbolInfo];
      [v17 setSize:0x40000000];
    }
  }
}

- (void)addImage:()OSABinaryImageListExtension address:size:
{
  v6 = [[OSABinaryImageSegment alloc] initWithAddress:a4 size:a5 for:a3];
  [a1 addObject:v6];
}

- (void)addImageLegacy:()OSABinaryImageListExtension address:size:name:path:arch:
{
  v21 = [[OSABinaryImageSegment alloc] initWithAddress:a4 size:a5 for:a3];
  if (a6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    v13 = [(OSABinaryImageSegment *)v21 symbolInfo];
    [v13 setName:v12];
  }

  if (a7)
  {
    v14 = [(OSABinaryImageSegment *)v21 symbolInfo];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a7];
    [v14 setPath:v15];
  }

  if (a8)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a8];
    v17 = [(OSABinaryImageSegment *)v21 symbolInfo];
    v18 = v17[3];
    v17[3] = v16;

    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a8];
    v20 = [(OSABinaryImageSegment *)v21 symbolInfo];
    [v20 setCpuArch:v19];
  }

  [a1 addObject:v21];
}

- (void)addJITImage:()OSABinaryImageListExtension size:
{
  v11 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v7 = [[OSABinaryImageSegment alloc] initWithSource:a3 size:a4 for:uu source:106];
  v8 = [(OSABinaryImageSegment *)v7 symbolInfo];
  [v8 setName:@"JIT"];

  [a1 addObject:v7];
  v9 = *MEMORY[0x1E69E9840];
}

@end