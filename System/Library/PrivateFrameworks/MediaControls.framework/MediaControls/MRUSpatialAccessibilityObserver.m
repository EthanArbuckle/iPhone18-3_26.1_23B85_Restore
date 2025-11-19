@interface MRUSpatialAccessibilityObserver
- (MRUSpatialAccessibilityObserver)init;
- (MRUSpatialAccessibilityObserverDelegate)delegate;
- (void)dealloc;
- (void)updateHeadTrackingSupported;
@end

@implementation MRUSpatialAccessibilityObserver

- (MRUSpatialAccessibilityObserver)init
{
  v6.receiver = self;
  v6.super_class = MRUSpatialAccessibilityObserver;
  v2 = [(MRUSpatialAccessibilityObserver *)&v6 init];
  if (v2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, lockToDeviceChanged, *MEMORY[0x1E69E4BC8], 0, 0);
    v4 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v4, v2, monoAudioEnabledChanged, *MEMORY[0x1E69E4E20], 0, 0);
    [(MRUSpatialAccessibilityObserver *)v2 updateHeadTrackingSupported];
    [(MRUSpatialAccessibilityObserver *)v2 updateMonoAudioEnabled];
  }

  return v2;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E69E4BC8], 0);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x1E69E4E20], 0);
  v5.receiver = self;
  v5.super_class = MRUSpatialAccessibilityObserver;
  [(MRUSpatialAccessibilityObserver *)&v5 dealloc];
}

- (void)updateHeadTrackingSupported
{
  v3 = _AXSSpatialAudioHeadTracking() & 3;
  v4 = v3 != 0;
  if (self->_isHeadTrackingEnabled != v4)
  {
    v5 = v3 != 0;
    self->_isHeadTrackingEnabled = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained spatialAccessilityObserver:self didChangeHeadTrackingEnabled:v5];
  }
}

- (MRUSpatialAccessibilityObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end