@interface NUNIRenderer
+ (id)sharedInstanceWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
+ (void)_deallocInstanceWithPixelFormat:(unint64_t)format rendererStyle:(unint64_t)style;
- (NUNIRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (void)_asyncDeallocInstance;
- (void)dealloc;
@end

@implementation NUNIRenderer

+ (id)sharedInstanceWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  switch(style)
  {
    case 1uLL:
      v18 = [NUNIGlobetrotterRenderer alloc];
      style = 1;
      break;
    case 2uLL:
      v10 = [[NUNIAegirRenderer alloc] initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:2];
      v11 = +[_TtC12NanoUniverse14PreferencePane aegirRenderingPreferencePane];
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = [standardUserDefaults objectForKey:@"AegirRenderingReset"];

      if (!v16)
      {
        [v11 reset];
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults2 setObject:MEMORY[0x277CBEC38] forKey:@"AegirRenderingReset"];
      }

      goto LABEL_9;
    case 3uLL:
      v10 = [[NUNICalliopeRenderer alloc] initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:3];
      v11 = +[_TtC12NanoUniverse14PreferencePane calliopeRenderingPreferencePane];
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [standardUserDefaults3 objectForKey:@"CalliopeRenderingReset"];

      if (!v13)
      {
        [v11 reset];
        standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults4 setObject:MEMORY[0x277CBEC38] forKey:@"CalliopeRenderingReset"];
      }

LABEL_9:
      [(NUNIAegirRenderer *)v10 setRendererOptions:v11];

      goto LABEL_13;
    default:
      v18 = [NUNIClassicRenderer alloc];
      break;
  }

  v10 = [(NUNIClassicRenderer *)v18 initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:style];
LABEL_13:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:format];
  [0 setObject:v10 forKeyedSubscript:v19];

  objc_sync_exit(selfCopy);

  return v10;
}

+ (void)_deallocInstanceWithPixelFormat:(unint64_t)format rendererStyle:(unint64_t)style
{
  obj = self;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:format];
  v6 = [0 objectForKeyedSubscript:v5];

  [v6 discard];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:format];
  [0 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(obj);
}

- (NUNIRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  v14.receiver = self;
  v14.super_class = NUNIRenderer;
  v10 = [(NUNIRenderer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_rendererStyle = style;
    v10->_pixelFormat = format;
    objc_storeStrong(&v10->_textureSuffix, suffix);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__asyncDeallocInstance name:*MEMORY[0x277CBB648] object:0];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBB648] object:0];

  v4.receiver = self;
  v4.super_class = NUNIRenderer;
  [(NUNIRenderer *)&v4 dealloc];
}

- (void)_asyncDeallocInstance
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_opt_class();
    pixelFormat = [(NUNIRenderer *)self pixelFormat];
    rendererStyle = [(NUNIRenderer *)self rendererStyle];

    [v3 _deallocInstanceWithPixelFormat:pixelFormat rendererStyle:rendererStyle];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__NUNIRenderer__asyncDeallocInstance__block_invoke;
    block[3] = &unk_279960048;
    objc_copyWeak(&v7, &location);
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __37__NUNIRenderer__asyncDeallocInstance__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = *(a1 + 32);
    [objc_opt_class() _deallocInstanceWithPixelFormat:objc_msgSend(v4 rendererStyle:"pixelFormat"), objc_msgSend(v4, "rendererStyle")];
    WeakRetained = v4;
  }
}

@end