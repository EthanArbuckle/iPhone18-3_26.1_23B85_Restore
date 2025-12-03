@interface HealthTopicStore.HealthTopicStoreProxy
- (_TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy)init;
- (void)client_deliverWithError:(id)error for:(id)for;
- (void)client_deliverWithResponse:(id)response finished:(BOOL)finished for:(id)for;
@end

@implementation HealthTopicStore.HealthTopicStoreProxy

- (void)client_deliverWithResponse:(id)response finished:(BOOL)finished for:(id)for
{
  responseCopy = response;
  forCopy = for;
  selfCopy = self;
  sub_251F2DB8C(responseCopy, finished, forCopy);
}

- (void)client_deliverWithError:(id)error for:(id)for
{
  errorCopy = error;
  forCopy = for;
  selfCopy = self;
  sub_251F2DFDC(errorCopy, forCopy);
}

- (_TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end