@interface CAMZoomEventReporter
- (CAMZoomEventReporter)init;
- (void)zoomBeganWithFactor:(double)factor device:(int64_t)device interactionType:(int64_t)type;
- (void)zoomChangedToFactor:(double)factor device:(int64_t)device interactionType:(int64_t)type;
- (void)zoomChangedToFactor:(double)factor interactionType:(int64_t)type;
- (void)zoomEndedFromSource:(int64_t)source;
@end

@implementation CAMZoomEventReporter

- (void)zoomBeganWithFactor:(double)factor device:(int64_t)device interactionType:(int64_t)type
{
  selfCopy = self;
  CFAbsoluteTimeGetCurrent();
  v6 = *(&selfCopy->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v6 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v6 + 4);
}

- (void)zoomEndedFromSource:(int64_t)source
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v3 + 4);
}

- (void)zoomChangedToFactor:(double)factor device:(int64_t)device interactionType:(int64_t)type
{
  selfCopy = self;
  CFAbsoluteTimeGetCurrent();
  v6 = *(&selfCopy->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
  os_unfair_lock_lock(v6 + 4);
  sub_1A39278E8();
  os_unfair_lock_unlock(v6 + 4);
}

- (void)zoomChangedToFactor:(double)factor interactionType:(int64_t)type
{
  selfCopy = self;
  CFAbsoluteTimeGetCurrent();
  v5 = *(&selfCopy->super.isa + OBJC_IVAR___CAMZoomEventReporter_unfairLock);
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