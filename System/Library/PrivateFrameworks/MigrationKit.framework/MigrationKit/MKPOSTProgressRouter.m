@interface MKPOSTProgressRouter
- (MKPOSTProgressRouterDelegate)delegate;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKPOSTProgressRouter

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v6 = [a4 body];
  if ([v6 length])
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v18];
    v8 = v7;
    if (!v18)
    {
      v9 = [v7 objectForKey:@"progress"];
      [v9 floatValue];
      v11 = v10;

      v12 = [v8 objectForKey:@"remaining_time"];
      v13 = [v12 unsignedLongLongValue];

      v14 = [v8 objectForKey:@"state"];
      v15 = [v14 intValue];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      LODWORD(v17) = v11;
      [WeakRetained router:self didUpdateProgress:v13 remainingTime:v15 state:v17];
    }
  }
}

- (MKPOSTProgressRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end