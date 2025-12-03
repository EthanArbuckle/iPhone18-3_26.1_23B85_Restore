@interface SessionXPCServiceServer.Server
- (void)attachAsObserverTo:(id)to with:(id)with;
- (void)createSessionFromProtoEventsWithEventProtos:(id)protos configData:(id)data xpcData:(id)xpcData with:(id)with;
- (void)detachObservationFrom:(id)from with:(id)with;
- (void)endSessionWithId:(id)id with:(id)with;
- (void)fetchSessionClientIdWithReply:(id)reply;
- (void)generateStatementIdWithId:(id)id with:(id)with;
- (void)postTransactionWithSessionId:(id)id eventProtos:(id)protos with:(id)with;
- (void)startSessionWithId:(id)id configData:(id)data xpcData:(id)xpcData with:(id)with;
- (void)updateTransactionHookAttachmentStatus:(id)status with:(id)with;
@end

@implementation SessionXPCServiceServer.Server

- (void)startSessionWithId:(id)id configData:(id)data xpcData:(id)xpcData with:(id)with
{
  v8 = _Block_copy(with);
  sub_22BDBABF4();
  dataCopy = data;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_22BDB4304();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_22BB3C310();

  sub_22BB3531C(v11, v13);
  swift_unknownObjectRelease();
}

- (void)endSessionWithId:(id)id with:(id)with
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  selfCopy = self;
  sub_22BB51160();

  (*(v7 + 8))(v10, v6);
}

- (void)createSessionFromProtoEventsWithEventProtos:(id)protos configData:(id)data xpcData:(id)xpcData with:(id)with
{
  v8 = _Block_copy(with);
  sub_22BDBAD64();
  dataCopy = data;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_22BDB4304();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_22BD9AFEC();

  sub_22BB3531C(v11, v13);
  swift_unknownObjectRelease();
}

- (void)postTransactionWithSessionId:(id)id eventProtos:(id)protos with:(id)with
{
  v7 = sub_22BDB43E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(with);
  sub_22BDB43C4();
  sub_22BDBAD64();
  *(swift_allocObject() + 16) = v12;
  selfCopy = self;
  sub_22BD9C75C();

  (*(v8 + 8))(v11, v7);
}

- (void)generateStatementIdWithId:(id)id with:(id)with
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  selfCopy = self;
  sub_22BB51160();

  (*(v7 + 8))(v10, v6);
}

- (void)updateTransactionHookAttachmentStatus:(id)status with:(id)with
{
  v6 = _Block_copy(with);
  *(swift_allocObject() + 16) = v6;
  statusCopy = status;
  selfCopy = self;
  sub_22BD9DAAC();
}

- (void)attachAsObserverTo:(id)to with:(id)with
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  selfCopy = self;
  sub_22BD9E358();

  (*(v7 + 8))(v10, v6);
}

- (void)detachObservationFrom:(id)from with:(id)with
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  sub_22BDB43C4();
  *(swift_allocObject() + 16) = v11;
  selfCopy = self;
  sub_22BD9E358();

  (*(v7 + 8))(v10, v6);
}

- (void)fetchSessionClientIdWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_22BD9E8E0();
}

@end