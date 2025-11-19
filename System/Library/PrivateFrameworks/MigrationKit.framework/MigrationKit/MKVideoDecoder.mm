@interface MKVideoDecoder
- (MKVideoDecoder)init;
- (id)extractFormatOfAsset:(id)a3;
- (id)mediaFormatWithFormatDescriptions:(id)a3;
@end

@implementation MKVideoDecoder

- (MKVideoDecoder)init
{
  v5.receiver = self;
  v5.super_class = MKVideoDecoder;
  v2 = [(MKVideoDecoder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKVideoDecoder *)v2 setMediaType:*MEMORY[0x277CE5EA8]];
  }

  return v3;
}

- (id)extractFormatOfAsset:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CE6650] URLAssetWithURL:v5 options:0];
  if (!v7)
  {

LABEL_7:
    v12 = 0;
    v15 = &stru_286A8E730;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = dispatch_semaphore_create(0);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v10 = [(MKVideoDecoder *)self mediaType];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__MKVideoDecoder_extractFormatOfAsset___block_invoke;
  v20[3] = &unk_2798DCE60;
  v22 = &v24;
  v23 = &v30;
  v11 = v9;
  v21 = v11;
  [v8 loadTracksWithMediaType:v10 completionHandler:v20];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v25[5];
  if ([v31[5] count])
  {
    v13 = [v31[5] objectAtIndex:0];
    v14 = [v13 formatDescriptions];
    v15 = [(MKVideoDecoder *)self mediaFormatWithFormatDescriptions:v14];
  }

  else
  {
    v15 = &stru_286A8E730;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  if (v12)
  {
    v18 = +[MKLog log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MKVideoDecoder *)v4 extractFormatOfAsset:v12, v18];
    }
  }

LABEL_8:
  if (![(__CFString *)v15 length])
  {
    v19.receiver = self;
    v19.super_class = MKVideoDecoder;
    v16 = [(MKFileDecoder *)&v19 extractFormatOfAsset:v4];

    v15 = v16;
  }

  return v15;
}

void __39__MKVideoDecoder_extractFormatOfAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)mediaFormatWithFormatDescriptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];

      MediaType = CMFormatDescriptionGetMediaType(v6);
      v8 = FourCCString(MediaType);
      MediaSubType = CMFormatDescriptionGetMediaSubType(v6);
      v10 = FourCCString(MediaSubType);
      [v4 appendFormat:@"%@/%@", v8, v10];
      if ([v3 count] - 1 > v5)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
    }

    while ([v3 count] > v5);
  }

  return v4;
}

@end