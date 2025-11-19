@interface NSData(DYNSDataCompressionAdditions)
+ (uint64_t)DYCompressionAlgorithmFromString:()DYNSDataCompressionAdditions;
+ (uint64_t)DYStringFromCompressionAlgorithm:()DYNSDataCompressionAdditions;
- (uint64_t)dy_compressedDataWithAlgorithm:()DYNSDataCompressionAdditions;
- (uint64_t)dy_decompressedDataWithAlgorithm:()DYNSDataCompressionAdditions outputLength:;
@end

@implementation NSData(DYNSDataCompressionAdditions)

+ (uint64_t)DYCompressionAlgorithmFromString:()DYNSDataCompressionAdditions
{
  if ([a3 isEqualToString:*MEMORY[0x277D0B4A0]])
  {
    return 0;
  }

  if ([a3 isEqualToString:*MEMORY[0x277D0B4A8]])
  {
    return 1;
  }

  if ([a3 isEqualToString:*MEMORY[0x277D0B498]])
  {
    return 2;
  }

  if ([a3 isEqualToString:*MEMORY[0x277D0B490]])
  {
    return 3;
  }

  return 0;
}

+ (uint64_t)DYStringFromCompressionAlgorithm:()DYNSDataCompressionAdditions
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = MEMORY[0x277D0B498];
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v4 = MEMORY[0x277D0B490];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = MEMORY[0x277D0B4A8];
  }

  else
  {
    v4 = MEMORY[0x277D0B4A0];
  }

  return *v4;
}

- (uint64_t)dy_compressedDataWithAlgorithm:()DYNSDataCompressionAdditions
{
  v3 = a1;
  if (!a3)
  {
    return v3;
  }

  if (a3 == 1)
  {
    v4 = 517;
  }

  else
  {
    v4 = 2049;
  }

  if (a3 == 3)
  {
    v5 = COMPRESSION_LZ4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [a1 length];
  v7 = [v3 bytes];
  v8 = malloc_type_malloc(v6 + 128, 0x100004077774924uLL);
  mach_absolute_time();
  v9 = compression_encode_buffer(v8, v6 + 128, v7, v6, 0, v5);
  if (!v9 || (v10 = v9, (v11 = malloc_type_realloc(v8, v9, 0xF6907C2BuLL)) == 0))
  {
    free(v8);
    return 0;
  }

  v12 = v11;
  v13 = MEMORY[0x277CBEA90];

  return [v13 dataWithBytesNoCopy:v12 length:v10 freeWhenDone:1];
}

- (uint64_t)dy_decompressedDataWithAlgorithm:()DYNSDataCompressionAdditions outputLength:
{
  v4 = a1;
  if (!a3)
  {
    return v4;
  }

  if (a3 == 1)
  {
    v6 = 517;
  }

  else
  {
    v6 = 2049;
  }

  if (a3 == 3)
  {
    v7 = COMPRESSION_LZ4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [a1 length];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v4 bytes];
  v11 = malloc_type_malloc(a4, 0x100004077774924uLL);
  mach_absolute_time();
  v12 = compression_decode_buffer(v11, a4, v10, v9, 0, v7);
  if (a4 && !v12)
  {
    free(v11);
    return 0;
  }

  v14 = MEMORY[0x277CBEA90];

  return [v14 dataWithBytesNoCopy:v11 length:a4 freeWhenDone:1];
}

@end