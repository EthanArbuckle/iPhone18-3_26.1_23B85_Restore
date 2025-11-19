@interface CSAttendingUsecaseFactory
+ (id)attendingUseCaseByAttendingType:(int64_t)a3 audioProviderSelector:(id)a4;
@end

@implementation CSAttendingUsecaseFactory

+ (id)attendingUseCaseByAttendingType:(int64_t)a3 audioProviderSelector:(id)a4
{
  v4 = a4;
  v5 = [[CSAttendingSpeechDetectionController alloc] initWithAudioProviderSelector:v4];

  return v5;
}

@end