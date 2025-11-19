@interface LACEvaluationRequestDefault
- (LACXPCClient)client;
@end

@implementation LACEvaluationRequestDefault

- (LACXPCClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->client);

  return WeakRetained;
}

@end