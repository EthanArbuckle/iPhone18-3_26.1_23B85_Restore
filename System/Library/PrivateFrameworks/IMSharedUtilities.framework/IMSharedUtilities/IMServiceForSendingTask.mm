@interface IMServiceForSendingTask
- (IMServiceForSendingTask)init;
- (IMServiceForSendingTask)initWithDelegate:(id)a3 updateHandler:(id)a4;
- (IMServiceForSendingTaskDelegate)delegate;
- (NSArray)requestIDs;
- (NSString)taskID;
- (void)allRequestsSubmitted;
- (void)beganRequestWithID:(id)a3;
- (void)cancelledRequestWithID:(id)a3;
- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4;
- (void)submitRequestWithID:(id)a3 serviceName:(id)a4 preconditions:(id)a5 clearanceHandler:(id)a6;
@end

@implementation IMServiceForSendingTask

- (NSString)taskID
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMServiceForSendingTaskDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMServiceForSendingTask)initWithDelegate:(id)a3 updateHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_unknownObjectRetain();
  return sub_1A8881D48(v6, sub_1A88871E0, v5);
}

- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A8882618(v6, v7);
}

- (IMServiceForSendingTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)requestIDs
{
  swift_beginAccess();

  sub_1A8880D08(v2);
  v3 = sub_1A88C85E8();

  return v3;
}

- (void)submitRequestWithID:(id)a3 serviceName:(id)a4 preconditions:(id)a5 clearanceHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_1A88C82E8();
  v10 = v9;
  v11 = sub_1A88C82E8();
  v13 = v12;
  sub_1A85E9718(0, &qword_1EB3006E8);
  v14 = sub_1A88C85F8();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  swift_beginAccess();
  v16 = self;
  sub_1A85FB018(&v20, v11, v13);
  swift_endAccess();

  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v14;
  v21[3] = sub_1A888598C;
  v21[4] = v15;
  v17 = OBJC_IVAR___IMServiceForSendingTask_pendingRequests;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v16 + v17);
  *(v16 + v17) = 0x8000000000000000;
  sub_1A87AD164(v21, v8, v10, isUniquelyReferenced_nonNull_native);

  *(v16 + v17) = v19;
  swift_endAccess();
}

- (void)allRequestsSubmitted
{
  v2 = self;
  sub_1A8884BF8();
}

- (void)beganRequestWithID:(id)a3
{
  v4 = sub_1A88C82E8();
  v6 = v5;
  v7 = OBJC_IVAR___IMServiceForSendingTask_requestIDToResults;
  swift_beginAccess();
  v8 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(self + v7);
  *(self + v7) = 0x8000000000000000;
  sub_1A87AD2D0(MEMORY[0x1E69E7CC0], v4, v6, isUniquelyReferenced_nonNull_native);

  *(self + v7) = v10;
  swift_endAccess();
}

- (void)cancelledRequestWithID:(id)a3
{
  v4 = sub_1A88C82E8();
  v6 = v5;
  v7 = self;
  sub_1A8884DEC(v4, v6);
}

@end