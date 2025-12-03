@interface BPSRemoteWatchView
- (BPSRemoteWatchView)initWithFrame:(CGRect)frame;
- (id)_imageForSize:(unint64_t)size;
- (void)layoutSubviews;
- (void)setAdvertisingIdentifier:(id)identifier andStyle:(unint64_t)style;
- (void)setAdvertisingName:(id)name andStyle:(unint64_t)style;
- (void)setupWatchView;
@end

@implementation BPSRemoteWatchView

- (BPSRemoteWatchView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BPSRemoteWatchView;
  v3 = [(BPSRemoteWatchView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D37A68]);
    assetManager = v3->_assetManager;
    v3->_assetManager = v4;
  }

  return v3;
}

- (void)setupWatchView
{
  watch = self->_watch;
  if (watch)
  {
    [(BPSWatchView *)watch removeFromSuperview];
  }

  mEMORY[0x277D37A78] = [MEMORY[0x277D37A78] sharedDeviceController];
  [mEMORY[0x277D37A78] setMaterial:self->_material];

  mEMORY[0x277D37A78]2 = [MEMORY[0x277D37A78] sharedDeviceController];
  [mEMORY[0x277D37A78]2 setInternalSize:self->_size];

  v6 = [[BPSWatchView alloc] initWithStyle:self->_style];
  v7 = self->_watch;
  self->_watch = v6;

  [(BPSRemoteWatchView *)self addSubview:self->_watch];
  v10 = [(BPSRemoteWatchView *)self _imageForSize:self->_size];
  v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
  watchScreen = self->_watchScreen;
  self->_watchScreen = v8;

  [(BPSWatchView *)self->_watch addSubview:self->_watchScreen];
}

- (void)setAdvertisingIdentifier:(id)identifier andStyle:(unint64_t)style
{
  identifierCopy = identifier;
  self->_material = [identifierCopy enclosureMaterial];
  deviceSize = [identifierCopy deviceSize];

  self->_size = deviceSize;
  self->_style = style;
  [(BPSRemoteWatchView *)self setupWatchView];
  assetManager = self->_assetManager;
  if (!assetManager)
  {
    v9 = objc_alloc_init(MEMORY[0x277D37A68]);
    v10 = self->_assetManager;
    self->_assetManager = v9;

    assetManager = self->_assetManager;
  }

  material = self->_material;
  size = self->_size;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__BPSRemoteWatchView_setAdvertisingIdentifier_andStyle___block_invoke;
  v13[3] = &unk_278D23488;
  v13[4] = self;
  [(PBBridgeAssetsManager *)assetManager beginPullingAssetsForDeviceMaterial:material size:size completion:v13];
  [(BPSRemoteWatchView *)self layoutIfNeeded];
}

void __56__BPSRemoteWatchView_setAdvertisingIdentifier_andStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 456);
    v7 = *(v5 + 448);
    v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v9 = 134218498;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Pulled Assets for material: %lu size:%lu? Success:%@", &v9, 0x20u);
  }
}

- (void)setAdvertisingName:(id)name andStyle:(unint64_t)style
{
  nameCopy = name;
  objc_storeStrong(&self->_advertisingName, name);
  v8 = PBAdvertisingInfoFromPayload();
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D37A90]];
  self->_material = [v9 integerValue];

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D37AA0]];
  self->_size = [v10 integerValue];

  self->_style = style;
  [(BPSRemoteWatchView *)self setupWatchView];
  assetManager = self->_assetManager;
  if (!assetManager)
  {
    v12 = objc_alloc_init(MEMORY[0x277D37A68]);
    v13 = self->_assetManager;
    self->_assetManager = v12;

    assetManager = self->_assetManager;
  }

  advertisingName = self->_advertisingName;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__BPSRemoteWatchView_setAdvertisingName_andStyle___block_invoke;
  v15[3] = &unk_278D23488;
  v15[4] = self;
  [(PBBridgeAssetsManager *)assetManager beginPullingAssetsForAdvertisingName:advertisingName completion:v15];
  [(BPSRemoteWatchView *)self layoutIfNeeded];
}

void __50__BPSRemoteWatchView_setAdvertisingName_andStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 408);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Pulled Assets for material: %@? (%@)", &v7, 0x16u);
  }
}

- (id)_imageForSize:(unint64_t)size
{
  if (size == 24 || size == 19)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = @"Prox_Modular_Ultra";
    goto LABEL_4;
  }

  size = self->_size;
  if (size <= 0x1A)
  {
    if (((1 << size) & 0xF00000) != 0)
    {
      v3 = MEMORY[0x277D755B8];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = @"Prox_Series-warlock";
      goto LABEL_4;
    }

    if (((1 << size) & 6) != 0)
    {
      v3 = MEMORY[0x277D755B8];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = @"Prox_Simple";
      goto LABEL_4;
    }

    if (((1 << size) & 0x6000000) != 0)
    {
      v3 = MEMORY[0x277D755B8];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = @"Prox_Ultra-514h";
      goto LABEL_4;
    }
  }

  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = @"Prox_Simple-Edition";
LABEL_4:
  v6 = [v3 imageNamed:v5 inBundle:v4];

  return v6;
}

- (void)layoutSubviews
{
  [(BPSRemoteWatchView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = *MEMORY[0x277CBF3A8];
  v32 = *(MEMORY[0x277CBF3A8] + 8);
  [(BPSWatchView *)self->_watch sizeThatFits:?];
  v12 = v11;
  v14 = v13;
  v15 = 0.79;
  if (self->_style != 2)
  {
    v15 = 1.0;
  }

  sx = v15;
  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  v16 = floor((CGRectGetWidth(v36) - v12) * 0.5);
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  [(BPSWatchView *)self->_watch setFrame:v16, floor((CGRectGetHeight(v37) - v14) * 0.5), v12, v14];
  layer = [(BPSWatchView *)self->_watch layer];
  layer2 = [(BPSWatchView *)self->_watch layer];
  v19 = layer2;
  if (layer2)
  {
    [layer2 transform];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  CATransform3DScale(&v35, &v34, sx, sx, sx);
  [layer setTransform:&v35];

  image = [(UIImageView *)self->_watchScreen image];
  [image scale];
  v22 = v21;

  size = self->_size;
  if (size <= 12)
  {
    if ((size - 1) < 2)
    {
      goto LABEL_21;
    }

    if (size == 7)
    {
      if (v22 <= 2.0)
      {
        v26 = 18.0;
        v24 = 76.0;
        v25 = 64.0;
        *&v27 = 48.0;
      }

      else
      {
        v24 = 90.0;
        v25 = 76.0;
        v26 = 21.5;
        *&v27 = 56.0;
      }

      goto LABEL_27;
    }

    if (size != 8)
    {
      goto LABEL_21;
    }

    if (v22 > 2.0)
    {
      v24 = 94.0;
      v25 = 76.0;
      v26 = 21.5;
      *&v27 = 54.0;
LABEL_27:
      v28 = *&v27;
      goto LABEL_35;
    }

    v26 = 16.0;
    v24 = 81.0;
    v25 = 68.0;
LABEL_34:
    v28 = 47.0;
    goto LABEL_35;
  }

  if (size > 0x1A)
  {
    goto LABEL_21;
  }

  if (((1 << size) & 0x7080000) != 0)
  {
    if (v22 > 2.0)
    {
      v26 = 19.0;
      v24 = 100.0;
      v25 = 81.0;
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (((1 << size) & 0x6000) != 0)
  {
    if (v22 > 2.0)
    {
      v24 = 100.0;
      v25 = 82.0;
      v26 = 18.5;
      v28 = 51.0;
      goto LABEL_35;
    }

    v26 = 16.0;
    v24 = 82.0;
    v25 = 69.0;
    goto LABEL_34;
  }

  if (((1 << size) & 0x300000) != 0)
  {
    if (v22 > 2.0)
    {
      v24 = 100.0;
      v25 = 81.0;
      v26 = 17.5;
LABEL_20:
      v28 = 50.5;
      goto LABEL_35;
    }

LABEL_26:
    v26 = 14.0;
    v24 = 88.0;
    v25 = 70.5;
    *&v27 = 44.0;
    goto LABEL_27;
  }

LABEL_21:
  [(UIImageView *)self->_watchScreen sizeThatFits:v31, v32];
  v25 = v29;
  v24 = v30;
  v26 = 24.5;
  if (v22 <= 2.0)
  {
    v26 = 21.0;
  }

  v28 = 50.0;
  if (v22 > 2.0)
  {
    v28 = 59.0;
  }

LABEL_35:
  [(UIImageView *)self->_watchScreen setFrame:v26, v28, v25, v24];
}

@end