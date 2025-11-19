@interface CHIntegrationTest
- (CHIntegrationTest)init;
- (void)populateSampleAppLaunchEmbeddingWithCompletion:(id)a3;
@end

@implementation CHIntegrationTest

- (void)populateSampleAppLaunchEmbeddingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ch_test_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243B92000, v5, OS_LOG_TYPE_DEFAULT, "CHIntegrationTest populateSampleAppLaunchEmbedding api called", v6, 2u);
  }

  [(CHIntegrationTestProtocol *)self->_xpcClient populateSampleAppLaunchEmbeddingWithCompletion:v4];
}

- (CHIntegrationTest)init
{
  v6.receiver = self;
  v6.super_class = CHIntegrationTest;
  v2 = [(CHIntegrationTest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CHIntegrationTestClient);
    xpcClient = v2->_xpcClient;
    v2->_xpcClient = v3;
  }

  return v2;
}

@end