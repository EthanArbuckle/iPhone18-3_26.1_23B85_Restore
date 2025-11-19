@interface FALocationSharingModificationClient
- (FALocationSharingModificationClient)init;
@end

@implementation FALocationSharingModificationClient

- (FALocationSharingModificationClient)init
{
  v6.receiver = self;
  v6.super_class = FALocationSharingModificationClient;
  v2 = [(FALocationSharingModificationClient *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x277D4B9F8]);
  v4 = _stLocationSharingModificationClient;
  _stLocationSharingModificationClient = v3;

  return v2;
}

@end