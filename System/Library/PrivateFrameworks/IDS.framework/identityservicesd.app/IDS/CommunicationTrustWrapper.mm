@interface CommunicationTrustWrapper
+ (_TtC17identityservicesd25CommunicationTrustWrapper)sharedInstance;
- (_TtC17identityservicesd25CommunicationTrustWrapper)init;
- (void)donateServerTrustFor:(IDSURI *)for serverTrust:(BOOL)trust service:(NSString *)service completionHandler:(id)handler;
@end

@implementation CommunicationTrustWrapper

+ (_TtC17identityservicesd25CommunicationTrustWrapper)sharedInstance
{
  if (qword_100CD0760 != -1)
  {
    swift_once();
  }

  v3 = qword_100CD40C0;

  return v3;
}

- (void)donateServerTrustFor:(IDSURI *)for serverTrust:(BOOL)trust service:(NSString *)service completionHandler:(id)handler
{
  v11 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = for;
  *(v15 + 24) = trust;
  *(v15 + 32) = service;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_100936DB8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1009BDBD0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1009BDBE0;
  v18[5] = v17;
  forCopy = for;
  serviceCopy = service;
  selfCopy = self;
  sub_100724A14(0, 0, v13, &unk_1009BDBF0, v18);
}

- (_TtC17identityservicesd25CommunicationTrustWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CommunicationTrustWrapper();
  return [(CommunicationTrustWrapper *)&v3 init];
}

@end