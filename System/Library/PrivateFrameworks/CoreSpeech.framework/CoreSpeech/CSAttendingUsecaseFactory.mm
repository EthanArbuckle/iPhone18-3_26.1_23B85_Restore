@interface CSAttendingUsecaseFactory
+ (id)attendingUseCaseByAttendingType:(int64_t)type audioProviderSelector:(id)selector;
@end

@implementation CSAttendingUsecaseFactory

+ (id)attendingUseCaseByAttendingType:(int64_t)type audioProviderSelector:(id)selector
{
  selectorCopy = selector;
  v5 = [[CSAttendingSpeechDetectionController alloc] initWithAudioProviderSelector:selectorCopy];

  return v5;
}

@end