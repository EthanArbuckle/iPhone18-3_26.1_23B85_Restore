@interface HUWallpaperView
- (HUWallpaperView)initWithFrame:(CGRect)frame;
- (id)refreshWallpaperForHomeKitObject:(id)object withAnimation:(BOOL)animation;
- (void)populateWallpaper:(id)wallpaper withAnimation:(BOOL)animation onlyIfNeeded:(BOOL)needed;
- (void)setCurrentImage:(id)image withAnimation:(BOOL)animation;
- (void)setCurrentLayer:(id)layer withAnimation:(BOOL)animation;
@end

@implementation HUWallpaperView

- (HUWallpaperView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUWallpaperView;
  v3 = [(HUWallpaperView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUWallpaperView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)populateWallpaper:(id)wallpaper withAnimation:(BOOL)animation onlyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v29 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  if ([(HUWallpaperView *)self disableWallpaperUpdate])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v24 = wallpaperCopy;
      *&v24[8] = 2112;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "wallpaper update is currently disabled because an animation is in progress, wallpaper:%@ for view:%@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (!neededCopy)
  {
    goto LABEL_10;
  }

  currentLayer = [(HUWallpaperView *)self currentLayer];
  if (currentLayer)
  {

    goto LABEL_8;
  }

  currentImage = [(HUWallpaperView *)self currentImage];

  if (!currentImage)
  {
LABEL_10:
    mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
    traitCollection = [(HUWallpaperView *)self traitCollection];
    v16 = [mEMORY[0x277D14D18] wallpaperObjectForWallpaper:wallpaperCopy currentUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HUWallpaperView_populateWallpaper_withAnimation_onlyIfNeeded___block_invoke;
    v18[3] = &unk_277DB7180;
    v19 = v16;
    v20 = wallpaperCopy;
    selfCopy2 = self;
    animationCopy = animation;
    v9 = v16;
    [mainThreadScheduler performBlock:v18];

    goto LABEL_11;
  }

LABEL_8:
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    currentLayer2 = [(HUWallpaperView *)self currentLayer];
    currentImage2 = [(HUWallpaperView *)self currentImage];
    *buf = 67110146;
    *v24 = 1;
    *&v24[4] = 1024;
    *&v24[6] = currentLayer2 == 0;
    LOWORD(selfCopy) = 1024;
    *(&selfCopy + 2) = currentImage2 == 0;
    HIWORD(selfCopy) = 2112;
    v26 = wallpaperCopy;
    v27 = 2112;
    selfCopy3 = self;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "wallpaper update abandoned due to onlyIfNeeded: %d, no layer: %d, no image: %d, wallpaper:%@ for view:%@", buf, 0x28u);
  }

LABEL_11:
}

uint64_t __64__HUWallpaperView_populateWallpaper_withAnimation_onlyIfNeeded___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) setContentMode:{2 * (objc_msgSend(*(a1 + 40), "type") != 2)}];
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);

    return [v2 setCurrentImage:v3 withAnimation:v4];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);

      return [v6 setCurrentLayer:v7 withAnimation:v8];
    }
  }

  return result;
}

- (id)refreshWallpaperForHomeKitObject:(id)object withAnimation:(BOOL)animation
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  disableWallpaperUpdate = [(HUWallpaperView *)self disableWallpaperUpdate];
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (disableWallpaperUpdate)
  {
    if (v9)
    {
      *buf = 138412546;
      v18 = objectCopy;
      v19 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "wallpaper update is currently disabled because an animation is in progress, hkObject:%@ for view:%@", buf, 0x16u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (v9)
    {
      *buf = 138412546;
      v18 = objectCopy;
      v19 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "wallpaper update with hkObject:%@ for view:%@", buf, 0x16u);
    }

    [(HUWallpaperView *)self setHkObject:objectCopy];
    objc_initWeak(buf, self);
    mEMORY[0x277D14D18] = [MEMORY[0x277D14D18] sharedInstance];
    v12 = [mEMORY[0x277D14D18] wallpaperForHomeKitObject:objectCopy dispatchToMainOnComplete:0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__HUWallpaperView_refreshWallpaperForHomeKitObject_withAnimation___block_invoke;
    v14[3] = &unk_277DBB8A0;
    objc_copyWeak(&v15, buf);
    animationCopy = animation;
    futureWithNoResult = [v12 flatMap:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(buf);
  }

  return futureWithNoResult;
}

id __66__HUWallpaperView_refreshWallpaperForHomeKitObject_withAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWallpaper:v3];
  [WeakRetained populateWallpaper:v3 withAnimation:*(a1 + 40) onlyIfNeeded:0];

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)setCurrentImage:(id)image withAnimation:(BOOL)animation
{
  animationCopy = animation;
  v16 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (self->_currentImage != imageCopy)
  {
    objc_storeStrong(&self->_currentImage, image);
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "setting image for view:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = MEMORY[0x277D75D18];
    if (animationCopy)
    {
      v10 = 2.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__HUWallpaperView_setCurrentImage_withAnimation___block_invoke;
    v11[3] = &unk_277DBA860;
    objc_copyWeak(&v13, buf);
    v12 = imageCopy;
    [v9 transitionWithView:self duration:5242880 options:v11 animations:0 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __49__HUWallpaperView_setCurrentImage_withAnimation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained currentLayer];
  [v2 removeFromSuperlayer];

  [WeakRetained setImage:*(a1 + 32)];
  [WeakRetained setCurrentLayer:0];
}

- (void)setCurrentLayer:(id)layer withAnimation:(BOOL)animation
{
  animationCopy = animation;
  v22 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  colors = [(CAGradientLayer *)self->_currentLayer colors];
  colors2 = [layerCopy colors];
  v10 = [colors isEqual:colors2];

  if ((v10 & 1) == 0)
  {
    v11 = self->_currentLayer;
    [(HUWallpaperView *)self frame];
    [layerCopy setFrame:?];
    objc_storeStrong(&self->_currentLayer, layer);
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "setting layer for view:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13 = MEMORY[0x277D75D18];
    if (animationCopy)
    {
      v14 = 2.0;
    }

    else
    {
      v14 = 0.0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__HUWallpaperView_setCurrentLayer_withAnimation___block_invoke;
    v16[3] = &unk_277DB76C8;
    objc_copyWeak(&v19, buf);
    v17 = layerCopy;
    v15 = v11;
    v18 = v15;
    [v13 transitionWithView:self duration:5242880 options:v16 animations:0 completion:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __49__HUWallpaperView_setCurrentLayer_withAnimation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setImage:0];
  v2 = [WeakRetained layer];
  [v2 addSublayer:*(a1 + 32)];

  [*(a1 + 40) removeFromSuperlayer];
  [WeakRetained setCurrentImage:0];
}

@end