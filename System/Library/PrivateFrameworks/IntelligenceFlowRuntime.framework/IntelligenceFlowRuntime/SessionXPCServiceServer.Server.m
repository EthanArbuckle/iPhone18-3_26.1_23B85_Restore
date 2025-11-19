@interface SessionXPCServiceServer.Server
- (void)attachAsObserverTo:(id)a3 with:(id)a4;
- (void)createSessionFromProtoEventsWithEventProtos:(id)a3 configData:(id)a4 xpcData:(id)a5 with:(id)a6;
- (void)detachObservationFrom:(id)a3 with:(id)a4;
- (void)endSessionWithId:(id)a3 with:(id)a4;
- (void)fetchSessionClientIdWithReply:(id)a3;
- (void)generateStatementIdWithId:(id)a3 with:(id)a4;
- (void)postTransactionWithSessionId:(id)a3 eventProtos:(id)a4 with:(id)a5;
- (void)startSessionWithId:(id)a3 configData:(id)a4 xpcData:(id)a5 with:(id)a6;
- (void)updateTransactionHookAttachmentStatus:(id)a3 with:(id)a4;
@end

@implementation SessionXPCServiceServer.Server

- (void)startSessionWithId:(id)a3 configData:(id)a4 xpcData:(id)a5 with:(id)a6
{
  v8 = _Block_copy(a6);
  sub_22BDBABF4();
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_22BDB4304();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_22BB3C310();

  sub_22BB3531C(v11, v13);
  swift_unknownObjectRelease();
}

- (void)endSessionWithId:(id)a3 with:(id)a4
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  v12 = self;
  sub_22BB51160();

  (*(v7 + 8))(v10, v6);
}

- (void)createSessionFromProtoEventsWithEventProtos:(id)a3 configData:(id)a4 xpcData:(id)a5 with:(id)a6
{
  v8 = _Block_copy(a6);
  sub_22BDBAD64();
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_22BDB4304();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_22BD9AFEC();

  sub_22BB3531C(v11, v13);
  swift_unknownObjectRelease();
}

- (void)postTransactionWithSessionId:(id)a3 eventProtos:(id)a4 with:(id)a5
{
  v7 = sub_22BDB43E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_22BDB43C4();
  sub_22BDBAD64();
  *(swift_allocObject() + 16) = v12;
  v13 = self;
  sub_22BD9C75C();

  (*(v8 + 8))(v11, v7);
}

- (void)generateStatementIdWithId:(id)a3 with:(id)a4
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  v12 = self;
  sub_22BB51160();

  (*(v7 + 8))(v10, v6);
}

- (void)updateTransactionHookAttachmentStatus:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_22BD9DAAC();
}

- (void)attachAsObserverTo:(id)a3 with:(id)a4
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  v12 = self;
  sub_22BD9E358();

  (*(v7 + 8))(v10, v6);
}

- (void)detachObservationFrom:(id)a3 with:(id)a4
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  v12 = self;
  sub_22BD9E358();

  (*(v7 + 8))(v10, v6);
}

- (void)fetchSessionClientIdWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_22BD9E8E0();
}

@end