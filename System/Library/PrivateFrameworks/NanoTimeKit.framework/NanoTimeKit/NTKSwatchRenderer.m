@interface NTKSwatchRenderer
+ (BOOL)containsSwatchForKey:(id)a3;
+ (id)_sharedRenderer;
+ (id)cachedSwatchForKey:(id)a3;
+ (id)renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7;
+ (void)renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7 completion:(id)a8;
- (id)_ca_renderSwatchUsingCARenderServer:(id)a3 size:(CGSize)a4 forDevice:(id)a5;
- (id)_init;
- (id)_renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7;
- (id)_ui_renderSwatchUsingUIGraphicsImageRenderer:(id)a3;
- (void)_renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7 completion:(id)a8;
@end

@implementation NTKSwatchRenderer

+ (id)_sharedRenderer
{
  if (_sharedRenderer_onceToken != -1)
  {
    +[NTKSwatchRenderer _sharedRenderer];
  }

  v3 = _sharedRenderer_sharedRenderer;

  return v3;
}

void __36__NTKSwatchRenderer__sharedRenderer__block_invoke()
{
  v0 = [[NTKSwatchRenderer alloc] _init];
  v1 = _sharedRenderer_sharedRenderer;
  _sharedRenderer_sharedRenderer = v0;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = NTKSwatchRenderer;
  v2 = [(NTKSwatchRenderer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__NTKSwatchRenderer__init__block_invoke;
    block[3] = &unk_27877DB10;
    v6 = v2;
    if (_init_onceToken != -1)
    {
      dispatch_once(&_init_onceToken, block);
    }
  }

  return v3;
}

void __26__NTKSwatchRenderer__init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

+ (BOOL)containsSwatchForKey:(id)a3
{
  v3 = [a1 cachedSwatchForKey:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)cachedSwatchForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedRenderer];
  v6 = [v5 _cachedSwatchImageForKey:v4];

  return v6;
}

+ (id)renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [a1 _sharedRenderer];
  v17 = [v16 _renderSwatchForView:v15 size:v14 device:v13 key:a7 method:{width, height}];

  return v17;
}

+ (void)renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7 completion:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [a1 _sharedRenderer];
  [v19 _renderSwatchForView:v18 size:v17 device:v16 key:a7 method:v15 completion:{width, height}];
}

- (void)_renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7 completion:(id)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a8;
  v17 = [(NTKSwatchRenderer *)self _renderSwatchForView:a3 size:a5 device:a6 key:a7 method:width, height];
  (*(a8 + 2))(v16, v17);
}

- (id)_renderSwatchForView:(id)a3 size:(CGSize)a4 device:(id)a5 key:(id)a6 method:(unint64_t)a7
{
  height = a4.height;
  width = a4.width;
  v27 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 136315650;
    v22 = "[NTKSwatchRenderer _renderSwatchForView:size:device:key:method:]";
    v23 = 2112;
    v24 = v15;
    v25 = 2048;
    v26 = a7;
    _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_INFO, "%s — rendering swatch for %@ using %ld", &v21, 0x20u);
  }

  if (a7 == 1)
  {
    v17 = [(NTKSwatchRenderer *)self _ui_renderSwatchUsingUIGraphicsImageRenderer:v13];
  }

  else
  {
    if (a7)
    {
      goto LABEL_9;
    }

    v17 = [(NTKSwatchRenderer *)self _ca_renderSwatchUsingCARenderServer:v13 size:v14 forDevice:width, height];
  }

  v18 = v17;
  if (v17)
  {
    [(NTKSwatchRenderer *)self _setSwatchImage:v17 forKey:v15];
    goto LABEL_12;
  }

LABEL_9:
  v19 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [NTKSwatchRenderer _renderSwatchForView:v15 size:v19 device:? key:? method:?];
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (id)_ui_renderSwatchUsingUIGraphicsImageRenderer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D75560]);
  [v4 bounds];
  v8 = [v5 initWithSize:{v6, v7}];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__NTKSwatchRenderer__ui_renderSwatchUsingUIGraphicsImageRenderer___block_invoke;
  v12[3] = &unk_27877DB38;
  objc_copyWeak(&v14, &location);
  v9 = v4;
  v13 = v9;
  v10 = [v8 imageWithActions:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __66__NTKSwatchRenderer__ui_renderSwatchUsingUIGraphicsImageRenderer___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) layer];
    [v4 renderInContext:{objc_msgSend(v5, "CGContext")}];
  }
}

- (id)_ca_renderSwatchUsingCARenderServer:(id)a3 size:(CGSize)a4 forDevice:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  if ([(NTKSwatchRenderer *)self _isCATransactionCommitting])
  {
    v11 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKSwatchRenderer _ca_renderSwatchUsingCARenderServer:v11 size:? forDevice:?];
    }

    v12 = 0;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    [v9 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    v23 = [v22 view];
    [v23 setFrame:{v15, v17, v19, v21}];

    v24 = [v22 view];
    [v24 addSubview:v9];

    v25 = [NTKFaceSnapshottingWindow alloc];
    v26 = [(NTKFaceSnapshottingWindow *)v25 initWithFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v19, v21];
    [(NTKFaceSnapshottingWindow *)v26 updateForDevice:v10];
    [(NTKFaceSnapshottingWindow *)v26 setHidden:0];
    v27 = [MEMORY[0x277D75348] clearColor];
    [(NTKFaceSnapshottingWindow *)v26 setBackgroundColor:v27];

    _UIAppSetStatusBarOrientation();
    _UIAppSetStatusBarHeight();
    [(NTKFaceSnapshottingWindow *)v26 setRootViewController:v22];
    [(NTKFaceSnapshottingWindow *)v26 setHidden:0];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(NTKFaceSnapshottingWindow *)v26 setNeedsLayout];
    [(NTKFaceSnapshottingWindow *)v26 layoutIfNeeded];
    [(NTKFaceSnapshottingWindow *)v26 setNeedsDisplay];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];
    [MEMORY[0x277CD9FF0] synchronize];
    v28 = NTKRenderSnapshotFromWindow(v26, 2);
    v29 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{0.0, 0.0, width, height}];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__NTKSwatchRenderer__ca_renderSwatchUsingCARenderServer_size_forDevice___block_invoke;
    v31[3] = &unk_27877DB60;
    v33 = 0;
    v34 = 0;
    v32 = v28;
    v35 = width;
    v36 = height;
    v12 = [v29 imageWithActions:v31];
    [v9 removeFromSuperview];
    [(NTKFaceSnapshottingWindow *)v26 setRootViewController:0];
    [(NTKFaceSnapshottingWindow *)v26 setHidden:1];

    objc_autoreleasePoolPop(v13);
  }

  return v12;
}

- (void)_renderSwatchForView:(uint64_t)a1 size:(NSObject *)a2 device:key:method:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKSwatchRenderer _renderSwatchForView:size:device:key:method:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%s — swatchImage returned nil for %@", &v2, 0x16u);
}

- (void)_ca_renderSwatchUsingCARenderServer:(os_log_t)log size:forDevice:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NTKSwatchRenderer _ca_renderSwatchUsingCARenderServer:size:forDevice:]";
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "%s — currently kCATransactionCommitting; aborting swatch render", &v1, 0xCu);
}

@end