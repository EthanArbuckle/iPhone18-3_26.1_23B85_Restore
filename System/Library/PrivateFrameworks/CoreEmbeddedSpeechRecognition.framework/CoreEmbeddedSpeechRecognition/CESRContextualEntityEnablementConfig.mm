@interface CESRContextualEntityEnablementConfig
- (CESRContextualEntityEnablementConfig)initWithShouldRetrieve:(BOOL)retrieve shouldEnroll:(BOOL)enroll;
@end

@implementation CESRContextualEntityEnablementConfig

- (CESRContextualEntityEnablementConfig)initWithShouldRetrieve:(BOOL)retrieve shouldEnroll:(BOOL)enroll
{
  v7.receiver = self;
  v7.super_class = CESRContextualEntityEnablementConfig;
  result = [(CESRContextualEntityEnablementConfig *)&v7 init];
  if (result)
  {
    result->_shouldRetrieve = retrieve;
    result->_shouldEnroll = enroll;
  }

  return result;
}

@end