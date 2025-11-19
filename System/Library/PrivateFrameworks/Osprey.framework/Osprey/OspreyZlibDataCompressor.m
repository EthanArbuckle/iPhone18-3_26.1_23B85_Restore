@interface OspreyZlibDataCompressor
- (OspreyZlibDataCompressor)initWithOptions:(int64_t)a3;
- (id)compressedDataForData:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation OspreyZlibDataCompressor

- (OspreyZlibDataCompressor)initWithOptions:(int64_t)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = OspreyZlibDataCompressor;
  v4 = [(OspreyZlibDataCompressor *)&v9 init];
  v5 = v4;
  if (!v4 || (v4->_deflateStream.zalloc = 0, v4->_deflateStream.zfree = 0, v4->_deflateStream.opaque = 0, v6 = deflateInit2_(&v4->_deflateStream, 9, 8, v3, 8, 0, "1.2.12", 112), v7 = 0, !v6))
  {
    v7 = v5;
  }

  return v7;
}

- (void)dealloc
{
  deflateEnd(&self->_deflateStream);
  v3.receiver = self;
  v3.super_class = OspreyZlibDataCompressor;
  [(OspreyZlibDataCompressor *)&v3 dealloc];
}

- (id)compressedDataForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && dispatch_data_get_size(v6))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v8 = MEMORY[0x277D85CC8];
    v9 = MEMORY[0x277D85CC8];
    v24 = v8;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __56__OspreyZlibDataCompressor_compressedDataForData_error___block_invoke;
    applier[3] = &unk_2799F1FA0;
    applier[4] = self;
    applier[5] = &v15;
    applier[6] = &v19;
    dispatch_data_apply(v7, applier);
    if (*(v16 + 6) >= 2u)
    {
      v10 = v20[5];
      v20[5] = 0;

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyCompressionErrorDomain" code:*(v16 + 6) userInfo:0];
      }
    }

    v11 = v20[5];
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = MEMORY[0x277D85CC8];
    v12 = MEMORY[0x277D85CC8];
  }

  return v11;
}

uint64_t __56__OspreyZlibDataCompressor_compressedDataForData_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1[4] + 8) = a4;
  *(a1[4] + 16) = a5;
  v6 = a1[4];
  while (1)
  {
    *(v6 + 32) = v6 + 120;
    *(a1[4] + 40) = 0x2000;
    *(*(a1[5] + 8) + 24) = deflate((a1[4] + 8), 4);
    if (*(*(a1[5] + 8) + 24) > 1u)
    {
      break;
    }

    v7 = dispatch_data_create((a1[4] + 120), 0x2000 - *(a1[4] + 40), 0, 0);
    concat = dispatch_data_create_concat(*(*(a1[6] + 8) + 40), v7);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = concat;

    if (*(*(a1[5] + 8) + 24))
    {
      break;
    }

    v6 = a1[4];
    if (*(v6 + 40))
    {
      return 1;
    }
  }

  return 0;
}

@end