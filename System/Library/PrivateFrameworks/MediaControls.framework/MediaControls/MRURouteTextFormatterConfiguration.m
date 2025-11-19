@interface MRURouteTextFormatterConfiguration
- (MRURouteTextFormatterConfiguration)init;
@end

@implementation MRURouteTextFormatterConfiguration

- (MRURouteTextFormatterConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MRURouteTextFormatterConfiguration;
  result = [(MRURouteTextFormatterConfiguration *)&v3 init];
  if (result)
  {
    *&result->_truncationMode = xmmword_1A2308070;
    result->_textBoundingWidth = 1.79769313e308;
    *&result->_forcesUppercaseText = 0x1000000;
    result->_usesPredictedOutputDevice = 0;
  }

  return result;
}

@end