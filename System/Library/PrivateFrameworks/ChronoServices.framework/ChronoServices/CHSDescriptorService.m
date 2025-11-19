@interface CHSDescriptorService
- (CHSDescriptorService)init;
@end

@implementation CHSDescriptorService

- (CHSDescriptorService)init
{
  v6.receiver = self;
  v6.super_class = CHSDescriptorService;
  v2 = [(CHSDescriptorService *)&v6 init];
  if (v2)
  {
    v3 = +[CHSChronoServicesConnection sharedInstance];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

@end