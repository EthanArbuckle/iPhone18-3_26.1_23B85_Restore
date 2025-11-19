@interface PBUIPortalReplicaEffectView
- (PBUIFakeBlurObserver)observer;
- (PBUIPortalReplicaEffectView)initWithFrame:(CGRect)a3;
- (double)effectWeight;
- (void)requestStyle:(int64_t)a3;
- (void)setNeedsSourceUpdate;
@end

@implementation PBUIPortalReplicaEffectView

- (PBUIPortalReplicaEffectView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PBUIPortalReplicaEffectView;
  v3 = [(PBUIPortalReplicaView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
    effectView = v3->_effectView;
    v3->_effectView = v4;

    v6 = v3->_effectView;
    [(PBUIPortalReplicaEffectView *)v3 bounds];
    [(_UIBackdropView *)v6 setFrame:?];
    [(_UIBackdropView *)v3->_effectView setAutoresizingMask:18];
    [(_UIBackdropView *)v3->_effectView setHidden:1];
    [(PBUIPortalReplicaEffectView *)v3 addSubview:v3->_effectView];
    [(PBUIPortalReplicaEffectView *)v3 setAutoresizingMask:18];
    [(PBUIPortalReplicaEffectView *)v3 setClipsToBounds:1];
    v7 = [(PBUIPortalReplicaView *)v3 debugView];

    if (v7)
    {
      v8 = [(PBUIPortalReplicaView *)v3 debugView];
      v9 = [MEMORY[0x277D75348] greenColor];
      v10 = [v9 colorWithAlphaComponent:0.4];
      [v8 setColor:v10];

      v11 = [(PBUIPortalReplicaView *)v3 debugView];
      [(PBUIPortalReplicaEffectView *)v3 bringSubviewToFront:v11];
    }
  }

  return v3;
}

- (void)setNeedsSourceUpdate
{
  v20.receiver = self;
  v20.super_class = PBUIPortalReplicaEffectView;
  [(PBUIPortalReplicaView *)&v20 setNeedsSourceUpdate];
  if (self->_style)
  {
    v3 = [(PBUIPortalReplicaView *)self shouldMatchWallpaperPosition];
  }

  else
  {
    v3 = 0;
  }

  [(PBUIPortalReplicaView *)self setShouldMatchWallpaperPosition:v3];
  v4 = [(PBUIPortalReplicaView *)self source];
  v5 = [v4 legibilitySettings];
  v6 = [v5 contentColor];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _WallpaperBackdropParametersForStyleAndAverageColor(self->_style, v6, &v16);
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v7 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(v15);
  if (v7)
  {
    [(MTMaterialView *)self->_materialView setHidden:1];
    [(_UIBackdropView *)self->_effectView setHidden:0];
    [(_UIBackdropView *)self->_effectView transitionToSettings:v7];
  }

  else
  {
    [(_UIBackdropView *)self->_effectView setHidden:1];
    [(MTMaterialView *)self->_materialView setHidden:0];
    if (!self->_materialView)
    {
      v8 = *(&v19 + 1);
      MTMaterialViewClass = getMTMaterialViewClass();
      if (v8 == 3)
      {
        [MTMaterialViewClass pui_homeScreenLegibilityMaterialView];
      }

      else
      {
        [MTMaterialViewClass materialViewWithRecipe:19];
      }
      v10 = ;
      materialView = self->_materialView;
      self->_materialView = v10;

      v12 = self->_materialView;
      [(PBUIPortalReplicaEffectView *)self bounds];
      [(MTMaterialView *)v12 setFrame:?];
      [(MTMaterialView *)self->_materialView setAutoresizingMask:18];
      [(PBUIPortalReplicaEffectView *)self addSubview:self->_materialView];
      v13 = [(PBUIPortalReplicaView *)self debugView];

      if (v13)
      {
        v14 = [(PBUIPortalReplicaView *)self debugView];
        [(PBUIPortalReplicaEffectView *)self bringSubviewToFront:v14];
      }
    }
  }
}

- (double)effectWeight
{
  materialView = self->_materialView;
  if (!materialView)
  {
    return 1.0;
  }

  [(MTMaterialView *)materialView weighting];
  return result;
}

- (void)requestStyle:(int64_t)a3
{
  if (a3 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (self->_style != v3)
  {
    self->_style = v3;
    [(PBUIPortalReplicaEffectView *)self setNeedsSourceUpdate];
  }
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end