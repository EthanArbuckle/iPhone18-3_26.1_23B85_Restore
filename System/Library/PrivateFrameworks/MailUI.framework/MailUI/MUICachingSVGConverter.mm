@interface MUICachingSVGConverter
+ (id)_keyForData:(double)a3 size:(uint64_t)a4 scale:(void *)a5;
- (MUICachingSVGConverter)init;
- (void)imageForSVGData:(id)a3 size:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6;
@end

@implementation MUICachingSVGConverter

- (MUICachingSVGConverter)init
{
  v6.receiver = self;
  v6.super_class = MUICachingSVGConverter;
  v2 = [(MUICachingSVGConverter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)imageForSVGData:(id)a3 size:(CGSize)a4 scale:(double)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  v13 = [(MUICachingSVGConverter *)width _keyForData:a5 size:MUICachingSVGConverter scale:v11];
  v14 = [(MUICachingSVGConverter *)self cache];
  v15 = [v14 objectForKey:v13];

  if (v15)
  {
    v16 = [v15 UIImage];
    v12[2](v12, v16);
  }

  else
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 temporaryDirectory];
    v16 = [v18 URLByAppendingPathComponent:@"MailBrandIndicators"];

    v19 = [v16 path];
    v20 = [v17 fileExistsAtPath:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [MEMORY[0x277CCAA00] defaultManager];
      [v21 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v22 = [MEMORY[0x277CCACA8] ef_UUID];
    v23 = [v16 URLByAppendingPathComponent:v22];
    v24 = [v23 URLByAppendingPathExtension:@"svg"];

    [v11 writeToURL:v24 atomically:0];
    v25 = [MEMORY[0x277CDAAE0] sharedGenerator];
    v26 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v24 size:4 scale:width representationTypes:{height, a5}];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__MUICachingSVGConverter_imageForSVGData_size_scale_completionHandler___block_invoke;
    v29[3] = &unk_27818A4B0;
    v30 = v17;
    v31 = v24;
    v32 = self;
    v33 = v13;
    v34 = v12;
    v27 = v24;
    v28 = v17;
    [v25 generateBestRepresentationForRequest:v26 completionHandler:v29];
  }
}

+ (id)_keyForData:(double)a3 size:(uint64_t)a4 scale:(void *)a5
{
  v8 = a5;
  objc_opt_self();
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v8 ef_md5Digest];

  v11 = [v10 ef_hexString];
  v12 = [v9 initWithFormat:@"%@.%f.%f.%f", v11, *&a2, *&a1, *&a3];

  return v12;
}

void __71__MUICachingSVGConverter_imageForSVGData_size_scale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  if (v6)
  {
    v3 = [*(a1 + 48) cache];
    [v3 setObject:v6 forKey:*(a1 + 56)];
  }

  v4 = *(a1 + 64);
  v5 = [v6 UIImage];
  (*(v4 + 16))(v4, v5);
}

@end