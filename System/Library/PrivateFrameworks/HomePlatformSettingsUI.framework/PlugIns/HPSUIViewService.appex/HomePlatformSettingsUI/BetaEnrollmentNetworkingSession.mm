@interface BetaEnrollmentNetworkingSession
- (void)channel:(id)channel didAddProducer:(id)producer;
- (void)channel:(id)channel didFailToAddProducerWithSubTopic:(id)topic error:(id)error;
- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler;
- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error;
- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response;
- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error;
@end

@implementation BetaEnrollmentNetworkingSession

- (void)channel:(id)channel didAddProducer:(id)producer
{
  channelCopy = channel;
  producerCopy = producer;

  sub_100041208(channelCopy, producerCopy);
}

- (void)channel:(id)channel didFailToAddProducerWithSubTopic:(id)topic error:(id)error
{
  v7 = sub_10008715C();
  v9 = v8;
  channelCopy = channel;
  errorCopy = error;

  sub_10004133C(channelCopy, v7, v9);
}

- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error
{
  producerCopy = producer;
  memberCopy = member;
  errorCopy = error;

  sub_100041568(producerCopy, memberCopy);
}

- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response
{
  v11 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = producer;
  v16[6] = session;
  v16[7] = member;
  v16[8] = response;
  producerCopy = producer;
  sessionCopy = session;
  memberCopy = member;
  responseCopy = response;

  sub_100016C64(0, 0, v14, &unk_10008B168, v16);
}

- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error
{
  v13 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_10008742C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = self;
  v18[5] = producer;
  v18[6] = session;
  v18[7] = initiator;
  v18[8] = notice;
  v18[9] = error;
  producerCopy = producer;
  sessionCopy = session;
  initiatorCopy = initiator;
  noticeCopy = notice;

  errorCopy = error;
  sub_100016C64(0, 0, v16, &unk_10008B158, v18);
}

- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = producer;
  v14[3] = member;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008B118;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100089CC8;
  v17[5] = v16;
  producerCopy = producer;
  memberCopy = member;

  sub_100040A24(0, 0, v12, &unk_100089CD0, v17);
}

@end