@interface LACAnalyticsData
- (LACAnalyticsData)init;
- (NSString)description;
- (void)authenticationAttemptFailedForEvent:(int64_t)a3;
- (void)authenticationStartedForEvent:(int64_t)a3;
- (void)authenticationSuccessfulForEvent:(int64_t)a3;
- (void)mergeAnalyticsData:(id)a3;
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
  v4 = [(LACAnalyticsData *)self biomeDialogEvent];
  v5 = [v3 stringWithFormat:@"<LACAnalyticsData %p %@>", self, v4];;

  return v5;
}

- (void)mergeAnalyticsData:(id)a3
{
  v7 = a3;
  v4 = [v7 biomeDialogEvent];

  if (v4)
  {
    v5 = [(LACAnalyticsData *)self biomeDialogEvent];
    v6 = [v7 biomeDialogEvent];
    [v5 mergeBiomeEvent:v6];
  }
}

- (void)authenticationStartedForEvent:(int64_t)a3
{
  if (a3)
  {
    v5 = [(LACAnalyticsData *)self biomeDialogEvent];
    switch(a3)
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
        v6 = 4 * (a3 == 4);
        break;
    }

    v7 = v5;
    [v5 startedAuthenticationWithMechanism:v6];
  }
}

- (void)authenticationSuccessfulForEvent:(int64_t)a3
{
  if (a3)
  {
    switch(a3)
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
        v4 = 4 * (a3 == 4);
        break;
    }

    v5 = [(LACAnalyticsData *)self biomeDialogEvent];
    [v5 succeededAuthenticationWithMechanism:v4];
  }
}

- (void)authenticationAttemptFailedForEvent:(int64_t)a3
{
  if (a3)
  {
    switch(a3)
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
        v4 = 4 * (a3 == 4);
        break;
    }

    v5 = [(LACAnalyticsData *)self biomeDialogEvent];
    [v5 failedAuthenticationWithMechanism:v4];
  }
}

@end