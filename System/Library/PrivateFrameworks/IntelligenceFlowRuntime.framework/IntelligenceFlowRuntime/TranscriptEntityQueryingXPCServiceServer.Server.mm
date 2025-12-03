@interface TranscriptEntityQueryingXPCServiceServer.Server
- (void)getTranscriptEntitiesWithParameters:(id)parameters reply:(id)reply;
@end

@implementation TranscriptEntityQueryingXPCServiceServer.Server

- (void)getTranscriptEntitiesWithParameters:(id)parameters reply:(id)reply
{
  v6 = _Block_copy(reply);
  parametersCopy = parameters;
  selfCopy = self;
  v8 = sub_22BDB4304();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_22BDB26A4();

  sub_22BB3531C(v8, v10);
}

@end