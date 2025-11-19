@interface BTShareAudioBringCloseViewController
- (void)_cycleProductImage;
- (void)eventCancel:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation BTShareAudioBringCloseViewController

- (void)viewDidLayoutSubviews
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = BTShareAudioBringCloseViewController;
  [(BTShareAudioBringCloseViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(UIView *)self->_productImageContainerView layer];
  v4 = [v3 mask];

  if (!v4)
  {
    v5 = [MEMORY[0x277CD9EB0] layer];
    [(UIView *)self->_productImageContainerView bounds];
    [v5 setFrame:?];
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v12[0] = [v6 CGColor];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v12[1] = [v7 CGColor];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v5 setColors:v8];

    [v5 setLocations:&unk_2853D5898];
    [v5 setStartPoint:{0.0, 0.5}];
    [v5 setEndPoint:{1.0, 0.5}];
    v9 = [(UIView *)self->_productImageContainerView layer];
    [v9 setMask:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioBringCloseViewController eventCancel:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_cycleProductImage
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->_cycleImageArray)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cycleImageArray = self->_cycleImageArray;
    self->_cycleImageArray = v3;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [&unk_2853D58B0 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        v8 = 0;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(&unk_2853D58B0);
          }

          v9 = [MEMORY[0x277D755B8] systemImageNamed:*(*(&v26 + 1) + 8 * v8)];
          [(NSMutableArray *)self->_cycleImageArray addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_2853D58B0 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
    }

    v10 = MEMORY[0x277D755D0];
    v11 = [MEMORY[0x277D75348] whiteColor];
    v12 = [v10 configurationWithHierarchicalColor:v11];

    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:2 scale:160.0];
    v14 = [v12 configurationByApplyingConfiguration:v13];
    [(UIImageView *)self->_shareImageView setPreferredSymbolConfiguration:v14];
    v15 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)self->_shareImageView setTintColor:v15];
  }

  [(UIImageView *)self->_shareImageView setContentMode:4];
  if (self->_cycleImageTimer)
  {
    v16 = [MEMORY[0x277CDA000] animation];
    [v16 setDuration:0.5];
    [v16 setType:*MEMORY[0x277CDA958]];
    [v16 setSubtype:*MEMORY[0x277CDA940]];
    v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v16 setTimingFunction:v17];

    v18 = [(UIImageView *)self->_shareImageView layer];
    [v18 addAnimation:v16 forKey:0];
  }

  else
  {
    v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    cycleImageTimer = self->_cycleImageTimer;
    self->_cycleImageTimer = v19;
    v16 = v19;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__BTShareAudioBringCloseViewController__cycleProductImage__block_invoke;
    handler[3] = &unk_278D12C48;
    handler[4] = self;
    dispatch_source_set_event_handler(v16, handler);
    CUDispatchTimerSet();
    dispatch_activate(v16);
  }

  cycleNextIndex = self->_cycleNextIndex;
  if ([(NSMutableArray *)self->_cycleImageArray count]> cycleNextIndex)
  {
    v22 = self->_cycleImageArray;
    ++self->_cycleNextIndex;
    v23 = [(NSMutableArray *)v22 objectAtIndexedSubscript:?];
    [(UIImageView *)self->_shareImageView setImage:v23];

    self->_cycleNextIndex %= [(NSMutableArray *)self->_cycleImageArray count];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end