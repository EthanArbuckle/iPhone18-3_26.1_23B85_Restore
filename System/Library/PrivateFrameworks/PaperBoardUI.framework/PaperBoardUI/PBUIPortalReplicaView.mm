@interface PBUIPortalReplicaView
- (BOOL)_traitsArbiterActive;
- (PBUIPortalReplicaView)initWithFrame:(CGRect)frame;
- (PBUIPosterReplicaPortalProviding)provider;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setHidesSourceView:(BOOL)view;
- (void)setNeedsProviderUpdate;
- (void)setNeedsSourceUpdate;
- (void)setProvider:(id)provider;
- (void)setReason:(id)reason;
- (void)setSubscribed:(BOOL)subscribed;
- (void)willMoveToWindow:(id)window;
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
  window = [(PBUIPortalReplicaView *)self window];
  [(PBUIPortalReplicaView *)self setSubscribed:window != 0];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_providerToken invalidate];
  [(BSInvalidatable *)self->_sourceToken invalidate];
  v3.receiver = self;
  v3.super_class = PBUIPortalReplicaView;
  [(PBUIPortalReplicaView *)&v3 dealloc];
}

- (PBUIPortalReplicaView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
      height = [[PBUIReplicaDebugView alloc] initWithFrame:x, y, width, height];
      debugView = v8->_debugView;
      v8->_debugView = height;

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
      blueColor = [MEMORY[0x277D75348] blueColor];
      v20 = [blueColor colorWithAlphaComponent:0.4];
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

- (void)setHidesSourceView:(BOOL)view
{
  viewCopy = view;
  if ([(_UIPortalView *)self->_portalView hidesSourceView]!= view)
  {
    portalView = self->_portalView;

    [(_UIPortalView *)portalView setHidesSourceView:viewCopy];
  }
}

- (void)setReason:(id)reason
{
  v4 = [reason copy];
  reason = self->_reason;
  self->_reason = v4;

  debugView = self->_debugView;
  v7 = self->_reason;

  [(PBUIReplicaDebugView *)debugView setTitle:v7];
}

- (void)setProvider:(id)provider
{
  obj = provider;
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

  legibilitySettings = [obj legibilitySettings];
  legibilitySettings = self->_legibilitySettings;
  self->_legibilitySettings = legibilitySettings;

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
  targetView = [obj targetView];
  sourceView = [(_UIPortalView *)self->_portalView sourceView];
  v14 = BSEqualObjects();

  if ((v14 & 1) == 0)
  {
    [(_UIPortalView *)self->_portalView setSourceView:0];
    [(_UIPortalView *)self->_portalView setSourceView:targetView];
    [(_UIPortalView *)self->_portalView setMatchesPosition:self->_shouldMatchWallpaperPosition];
  }

  _isInAnimationBlockWithAnimationsEnabled = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
  [(PBUIPortalReplicaView *)self setNeedsLayout];
  if (_isInAnimationBlockWithAnimationsEnabled)
  {
    [(PBUIPortalReplicaView *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  if (![(PBUIPortalReplicaView *)self _traitsArbiterActive])
  {
    sourceView = [(_UIPortalView *)self->_portalView sourceView];
    if (sourceView)
    {
      superview = [(PBUIPortalReplicaView *)self superview];

      if (superview)
      {
        window = [sourceView window];
        window2 = [(PBUIPortalReplicaView *)self window];

        if (window == window2)
        {
          [sourceView bounds];
          [(PBUIPortalReplicaView *)self setBounds:?];
          [sourceView center];
          [(PBUIPortalReplicaView *)self setCenter:?];
        }
      }

      if (self->_debugView)
      {
        [sourceView bounds];
        [sourceView convertRect:self toView:?];
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

- (void)setSubscribed:(BOOL)subscribed
{
  if (!self->_invalidated && self->_subscribed != subscribed)
  {
    self->_subscribed = subscribed;
    if (subscribed)
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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy || (-[PBUIPortalReplicaView setSubscribed:](self, "setSubscribed:", 1), [windowCopy screen], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    portalLayer = [(_UIPortalView *)self->_portalView portalLayer];
    v9 = portalLayer;
    v10 = 0;
  }

  else
  {
    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PBUIPortalReplicaView *)self willMoveToWindow:v7];
    }

    portalLayer = [(_UIPortalView *)self->_portalView portalLayer];
    v9 = portalLayer;
    v10 = 1;
  }

  [portalLayer setCrossDisplay:v10];
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