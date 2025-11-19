@interface CarrySettings.MessageChannel
- (void)channel:(id)a3 didAddConsumer:(id)a4;
- (void)channel:(id)a3 didAddProducer:(id)a4;
- (void)consumer:(COMessageSessionConsumer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 request:(COMessageSessionRequest *)a5 completionHandler:(id)a6;
- (void)consumer:(id)a3 didStartSession:(id)a4;
- (void)consumer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7;
- (void)producer:(COMessageSessionProducer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 completionHandler:(id)a5;
- (void)producer:(id)a3 didFailToStartSessionWithMember:(id)a4 error:(id)a5;
- (void)producer:(id)a3 didStartSession:(id)a4 member:(id)a5 response:(id)a6;
- (void)producer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7;
@end

@implementation CarrySettings.MessageChannel

- (void)channel:(id)a3 didAddConsumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2542CD2B8();
}

- (void)consumer:(id)a3 didStartSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2542CD5B4();
}

- (void)consumer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  v17 = a7;
  sub_2542CD848();
}

- (void)consumer:(COMessageSessionConsumer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 request:(COMessageSessionRequest *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_254366AA8(&unk_2543A6CC8, v11);
}

- (void)channel:(id)a3 didAddProducer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2542CE1DC();
}

- (void)producer:(id)a3 didFailToStartSessionWithMember:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_2542CE6E0();
}

- (void)producer:(id)a3 didStartSession:(id)a4 member:(id)a5 response:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_2542CE970();
}

- (void)producer:(id)a3 didStopSession:(id)a4 initiator:(id)a5 notice:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  v17 = a7;
  sub_2542CEE44();
}

- (void)producer:(COMessageSessionProducer *)a3 shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_254366AA8(&unk_2543A6CB8, v9);
}

@end