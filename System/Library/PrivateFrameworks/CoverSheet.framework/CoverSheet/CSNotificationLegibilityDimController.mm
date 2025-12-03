@interface CSNotificationLegibilityDimController
- (CSNotificationLegibilityDimController)init;
- (void)_updateDimViewsForced:(BOOL)forced;
- (void)_updateDimViewsWithDimLevel:(int64_t)level;
- (void)addDimView:(id)view;
@end

@implementation CSNotificationLegibilityDimController

- (CSNotificationLegibilityDimController)init
{
  v9.receiver = self;
  v9.super_class = CSNotificationLegibilityDimController;
  v2 = [(CSNotificationLegibilityDimController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_dimVisible = 256;
    *&v2->_fadeAnchorY = 0u;
    *&v2->_fadeWidth = 0u;
    v2->_localizedDimMode = 0;
    v4 = objc_alloc_init(MEMORY[0x277D75C80]);
    traitCollection = v3->_traitCollection;
    v3->_traitCollection = v4;

    v3->_currentDimLevel = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableDimViews = v3->_mutableDimViews;
    v3->_mutableDimViews = v6;
  }

  return v3;
}

- (void)addDimView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    mutableDimViews = [(CSNotificationLegibilityDimController *)self mutableDimViews];
    [mutableDimViews addObject:viewCopy];

    [(CSNotificationLegibilityDimController *)self _updateDimViewsForced:1];
  }

  else
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [CSNotificationLegibilityDimController addDimView:v6];
    }
  }
}

- (void)_updateDimViewsForced:(BOOL)forced
{
  forcedCopy = forced;
  v37 = *MEMORY[0x277D85DE8];
  mutableDimViews = [(CSNotificationLegibilityDimController *)self mutableDimViews];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__CSNotificationLegibilityDimController__updateDimViewsForced___block_invoke;
  v26[3] = &unk_27838CBC0;
  v26[4] = self;
  [mutableDimViews enumerateObjectsUsingBlock:v26];

  traitCollection = [(CSNotificationLegibilityDimController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v7 = 0.45;
  }

  else
  {
    v7 = 0.5;
  }

  if (![(CSNotificationLegibilityDimController *)self isDimVisible])
  {
    goto LABEL_10;
  }

  [(CSNotificationLegibilityDimController *)self fadeAnchorY];
  v9 = v8;
  [(CSNotificationLegibilityDimController *)self effectiveFadeInThreshold];
  if (v9 <= v10)
  {
    goto LABEL_10;
  }

  [(CSNotificationLegibilityDimController *)self fadeAnchorY];
  v12 = v11;
  [(CSNotificationLegibilityDimController *)self fullDimHeight];
  if (v12 <= v7 * v13)
  {
    localizedDimMode = [(CSNotificationLegibilityDimController *)self localizedDimMode];
    if (localizedDimMode <= 2)
    {
      v14 = qword_21EC95EC0[localizedDimMode];
      goto LABEL_11;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = 3;
LABEL_11:
  if ([(CSNotificationLegibilityDimController *)self currentDimLevel]!= v14 || forcedCopy)
  {
    self->_currentDimLevel = v14;
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      [(CSNotificationLegibilityDimController *)self fadeAnchorY];
      v19 = v18;
      [(CSNotificationLegibilityDimController *)self effectiveFadeInThreshold];
      v21 = v20;
      isDimVisible = [(CSNotificationLegibilityDimController *)self isDimVisible];
      [(CSNotificationLegibilityDimController *)self fullDimHeight];
      *buf = 134219008;
      v28 = v14;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = v21;
      v33 = 1024;
      v34 = isDimVisible;
      v35 = 2048;
      v36 = v23;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "CSNotificationLegibilityDimController set dimLevel to %ld; fadeAnchorY: %.2f; effectiveFadeInThreshold: %.2f; isDimVisible: %d; fullDimHeight: %.2f", buf, 0x30u);
    }

    if ([(CSNotificationLegibilityDimController *)self shouldAnimate])
    {
      areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
      [MEMORY[0x277D75D18] setAnimationsEnabled:1];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__CSNotificationLegibilityDimController__updateDimViewsForced___block_invoke_3;
      v25[3] = &unk_27838C888;
      v25[4] = self;
      v25[5] = v14;
      [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v25 tracking:&__block_literal_global_11 dampingRatioSmoothing:1.0 responseSmoothing:1.4096 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.998 completion:0.0];
      [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
    }

    else
    {
      [(CSNotificationLegibilityDimController *)self _updateDimViewsWithDimLevel:v14];
    }
  }
}

void __63__CSNotificationLegibilityDimController__updateDimViewsForced___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 fadeWidth];
  [v4 setFadeWidth:?];
  [*(a1 + 32) fadeRadiusY];
  [v4 setFadeRadiusY:?];
  v6 = [v4 traitOverrides];

  v5 = [*(a1 + 32) traitCollection];
  [v6 setUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
}

- (void)_updateDimViewsWithDimLevel:(int64_t)level
{
  if (level <= 3)
  {
    v4 = *(&off_27838CC00 + level);
    mutableDimViews = [(CSNotificationLegibilityDimController *)self mutableDimViews];
    [mutableDimViews enumerateObjectsUsingBlock:v4];
  }
}

void __69__CSNotificationLegibilityDimController__updateDimViewsWithDimLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setVisible:{objc_msgSend(v2, "dimType") == 0}];
}

void __69__CSNotificationLegibilityDimController__updateDimViewsWithDimLevel___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setVisible:{objc_msgSend(v2, "dimType") == 1}];
}

void __69__CSNotificationLegibilityDimController__updateDimViewsWithDimLevel___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 dimType] == 2 || objc_msgSend(v3, "dimType") == 3;
  [v3 setVisible:v2];
}

@end