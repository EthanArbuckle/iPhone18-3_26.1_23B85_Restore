@interface PBUIPortalReplicaView
- (BOOL)_traitsArbiterActive;
- (PBUIPortalReplicaView)initWithFrame:(CGRect)a3;
- (PBUIPosterReplicaPortalProviding)provider;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setHidesSourceView:(BOOL)a3;
- (void)setNeedsProviderUpdate;
- (void)setNeedsSourceUpdate;
- (void)setProvider:(id)a3;
- (void)setReason:(id)a3;
- (void)setSubscribed:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PBUIPortalReplicaView

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    [(PBUIPortalReplicaView *)self removeFromSuperview];
    [(PBUIPortalReplicaView *)self setSubscribed:0];
    self->_invalidated = 1;
  }
}

- (void)didMoveToWindow
{
  v3 = [(PBUIPortalReplicaView *)self window];
  [(PBUIPortalReplicaView *)self setSubscribed:v3 != 0];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_providerToken invalidate];
  [(BSInvalidatable *)self->_sourceToken invalidate];
  v3.receiver = self;
  v3.super_class = PBUIPortalReplicaView;
  [(PBUIPortalReplicaView *)&v3 dealloc];
}

- (PBUIPortalReplicaView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = PBUIPortalReplicaView;
  v7 = [(PBUIPortalReplicaView *)&v22 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_subscribed = 0;
    v9 = objc_alloc(MEMORY[0x277D76180]);
    [(PBUIPortalReplicaView *)v8 bounds];
    v10 = [v9 initWithFrame:?];
    portalView = v8->_portalView;
    v8->_portalView = v10;

    [(_UIPortalView *)v8->_portalView setAutoresizingMask:18];
    [(_UIPortalView *)v8->_portalView setHidesSourceView:0];
    [(_UIPortalView *)v8->_portalView setMatchesPosition:0];
    [(_UIPortalView *)v8->_portalView setMatchesTransform:0];
    [(_UIPortalView *)v8->_portalView setAllowsBackdropGroups:1];
    [(PBUIPortalReplicaView *)v8 addSubview:v8->_portalView];
    [(PBUIPortalReplicaView *)v8 setAutoresizingMask:18];
    [(PBUIPortalReplicaView *)v8 setClipsToBounds:1];
    [(PBUIPortalReplicaView *)v8 setShouldMatchWallpaperPosition:1];
    if (PBUIReplicaDebugModeIsEnabled())
    {
      v12 = [[PBUIReplicaDebugView alloc] initWithFrame:x, y, width, height];
      debugView = v8->_debugView;
      v8->_debugView = v12;

      if ([(PBUIPortalReplicaView *)v8 _traitsArbiterActive])
      {
        [(PBUIReplicaDebugView *)v8->_debugView setAutoresizingMask:18];
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v14 stringWithFormat:@"%@ (%p)", v16, v8];

      [(PBUIReplicaDebugView *)v8->_debugView setTitle:v17];
      v18 = v8->_debugView;
      v19 = [MEMORY[0x277D75348] blueColor];
      v20 = [v19 colorWithAlphaComponent:0.4];
      [(PBUIReplicaDebugView *)v18 setColor:v20];

      [(PBUIPortalReplicaView *)v8 addSubview:v8->_debugView];
    }

    else
    {
      v17 = v8->_debugView;
      v8->_debugView = 0;
    }
  }

  return v8;
}

- (void)setHidesSourceView:(BOOL)a3
{
  v3 = a3;
  if ([(_UIPortalView *)self->_portalView hidesSourceView]!= a3)
  {
    portalView = self->_portalView;

    [(_UIPortalView *)portalView setHidesSourceView:v3];
  }
}

- (void)setReason:(id)a3
{
  v4 = [a3 copy];
  reason = self->_reason;
  self->_reason = v4;

  debugView = self->_debugView;
  v7 = self->_reason;

  [(PBUIReplicaDebugView *)debugView setTitle:v7];
}

- (void)setProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_provider, obj);
    [(PBUIPortalReplicaView *)self setNeedsProviderUpdate];
  }
}

- (void)setNeedsSourceUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  obj = [WeakRetained portalSourceForReplicaView:self];

  v4 = [obj legibilitySettings];
  legibilitySettings = self->_legibilitySettings;
  self->_legibilitySettings = v4;

  if ((BSEqualObjects() & 1) == 0)
  {
    sourceToken = self->_sourceToken;
    if (sourceToken)
    {
      [(BSInvalidatable *)sourceToken invalidate];
      v7 = self->_sourceToken;
      self->_sourceToken = 0;
    }

    objc_storeStrong(&self->_source, obj);
    source = self->_source;
    if (source)
    {
      v9 = objc_loadWeakRetained(&self->_provider);
      if (source != v9)
      {
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_9;
        }

        v11 = [(PBUIReplicaPortalSource *)self->_source acquireSourceUsageAssertionForView:self];
        v9 = self->_sourceToken;
        self->_sourceToken = v11;
      }
    }
  }

LABEL_9:
  v12 = [obj targetView];
  v13 = [(_UIPortalView *)self->_portalView sourceView];
  v14 = BSEqualObjects();

  if ((v14 & 1) == 0)
  {
    [(_UIPortalView *)self->_portalView setSourceView:0];
    [(_UIPortalView *)self->_portalView setSourceView:v12];
    [(_UIPortalView *)self->_portalView setMatchesPosition:self->_shouldMatchWallpaperPosition];
  }

  v15 = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
  [(PBUIPortalReplicaView *)self setNeedsLayout];
  if (v15)
  {
    [(PBUIPortalReplicaView *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  if (![(PBUIPortalReplicaView *)self _traitsArbiterActive])
  {
    v15 = [(_UIPortalView *)self->_portalView sourceView];
    if (v15)
    {
      v3 = [(PBUIPortalReplicaView *)self superview];

      if (v3)
      {
        v4 = [v15 window];
        v5 = [(PBUIPortalReplicaView *)self window];

        if (v4 == v5)
        {
          [v15 bounds];
          [(PBUIPortalReplicaView *)self setBounds:?];
          [v15 center];
          [(PBUIPortalReplicaView *)self setCenter:?];
        }
      }

      if (self->_debugView)
      {
        [v15 bounds];
        [v15 convertRect:self toView:?];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [(PBUIReplicaDebugView *)self->_debugView setHidden:0];
        [(PBUIReplicaDebugView *)self->_debugView setFrame:v7, v9, v11, v13];
        [(PBUIReplicaDebugView *)self->_debugView setNeedsLayout];
        [(PBUIReplicaDebugView *)self->_debugView layoutIfNeeded];
      }
    }

    else
    {
      debugView = self->_debugView;
      if (debugView)
      {
        [(PBUIReplicaDebugView *)debugView setHidden:1];
      }
    }
  }
}

- (BOOL)_traitsArbiterActive
{
  if (soft_PUIFeatureEnabled(0))
  {
    return 0;
  }

  return soft_PUIFeatureEnabled(1);
}

- (void)setNeedsProviderUpdate
{
  providerToken = self->_providerToken;
  if (providerToken)
  {
    [(BSInvalidatable *)providerToken invalidate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);

  if (WeakRetained)
  {
    self->_subscribed = 1;
    v5 = objc_loadWeakRetained(&self->_provider);
    v6 = [v5 registerPortalSourceObserver:self];
    v7 = self->_providerToken;
    self->_providerToken = v6;

    [(PBUIPortalReplicaView *)self setNeedsSourceUpdate];
  }
}

- (void)setSubscribed:(BOOL)a3
{
  if (!self->_invalidated && self->_subscribed != a3)
  {
    self->_subscribed = a3;
    if (a3)
    {

      [(PBUIPortalReplicaView *)self setNeedsProviderUpdate];
    }

    else
    {
      providerToken = self->_providerToken;
      if (providerToken)
      {
        [(BSInvalidatable *)providerToken invalidate];
        v5 = self->_providerToken;
        self->_providerToken = 0;
      }

      sourceToken = self->_sourceToken;
      if (sourceToken)
      {
        [(BSInvalidatable *)sourceToken invalidate];
        v7 = self->_sourceToken;
        self->_sourceToken = 0;
      }

      source = self->_source;
      self->_source = 0;
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4 || (-[PBUIPortalReplicaView setSubscribed:](self, "setSubscribed:", 1), [v4 screen], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    v8 = [(_UIPortalView *)self->_portalView portalLayer];
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PBUIPortalReplicaView *)self willMoveToWindow:v7];
    }

    v8 = [(_UIPortalView *)self->_portalView portalLayer];
    v9 = v8;
    v10 = 1;
  }

  [v8 setCrossDisplay:v10];
}

- (PBUIPosterReplicaPortalProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)willMoveToWindow:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Enabling %@ as a cross-display portal. I'm told this may have a significant perf impact.", &v2, 0xCu);
}

@end