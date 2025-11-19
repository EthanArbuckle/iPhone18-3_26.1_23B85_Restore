@interface CAMZoomEventReporter
- (CAMZoomEventReporter)init;
- (void)zoomBeganWithFactor:(double)a3 device:(int64_t)a4 interactionType:(int64_t)a5;
- (void)zoomChangedToFactor:(double)a3 device:(int64_t)a4 interactionType:(int64_t)a5;
- (void)zoomChangedToFactor:(double)a3 interactionType:(int64_t)a4;
- (void)zoomEndedFromSource:(int64_t)a3;
@end

@implementation CAMZoomEventReporter

- (void)zoomBeganWithFactor:(double)a3 device:(int64_t)a4 interactionType:(int64_t)a5
{
  v5 = self;
  CFAbsoluteTimeGetCurrent();
  v6 = *(&v5->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v6 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v6 + 4);
}

- (void)zoomEndedFromSource:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  v4 = self;
  os_unfair_lock_lock(v3 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v3 + 4);
}

- (void)zoomChangedToFactor:(double)a3 device:(int64_t)a4 interactionType:(int64_t)a5
{
  v5 = self;
  CFAbsoluteTimeGetCurrent();
  v6 = *(&v5->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v6 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v6 + 4);
}

- (void)zoomChangedToFactor:(double)a3 interactionType:(int64_t)a4
{
  v4 = self;
  CFAbsoluteTimeGetCurrent();
  v5 = *(&v4->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v5 + 4);
}

- (CAMZoomEventReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end