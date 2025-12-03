@interface MRUArtworkController
- (CGSize)artworkFittingSize;
- (CGSize)preferredContentSize;
- (MRUArtworkController)init;
- (MRUArtworkControllerDelegate)delegate;
- (void)setArtworkFittingSize:(CGSize)size;
- (void)setCatalog:(id)catalog;
- (void)setPreferredContentSize:(CGSize)size;
- (void)updateArtworkFittingSize;
@end

@implementation MRUArtworkController

- (MRUArtworkController)init
{
  v4.receiver = self;
  v4.super_class = MRUArtworkController;
  result = [(MRUArtworkController *)&v4 init];
  if (result)
  {
    result->_artworkLoadingTimeout = 1.0;
    v3 = *MEMORY[0x1E695F060];
    result->_preferredContentSize = *MEMORY[0x1E695F060];
    result->_artworkFittingSize = v3;
  }

  return result;
}

- (void)setCatalog:(id)catalog
{
  catalogCopy = catalog;
  objc_storeStrong(&self->_catalog, catalog);
  imageLoader = [(MRUArtworkController *)self imageLoader];

  if (imageLoader)
  {
    if (!catalogCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [MRUImageLoader alloc];
    delegate = [(MRUArtworkController *)self delegate];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __35__MRUArtworkController_setCatalog___block_invoke;
    v28[3] = &unk_1E7663958;
    objc_copyWeak(&v29, &location);
    v9 = [(MRUImageLoader *)v7 initWithDestination:delegate imageHandler:v28];
    [(MRUArtworkController *)self setImageLoader:v9];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    if (!catalogCopy)
    {
      goto LABEL_9;
    }
  }

  imageLoader2 = [(MRUArtworkController *)self imageLoader];
  v11 = [imageLoader2 wouldLoadNewImageForCatalog:catalogCopy];

  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69B14D8];
    [(MRUArtworkController *)self artworkLoadingTimeout];
    v14 = v13;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __35__MRUArtworkController_setCatalog___block_invoke_2;
    v25 = &unk_1E7663980;
    objc_copyWeak(&v27, &location);
    v15 = catalogCopy;
    v26 = v15;
    v16 = [v12 timerWithInterval:0 repeats:&v22 block:v14];
    artworkTimer = self->_artworkTimer;
    self->_artworkTimer = v16;

    v18 = [(MRUArtworkController *)self delegate:v22];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(MRUArtworkController *)self delegate];
      [delegate2 controller:self didStartLoadingImageForCatalog:v15];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

LABEL_9:
  [(MRUArtworkController *)self updateArtworkFittingSize];
  imageLoader3 = [(MRUArtworkController *)self imageLoader];
  [imageLoader3 updateCatalog:catalogCopy];
}

void __35__MRUArtworkController_setCatalog___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained delegate];
  if (v8)
  {
    if (v6)
    {
      v9 = MCLogCategoryImageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = objc_opt_class();
        v13 = 2048;
        v14 = WeakRetained;
        v15 = 2114;
        v16 = v6;
        _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_ERROR, "%@<%p> Image load failed with error: %{public}@.", &v11, 0x20u);
      }
    }

    v10 = [WeakRetained artworkTimer];
    [v10 invalidate];

    [v8 controller:WeakRetained didLoadArtworkImage:v5];
  }
}

void __35__MRUArtworkController_setCatalog___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = MCLogCategoryImageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v5;
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "%@<%p> clearing old artwork while waiting for catalog=%p", &v7, 0x20u);
  }

  [v3 artworkLoadingDidTimeoutInController:WeakRetained];
}

- (void)setPreferredContentSize:(CGSize)size
{
  if (self->_preferredContentSize.width != size.width || self->_preferredContentSize.height != size.height)
  {
    self->_preferredContentSize = size;
    [(MRUArtworkController *)self updateArtworkFittingSize];
  }
}

- (void)setArtworkFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_artworkFittingSize.width != size.width || self->_artworkFittingSize.height != size.height)
  {
    self->_artworkFittingSize = size;
    imageLoader = [(MRUArtworkController *)self imageLoader];
    delegate = [(MRUArtworkController *)self delegate];
    traitCollection = [delegate traitCollection];
    [traitCollection displayScale];
    [imageLoader updateFittingSize:width scale:{height, v9}];
  }
}

- (void)updateArtworkFittingSize
{
  delegate = [(MRUArtworkController *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    imageLoader = [(MRUArtworkController *)self imageLoader];

    if (imageLoader)
    {
      if (self->_preferredContentSize.width == *MEMORY[0x1E695F060] && self->_preferredContentSize.height == *(MEMORY[0x1E695F060] + 8))
      {
        delegate2 = [(MRUArtworkController *)self delegate];
        [delegate2 bounds];
        [(MRUArtworkController *)self setArtworkFittingSize:v7, v8];
      }

      else
      {

        [(MRUArtworkController *)self setArtworkFittingSize:?];
      }
    }
  }
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MRUArtworkControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)artworkFittingSize
{
  width = self->_artworkFittingSize.width;
  height = self->_artworkFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end