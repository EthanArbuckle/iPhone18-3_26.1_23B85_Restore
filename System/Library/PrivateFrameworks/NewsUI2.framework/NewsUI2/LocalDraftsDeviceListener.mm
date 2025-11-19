@interface LocalDraftsDeviceListener
- (void)browser:(id)a3 didNotStartBrowsingForPeers:(id)a4;
- (void)browser:(id)a3 foundPeer:(id)a4 withDiscoveryInfo:(id)a5;
- (void)browser:(id)a3 lostPeer:(id)a4;
- (void)dealloc;
- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7;
- (void)session:(id)a3 didReceiveCertificate:(id)a4 fromPeer:(id)a5 certificateHandler:(id)a6;
- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
@end

@implementation LocalDraftsDeviceListener

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser);
  v5 = self;
  [v4 stopBrowsingForPeers];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(LocalDraftsDeviceListener *)&v6 dealloc];
}

- (void)browser:(id)a3 didNotStartBrowsingForPeers:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_21925C444();
}

- (void)browser:(id)a3 foundPeer:(id)a4 withDiscoveryInfo:(id)a5
{
  if (a5)
  {
    sub_219BF5214();
  }

  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_21925C58C(v8, v9);
}

- (void)browser:(id)a3 lostPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21925C72C(v7);
}

- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = self;
  v11 = sub_219BDBA04();
  v13 = v12;

  sub_21925C868();
  sub_2186C6190(v11, v13);
}

- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF5414();
  v17 = v16;
  if (a6)
  {
    sub_219BDB8B4();
    v18 = sub_219BDB954();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  }

  else
  {
    v19 = sub_219BDB954();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  v20 = a3;
  v21 = a5;
  v22 = a7;
  v23 = self;
  sub_21925CB34(v15, v17, v14);

  sub_218838478(v14);
}

- (void)session:(id)a3 didReceiveCertificate:(id)a4 fromPeer:(id)a5 certificateHandler:(id)a6
{
  v6 = _Block_copy(a6);
  v6[2](v6, 1);

  _Block_release(v6);
}

@end