@interface _CRKImageLoader
+ (id)sharedInstanceWithInitialDelegate:(id)delegate;
- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler;
- (_CRKImageLoaderDelegate)delegate;
- (id)resourceIdentifierForLocalImageType:(int)type;
- (void)_loadSFImageForURL:(id)l completion:(id)completion;
- (void)setActive:(BOOL)active;
@end

@implementation _CRKImageLoader

+ (id)sharedInstanceWithInitialDelegate:(id)delegate
{
  delegateCopy = delegate;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___CRKImageLoader_sharedInstanceWithInitialDelegate___block_invoke;
  block[3] = &unk_278DA3168;
  v10 = delegateCopy;
  v4 = sharedInstanceWithInitialDelegate__onceToken;
  v5 = delegateCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithInitialDelegate__onceToken, block);
  }

  v6 = sharedInstanceWithInitialDelegate__sImageLoader;
  v7 = sharedInstanceWithInitialDelegate__sImageLoader;

  return v6;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(_CRKImageLoader *)self _registerWithSearchFoundation];
    }

    else
    {
      [(_CRKImageLoader *)self _unregisterWithSearchFoundaton];
    }
  }
}

- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = -[_CRKImageLoader resourceIdentifierForLocalImageType:](self, "resourceIdentifierForLocalImageType:", [imageCopy localImageType]);
      if (v8)
      {
        v9 = MEMORY[0x277D755B8];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v9 imageNamed:v8 inBundle:v10 compatibleWithTraitCollection:0];

        urlValue2 = UIImagePNGRepresentation(v11);
        v13 = [MEMORY[0x277D4C3B0] imageWithData:urlValue2];
        handlerCopy[2](handlerCopy, v13, 0);

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

      (handlerCopy)[2](handlerCopy, 0, v20);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = imageCopy;
        urlValue = [v8 urlValue];
        scheme = [urlValue scheme];
        v17 = [scheme isEqualToString:@"http"];

        urlValue2 = [v8 urlValue];
        if (!v17)
        {
          v21 = [MEMORY[0x277CD3D10] imageWithURL:urlValue2];
          v22 = v21;
          v14 = v21 != 0;
          if (v21)
          {
            v23 = v21;
            _imageData = [v23 _imageData];
            if (_imageData)
            {
              v25 = [MEMORY[0x277D4C3B0] imageWithData:_imageData];
              handlerCopy[2](handlerCopy, v25, 0);
            }

            else
            {
              if (!self->_imageLoader)
              {
                registeredImageLoaderWithScreenDelegate = [MEMORY[0x277CD45F0] registeredImageLoaderWithScreenDelegate];
                imageLoader = self->_imageLoader;
                self->_imageLoader = registeredImageLoaderWithScreenDelegate;
              }

              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __51___CRKImageLoader_loadImage_withCompletionHandler___block_invoke;
              v34[3] = &unk_278DA3780;
              v35 = handlerCopy;
              [v23 _retrieveImageDataWithReply:v34];
            }
          }

          else
          {
            v33 = MEMORY[0x277CF9430];
            v26 = MEMORY[0x277CCACA8];
            urlValue3 = [v8 urlValue];
            scheme2 = [urlValue3 scheme];
            v29 = [v26 stringWithFormat:@"_CRKImageLoader doesn't support loading this URL scheme: %@", scheme2];
            _imageData = [v33 errorWithCode:202 description:v29];

            if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
            {
              [_CRKImageLoader loadImage:withCompletionHandler:];
            }

            (handlerCopy)[2](handlerCopy, 0, _imageData);
          }

          goto LABEL_26;
        }

        [(_CRKImageLoader *)self _loadSFImageForURL:urlValue2 completion:handlerCopy];
        goto LABEL_9;
      }

      v18 = MEMORY[0x277CF9430];
      imageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_CRKImageLoader doesn't support loading this class: %@", imageCopy];
      v8 = [v18 errorWithCode:201 description:imageCopy];

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

- (void)_loadSFImageForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (completionCopy)
  {
    if (lCopy)
    {
      v7 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];
      [v7 setTimeoutInterval:4.0];
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __49___CRKImageLoader__loadSFImageForURL_completion___block_invoke;
      v13 = &unk_278DA37A8;
      v14 = lCopy;
      v15 = completionCopy;
      v9 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v7 completionHandler:&v10];

      [v9 resume];
    }

    else
    {
      v7 = [MEMORY[0x277CF9430] errorWithCode:204 description:@"Attempted to fetch SFImage using nil URL"];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [_CRKImageLoader loadImage:withCompletionHandler:];
      }

      (*(completionCopy + 2))(completionCopy, 0, v7);
    }
  }
}

- (id)resourceIdentifierForLocalImageType:(int)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_278DA37C8[type];
  }
}

- (_CRKImageLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end