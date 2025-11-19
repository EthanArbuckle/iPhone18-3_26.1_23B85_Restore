@interface NDAnalyticsServiceRouter
- (NDAnalyticsServiceRouter)initWithServices:(id)a3;
- (void)submitEnvelopes:(id)a3 withCompletion:(id)a4;
@end

@implementation NDAnalyticsServiceRouter

- (NDAnalyticsServiceRouter)initWithServices:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NDAnalyticsServiceRouter;
  v5 = [(NDAnalyticsServiceRouter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    services = v5->_services;
    v5->_services = v6;
  }

  return v5;
}

- (void)submitEnvelopes:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NDAnalyticsServiceRouter *)self services];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 submitEnvelopes:v6 withCompletion:v7];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end