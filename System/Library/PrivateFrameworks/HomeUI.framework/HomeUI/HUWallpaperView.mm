@interface HUWallpaperView
- (HUWallpaperView)initWithFrame:(CGRect)a3;
- (id)refreshWallpaperForHomeKitObject:(id)a3 withAnimation:(BOOL)a4;
- (void)populateWallpaper:(id)a3 withAnimation:(BOOL)a4 onlyIfNeeded:(BOOL)a5;
- (void)setCurrentImage:(id)a3 withAnimation:(BOOL)a4;
- (void)setCurrentLayer:(id)a3 withAnimation:(BOOL)a4;
@end

@implementation HUWallpaperView

- (HUWallpaperView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUWallpaperView;
  v3 = [(HUWallpaperView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUWallpaperView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)populateWallpaper:(id)a3 withAnimation:(BOOL)a4 onlyIfNeeded:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([(HUWallpaperView *)self disableWallpaperUpdate])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v24 = v8;
      *&v24[8] = 2112;
      v25 = self;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "wallpaper update is currently disabled because an animation is in progress, wallpaper:%@ for view:%@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v10 = [(HUWallpaperView *)self currentLayer];
  if (v10)
  {

    goto LABEL_8;
  }

  v11 = [(HUWallpaperView *)self currentImage];

  if (!v11)
  {
LABEL_10:
    v14 = [MEMORY[0x277D14D18] sharedInstance];
    v15 = [(HUWallpaperView *)self traitCollection];
    v16 = [v14 wallpaperObjectForWallpaper:v8 currentUserInterfaceStyle:{objc_msgSend(v15, "userInterfaceStyle")}];

    v17 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HUWallpaperView_populateWallpaper_withAnimation_onlyIfNeeded___block_invoke;
    v18[3] = &unk_277DB7180;
    v19 = v16;
    v20 = v8;
    v21 = self;
    v22 = a4;
    v9 = v16;
    [v17 performBlock:v18];

    goto LABEL_11;
  }

LABEL_8:
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HUWallpaperView *)self currentLayer];
    v13 = [(HUWallpaperView *)self currentImage];
    *buf = 67110146;
    *v24 = 1;
    *&v24[4] = 1024;
    *&v24[6] = v12 == 0;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v13 == 0;
    HIWORD(v25) = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = self;
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

- (id)refreshWallpaperForHomeKitObject:(id)a3 withAnimation:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUWallpaperView *)self disableWallpaperUpdate];
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "wallpaper update is currently disabled because an animation is in progress, hkObject:%@ for view:%@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (v9)
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "wallpaper update with hkObject:%@ for view:%@", buf, 0x16u);
    }

    [(HUWallpaperView *)self setHkObject:v6];
    objc_initWeak(buf, self);
    v11 = [MEMORY[0x277D14D18] sharedInstance];
    v12 = [v11 wallpaperForHomeKitObject:v6 dispatchToMainOnComplete:0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__HUWallpaperView_refreshWallpaperForHomeKitObject_withAnimation___block_invoke;
    v14[3] = &unk_277DBB8A0;
    objc_copyWeak(&v15, buf);
    v16 = a4;
    v10 = [v12 flatMap:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(buf);
  }

  return v10;
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

- (void)setCurrentImage:(id)a3 withAnimation:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (self->_currentImage != v7)
  {
    objc_storeStrong(&self->_currentImage, a3);
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "setting image for view:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = MEMORY[0x277D75D18];
    if (v4)
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
    v12 = v7;
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

- (void)setCurrentLayer:(id)a3 withAnimation:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(CAGradientLayer *)self->_currentLayer colors];
  v9 = [v7 colors];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = self->_currentLayer;
    [(HUWallpaperView *)self frame];
    [v7 setFrame:?];
    objc_storeStrong(&self->_currentLayer, a3);
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = self;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "setting layer for view:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13 = MEMORY[0x277D75D18];
    if (v4)
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
    v17 = v7;
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