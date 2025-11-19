@interface HMDCameraSnapshotCacheEntry
- (HMDCameraSnapshotCacheEntry)initWithSnapshotCharacteristicEventUUID:(id)a3 snapshotFile:(id)a4 timer:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMDCameraSnapshotCacheEntry

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraSnapshotCacheEntry *)self snapshotCharacteristicEventUUID];
  v5 = [v3 initWithName:@"Characteristic Event UUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraSnapshotCacheEntry *)self snapshotFile];
  v8 = [v6 initWithName:@"File" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraSnapshotCacheEntry)initWithSnapshotCharacteristicEventUUID:(id)a3 snapshotFile:(id)a4 timer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCameraSnapshotCacheEntry;
  v12 = [(HMDCameraSnapshotCacheEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_snapshotCharacteristicEventUUID, a3);
    objc_storeStrong(&v13->_snapshotFile, a4);
    objc_storeStrong(&v13->_timer, a5);
  }

  return v13;
}

@end