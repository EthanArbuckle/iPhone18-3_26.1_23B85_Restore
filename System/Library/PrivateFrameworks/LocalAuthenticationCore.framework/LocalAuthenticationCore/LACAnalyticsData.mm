@interface LACAnalyticsData
- (LACAnalyticsData)init;
- (NSString)description;
- (void)authenticationAttemptFailedForEvent:(int64_t)event;
- (void)authenticationStartedForEvent:(int64_t)event;
- (void)authenticationSuccessfulForEvent:(int64_t)event;
- (void)mergeAnalyticsData:(id)data;
@end

@implementation LACAnalyticsData

- (LACAnalyticsData)init
{
  v3.receiver = self;
  v3.super_class = LACAnalyticsData;
  return [(LACAnalyticsData *)&v3 init];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  biomeDialogEvent = [(LACAnalyticsData *)self biomeDialogEvent];
  v5 = [v3 stringWithFormat:@"<LACAnalyticsData %p %@>", self, biomeDialogEvent];;

  return v5;
}

- (void)mergeAnalyticsData:(id)data
{
  dataCopy = data;
  biomeDialogEvent = [dataCopy biomeDialogEvent];

  if (biomeDialogEvent)
  {
    biomeDialogEvent2 = [(LACAnalyticsData *)self biomeDialogEvent];
    biomeDialogEvent3 = [dataCopy biomeDialogEvent];
    [biomeDialogEvent2 mergeBiomeEvent:biomeDialogEvent3];
  }
}

- (void)authenticationStartedForEvent:(int64_t)event
{
  if (event)
  {
    biomeDialogEvent = [(LACAnalyticsData *)self biomeDialogEvent];
    switch(event)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 8:
        v6 = 3;
        break;
      default:
        v6 = 4 * (event == 4);
        break;
    }

    v7 = biomeDialogEvent;
    [biomeDialogEvent startedAuthenticationWithMechanism:v6];
  }
}

- (void)authenticationSuccessfulForEvent:(int64_t)event
{
  if (event)
  {
    switch(event)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 8:
        v4 = 3;
        break;
      default:
        v4 = 4 * (event == 4);
        break;
    }

    biomeDialogEvent = [(LACAnalyticsData *)self biomeDialogEvent];
    [biomeDialogEvent succeededAuthenticationWithMechanism:v4];
  }
}

- (void)authenticationAttemptFailedForEvent:(int64_t)event
{
  if (event)
  {
    switch(event)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 8:
        v4 = 3;
        break;
      default:
        v4 = 4 * (event == 4);
        break;
    }

    biomeDialogEvent = [(LACAnalyticsData *)self biomeDialogEvent];
    [biomeDialogEvent failedAuthenticationWithMechanism:v4];
  }
}

@end