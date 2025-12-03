@interface NTPBPersonalizationLocalData(FCAdditions)
- (id)remoteRecord;
- (void)openChangeGroupDeltasByFeatureKey;
- (void)setRemoteRecord:()FCAdditions;
@end

@implementation NTPBPersonalizationLocalData(FCAdditions)

- (id)remoteRecord
{
  remoteRecordData = [self remoteRecordData];
  if (remoteRecordData)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = objc_opt_class();
    remoteRecordData2 = [self remoteRecordData];
    v6 = [v3 nf_securelyUnarchiveObjectOfClass:v4 withData:remoteRecordData2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)openChangeGroupDeltasByFeatureKey
{
  openChangeGroupDeltas = [self openChangeGroupDeltas];
  v2 = [openChangeGroupDeltas fc_dictionaryWithKeyBlock:&__block_literal_global_155];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (void)setRemoteRecord:()FCAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
    [self setRemoteRecordData:v4];
  }

  else
  {

    [self setRemoteRecordData:?];
  }
}

@end