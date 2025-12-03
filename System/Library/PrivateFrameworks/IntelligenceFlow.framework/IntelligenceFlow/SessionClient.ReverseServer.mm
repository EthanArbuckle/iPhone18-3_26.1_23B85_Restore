@interface SessionClient.ReverseServer
- (void)connectionClosedWith:(id)with;
- (void)runTransactionHookWithSessionId:(id)id transaction:(id)transaction with:(id)with;
- (void)sendWithMessageData:(id)data with:(id)with;
@end

@implementation SessionClient.ReverseServer

- (void)connectionClosedWith:(id)with
{
  v3 = _Block_copy(with);
  _Block_copy(v3);

  sub_1DD6E3D08(v4, v3);
  _Block_release(v3);
}

- (void)sendWithMessageData:(id)data with:(id)with
{
  v6 = _Block_copy(with);
  dataCopy = data;

  v8 = sub_1DD874770();
  v10 = v9;

  _Block_copy(v6);
  sub_1DD6F45C8(v8, v10, self, v6);
  _Block_release(v6);
  sub_1DD6E6658(v8, v10);
}

- (void)runTransactionHookWithSessionId:(id)id transaction:(id)transaction with:(id)with
{
  v6 = sub_1DD874820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  sub_1DD8747E0();
  sub_1DD8752D0();
  *(swift_allocObject() + 16) = v11;

  sub_1DD8621EC();

  (*(v7 + 8))(v10, v6);
}

@end