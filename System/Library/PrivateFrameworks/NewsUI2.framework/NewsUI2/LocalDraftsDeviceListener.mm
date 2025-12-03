@interface LocalDraftsDeviceListener
- (void)browser:(id)browser didNotStartBrowsingForPeers:(id)peers;
- (void)browser:(id)browser foundPeer:(id)peer withDiscoveryInfo:(id)info;
- (void)browser:(id)browser lostPeer:(id)peer;
- (void)dealloc;
- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error;
- (void)session:(id)session didReceiveCertificate:(id)certificate fromPeer:(id)peer certificateHandler:(id)handler;
- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer;
@end

@implementation LocalDraftsDeviceListener

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser);
  selfCopy = self;
  [v4 stopBrowsingForPeers];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(LocalDraftsDeviceListener *)&v6 dealloc];
}

- (void)browser:(id)browser didNotStartBrowsingForPeers:(id)peers
{
  browserCopy = browser;
  peersCopy = peers;
  selfCopy = self;
  sub_21925C444();
}

- (void)browser:(id)browser foundPeer:(id)peer withDiscoveryInfo:(id)info
{
  if (info)
  {
    sub_219BF5214();
  }

  browserCopy = browser;
  peerCopy = peer;
  selfCopy = self;
  sub_21925C58C(browserCopy, peerCopy);
}

- (void)browser:(id)browser lostPeer:(id)peer
{
  browserCopy = browser;
  peerCopy = peer;
  selfCopy = self;
  sub_21925C72C(peerCopy);
}

- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer
{
  sessionCopy = session;
  dataCopy = data;
  peerCopy = peer;
  selfCopy = self;
  v11 = sub_219BDBA04();
  v13 = v12;

  sub_21925C868();
  sub_2186C6190(v11, v13);
}

- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF5414();
  v17 = v16;
  if (l)
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

  sessionCopy = session;
  peerCopy = peer;
  errorCopy = error;
  selfCopy = self;
  sub_21925CB34(v15, v17, v14);

  sub_218838478(v14);
}

- (void)session:(id)session didReceiveCertificate:(id)certificate fromPeer:(id)peer certificateHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v6[2](v6, 1);

  _Block_release(v6);
}

@end