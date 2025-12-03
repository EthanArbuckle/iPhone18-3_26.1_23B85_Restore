@interface URLSessionCertVerificationDelegate
- (_TtC19HealthRecordsDaemon34URLSessionCertVerificationDelegate)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation URLSessionCertVerificationDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_251B5B890(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC19HealthRecordsDaemon34URLSessionCertVerificationDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for URLSessionCertVerificationDelegate();
  return [(URLSessionCertVerificationDelegate *)&v3 init];
}

@end