@interface ICASSnapshotHealthPrivateDeviceData
- (ICASSnapshotHealthPrivateDeviceData)initWithSnapshotHealthPrivateDeviceID:(id)d;
- (id)toDict;
@end

@implementation ICASSnapshotHealthPrivateDeviceData

- (ICASSnapshotHealthPrivateDeviceData)initWithSnapshotHealthPrivateDeviceID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSnapshotHealthPrivateDeviceData;
  v6 = [(ICASSnapshotHealthPrivateDeviceData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotHealthPrivateDeviceID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"snapshotHealthPrivateDeviceID";
  snapshotHealthPrivateDeviceID = [(ICASSnapshotHealthPrivateDeviceData *)self snapshotHealthPrivateDeviceID];
  if (snapshotHealthPrivateDeviceID)
  {
    snapshotHealthPrivateDeviceID2 = [(ICASSnapshotHealthPrivateDeviceData *)self snapshotHealthPrivateDeviceID];
  }

  else
  {
    snapshotHealthPrivateDeviceID2 = objc_opt_new();
  }

  v5 = snapshotHealthPrivateDeviceID2;
  v10[0] = snapshotHealthPrivateDeviceID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end