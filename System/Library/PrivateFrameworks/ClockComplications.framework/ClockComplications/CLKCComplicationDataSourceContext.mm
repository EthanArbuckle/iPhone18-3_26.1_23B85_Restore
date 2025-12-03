@interface CLKCComplicationDataSourceContext
- (CLKCComplicationDataSourceContext)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLKCComplicationDataSourceContext

- (CLKCComplicationDataSourceContext)init
{
  v3.receiver = self;
  v3.super_class = CLKCComplicationDataSourceContext;
  result = [(CLKCComplicationDataSourceContext *)&v3 init];
  if (result)
  {
    result->_showsBackground = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_opt_new();
  *(result + 8) = self->_showsBackground;
  return result;
}

@end