@interface CESRContextualEntityEnablementConfig
- (CESRContextualEntityEnablementConfig)initWithShouldRetrieve:(BOOL)a3 shouldEnroll:(BOOL)a4;
@end

@implementation CESRContextualEntityEnablementConfig

- (CESRContextualEntityEnablementConfig)initWithShouldRetrieve:(BOOL)a3 shouldEnroll:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CESRContextualEntityEnablementConfig;
  result = [(CESRContextualEntityEnablementConfig *)&v7 init];
  if (result)
  {
    result->_shouldRetrieve = a3;
    result->_shouldEnroll = a4;
  }

  return result;
}

@end