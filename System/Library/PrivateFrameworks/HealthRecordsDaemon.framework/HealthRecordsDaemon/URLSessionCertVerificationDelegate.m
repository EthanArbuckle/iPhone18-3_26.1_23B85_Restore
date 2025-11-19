@interface URLSessionCertVerificationDelegate
- (_TtC19HealthRecordsDaemon34URLSessionCertVerificationDelegate)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation URLSessionCertVerificationDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_251B5B890(v10, v11, v8);
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