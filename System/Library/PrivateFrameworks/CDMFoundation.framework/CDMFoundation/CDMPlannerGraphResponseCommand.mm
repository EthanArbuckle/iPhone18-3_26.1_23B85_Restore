@interface CDMPlannerGraphResponseCommand
- (CDMPlannerGraphResponseCommand)initWithPlannerResponse:(id)response;
@end

@implementation CDMPlannerGraphResponseCommand

- (CDMPlannerGraphResponseCommand)initWithPlannerResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMPlannerGraphResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plannerResponse, response);
  }

  return v7;
}

@end