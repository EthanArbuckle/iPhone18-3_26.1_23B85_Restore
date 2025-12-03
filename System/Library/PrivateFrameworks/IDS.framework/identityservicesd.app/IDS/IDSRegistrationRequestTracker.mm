@interface IDSRegistrationRequestTracker
+ (IDSRegistrationRequestTracker)sharedInstance;
- (IDSRegistrationRequestTracker)init;
- (id)eventHistoryStringWithWantsBAADigests:(BOOL)digests;
- (void)completedRequest:(id)request resultCode:(int64_t)code interface:(unint64_t)interface;
@end

@implementation IDSRegistrationRequestTracker

- (void)completedRequest:(id)request resultCode:(int64_t)code interface:(unint64_t)interface
{
  requestCopy = request;
  selfCopy = self;
  sub_100020FA8(request, code, interface);
}

+ (IDSRegistrationRequestTracker)sharedInstance
{
  if (qword_100CD16F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100CD4160;

  return v3;
}

- (IDSRegistrationRequestTracker)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RegistrationRequestTracker();
  v2 = [(IDSRegistrationRequestTracker *)&v4 init];
  sub_1008A28F0();

  return v2;
}

- (id)eventHistoryStringWithWantsBAADigests:(BOOL)digests
{
  sub_1008A51F4(digests);
  v3 = sub_100936B28();

  return v3;
}

@end