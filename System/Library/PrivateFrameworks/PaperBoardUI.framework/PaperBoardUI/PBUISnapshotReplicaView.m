@interface PBUISnapshotReplicaView
- (BOOL)isValid;
- (PBUIFakeBlurObserver)observer;
- (PBUIPosterReplicaSnapshotProviding)provider;
- (PBUISnapshotReplicaView)initWithFrame:(CGRect)a3;
- (void)_updateImageViewRotation;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setEffectiveStyle:(int64_t)a3;
- (void)setNeedsProviderUpdate;
- (void)setNeedsSourceUpdate;
- (void)setProvider:(id)a3;
- (void)setReason:(id)a3;
- (void)setSubscribed:(BOOL)a3;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PBUISnapshotReplicaView

- (void)layoutSubviews
{
  debugView = self->_debugView;
  if (debugView)
  {
    [(PBUISnapshotReplicaView *)self bounds];
    [(PBUIReplicaDebugView *)debugView setFrame:?];
  }

  [(PBUISnapshotReplicaView *)self _updateImageViewRotation];
  [(PBUISnapshotReplicaView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView transform];
    v13 = self->_imageView;
  }

  else
  {
    v13 = 0;
    memset(&v15, 0, sizeof(v15));
  }

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  [(UIImageView *)v13 setBounds:0.0, 0.0, v17.size.width, v17.size.height];
  v14 = self->_imageView;
  [(PBUISnapshotReplicaView *)self center];
  [(UIImageView *)v14 setCenter:?];
}

- (void)_updateImageViewRotation
{
  v3 = [(PBUISnapshotReplicaView *)self window];
  if (!v3 || (v4 = v3, -[PBUISnapshotReplicaView window](self, "window"), v5 = objc_claimAutoreleasedReturnValue(), [v5 screen], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isEmbeddedScreen"), v6, v5, v4, v8 = 0.0, v7))
  {
    v8 = 0.0;
    if (soft_PF_IS_PAD_DEVICE())
    {
      if (soft_PUIDynamicRotationIsActive())
      {
        v9 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
        if ((v9 - 2) <= 2)
        {
          v8 = dbl_21E70D7F0[v9 - 2];
        }
      }
    }
  }

  imageView = self->_imageView;
  CGAffineTransformMakeRotation(&v11, v8);
  UIIntegralTransform();
  [(UIImageView *)imageView setTransform:v12];
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
    v6 = [v5 registerSnapshotSourceObserver:self];
    v7 = self->_providerToken;
    self->_providerToken = v6;

    [(PBUISnapshotReplicaView *)self setNeedsSourceUpdate];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(PBUISnapshotReplicaView *)self superview];
  [(PBUISnapshotReplicaView *)self setSubscribed:v3 != 0];
}

- (void)setNeedsSourceUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  obj = [WeakRetained snapshotSourceForObserver:self];

  v4 = [obj legibilitySettings];
  legibilitySettings = self->_legibilitySettings;
  self->_legibilitySettings = v4;

  if (BSEqualObjects())
  {
    goto LABEL_7;
  }

  [(BSInvalidatable *)self->_sourceToken invalidate];
  sourceToken = self->_sourceToken;
  self->_sourceToken = 0;

  objc_storeStrong(&self->_source, obj);
  source = self->_source;
  if (!source)
  {
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&self->_provider);
  if (source == v8)
  {
    goto LABEL_6;
  }

  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PBUIReplicaSnapshotSource *)self->_source acquireSourceUsageAssertionForView:self];
    v8 = self->_sourceToken;
    self->_sourceToken = v10;
LABEL_6:
  }

LABEL_7:
  [(PBUISnapshotReplicaView *)self willChangeValueForKey:@"valid"];
  v11 = [obj snapshot];
  v12 = v11;
  if (!v11 || (([v11 size], v14 == *MEMORY[0x277CBF3A8]) ? (v15 = v13 == *(MEMORY[0x277CBF3A8] + 8)) : (v15 = 0), v15))
  {
    imageView = self->_imageView;
    v17 = 0;
  }

  else
  {
    imageView = self->_imageView;
    v17 = v12;
  }

  [(UIImageView *)imageView setImage:v17];
  [(PBUISnapshotReplicaView *)self _updateImageViewRotation];
  [(PBUISnapshotReplicaView *)self didChangeValueForKey:@"valid"];
  v18 = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
  [(PBUISnapshotReplicaView *)self setNeedsLayout];
  if (v18)
  {
    [(PBUISnapshotReplicaView *)self layoutIfNeeded];
  }
}

- (void)didMoveToWindow
{
  v3 = [(PBUISnapshotReplicaView *)self window];
  [(PBUISnapshotReplicaView *)self setSubscribed:v3 != 0];
}

- (PBUISnapshotReplicaView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = PBUISnapshotReplicaView;
  v7 = [(PBUISnapshotReplicaView *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_subscribed = 0;
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    [(PBUISnapshotReplicaView *)v8 bounds];
    v10 = [v9 initWithFrame:?];
    imageView = v8->_imageView;
    v8->_imageView = v10;

    [(UIImageView *)v8->_imageView setContentMode:2];
    [(UIImageView *)v8->_imageView setOpaque:1];
    v12 = [(UIImageView *)v8->_imageView layer];
    [v12 setContentsOpaque:1];

    [(UIImageView *)v8->_imageView setAutoresizingMask:18];
    [(PBUISnapshotReplicaView *)v8 addSubview:v8->_imageView];
    [(PBUISnapshotReplicaView *)v8 setAutoresizingMask:18];
    [(PBUISnapshotReplicaView *)v8 setShouldMatchWallpaperPosition:1];
    if (PBUIReplicaDebugModeIsEnabled())
    {
      v13 = [[PBUIReplicaDebugView alloc] initWithFrame:x, y, width, height];
      debugView = v8->_debugView;
      v8->_debugView = v13;

      v15 = v8->_debugView;
      v16 = [MEMORY[0x277D75348] blueColor];
      v17 = [v16 colorWithAlphaComponent:0.4];
      [(PBUIReplicaDebugView *)v15 setColor:v17];

      [(PBUISnapshotReplicaView *)v8 addSubview:v8->_debugView];
    }

    else
    {
      v18 = v8->_debugView;
      v8->_debugView = 0;
    }
  }

  return v8;
}

- (void)setEffectiveStyle:(int64_t)a3
{
  if (self->_effectiveStyle != a3)
  {
    self->_effectiveStyle = a3;
    [(PBUISnapshotReplicaView *)self setNeedsSourceUpdate];
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_providerToken invalidate];
  [(BSInvalidatable *)self->_sourceToken invalidate];
  v3.receiver = self;
  v3.super_class = PBUISnapshotReplicaView;
  [(PBUISnapshotReplicaView *)&v3 dealloc];
}

- (void)setProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_provider, obj);
    [(PBUISnapshotReplicaView *)self setNeedsProviderUpdate];
  }
}

- (BOOL)isValid
{
  if (!self->_source)
  {
    return 0;
  }

  v2 = [(UIImageView *)self->_imageView image];
  v3 = v2 != 0;

  return v3;
}

- (void)setReason:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  reason = self->_reason;
  self->_reason = v4;

  debugView = self->_debugView;
  if (debugView)
  {
    [(PBUIReplicaDebugView *)debugView setTitle:v7];
  }
}

- (void)setSubscribed:(BOOL)a3
{
  if (!self->_invalidated && self->_subscribed != a3)
  {
    self->_subscribed = a3;
    if (a3)
    {

      [(PBUISnapshotReplicaView *)self setNeedsProviderUpdate];
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

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    [(PBUISnapshotReplicaView *)self removeFromSuperview];
    [(PBUISnapshotReplicaView *)self setSubscribed:0];
    self->_invalidated = 1;
  }
}

- (void)willMoveToSuperview:(id)a3
{
  if (a3)
  {
    [(PBUISnapshotReplicaView *)self setSubscribed:1];
  }
}

- (void)willMoveToWindow:(id)a3
{
  if (a3)
  {
    [(PBUISnapshotReplicaView *)self setSubscribed:1];
  }
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (PBUIPosterReplicaSnapshotProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end