@interface IDSService(PB)
- (id)pb_mineTinkerDevices;
@end

@implementation IDSService(PB)

- (id)pb_mineTinkerDevices
{
  v2 = [self linkedDevicesWithRelationship:1];
  v3 = [self linkedDevicesWithRelationship:2];
  if (v2 | v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count") + objc_msgSend(v2, "count")}];
    v5 = v4;
    if (v2)
    {
      [v4 addObjectsFromArray:v2];
    }

    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end