@interface CPAnalyticsMetricEventRoute
- (CPAnalyticsMetricEventRoute)initWithConfig:(id)a3;
@end

@implementation CPAnalyticsMetricEventRoute

- (CPAnalyticsMetricEventRoute)initWithConfig:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPAnalyticsMetricEventRoute;
  v5 = [(CPAnalyticsMetricEventRoute *)&v13 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [v4 valueForKey:@"destinationEventKey"];
    if ([v8 length])
    {
      objc_storeStrong(&v5->_destinationEventKey, v8);
    }

    v9 = [v4 objectForKey:@"includeProperties"];
    propertiesToInclude = v5->_propertiesToInclude;
    v5->_propertiesToInclude = v9;

    if (!v5->_propertiesToInclude)
    {
      v5->_propertiesToInclude = MEMORY[0x277CBEBF8];
    }

    v11 = [v4 objectForKey:@"includeEventProperties"];
    v5->_includeEventProperties = [v11 BOOLValue];
  }

  return v5;
}

@end