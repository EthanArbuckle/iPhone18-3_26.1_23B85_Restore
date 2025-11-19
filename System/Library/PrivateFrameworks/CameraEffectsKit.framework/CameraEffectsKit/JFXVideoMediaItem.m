@interface JFXVideoMediaItem
+ (void)videoMediaItemWithLocalURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
- (BOOL)hasAudibleCharacteristic;
- (BOOL)hasAudioTracks;
- (BOOL)hasVideoTracks;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupportedAudio;
- (BOOL)needsDerivativeMedia;
- (CGAffineTransform)transform;
- (CGAffineTransform)transform:(SEL)a3 fillDest:(CGSize)a4;
- (CGSize)naturalSize;
- (CGSize)naturalSizeWithTransform;
- (float)frameRate;
- (id)assetURL;
- (id)colorSpace;
- (id)copyWithZone:(_NSZone *)a3;
- (id)info;
- (int)durationAt30fps;
- (unint64_t)hash;
- (void)cacheAssetInformation;
- (void)commonInit;
- (void)dealloc;
- (void)loadAVAssetWithCompletionHandler:(id)a3;
- (void)mediaserverdCrashed;
- (void)reloadAVAsset;
- (void)setAssetIs4kHEVC:(BOOL)a3;
@end

@implementation JFXVideoMediaItem

- (void)loadAVAssetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(JFXMediaItem *)self delegate];
  [v5 mediaItemWillLoad:self];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke;
  v23[3] = &unk_278D7D0E8;
  v23[4] = self;
  v6 = MEMORY[0x245D22230](v23);
  v7 = [(JTAssetMediaItem *)self asset];

  if (v7)
  {
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = dispatch_semaphore_create(0);
    }

    v12 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
    v13 = [(JTAssetMediaItem *)self asset];
    v14 = [(JFXVideoMediaItem *)self needsDerivativeMedia];
    [(JFXVideoMediaItem *)self frameRate];
    v16 = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__JFXVideoMediaItem_loadAVAssetWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_278D7D110;
    v21 = v6;
    v22 = v4;
    v11 = v8;
    v20 = v11;
    LODWORD(v17) = v16;
    [v12 requestAVAssetAsyncWithAsset:v13 needsDerivativeMedia:v14 frameRate:v19 completion:v17];

    if (v11)
    {
      v18 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v11, v18);
    }
  }

  else
  {
    v9 = MEMORY[0x277CE63D8];
    v10 = [(JTLocalAssetMediaItem *)self localFileURL];
    v11 = [v9 assetWithURL:v10];

    (v6)[2](v6, v11);
    if (v4)
    {
      v4[2](v4);
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

+ (void)videoMediaItemWithLocalURL:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___JFXVideoMediaItem;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v13, sel_alloc);
  v12 = [v11 initWithURL:{v10, v13.receiver, v13.super_class}];

  if (v12)
  {
    [v12 setDelegate:v8];
    [v12 commonInit];
    [v12 setMediaState:0];
    [v12 setMediaLoadState:0];
    [v12 checkIfAssetIsMissing];
    [v12 loadAVAssetWithCompletionHandler:0];
    v9[2](v9, v12, 0);
  }
}

- (void)commonInit
{
  [(JFXMediaItem *)self setMediaType:1];
  [(JFXVideoMediaItem *)self setMediaStartOffset:0];
  v3 = objc_alloc_init(JTVideoMediaUtils);
  [(JFXVideoMediaItem *)self setVideoMediaItemUtils:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"mediaserverdCrashed" object:0];

  v4.receiver = self;
  v4.super_class = JFXVideoMediaItem;
  [(JTAssetMediaItem *)&v4 dealloc];
}

- (void)reloadAVAsset
{
  v3 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  [v3 invalidateCachedAssetInformation];

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
  v3 = [(JTAssetMediaItem *)self assetIdentifier];

  if (v3)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = JFXVideoMediaItem;
  v4 = [(JTAssetMediaItem *)&v9 copyWithZone:a3];
  objc_storeStrong(v4 + 15, self->_avAsset);
  *(v4 + 113) = self->_capturedByInAppCamera;
  v5 = objc_alloc_init(JTVideoMediaUtils);
  v6 = v4[16];
  v4[16] = v5;

  *(v4 + 114) = self->_originalIsHEVC4k;
  [v4 cacheAssetInformation];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:v4 selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = JFXVideoMediaItem;
  return [(JTAssetMediaItem *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXVideoMediaItem;
  return [(JTAssetMediaItem *)&v3 hash];
}

- (void)cacheAssetInformation
{
  v4 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v3 = [(JFXVideoMediaItem *)self avAsset];
  [v4 cacheTrackInformationWithAVAsset:v3];
}

- (BOOL)hasAudibleCharacteristic
{
  v3 = [(JFXMediaItem *)self mediaState]== 2;
  v4 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  LOBYTE(v3) = [v4 hasAudibleCharacteristicWithIsMissing:v3];

  return v3;
}

- (CGSize)naturalSize
{
  v3 = [(JFXMediaItem *)self mediaState]== 2;
  v4 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v5 = [(JTAssetMediaItem *)self asset];
  [v4 naturalSizeWithIsMissing:v3 asset:v5];
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
  v4 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  if (v4)
  {
    v6 = v4;
    [v4 transform];
    v4 = v6;
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
  v2 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  [v2 frameRate];
  v4 = v3;

  return v4;
}

- (id)colorSpace
{
  v2 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v3 = [v2 colorSpace];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
  }

  v5 = v4;

  return v5;
}

- (BOOL)hasVideoTracks
{
  v2 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v3 = [v2 hasVideoTracks];

  return v3;
}

- (int)durationAt30fps
{
  v3 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v4 = [(JTAssetMediaItem *)self asset];
  [v4 duration];
  v5 = [v3 durationAt30fpsWithAssetDuration:?];

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
  v2 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v3 = [v2 isUnsupportedAudio];

  return v3;
}

- (void)setAssetIs4kHEVC:(BOOL)a3
{
  if (self->_originalIsHEVC4k != a3)
  {
    self->_originalIsHEVC4k = a3;
  }
}

- (CGAffineTransform)transform:(SEL)a3 fillDest:(CGSize)a4
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
  v2 = [(JFXVideoMediaItem *)self videoMediaItemUtils];
  v3 = [v2 hasAudioTracks];

  return v3;
}

- (id)info
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = JFXVideoMediaItem;
  v4 = [(JTAssetMediaItem *)&v10 info];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_capturedByInAppCamera];
  [v5 setObject:v6 forKey:kRecordedWithInAppCamera];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_mediaStartOffset];
  [v5 setObject:v7 forKey:kMediaStartOffset];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_originalIsHEVC4k];
  [v5 setObject:v8 forKey:kOriginalIsHEVC4kAsset];

  return v5;
}

@end