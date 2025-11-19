@interface DOCIconPromise
- (DOCIconPromise)initWithRequest:(id)a3;
- (UIImage)thumbnail;
- (id)averageColorInRect:(CGRect)a3;
@end

@implementation DOCIconPromise

- (DOCIconPromise)initWithRequest:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(DOCIconPromise *)a2 initWithRequest:?];
  }

  v10.receiver = self;
  v10.super_class = DOCIconPromise;
  v7 = [(DOCIconPromise *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_request, a3);
  }

  return v8;
}

- (UIImage)thumbnail
{
  v2 = self;
  objc_sync_enter(v2);
  icon = v2->_icon;
  if (!icon)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    request = v2->_request;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__DOCIconPromise_thumbnail__block_invoke;
    v7[3] = &unk_278FB3940;
    v7[4] = &v14;
    v7[5] = &v8;
    [(DOCThumbnailRequest *)request generateThumbnailWithCompletionHandler:v7];
    if ((v15[3] & 1) == 0)
    {
      __assert_rtn("[DOCIconPromise thumbnail]", "DOCThumbnail.m", 448, "blockWasCalled");
    }

    objc_storeStrong(&v2->_icon, v9[5]);
    _Block_object_dispose(&v8, 8);

    _Block_object_dispose(&v14, 8);
    icon = v2->_icon;
  }

  v5 = icon;
  objc_sync_exit(v2);

  return v5;
}

void __27__DOCIconPromise_thumbnail__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    __27__DOCIconPromise_thumbnail__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)averageColorInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(DOCIconPromise *)self isRepresentativeIcon])
  {
    v8 = [(DOCIconPromise *)self thumbnail];
    v9 = [v8 doc_averageColorInRect:{x, y, width, height}];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] whiteColor];
  }

  return v9;
}

- (void)initWithRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCThumbnail.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

@end