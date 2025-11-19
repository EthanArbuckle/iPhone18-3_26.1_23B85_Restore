@interface LiveCaptionsServices
+ (void)startLiveCaptionsAndReturnError:(id *)a3;
+ (void)stopLiveCaptionsAndReturnError:(id *)a3;
@end

@implementation LiveCaptionsServices

+ (void)startLiveCaptionsAndReturnError:(id *)a3
{
  v4 = +[LiveSpeechCaptionsClient shared];
  [v4 startLiveCaptionsAndReturnError:a3];
}

+ (void)stopLiveCaptionsAndReturnError:(id *)a3
{
  v4 = +[LiveSpeechCaptionsClient shared];
  [v4 stopLiveCaptionsAndReturnError:a3];
}

@end