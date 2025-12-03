@interface PBUIPortalReplicaEffectView
- (PBUIFakeBlurObserver)observer;
- (PBUIPortalReplicaEffectView)initWithFrame:(CGRect)frame;
- (double)effectWeight;
- (void)requestStyle:(int64_t)style;
- (void)setNeedsSourceUpdate;
@end

@implementation PBUIPortalReplicaEffectView

- (PBUIPortalReplicaEffectView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PBUIPortalReplicaEffectView;
  v3 = [(PBUIPortalReplicaView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    debugView = [(PBUIPortalReplicaView *)v3 debugView];

    if (debugView)
    {
      debugView2 = [(PBUIPortalReplicaView *)v3 debugView];
      greenColor = [MEMORY[0x277D75348] greenColor];
      v10 = [greenColor colorWithAlphaComponent:0.4];
      [debugView2 setColor:v10];

      debugView3 = [(PBUIPortalReplicaView *)v3 debugView];
      [(PBUIPortalReplicaEffectView *)v3 bringSubviewToFront:debugView3];
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
    shouldMatchWallpaperPosition = [(PBUIPortalReplicaView *)self shouldMatchWallpaperPosition];
  }

  else
  {
    shouldMatchWallpaperPosition = 0;
  }

  [(PBUIPortalReplicaView *)self setShouldMatchWallpaperPosition:shouldMatchWallpaperPosition];
  source = [(PBUIPortalReplicaView *)self source];
  legibilitySettings = [source legibilitySettings];
  contentColor = [legibilitySettings contentColor];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _WallpaperBackdropParametersForStyleAndAverageColor(self->_style, contentColor, &v16);
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
      debugView = [(PBUIPortalReplicaView *)self debugView];

      if (debugView)
      {
        debugView2 = [(PBUIPortalReplicaView *)self debugView];
        [(PBUIPortalReplicaEffectView *)self bringSubviewToFront:debugView2];
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

- (void)requestStyle:(int64_t)style
{
  if (style == -1)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  if (self->_style != styleCopy)
  {
    self->_style = styleCopy;
    [(PBUIPortalReplicaEffectView *)self setNeedsSourceUpdate];
  }
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end