@interface BLTIDSService
- (BLTAbstractIDSDevice)defaultPairedDevice;
- (BLTIDSService)initWithService:(id)a3;
@end

@implementation BLTIDSService

- (BLTIDSService)initWithService:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLTIDSService;
  v5 = [(BLTIDSService *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v4];
    service = v5->_service;
    v5->_service = v6;
  }

  return v5;
}

- (BLTAbstractIDSDevice)defaultPairedDevice
{
  v14 = *MEMORY[0x277D85DE8];
  [(IDSService *)self->_service devices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = [[BLTIDSDevice alloc] initWithIDSDevice:v6];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

@end