@interface GTMTLQL
@end

@implementation GTMTLQL

void __GTMTLQL_EncodeBuffer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = [v3 objectAtIndex:1];

  v7 = [v8 copy];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
}

void __GTMTLQL_EncodeTexture_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i < v4; i += 2)
    {
      v6 = [v9 objectAtIndex:i];
      v7 = [v9 objectAtIndex:i + 1];
      v8 = [v7 copy];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
    }
  }
}

void __GTMTLQL_EncodeTexture_block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectAtIndex:0];
  v4 = [v13 objectAtIndex:1];
  v5 = [v4 bytes];
  v6 = [*(a1 + 32) iosurfacePlane];
  v7 = (48 * v5[2] + 279) & 0xFFFFFFFFFFFFFF00;
  if (v6)
  {
    v8 = v5 + 8;
    v9 = v6;
    do
    {
      v10 = *v8;
      v8 += 6;
      v7 += v10;
      --v9;
    }

    while (v9);
  }

  v11 = &v5[6 * v6];
  v12 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v4 bytes] + v7, *(v11 + 8));
  [*(a1 + 40) setObject:v12 forKeyedSubscript:v3];

  memset(v14, 0, 32);
  v14[2] = *(v11 + 2);
  v16 = 0;
  v17 = 0;
  v15 = 1;
  v18 = [v3 UTF8String];
  v19 = *(v11 + 56);
  v20 = 0;
  DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v14, *(a1 + 56), *(a1 + 64), 0, 0);
  [*(a1 + 48) appendBytes:*(a1 + 56) length:**(a1 + 56)];
}

@end