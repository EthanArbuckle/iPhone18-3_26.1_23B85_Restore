@interface MKPOSTProgressRouter
- (MKPOSTProgressRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKPOSTProgressRouter

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  body = [request body];
  if ([body length])
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:body options:0 error:&v18];
    v8 = v7;
    if (!v18)
    {
      v9 = [v7 objectForKey:@"progress"];
      [v9 floatValue];
      v11 = v10;

      v12 = [v8 objectForKey:@"remaining_time"];
      unsignedLongLongValue = [v12 unsignedLongLongValue];

      v14 = [v8 objectForKey:@"state"];
      intValue = [v14 intValue];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      LODWORD(v17) = v11;
      [WeakRetained router:self didUpdateProgress:unsignedLongLongValue remainingTime:intValue state:v17];
    }
  }
}

- (MKPOSTProgressRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end