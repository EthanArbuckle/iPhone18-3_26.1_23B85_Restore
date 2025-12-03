@interface BPSRemoveMigrationWatchView
- (BPSRemoveMigrationWatchView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setAdvertisingName:(id)name;
@end

@implementation BPSRemoveMigrationWatchView

- (BPSRemoveMigrationWatchView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BPSRemoveMigrationWatchView;
  v3 = [(BPSRemoveMigrationWatchView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D37A68]);
    assetManager = v3->_assetManager;
    v3->_assetManager = v4;
  }

  return v3;
}

- (void)setAdvertisingName:(id)name
{
  v4 = [name copy];
  advertisingName = self->_advertisingName;
  self->_advertisingName = v4;

  watch = self->_watch;
  if (watch)
  {
    [(BPSWatchView *)watch removeFromSuperview];
  }

  v7 = PBAdvertisingInfoFromPayload();
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D37A90]];
  integerValue = [v8 integerValue];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D37AA0]];
  integerValue2 = [v10 integerValue];

  mEMORY[0x277D37A78] = [MEMORY[0x277D37A78] sharedDeviceController];
  [mEMORY[0x277D37A78] setMaterial:integerValue];

  mEMORY[0x277D37A78]2 = [MEMORY[0x277D37A78] sharedDeviceController];
  [mEMORY[0x277D37A78]2 setInternalSize:integerValue2];

  v14 = [[BPSWatchView alloc] initWithStyle:6];
  v15 = self->_watch;
  self->_watch = v14;

  [(BPSRemoveMigrationWatchView *)self addSubview:self->_watch];
  assetManager = self->_assetManager;
  v17 = self->_advertisingName;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__BPSRemoveMigrationWatchView_setAdvertisingName___block_invoke;
  v18[3] = &unk_278D23488;
  v18[4] = self;
  [(PBBridgeAssetsManager *)assetManager beginPullingAssetsForAdvertisingName:v17 completion:v18];
}

void __50__BPSRemoveMigrationWatchView_setAdvertisingName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 408);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  NSLog(&cfstr_PulledAssetsFo.isa, v2, v3);
}

- (void)layoutSubviews
{
  [(BPSRemoveMigrationWatchView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BPSWatchView *)self->_watch sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v12 = v11;
  v14 = v13;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v15 = (CGRectGetWidth(v21) - v12) * 0.5;
  v16 = floorf(v15);
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  v17 = (CGRectGetHeight(v22) - v14) * 0.5;
  watch = self->_watch;
  v19 = floorf(v17);

  [(BPSWatchView *)watch setFrame:v16, v19, v12, v14];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(BPSWatchView *)self->_watch sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end