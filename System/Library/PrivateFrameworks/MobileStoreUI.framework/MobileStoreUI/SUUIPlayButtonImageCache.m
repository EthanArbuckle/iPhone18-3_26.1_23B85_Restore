@interface SUUIPlayButtonImageCache
+ (id)imageCacheForStyle:(int64_t)a3;
- (SUUIPlayButtonImageCache)initWithStyle:(int64_t)a3;
- (UIImage)pauseImage;
- (UIImage)playImage;
- (UIImage)stopImage;
- (void)preloadImages;
@end

@implementation SUUIPlayButtonImageCache

+ (id)imageCacheForStyle:(int64_t)a3
{
  if (imageCacheForStyle__onceToken != -1)
  {
    +[SUUIPlayButtonImageCache imageCacheForStyle:];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [imageCacheForStyle__sharedCaches objectForKey:v4];
  if (!v5)
  {
    v5 = [[SUUIPlayButtonImageCache alloc] initWithStyle:a3];
    [imageCacheForStyle__sharedCaches setObject:v5 forKey:v4];
  }

  return v5;
}

uint64_t __47__SUUIPlayButtonImageCache_imageCacheForStyle___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = imageCacheForStyle__sharedCaches;
  imageCacheForStyle__sharedCaches = v0;

  v2 = imageCacheForStyle__sharedCaches;

  return [v2 setName:@"com.apple.iTunesStoreUI.SUUIPlayButtonImageCache.imageCacheForStyle"];
}

- (SUUIPlayButtonImageCache)initWithStyle:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = SUUIPlayButtonImageCache;
  v4 = [(SUUIPlayButtonImageCache *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_imageLock._os_unfair_lock_opaque = 0;
    v6 = SUUIBundle();
    bundle = v5->_bundle;
    v5->_bundle = v6;

    if (a3 <= 2)
    {
      v8 = off_2798FE070[a3];
      v9 = off_2798FE088[a3];
      playImageName = v5->_playImageName;
      v5->_playImageName = &v8->isa;

      pauseImageName = v5->_pauseImageName;
      v5->_pauseImageName = &v9->isa;

      stopImageName = v5->_stopImageName;
      v5->_stopImageName = @"UniversalPlayButtonStopIcon";
    }

    if (!v5->_playImage)
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:v5->_playImageName inBundle:v5->_bundle];
      playImage = v5->_playImage;
      v5->_playImage = v13;
    }
  }

  return v5;
}

- (UIImage)playImage
{
  playImage = self->_playImage;
  if (!playImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_playImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_playImageName inBundle:self->_bundle];
      v5 = self->_playImage;
      self->_playImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    playImage = self->_playImage;
  }

  return playImage;
}

- (UIImage)pauseImage
{
  pauseImage = self->_pauseImage;
  if (!pauseImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_pauseImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_pauseImageName inBundle:self->_bundle];
      v5 = self->_pauseImage;
      self->_pauseImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    pauseImage = self->_pauseImage;
  }

  return pauseImage;
}

- (UIImage)stopImage
{
  stopImage = self->_stopImage;
  if (!stopImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_stopImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_stopImageName inBundle:self->_bundle];
      v5 = self->_stopImage;
      self->_stopImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    stopImage = self->_stopImage;
  }

  return stopImage;
}

- (void)preloadImages
{
  os_unfair_lock_lock(&self->_imageLock);
  if (!self->_playImage)
  {
    v3 = [MEMORY[0x277D755B8] imageNamed:self->_playImageName inBundle:self->_bundle];
    playImage = self->_playImage;
    self->_playImage = v3;
  }

  if (!self->_pauseImage)
  {
    v5 = [MEMORY[0x277D755B8] imageNamed:self->_pauseImageName inBundle:self->_bundle];
    pauseImage = self->_pauseImage;
    self->_pauseImage = v5;
  }

  if (!self->_stopImage)
  {
    v7 = [MEMORY[0x277D755B8] imageNamed:self->_stopImageName inBundle:self->_bundle];
    stopImage = self->_stopImage;
    self->_stopImage = v7;
  }

  os_unfair_lock_unlock(&self->_imageLock);
}

@end