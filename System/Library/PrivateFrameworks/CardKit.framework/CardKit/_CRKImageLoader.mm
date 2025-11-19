@interface _CRKImageLoader
+ (id)sharedInstanceWithInitialDelegate:(id)a3;
- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4;
- (_CRKImageLoaderDelegate)delegate;
- (id)resourceIdentifierForLocalImageType:(int)a3;
- (void)_loadSFImageForURL:(id)a3 completion:(id)a4;
- (void)setActive:(BOOL)a3;
@end

@implementation _CRKImageLoader

+ (id)sharedInstanceWithInitialDelegate:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___CRKImageLoader_sharedInstanceWithInitialDelegate___block_invoke;
  block[3] = &unk_278DA3168;
  v10 = v3;
  v4 = sharedInstanceWithInitialDelegate__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithInitialDelegate__onceToken, block);
  }

  v6 = sharedInstanceWithInitialDelegate__sImageLoader;
  v7 = sharedInstanceWithInitialDelegate__sImageLoader;

  return v6;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(_CRKImageLoader *)self _registerWithSearchFoundation];
    }

    else
    {
      [(_CRKImageLoader *)self _unregisterWithSearchFoundaton];
    }
  }
}

- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = -[_CRKImageLoader resourceIdentifierForLocalImageType:](self, "resourceIdentifierForLocalImageType:", [v6 localImageType]);
      if (v8)
      {
        v9 = MEMORY[0x277D755B8];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v9 imageNamed:v8 inBundle:v10 compatibleWithTraitCollection:0];

        v12 = UIImagePNGRepresentation(v11);
        v13 = [MEMORY[0x277D4C3B0] imageWithData:v12];
        v7[2](v7, v13, 0);

LABEL_9:
        v14 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v20 = [MEMORY[0x277CF9430] errorWithCode:203 description:@"SFLocalImage missing resourceIdentifier"];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [_CRKImageLoader loadImage:withCompletionHandler:];
      }

      (v7)[2](v7, 0, v20);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        v15 = [v8 urlValue];
        v16 = [v15 scheme];
        v17 = [v16 isEqualToString:@"http"];

        v12 = [v8 urlValue];
        if (!v17)
        {
          v21 = [MEMORY[0x277CD3D10] imageWithURL:v12];
          v22 = v21;
          v14 = v21 != 0;
          if (v21)
          {
            v23 = v21;
            v24 = [v23 _imageData];
            if (v24)
            {
              v25 = [MEMORY[0x277D4C3B0] imageWithData:v24];
              v7[2](v7, v25, 0);
            }

            else
            {
              if (!self->_imageLoader)
              {
                v30 = [MEMORY[0x277CD45F0] registeredImageLoaderWithScreenDelegate];
                imageLoader = self->_imageLoader;
                self->_imageLoader = v30;
              }

              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __51___CRKImageLoader_loadImage_withCompletionHandler___block_invoke;
              v34[3] = &unk_278DA3780;
              v35 = v7;
              [v23 _retrieveImageDataWithReply:v34];
            }
          }

          else
          {
            v33 = MEMORY[0x277CF9430];
            v26 = MEMORY[0x277CCACA8];
            v27 = [v8 urlValue];
            v28 = [v27 scheme];
            v29 = [v26 stringWithFormat:@"_CRKImageLoader doesn't support loading this URL scheme: %@", v28];
            v24 = [v33 errorWithCode:202 description:v29];

            if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
            {
              [_CRKImageLoader loadImage:withCompletionHandler:];
            }

            (v7)[2](v7, 0, v24);
          }

          goto LABEL_26;
        }

        [(_CRKImageLoader *)self _loadSFImageForURL:v12 completion:v7];
        goto LABEL_9;
      }

      v18 = MEMORY[0x277CF9430];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"_CRKImageLoader doesn't support loading this class: %@", v6];
      v8 = [v18 errorWithCode:201 description:v19];

      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [_CRKImageLoader loadImage:withCompletionHandler:];
      }
    }

    v14 = 0;
    goto LABEL_26;
  }

  v14 = 0;
LABEL_27:

  return v14;
}

- (void)_loadSFImageForURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCAB70] requestWithURL:v5];
      [v7 setTimeoutInterval:4.0];
      v8 = [MEMORY[0x277CCAD30] sharedSession];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __49___CRKImageLoader__loadSFImageForURL_completion___block_invoke;
      v13 = &unk_278DA37A8;
      v14 = v5;
      v15 = v6;
      v9 = [v8 dataTaskWithRequest:v7 completionHandler:&v10];

      [v9 resume];
    }

    else
    {
      v7 = [MEMORY[0x277CF9430] errorWithCode:204 description:@"Attempted to fetch SFImage using nil URL"];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [_CRKImageLoader loadImage:withCompletionHandler:];
      }

      (*(v6 + 2))(v6, 0, v7);
    }
  }
}

- (id)resourceIdentifierForLocalImageType:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_278DA37C8[a3];
  }
}

- (_CRKImageLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end