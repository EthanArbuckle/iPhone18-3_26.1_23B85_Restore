@interface HealthTopicStore.HealthTopicStoreProxy
- (_TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy)init;
- (void)client_deliverWithError:(id)a3 for:(id)a4;
- (void)client_deliverWithResponse:(id)a3 finished:(BOOL)a4 for:(id)a5;
@end

@implementation HealthTopicStore.HealthTopicStoreProxy

- (void)client_deliverWithResponse:(id)a3 finished:(BOOL)a4 for:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_251F2DB8C(v8, a4, v9);
}

- (void)client_deliverWithError:(id)a3 for:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  sub_251F2DFDC(v8, v6);
}

- (_TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end