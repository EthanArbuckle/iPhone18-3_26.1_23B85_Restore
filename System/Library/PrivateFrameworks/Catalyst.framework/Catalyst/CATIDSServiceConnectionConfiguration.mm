@interface CATIDSServiceConnectionConfiguration
- (CATIDSServiceConnectionConfiguration)init;
@end

@implementation CATIDSServiceConnectionConfiguration

- (CATIDSServiceConnectionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CATIDSServiceConnectionConfiguration;
  result = [(CATIDSServiceConnectionConfiguration *)&v3 init];
  if (result)
  {
    *&result->_maxDataSendSize = xmmword_2432FE1E0;
    *&result->_keepAliveCheckinInterval = xmmword_2432FE1F0;
    *&result->_missingItemsCheckinInterval = xmmword_2432FE200;
  }

  return result;
}

@end