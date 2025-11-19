@interface NTPBPersonalizationLocalData(FCAdditions)
- (id)remoteRecord;
- (void)openChangeGroupDeltasByFeatureKey;
- (void)setRemoteRecord:()FCAdditions;
@end

@implementation NTPBPersonalizationLocalData(FCAdditions)

- (id)remoteRecord
{
  v2 = [a1 remoteRecordData];
  if (v2)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = objc_opt_class();
    v5 = [a1 remoteRecordData];
    v6 = [v3 nf_securelyUnarchiveObjectOfClass:v4 withData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)openChangeGroupDeltasByFeatureKey
{
  v1 = [a1 openChangeGroupDeltas];
  v2 = [v1 fc_dictionaryWithKeyBlock:&__block_literal_global_155];
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
    [a1 setRemoteRecordData:v4];
  }

  else
  {

    [a1 setRemoteRecordData:?];
  }
}

@end