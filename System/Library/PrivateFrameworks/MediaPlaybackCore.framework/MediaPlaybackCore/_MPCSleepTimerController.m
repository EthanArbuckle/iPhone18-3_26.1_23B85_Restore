@interface _MPCSleepTimerController
- (double)fireDate;
- (void)didChangeItemElapsedTime:(double)a3;
- (void)didEndPlaybackForCurrentItem;
- (void)reset;
- (void)startSleepTimerForChapterEnd;
- (void)startSleepTimerForItemEnd;
- (void)startSleepTimerWithTimeRemaining:(double)a3;
@end

@implementation _MPCSleepTimerController

- (void)startSleepTimerForItemEnd
{
  v2 = self;
  sub_1C5D2BBF0();
}

- (void)startSleepTimerWithTimeRemaining:(double)a3
{
  v4 = self;
  sub_1C5D2BC68(a3);
}

- (void)startSleepTimerForChapterEnd
{
  v2 = self;
  sub_1C5D2BD08();
}

- (void)reset
{
  v2 = self;
  sub_1C5D2BDA8();
}

- (double)fireDate
{
  v2 = self;
  v3 = sub_1C5D2BF18();

  return v3;
}

- (void)didEndPlaybackForCurrentItem
{
  v2 = self;
  SleepTimerController.didEndPlaybackForCurrentItem()();
}

- (void)didChangeItemElapsedTime:(double)a3
{
  v4 = self;
  SleepTimerController.didChangeItemElapsedTime(_:)(v3);
}

@end