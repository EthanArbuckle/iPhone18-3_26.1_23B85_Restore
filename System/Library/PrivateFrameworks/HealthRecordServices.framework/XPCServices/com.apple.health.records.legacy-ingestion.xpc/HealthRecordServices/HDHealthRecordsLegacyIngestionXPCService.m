@interface HDHealthRecordsLegacyIngestionXPCService
- (HDHealthRecordsLegacyIngestionXPCService)init;
- (id)remoteInterface;
@end

@implementation HDHealthRecordsLegacyIngestionXPCService

- (HDHealthRecordsLegacyIngestionXPCService)init
{
  v6.receiver = self;
  v6.super_class = HDHealthRecordsLegacyIngestionXPCService;
  v2 = [(HDHealthRecordsLegacyIngestionXPCService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HDHealthRecordsLegacyIngestionManager);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

- (id)remoteInterface
{
  v2 = objc_alloc_init(NSXPCInterface);

  return v2;
}

@end