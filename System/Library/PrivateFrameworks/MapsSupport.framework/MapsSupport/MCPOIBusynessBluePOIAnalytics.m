@interface MCPOIBusynessBluePOIAnalytics
- (void)dealloc;
- (void)report;
@end

@implementation MCPOIBusynessBluePOIAnalytics

- (void)report
{
  if (self->_reported)
  {
    sub_10000F998();
  }

  else
  {
    self->_reported = 1;
    AnalyticsSendEventLazy();
  }
}

- (void)dealloc
{
  if (!self->_reported)
  {
    [(MCPOIBusynessBluePOIAnalytics *)self report];
  }

  v3.receiver = self;
  v3.super_class = MCPOIBusynessBluePOIAnalytics;
  [(MCPOIBusynessBluePOIAnalytics *)&v3 dealloc];
}

@end