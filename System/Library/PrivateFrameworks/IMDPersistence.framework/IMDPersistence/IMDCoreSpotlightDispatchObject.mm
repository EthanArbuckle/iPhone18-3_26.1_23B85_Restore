@interface IMDCoreSpotlightDispatchObject
+ (id)sharedInstance;
- (IMDCoreSpotlightDispatchObject)init;
@end

@implementation IMDCoreSpotlightDispatchObject

+ (id)sharedInstance
{
  if (qword_1EDBE62D8 != -1)
  {
    sub_1B7CFA478();
  }

  v3 = qword_1EDBE7940;

  return v3;
}

- (IMDCoreSpotlightDispatchObject)init
{
  v3.receiver = self;
  v3.super_class = IMDCoreSpotlightDispatchObject;
  result = [(IMDCoreSpotlightDispatchObject *)&v3 init];
  if (result)
  {
    *&result->_allowsOverrideOfObjects = 16843009;
  }

  return result;
}

@end