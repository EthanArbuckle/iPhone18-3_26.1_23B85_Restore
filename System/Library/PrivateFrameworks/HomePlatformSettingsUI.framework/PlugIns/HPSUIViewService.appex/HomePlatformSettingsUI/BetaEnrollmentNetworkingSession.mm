@interface BetaEnrollmentNetworkingSession
- (void)channel:(id)a3 didAddProducer:(id)a4;
- (void)channel:(id)a3 didFailToAddProducerWithSubTopic:(id)a4 error:(id)a5;
- (void)producer:(COMessageSessionProducer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 completionHandler:(id)a5;
- (void)producer:(id)a3 didFailToStartSessionWithMember:(id)a4 error:(id)a5;
- (void)producer:(id)a3 didStartSession:(id)a4 member:(id)a5 response:(id)a6;
- (void)producer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7;
@end

@implementation BetaEnrollmentNetworkingSession

- (void)channel:(id)a3 didAddProducer:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_100041208(v5, v6);
}

- (void)channel:(id)a3 didFailToAddProducerWithSubTopic:(id)a4 error:(id)a5
{
  v7 = sub_10008715C();
  v9 = v8;
  v10 = a3;
  v11 = a5;

  sub_10004133C(v10, v7, v9);
}

- (void)producer:(id)a3 didFailToStartSessionWithMember:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;

  sub_100041568(v7, v8);
}

- (void)producer:(id)a3 didStartSession:(id)a4 member:(id)a5 response:(id)a6
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
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  v16[8] = a6;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;

  sub_100016C64(0, 0, v14, &unk_10008B168, v16);
}

- (void)producer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7
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
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;

  v23 = a7;
  sub_100016C64(0, 0, v16, &unk_10008B158, v18);
}

- (void)producer:(COMessageSessionProducer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 completionHandler:(id)a5
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_100040A24(0, 0, v12, &unk_100089CD0, v17);
}

@end