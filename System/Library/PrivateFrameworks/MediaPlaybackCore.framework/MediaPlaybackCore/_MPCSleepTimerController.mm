@interface _MPCSleepTimerController
- (double)fireDate;
- (void)didChangeItemElapsedTime:(double)time;
- (void)didEndPlaybackForCurrentItem;
- (void)reset;
- (void)startSleepTimerForChapterEnd;
- (void)startSleepTimerForItemEnd;
- (void)startSleepTimerWithTimeRemaining:(double)remaining;
@end

@implementation _MPCSleepTimerController

- (void)startSleepTimerForItemEnd
{
  selfCopy = self;
  sub_1C5D2BBF0();
}

- (void)startSleepTimerWithTimeRemaining:(double)remaining
{
  selfCopy = self;
  sub_1C5D2BC68(remaining);
}

- (void)startSleepTimerForChapterEnd
{
  selfCopy = self;
  sub_1C5D2BD08();
}

- (void)reset
{
  selfCopy = self;
  sub_1C5D2BDA8();
}

- (double)fireDate
{
  selfCopy = self;
  v3 = sub_1C5D2BF18();

  return v3;
}

- (void)didEndPlaybackForCurrentItem
{
  selfCopy = self;
  SleepTimerController.didEndPlaybackForCurrentItem()();
}

- (void)didChangeItemElapsedTime:(double)time
{
  selfCopy = self;
  SleepTimerController.didChangeItemElapsedTime(_:)(v3);
}

@end