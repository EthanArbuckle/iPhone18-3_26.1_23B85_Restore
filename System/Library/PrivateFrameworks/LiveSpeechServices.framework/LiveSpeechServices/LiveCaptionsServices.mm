@interface LiveCaptionsServices
+ (void)startLiveCaptionsAndReturnError:(id *)error;
+ (void)stopLiveCaptionsAndReturnError:(id *)error;
@end

@implementation LiveCaptionsServices

+ (void)startLiveCaptionsAndReturnError:(id *)error
{
  v4 = +[LiveSpeechCaptionsClient shared];
  [v4 startLiveCaptionsAndReturnError:error];
}

+ (void)stopLiveCaptionsAndReturnError:(id *)error
{
  v4 = +[LiveSpeechCaptionsClient shared];
  [v4 stopLiveCaptionsAndReturnError:error];
}

@end