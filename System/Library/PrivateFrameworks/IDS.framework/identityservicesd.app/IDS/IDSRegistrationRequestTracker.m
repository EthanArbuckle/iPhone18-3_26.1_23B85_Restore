@interface IDSRegistrationRequestTracker
+ (IDSRegistrationRequestTracker)sharedInstance;
- (IDSRegistrationRequestTracker)init;
- (id)eventHistoryStringWithWantsBAADigests:(BOOL)a3;
- (void)completedRequest:(id)a3 resultCode:(int64_t)a4 interface:(unint64_t)a5;
@end

@implementation IDSRegistrationRequestTracker

- (void)completedRequest:(id)a3 resultCode:(int64_t)a4 interface:(unint64_t)a5
{
  v9 = a3;
  v10 = self;
  sub_100020FA8(a3, a4, a5);
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

- (id)eventHistoryStringWithWantsBAADigests:(BOOL)a3
{
  sub_1008A51F4(a3);
  v3 = sub_100936B28();

  return v3;
}

@end