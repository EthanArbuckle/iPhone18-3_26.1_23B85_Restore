@interface MKPOSTClientRouter
- (MKPOSTClientRouterDelegate)delegate;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKPOSTClientRouter

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v6 = a4;
  v7 = [v6 body];
  if ([v7 length])
  {
    v23 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v23];
    v9 = v8;
    if (!v23)
    {
      v22 = [v8 objectForKey:@"brand"];
      v20 = [v9 objectForKey:@"model"];
      v10 = [v9 objectForKey:@"name"];
      v11 = [v9 objectForKey:@"os"];
      v21 = [v11 stringValue];

      v19 = [v9 objectForKey:@"version"];
      v18 = [v9 objectForKey:@"locale"];
      v17 = [v6 hostname];
      v16 = [v9 objectForKey:@"input_method_languages"];
      v12 = [v9 objectForKey:@"activated_cellular_plans"];
      v13 = [v12 unsignedLongValue];

      v14 = [[MKClient alloc] initWithHostname:v17 brand:v22 model:v20 name:v10 os:v21 version:v19 locale:v18 inputMethodLanguages:v16 activatedCellularPlans:v13];
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