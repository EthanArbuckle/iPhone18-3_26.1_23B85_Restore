@interface NUNIRenderer
+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
+ (void)_deallocInstanceWithPixelFormat:(unint64_t)a3 rendererStyle:(unint64_t)a4;
- (NUNIRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
- (void)_asyncDeallocInstance;
- (void)dealloc;
@end

@implementation NUNIRenderer

+ (id)sharedInstanceWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v8 = a4;
  v9 = a1;
  objc_sync_enter(v9);
  switch(a5)
  {
    case 1uLL:
      v18 = [NUNIGlobetrotterRenderer alloc];
      a5 = 1;
      break;
    case 2uLL:
      v10 = [[NUNIAegirRenderer alloc] initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:2];
      v11 = +[_TtC12NanoUniverse14PreferencePane aegirRenderingPreferencePane];
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = [v15 objectForKey:@"AegirRenderingReset"];

      if (!v16)
      {
        [v11 reset];
        v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v17 setObject:MEMORY[0x277CBEC38] forKey:@"AegirRenderingReset"];
      }

      goto LABEL_9;
    case 3uLL:
      v10 = [[NUNICalliopeRenderer alloc] initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:3];
      v11 = +[_TtC12NanoUniverse14PreferencePane calliopeRenderingPreferencePane];
      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [v12 objectForKey:@"CalliopeRenderingReset"];

      if (!v13)
      {
        [v11 reset];
        v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v14 setObject:MEMORY[0x277CBEC38] forKey:@"CalliopeRenderingReset"];
      }

LABEL_9:
      [(NUNIAegirRenderer *)v10 setRendererOptions:v11];

      goto LABEL_13;
    default:
      v18 = [NUNIClassicRenderer alloc];
      break;
  }

  v10 = [(NUNIClassicRenderer *)v18 initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:a5];
LABEL_13:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [0 setObject:v10 forKeyedSubscript:v19];

  objc_sync_exit(v9);

  return v10;
}

+ (void)_deallocInstanceWithPixelFormat:(unint64_t)a3 rendererStyle:(unint64_t)a4
{
  obj = a1;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [0 objectForKeyedSubscript:v5];

  [v6 discard];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [0 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(obj);
}

- (NUNIRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = NUNIRenderer;
  v10 = [(NUNIRenderer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_rendererStyle = a5;
    v10->_pixelFormat = a3;
    objc_storeStrong(&v10->_textureSuffix, a4);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel__asyncDeallocInstance name:*MEMORY[0x277CBB648] object:0];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBB648] object:0];

  v4.receiver = self;
  v4.super_class = NUNIRenderer;
  [(NUNIRenderer *)&v4 dealloc];
}

- (void)_asyncDeallocInstance
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = objc_opt_class();
    v4 = [(NUNIRenderer *)self pixelFormat];
    v5 = [(NUNIRenderer *)self rendererStyle];

    [v3 _deallocInstanceWithPixelFormat:v4 rendererStyle:v5];
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