@interface MUAppLockupImage
- (MUAppLockupImage)initWithRemoteURL:(id)a3 metrics:(id)a4;
- (void)loadImageWithCompletion:(id)a3;
@end

@implementation MUAppLockupImage

- (void)loadImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MUAppLockupImage *)self cachedImage];

  if (v5)
  {
    v4[2](v4);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E696F190] sharedImageManager];
    v7 = [(MUAppLockupImage *)self url];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke;
    v8[3] = &unk_1E8218A90;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 loadAppImageAtURL:v7 completionHandler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __44__MUAppLockupImage_loadImageWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = WeakRetained[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_3;
      block[3] = &unk_1E82197D0;
      objc_copyWeak(&v11, (a1 + 40));
      v8 = v3;
      v9 = v5;
      v10 = *(a1 + 32);
      dispatch_async(v6, block);

      objc_destroyWeak(&v11);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_2;
      v12[3] = &unk_1E821B860;
      v13 = *(a1 + 32);
      [MapsUIUtilities performOnMainIfNecessary:v12];
    }
  }
}

void __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_3(id *a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained metrics];
    [v4 frameSize];
    v6 = v5;
    v8 = v7;

    v9 = [v3 metrics];
    [v9 scale];
    v11 = v10;

    v12 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:objc_msgSend(a1[4] scale:{"CGImage"), v11}];
    v13 = objc_alloc(MEMORY[0x1E69A8A00]);
    v29[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v15 = [v13 initWithImages:v14];

    v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v6 scale:{v8, v11}];
    v17 = [a1[5] metrics];
    v18 = [v17 variant];

    if (v18 <= 2)
    {
      [v16 setShape:qword_1C587A090[v18]];
    }

    v19 = [v15 prepareImageForDescriptor:v16];
    v20 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v19 scale:"CGImage") orientation:{0, v11}];
    if (MapKitIdiomIsMacCatalyst())
    {
      v21 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_4;
      v27[3] = &unk_1E8218A68;
      v22 = &v28;
      objc_copyWeak(&v28, a1 + 7);
      v27[4] = a1[6];
      [MapsUIUtilities resizeImageIfNeeded:v20 toFrameSize:v27 displayScale:8.0 completion:8.0, v11];
    }

    else
    {
      v21 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_6;
      v24[3] = &unk_1E82194C8;
      v22 = &v26;
      objc_copyWeak(&v26, a1 + 7);
      v24[4] = v20;
      v25 = a1[6];
      [MapsUIUtilities performOnMainIfNecessary:v24];
    }

    objc_destroyWeak(v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_5;
  v5[3] = &unk_1E82194C8;
  objc_copyWeak(&v8, (a1 + 40));
  v4 = v3;
  v6 = v4;
  v7 = *(a1 + 32);
  [MapsUIUtilities performOnMainIfNecessary:v5];

  objc_destroyWeak(&v8);
}

void __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

void __44__MUAppLockupImage_loadImageWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (MUAppLockupImage)initWithRemoteURL:(id)a3 metrics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MUAppLockupImage;
  v9 = [(MUAppLockupImage *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_metrics, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.maps.MUAppLockupImage.ImageProcessingQueue", v11);
    imageProcessingQueue = v10->_imageProcessingQueue;
    v10->_imageProcessingQueue = v12;
  }

  return v10;
}

@end