@interface MKPOSTClientRouter
- (MKPOSTClientRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKPOSTClientRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  requestCopy = request;
  body = [requestCopy body];
  if ([body length])
  {
    v23 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:body options:0 error:&v23];
    v9 = v8;
    if (!v23)
    {
      v22 = [v8 objectForKey:@"brand"];
      v20 = [v9 objectForKey:@"model"];
      v10 = [v9 objectForKey:@"name"];
      v11 = [v9 objectForKey:@"os"];
      stringValue = [v11 stringValue];

      v19 = [v9 objectForKey:@"version"];
      v18 = [v9 objectForKey:@"locale"];
      hostname = [requestCopy hostname];
      v16 = [v9 objectForKey:@"input_method_languages"];
      v12 = [v9 objectForKey:@"activated_cellular_plans"];
      unsignedLongValue = [v12 unsignedLongValue];

      v14 = [[MKClient alloc] initWithHostname:hostname brand:v22 model:v20 name:v10 os:stringValue version:v19 locale:v18 inputMethodLanguages:v16 activatedCellularPlans:unsignedLongValue];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained router:self didReceiveClient:v14];
    }
  }
}

- (MKPOSTClientRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end