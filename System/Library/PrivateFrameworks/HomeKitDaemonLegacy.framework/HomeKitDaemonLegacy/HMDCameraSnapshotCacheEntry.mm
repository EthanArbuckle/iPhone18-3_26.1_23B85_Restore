@interface HMDCameraSnapshotCacheEntry
- (HMDCameraSnapshotCacheEntry)initWithSnapshotCharacteristicEventUUID:(id)d snapshotFile:(id)file timer:(id)timer;
- (id)attributeDescriptions;
@end

@implementation HMDCameraSnapshotCacheEntry

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  snapshotCharacteristicEventUUID = [(HMDCameraSnapshotCacheEntry *)self snapshotCharacteristicEventUUID];
  v5 = [v3 initWithName:@"Characteristic Event UUID" value:snapshotCharacteristicEventUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  snapshotFile = [(HMDCameraSnapshotCacheEntry *)self snapshotFile];
  v8 = [v6 initWithName:@"File" value:snapshotFile];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCameraSnapshotCacheEntry)initWithSnapshotCharacteristicEventUUID:(id)d snapshotFile:(id)file timer:(id)timer
{
  dCopy = d;
  fileCopy = file;
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDCameraSnapshotCacheEntry;
  v12 = [(HMDCameraSnapshotCacheEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_snapshotCharacteristicEventUUID, d);
    objc_storeStrong(&v13->_snapshotFile, file);
    objc_storeStrong(&v13->_timer, timer);
  }

  return v13;
}

@end