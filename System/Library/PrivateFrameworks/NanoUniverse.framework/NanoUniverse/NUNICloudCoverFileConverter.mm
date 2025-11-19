@interface NUNICloudCoverFileConverter
- (BOOL)_combineFilesAt:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_convertFileAt:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)combineFilesAt:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)convertFileAt:(id)a3 to:(id)a4 error:(id *)a5;
- (NUNICloudCoverFileConverter)init;
@end

@implementation NUNICloudCoverFileConverter

- (NUNICloudCoverFileConverter)init
{
  v6.receiver = self;
  v6.super_class = NUNICloudCoverFileConverter;
  v2 = [(NUNICloudCoverFileConverter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoUniverse.NUNICloudCoverFileConverter", 0);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;
  }

  return v2;
}

- (BOOL)convertFileAt:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NUNICloudCoverFileConverter_convertFileAt_to_error___block_invoke;
  block[3] = &unk_27995F418;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(privateQueue, block);
  LOBYTE(privateQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return privateQueue;
}

uint64_t __54__NUNICloudCoverFileConverter_convertFileAt_to_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _convertFileAt:*(a1 + 40) to:*(a1 + 48) error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)combineFilesAt:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NUNICloudCoverFileConverter_combineFilesAt_to_error___block_invoke;
  block[3] = &unk_27995F418;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(privateQueue, block);
  LOBYTE(privateQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return privateQueue;
}

uint64_t __55__NUNICloudCoverFileConverter_combineFilesAt_to_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _combineFilesAt:*(a1 + 40) to:*(a1 + 48) error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)_convertFileAt:(id)a3 to:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = _NUNICreateImageFromURL(a3, a5);
  if (v8)
  {
    v9 = v8;
    Width = CGImageGetWidth(v8);
    Height = CGImageGetHeight(v9);
    v12 = _NUNIRasterizeImageGenericGray(v9, Width, Height);
    CGImageRelease(v9);
    v13 = _NUNIEqualize(v12, Width, Height);

    v14 = _NUNIInitializeImageGenericGray(Width, Height);
    _NUNIAddCloudLayer(v13, v14, Width, Height);
    v15 = _NUNIConvertEquirectangularToOctahedral(v14, Width, Height);

    v16 = 2048;
    v17 = 0x400000;
    v18 = 1;
    v19 = 2048;
    do
    {
      v20 = v19 | v16;
      if (v19 >> 1 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 >>= 1;
      }

      v16 >>= 1;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 += v19 * v16;
      ++v18;
    }

    while (v20 > 3);
    v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(v17 + 8)];
    v22 = [v21 mutableBytes];
    *v22 = 7;
    *(v22 + 2) = ((v18 & 0x3F) << 8) | 9;
    *(v22 + 4) = 134219776;
    _NUNIGenerateAllMipmapsR8((v22 + 8), [v15 bytes]);
    v23 = [v7 path];
    v24 = [v21 writeToFile:v23 options:268435457 error:a5];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)_combineFilesAt:(id)a3 to:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = [v7 objectAtIndexedSubscript:v9];
      v13 = _NUNICreateImageFromURL(v12, a5);

      if (!v13)
      {
        break;
      }

      Width = CGImageGetWidth(v13);
      Height = CGImageGetHeight(v13);
      if (!v11)
      {
        v11 = _NUNIInitializeImageGenericGray(Width, Height);
      }

      v16 = _NUNIRasterizeImageGenericGray(v13, Width, Height);

      CGImageRelease(v13);
      v10 = _NUNIEqualize(v16, Width, Height);

      _NUNIAddCloudLayer(v10, v11, Width, Height);
      if ([v7 count] <= ++v9)
      {
        goto LABEL_9;
      }
    }

    v26 = 0;
  }

  else
  {
    Height = 0;
    Width = 0;
    v11 = 0;
    v10 = 0;
LABEL_9:
    v17 = _NUNIConvertEquirectangularToOctahedral(v11, Width, Height);

    v18 = 2048;
    v19 = 0x400000;
    v20 = 1;
    v21 = 2048;
    do
    {
      v22 = v21 | v18;
      if (v21 >> 1 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 >>= 1;
      }

      v18 >>= 1;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v19 += v21 * v18;
      ++v20;
    }

    while (v22 > 3);
    v23 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(v19 + 8)];
    v24 = [v23 mutableBytes];
    *v24 = 7;
    *(v24 + 2) = ((v20 & 0x3F) << 8) | 9;
    *(v24 + 4) = 134219776;
    _NUNIGenerateAllMipmapsR8((v24 + 8), [v17 bytes]);
    v25 = [v8 path];
    v26 = [v23 writeToFile:v25 options:268435457 error:a5];

    v11 = v17;
  }

  return v26;
}

@end