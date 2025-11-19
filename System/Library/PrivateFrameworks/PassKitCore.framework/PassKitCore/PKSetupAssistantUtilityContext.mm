@interface PKSetupAssistantUtilityContext
- (PKSetupAssistantUtilityContext)initWithSetupAssistant:(unint64_t)a3;
@end

@implementation PKSetupAssistantUtilityContext

- (PKSetupAssistantUtilityContext)initWithSetupAssistant:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PKSetupAssistantUtilityContext;
  result = [(PKSetupAssistantUtilityContext *)&v6 init];
  if (result)
  {
    if (a3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    result->_setupAssistant = v5;
    result->_allowsCachedCardRequirements = 1;
  }

  return result;
}

@end