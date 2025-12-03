@interface NDAnalyticsServiceRouter
- (NDAnalyticsServiceRouter)initWithServices:(id)services;
- (void)submitEnvelopes:(id)envelopes withCompletion:(id)completion;
@end

@implementation NDAnalyticsServiceRouter

- (NDAnalyticsServiceRouter)initWithServices:(id)services
{
  servicesCopy = services;
  v9.receiver = self;
  v9.super_class = NDAnalyticsServiceRouter;
  v5 = [(NDAnalyticsServiceRouter *)&v9 init];
  if (v5)
  {
    v6 = [servicesCopy copy];
    services = v5->_services;
    v5->_services = v6;
  }

  return v5;
}

- (void)submitEnvelopes:(id)envelopes withCompletion:(id)completion
{
  envelopesCopy = envelopes;
  completionCopy = completion;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(NDAnalyticsServiceRouter *)self services];
  v9 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(services);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 submitEnvelopes:envelopesCopy withCompletion:completionCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end