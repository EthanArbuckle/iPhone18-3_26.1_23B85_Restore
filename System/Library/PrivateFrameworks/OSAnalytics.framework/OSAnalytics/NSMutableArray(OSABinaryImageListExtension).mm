@interface NSMutableArray(OSABinaryImageListExtension)
- (void)addImage:()OSABinaryImageListExtension address:size:;
- (void)addImageLegacy:()OSABinaryImageListExtension address:size:name:path:arch:;
- (void)addJITImage:()OSABinaryImageListExtension size:;
- (void)sortByAddressAndSetInferredSizes;
@end

@implementation NSMutableArray(OSABinaryImageListExtension)

- (void)sortByAddressAndSetInferredSizes
{
  v2 = [self count];
  if (v2)
  {
    v3 = v2;
    [self sortUsingComparator:&__block_literal_global_8];
    firstObject = [self firstObject];
    v5 = firstObject;
    if (v3 == 1)
    {
      v18 = firstObject;
      [firstObject symbolInfo];
    }

    else
    {
      for (i = 1; i != v3; ++i)
      {
        v18 = [self objectAtIndexedSubscript:i];
        symbolInfo = [v5 symbolInfo];
        v8 = [symbolInfo size];

        if (!v8)
        {
          symbolInfo2 = [v18 symbolInfo];
          start = [symbolInfo2 start];
          symbolInfo3 = [v5 symbolInfo];
          v12 = start - [symbolInfo3 start];

          if (v12 >= 0x40000000)
          {
            v13 = 0x40000000;
          }

          else
          {
            v13 = v12;
          }

          symbolInfo4 = [v5 symbolInfo];
          [symbolInfo4 setSize:v13];
        }

        v5 = v18;
      }

      [v18 symbolInfo];
    }
    v15 = ;
    v16 = [v15 size];

    if (!v16)
    {
      symbolInfo5 = [v18 symbolInfo];
      [symbolInfo5 setSize:0x40000000];
    }
  }
}

- (void)addImage:()OSABinaryImageListExtension address:size:
{
  v6 = [[OSABinaryImageSegment alloc] initWithAddress:a4 size:a5 for:a3];
  [self addObject:v6];
}

- (void)addImageLegacy:()OSABinaryImageListExtension address:size:name:path:arch:
{
  v21 = [[OSABinaryImageSegment alloc] initWithAddress:a4 size:a5 for:a3];
  if (a6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    symbolInfo = [(OSABinaryImageSegment *)v21 symbolInfo];
    [symbolInfo setName:v12];
  }

  if (a7)
  {
    symbolInfo2 = [(OSABinaryImageSegment *)v21 symbolInfo];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a7];
    [symbolInfo2 setPath:v15];
  }

  if (a8)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a8];
    symbolInfo3 = [(OSABinaryImageSegment *)v21 symbolInfo];
    v18 = symbolInfo3[3];
    symbolInfo3[3] = v16;

    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a8];
    symbolInfo4 = [(OSABinaryImageSegment *)v21 symbolInfo];
    [symbolInfo4 setCpuArch:v19];
  }

  [self addObject:v21];
}

- (void)addJITImage:()OSABinaryImageListExtension size:
{
  v11 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v7 = [[OSABinaryImageSegment alloc] initWithSource:a3 size:a4 for:uu source:106];
  symbolInfo = [(OSABinaryImageSegment *)v7 symbolInfo];
  [symbolInfo setName:@"JIT"];

  [self addObject:v7];
  v9 = *MEMORY[0x1E69E9840];
}

@end