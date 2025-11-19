@interface LiveSpeechCaptionsClient
+ (LiveSpeechCaptionsClient)shared;
- (BOOL)startLiveCaptionsAndReturnError:(id *)a3;
- (BOOL)startLiveSpeechAndReturnError:(id *)a3;
- (BOOL)stopLiveCaptionsAndReturnError:(id *)a3;
- (BOOL)stopLiveSpeechAndReturnError:(id *)a3;
- (LiveSpeechCaptionsClient)init;
- (NSString)serviceName;
- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)dealloc;
@end

@implementation LiveSpeechCaptionsClient

+ (LiveSpeechCaptionsClient)shared
{
  if (qword_28133F5A8 != -1)
  {
    swift_once();
  }

  v3 = qword_28133F5B0;

  return v3;
}

- (LiveSpeechCaptionsClient)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___LiveSpeechCaptionsClient__client) = 0;
  *(&self->super.isa + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveSpeechRunning) = 0;
  *(&self->super.isa + OBJC_IVAR___LiveSpeechCaptionsClient_isLiveCaptionsRunning) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LiveSpeechCaptionsClient *)&v5 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_256016644();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(LiveSpeechCaptionsClient *)&v5 dealloc];
}

- (BOOL)startLiveSpeechAndReturnError:(id *)a3
{
  v3 = self;
  LiveSpeechCaptionsClient.startLiveSpeech()();

  return 1;
}

- (BOOL)stopLiveSpeechAndReturnError:(id *)a3
{
  v3 = self;
  LiveSpeechCaptionsClient.stopLiveSpeech()();

  return 1;
}

- (BOOL)startLiveCaptionsAndReturnError:(id *)a3
{
  v3 = self;
  LiveSpeechCaptionsClient.startLiveCaptions()();

  return 1;
}

- (BOOL)stopLiveCaptionsAndReturnError:(id *)a3
{
  v3 = self;
  LiveSpeechCaptionsClient.stopLiveCaptions()();

  return 1;
}

- (NSString)serviceName
{
  v2 = sub_25601BB80();

  return v2;
}

- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4
{
  v4 = [objc_opt_self() mainAccessQueue];

  return v4;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v5 = a3;
  v6 = self;
  LiveSpeechCaptionsClient.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(a3);
}

@end