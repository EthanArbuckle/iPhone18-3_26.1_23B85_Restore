@interface LoadingRequestHandler
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForRenewalOfRequestedResource:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4;
- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4;
@end

@implementation LoadingRequestHandler

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_243796C1C(v8, v7);

  return 1;
}

- (void)resourceLoader:(id)a3 didCancelLoadingRequest:(id)a4
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_24379721C(v8, v7);
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForRenewalOfRequestedResource:(id)a4
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_2437975E8(v8, v7);

  return 1;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForResponseToAuthenticationChallenge:(id)a4
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_243797664(v8, v7);

  return 1;
}

@end