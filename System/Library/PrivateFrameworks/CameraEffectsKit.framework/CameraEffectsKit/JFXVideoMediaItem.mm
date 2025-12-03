@interface JFXVideoMediaItem
+ (void)videoMediaItemWithLocalURL:(id)l delegate:(id)delegate completionHandler:(id)handler;
- (BOOL)hasAudibleCharacteristic;
- (BOOL)hasAudioTracks;
- (BOOL)hasVideoTracks;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupportedAudio;
- (BOOL)needsDerivativeMedia;
- (CGAffineTransform)transform;
- (CGAffineTransform)transform:(SEL)transform fillDest:(CGSize)dest;
- (CGSize)naturalSize;
- (CGSize)naturalSizeWithTransform;
- (float)frameRate;
- (id)assetURL;
- (id)colorSpace;
- (id)copyWithZone:(_NSZone *)zone;
- (id)info;
- (int)durationAt30fps;
- (unint64_t)hash;
- (void)cacheAssetInformation;
- (void)commonInit;
- (void)dealloc;
- (void)loadAVAssetWithCompletionHandler:(id)handler;
- (void)mediaserverdCrashed;
- (void)reloadAVAsset;
- (void)setAssetIs4kHEVC:(BOOL)c;
@end

@implementation JFXVideoMediaItem

- (void)loadAVAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(JFXMediaItem *)self delegate];
  [delegate mediaItemWillLoad:self];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke;
  v23[3] = &unk_278D7D0E8;
  v23[4] = self;
  v6 = MEMORY[0x245D22230](v23);
  asset = [(JTAssetMediaItem *)self asset];

  if (asset)
  {
    if (handlerCopy)
    {
      v8 = 0;
    }

    else
    {
      v8 = dispatch_semaphore_create(0);
    }

    videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
    asset2 = [(JTAssetMediaItem *)self asset];
    needsDerivativeMedia = [(JFXVideoMediaItem *)self needsDerivativeMedia];
    [(JFXVideoMediaItem *)self frameRate];
    v16 = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_278D7D110;
    v21 = v6;
    v22 = handlerCopy;
    v11 = v8;
    v20 = v11;
    LODWORD(v17) = v16;
    [videoMediaItemUtils requestAVAssetAsyncWithAsset:asset2 needsDerivativeMedia:needsDerivativeMedia frameRate:v19 completion:v17];

    if (v11)
    {
      v18 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v11, v18);
    }
  }

  else
  {
    v9 = MEMORY[0x277CE63D8];
    localFileURL = [(JTLocalAssetMediaItem *)self localFileURL];
    v11 = [v9 assetWithURL:localFileURL];

    (v6)[2](v6, v11);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

void __54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setAvAsset:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 URL];
    [*(a1 + 32) setAssetLocalURL:v3];
  }

  [*(a1 + 32) cacheAssetInformation];
  if (+[CFXVideoSettings canDecodeHEVC2160P])
  {
    v4 = [*(a1 + 32) videoMediaItemUtils];
    *(*(a1 + 32) + 114) = [v4 isOriginalHEVC4k];
  }

  [*(a1 + 32) setMediaLoadState:1];
  v5 = [*(a1 + 32) delegate];
  [v5 mediaItemDidLoad:*(a1 + 32) error:0];
}

NSObject *__54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke_2(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = a1[4];
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

+ (void)videoMediaItemWithLocalURL:(id)l delegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___JFXVideoMediaItem;
  lCopy = l;
  v11 = objc_msgSendSuper2(&v13, sel_alloc);
  v12 = [v11 initWithURL:{lCopy, v13.receiver, v13.super_class}];

  if (v12)
  {
    [v12 setDelegate:delegateCopy];
    [v12 commonInit];
    [v12 setMediaState:0];
    [v12 setMediaLoadState:0];
    [v12 checkIfAssetIsMissing];
    [v12 loadAVAssetWithCompletionHandler:0];
    handlerCopy[2](handlerCopy, v12, 0);
  }
}

- (void)commonInit
{
  [(JFXMediaItem *)self setMediaType:1];
  [(JFXVideoMediaItem *)self setMediaStartOffset:0];
  v3 = objc_alloc_init(JTVideoMediaUtils);
  [(JFXVideoMediaItem *)self setVideoMediaItemUtils:v3];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"mediaserverdCrashed" object:0];

  v4.receiver = self;
  v4.super_class = JFXVideoMediaItem;
  [(JTAssetMediaItem *)&v4 dealloc];
}

- (void)reloadAVAsset
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  [videoMediaItemUtils invalidateCachedAssetInformation];

  [(JFXVideoMediaItem *)self loadAVAssetWithCompletionHandler:0];
}

- (void)mediaserverdCrashed
{
  [(JFXMediaItem *)self setMediaLoadState:0];
  [(JFXVideoMediaItem *)self setAvAsset:0];

  [(JFXVideoMediaItem *)self loadAVAssetWithCompletionHandler:0];
}

- (id)assetURL
{
  assetIdentifier = [(JTAssetMediaItem *)self assetIdentifier];

  if (assetIdentifier)
  {
    [(JTAssetMediaItem *)self assetLocalURL];
  }

  else
  {
    [(JTLocalAssetMediaItem *)self localFileURL];
  }
  v4 = ;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = JFXVideoMediaItem;
  v4 = [(JTAssetMediaItem *)&v9 copyWithZone:zone];
  objc_storeStrong(v4 + 15, self->_avAsset);
  *(v4 + 113) = self->_capturedByInAppCamera;
  v5 = objc_alloc_init(JTVideoMediaUtils);
  v6 = v4[16];
  v4[16] = v5;

  *(v4 + 114) = self->_originalIsHEVC4k;
  [v4 cacheAssetInformation];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = JFXVideoMediaItem;
  return [(JTAssetMediaItem *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXVideoMediaItem;
  return [(JTAssetMediaItem *)&v3 hash];
}

- (void)cacheAssetInformation
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  avAsset = [(JFXVideoMediaItem *)self avAsset];
  [videoMediaItemUtils cacheTrackInformationWithAVAsset:avAsset];
}

- (BOOL)hasAudibleCharacteristic
{
  v3 = [(JFXMediaItem *)self mediaState]== 2;
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  LOBYTE(v3) = [videoMediaItemUtils hasAudibleCharacteristicWithIsMissing:v3];

  return v3;
}

- (CGSize)naturalSize
{
  v3 = [(JFXMediaItem *)self mediaState]== 2;
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  asset = [(JTAssetMediaItem *)self asset];
  [videoMediaItemUtils naturalSizeWithIsMissing:v3 asset:asset];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGAffineTransform)transform
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  if (videoMediaItemUtils)
  {
    v6 = videoMediaItemUtils;
    [videoMediaItemUtils transform];
    videoMediaItemUtils = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGSize)naturalSizeWithTransform
{
  [(JFXVideoMediaItem *)self naturalSize];
  v7 = v4;
  v8 = v3;
  [(JFXVideoMediaItem *)self transform];
  v5 = vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v10, v7), v9, v8));
  v6 = v5.f64[1];
  result.width = v5.f64[0];
  result.height = v6;
  return result;
}

- (float)frameRate
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  [videoMediaItemUtils frameRate];
  v4 = v3;

  return v4;
}

- (id)colorSpace
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  colorSpace = [videoMediaItemUtils colorSpace];

  if (colorSpace)
  {
    rec709GammaColorSpace = colorSpace;
  }

  else
  {
    rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  }

  v5 = rec709GammaColorSpace;

  return v5;
}

- (BOOL)hasVideoTracks
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  hasVideoTracks = [videoMediaItemUtils hasVideoTracks];

  return hasVideoTracks;
}

- (int)durationAt30fps
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  asset = [(JTAssetMediaItem *)self asset];
  [asset duration];
  v5 = [videoMediaItemUtils durationAt30fpsWithAssetDuration:?];

  return v5;
}

- (BOOL)needsDerivativeMedia
{
  if (self->_originalIsHEVC4k)
  {
    return ![CFXVideoSettings canDecodeHEVC2160P:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isUnsupportedAudio
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  isUnsupportedAudio = [videoMediaItemUtils isUnsupportedAudio];

  return isUnsupportedAudio;
}

- (void)setAssetIs4kHEVC:(BOOL)c
{
  if (self->_originalIsHEVC4k != c)
  {
    self->_originalIsHEVC4k = c;
  }
}

- (CGAffineTransform)transform:(SEL)transform fillDest:(CGSize)dest
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  return self;
}

- (BOOL)hasAudioTracks
{
  videoMediaItemUtils = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  hasAudioTracks = [videoMediaItemUtils hasAudioTracks];

  return hasAudioTracks;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = JFXVideoMediaItem;
  info = [(JTAssetMediaItem *)&v10 info];
  v5 = [v3 dictionaryWithDictionary:info];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_capturedByInAppCamera];
  [v5 setObject:v6 forKey:kRecordedWithInAppCamera];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_mediaStartOffset];
  [v5 setObject:v7 forKey:kMediaStartOffset];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_originalIsHEVC4k];
  [v5 setObject:v8 forKey:kOriginalIsHEVC4kAsset];

  return v5;
}

@end