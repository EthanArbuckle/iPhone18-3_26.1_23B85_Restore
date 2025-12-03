@interface ICASMiniSnapshotData
- (ICASMiniSnapshotData)initWithMiniAccountSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASMiniSnapshotData

- (ICASMiniSnapshotData)initWithMiniAccountSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASMiniSnapshotData;
  v6 = [(ICASMiniSnapshotData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_miniAccountSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"miniAccountSummary";
  miniAccountSummary = [(ICASMiniSnapshotData *)self miniAccountSummary];
  if (miniAccountSummary)
  {
    miniAccountSummary2 = [(ICASMiniSnapshotData *)self miniAccountSummary];
  }

  else
  {
    miniAccountSummary2 = objc_opt_new();
  }

  v5 = miniAccountSummary2;
  v10[0] = miniAccountSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end