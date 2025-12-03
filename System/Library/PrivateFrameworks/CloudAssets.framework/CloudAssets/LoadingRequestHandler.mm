@interface LoadingRequestHandler
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (BOOL)resourceLoader:(id)loader shouldWaitForRenewalOfRequestedResource:(id)resource;
- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
@end

@implementation LoadingRequestHandler

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_243796C1C(v8, v7);

  return 1;
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_24379721C(v8, v7);
}

- (BOOL)resourceLoader:(id)loader shouldWaitForRenewalOfRequestedResource:(id)resource
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_2437975E8(v8, v7);

  return 1;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge
{
  v6 = OUTLINED_FUNCTION_21_0();
  v7 = v4;
  v8 = v5;
  sub_243797664(v8, v7);

  return 1;
}

@end