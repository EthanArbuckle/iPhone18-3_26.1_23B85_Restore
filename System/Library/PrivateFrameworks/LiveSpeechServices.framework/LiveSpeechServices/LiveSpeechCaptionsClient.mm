@interface LiveSpeechCaptionsClient
+ (LiveSpeechCaptionsClient)shared;
- (BOOL)startLiveCaptionsAndReturnError:(id *)error;
- (BOOL)startLiveSpeechAndReturnError:(id *)error;
- (BOOL)stopLiveCaptionsAndReturnError:(id *)error;
- (BOOL)stopLiveSpeechAndReturnError:(id *)error;
- (LiveSpeechCaptionsClient)init;
- (NSString)serviceName;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
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
  selfCopy = self;
  sub_256016644();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(LiveSpeechCaptionsClient *)&v5 dealloc];
}

- (BOOL)startLiveSpeechAndReturnError:(id *)error
{
  selfCopy = self;
  LiveSpeechCaptionsClient.startLiveSpeech()();

  return 1;
}

- (BOOL)stopLiveSpeechAndReturnError:(id *)error
{
  selfCopy = self;
  LiveSpeechCaptionsClient.stopLiveSpeech()();

  return 1;
}

- (BOOL)startLiveCaptionsAndReturnError:(id *)error
{
  selfCopy = self;
  LiveSpeechCaptionsClient.startLiveCaptions()();

  return 1;
}

- (BOOL)stopLiveCaptionsAndReturnError:(id *)error
{
  selfCopy = self;
  LiveSpeechCaptionsClient.stopLiveCaptions()();

  return 1;
}

- (NSString)serviceName
{
  v2 = sub_25601BB80();

  return v2;
}

- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier
{
  mainAccessQueue = [objc_opt_self() mainAccessQueue];

  return mainAccessQueue;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  LiveSpeechCaptionsClient.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(client);
}

@end