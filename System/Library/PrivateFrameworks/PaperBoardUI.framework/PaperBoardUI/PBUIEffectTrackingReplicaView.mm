@interface PBUIEffectTrackingReplicaView
- (BOOL)hasPortalProvider;
- (BOOL)hasSnapshotProvider;
- (BOOL)shouldMatchWallpaperPosition;
- (PBUIEffectTrackingReplicaView)initWithFrame:(CGRect)frame;
- (PBUIEffectTrackingReplicaViewDelegate)delegate;
- (PBUIFakeBlurObserver)observer;
- (id)setNeedsReconfiguration;
- (uint64_t)observesSnapshotValidity;
- (uint64_t)portalView;
- (uint64_t)setObservesSnapshotValidity:(uint64_t)result;
- (uint64_t)snapshotViewStyle;
- (uint64_t)snapshotsView;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)offsetWallpaperBy:(CGPoint)by;
- (void)setPortalProvider:(id)provider;
- (void)setPortalView:(uint64_t)view;
- (void)setReason:(id)reason;
- (void)setShouldMatchWallpaperPosition:(BOOL)position;
- (void)setShowsSnapshot:(BOOL)snapshot;
- (void)setSnapshotProvider:(id)provider;
- (void)setSnapshotsView:(uint64_t)view;
- (void)setStyle:(int64_t)style;
@end

@implementation PBUIEffectTrackingReplicaView

- (PBUIEffectTrackingReplicaView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = PBUIEffectTrackingReplicaView;
  v7 = [(PBUIEffectTrackingReplicaView *)&v13 initWithFrame:?];
  if (v7)
  {
    height = [[PBUISnapshotReplicaView alloc] initWithFrame:x, y, width, height];
    snapshotsView = v7->_snapshotsView;
    v7->_snapshotsView = height;

    height2 = [[PBUIPortalReplicaEffectView alloc] initWithFrame:x, y, width, height];
    portalView = v7->_portalView;
    v7->_portalView = height2;

    [(PBUIEffectTrackingReplicaView *)v7 setObservesSnapshotValidity:?];
    [(PBUIEffectTrackingReplicaView *)v7 addSubview:v7->_snapshotsView];
    [(PBUIEffectTrackingReplicaView *)v7 addSubview:v7->_portalView];
    [(PBUIPortalReplicaEffectView *)v7->_portalView setAutoresizingMask:18];
    [(PBUISnapshotReplicaView *)v7->_snapshotsView setAutoresizingMask:18];
    [(PBUIEffectTrackingReplicaView *)v7 setAutoresizingMask:18];
  }

  return v7;
}

- (void)setReason:(id)reason
{
  v4 = [reason copy];
  reason = self->_reason;
  self->_reason = v4;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"EffectTrackingView | %@", self->_reason];
  [(PBUIPortalReplicaView *)self->_portalView setReason:v6];
  [(PBUISnapshotReplicaView *)self->_snapshotsView setReason:v6];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(PBUIEffectTrackingReplicaView *)&self->super.super.super.isa setNeedsReconfiguration];
  }
}

- (void)setShowsSnapshot:(BOOL)snapshot
{
  if (self->_showsSnapshot != snapshot)
  {
    self->_showsSnapshot = snapshot;
    [(PBUIEffectTrackingReplicaView *)&self->super.super.super.isa setNeedsReconfiguration];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PrivateKVOContext)
  {
    if ([path isEqualToString:{@"valid", object, change}])
    {
      [PBUIEffectTrackingReplicaView observeValueForKeyPath:? ofObject:? change:? context:?];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PBUIEffectTrackingReplicaView;
    [(PBUIEffectTrackingReplicaView *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)offsetWallpaperBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  [(PBUISnapshotReplicaView *)self->_snapshotsView offsetWallpaperBy:?];
  portalView = self->_portalView;

  [(PBUIPortalReplicaEffectView *)portalView offsetWallpaperBy:x, y];
}

- (BOOL)shouldMatchWallpaperPosition
{
  if ([(PBUISnapshotReplicaView *)self->_snapshotsView shouldMatchWallpaperPosition])
  {
    return 1;
  }

  portalView = self->_portalView;

  return [(PBUIPortalReplicaView *)portalView shouldMatchWallpaperPosition];
}

- (void)setShouldMatchWallpaperPosition:(BOOL)position
{
  positionCopy = position;
  [(PBUISnapshotReplicaView *)self->_snapshotsView setShouldMatchWallpaperPosition:?];
  portalView = self->_portalView;

  [(PBUIPortalReplicaView *)portalView setShouldMatchWallpaperPosition:positionCopy];
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (PBUIEffectTrackingReplicaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)setObservesSnapshotValidity:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 410) != a2)
    {
      v4 = *(result + 472);
      if (a2)
      {
        result = [v4 addObserver:v3 forKeyPath:@"valid" options:1 context:&PrivateKVOContext];
      }

      else
      {
        result = [v4 removeObserver:v3 forKeyPath:@"valid" context:&PrivateKVOContext];
      }

      *(v3 + 410) = v2;
    }
  }

  return result;
}

- (void)dealloc
{
  [(PBUIEffectTrackingReplicaView *)self setObservesSnapshotValidity:?];
  v3.receiver = self;
  v3.super_class = PBUIEffectTrackingReplicaView;
  [(PBUIEffectTrackingReplicaView *)&v3 dealloc];
}

- (void)invalidate
{
  [(PBUIEffectTrackingReplicaView *)self setObservesSnapshotValidity:?];
  [(PBUISnapshotReplicaView *)self->_snapshotsView invalidate];
  portalView = self->_portalView;

  [(PBUIPortalReplicaView *)portalView invalidate];
}

- (id)setNeedsReconfiguration
{
  if (result)
  {
    v1 = result;
    [result[60] requestStyle:{objc_msgSend(result, "style")}];
    if (*(v1 + 408) == 1)
    {
      v2 = *(v1 + 440);
    }

    else
    {
      v2 = 0;
    }

    [*(v1 + 472) setEffectiveStyle:v2];
    v3 = *(v1 + 409) & [*(v1 + 472) isValid];
    [*(v1 + 472) setHidden:(v3 & 1) == 0];
    if (v3)
    {
      [*(v1 + 480) removeFromSuperview];
    }

    else
    {
      [v1 addSubview:*(v1 + 480)];
    }

    [*(v1 + 480) setHidden:v3 & 1];

    return [(PBUIEffectTrackingReplicaView *)v1 setObservesSnapshotValidity:?];
  }

  return result;
}

- (uint64_t)snapshotViewStyle
{
  if (result)
  {
    if (*(result + 408) == 1)
    {
      return *(result + 440);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)snapshotsView
{
  if (result)
  {
    return *(result + 472);
  }

  return result;
}

- (void)setPortalProvider:(id)provider
{
  [(PBUIPortalReplicaView *)self->_portalView setProvider:provider];

  [(PBUIEffectTrackingReplicaView *)&self->super.super.super.isa setNeedsReconfiguration];
}

- (void)setSnapshotProvider:(id)provider
{
  [(PBUISnapshotReplicaView *)self->_snapshotsView setProvider:provider];

  [(PBUIEffectTrackingReplicaView *)&self->super.super.super.isa setNeedsReconfiguration];
}

- (BOOL)hasSnapshotProvider
{
  if (!self)
  {
    return 0;
  }

  provider = [*(self + 472) provider];
  v2 = provider != 0;

  return v2;
}

- (BOOL)hasPortalProvider
{
  if (!self)
  {
    return 0;
  }

  provider = [*(self + 480) provider];
  v2 = provider != 0;

  return v2;
}

- (uint64_t)observesSnapshotValidity
{
  if (self)
  {
    v1 = *(self + 410);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)setSnapshotsView:(uint64_t)view
{
  if (view)
  {
    OUTLINED_FUNCTION_0_5(view, a2, 472);
  }
}

- (uint64_t)portalView
{
  if (result)
  {
    return *(result + 480);
  }

  return result;
}

- (void)setPortalView:(uint64_t)view
{
  if (view)
  {
    OUTLINED_FUNCTION_0_5(view, a2, 480);
  }
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:change:context:.cold.1(void *a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = a1[59];
  }

  if ([a1 isValid])
  {
    v2 = [v1 delegate];
    [v2 effectTrackingReplicaViewHasValidSnapshot:v1];
  }
}

@end