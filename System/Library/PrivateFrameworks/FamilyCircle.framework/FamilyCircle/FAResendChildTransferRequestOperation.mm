@interface FAResendChildTransferRequestOperation
- (FAResendChildTransferRequestOperation)init;
- (FAResendChildTransferRequestOperation)initWithNetworkService:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 email:(id)a6 isResend:(BOOL)a7;
- (void)cancelChildTransferWithCompletionHandler:(id)a3;
- (void)resendChildTransferWithCompletionHandler:(id)a3;
@end

@implementation FAResendChildTransferRequestOperation

- (FAResendChildTransferRequestOperation)initWithNetworkService:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 email:(id)a6 isResend:(BOOL)a7
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = (self + OBJC_IVAR___FAResendChildTransferRequestOperation_email);
  *v13 = v12;
  v13[1] = v14;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_aaGrandSlamSigner) = a4;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_familyGrandSlamSigner) = a5;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_networkService) = a3;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_isResend) = a7;
  v19.receiver = self;
  v19.super_class = type metadata accessor for FAResendChildTransferRequestOperation();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  return [(FAResendChildTransferRequestOperation *)&v19 init];
}

- (void)resendChildTransferWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008C808;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008C810;
  v14[5] = v13;
  v15 = self;
  sub_100071FE8(0, 0, v9, &unk_10008C818, v14);
}

- (void)cancelChildTransferWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008C7E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008C7F0;
  v14[5] = v13;
  v15 = self;
  sub_100071FE8(0, 0, v9, &unk_10008C6E0, v14);
}

- (FAResendChildTransferRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end