@interface ICASSnapshotHealthPrivateEventData
- (ICASSnapshotHealthPrivateEventData)initWithSnapshotHealthPrivateSessionID:(id)d;
- (id)toDict;
@end

@implementation ICASSnapshotHealthPrivateEventData

- (ICASSnapshotHealthPrivateEventData)initWithSnapshotHealthPrivateSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSnapshotHealthPrivateEventData;
  v6 = [(ICASSnapshotHealthPrivateEventData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotHealthPrivateSessionID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"snapshotHealthPrivateSessionID";
  snapshotHealthPrivateSessionID = [(ICASSnapshotHealthPrivateEventData *)self snapshotHealthPrivateSessionID];
  if (snapshotHealthPrivateSessionID)
  {
    snapshotHealthPrivateSessionID2 = [(ICASSnapshotHealthPrivateEventData *)self snapshotHealthPrivateSessionID];
  }

  else
  {
    snapshotHealthPrivateSessionID2 = objc_opt_new();
  }

  v5 = snapshotHealthPrivateSessionID2;
  v10[0] = snapshotHealthPrivateSessionID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end