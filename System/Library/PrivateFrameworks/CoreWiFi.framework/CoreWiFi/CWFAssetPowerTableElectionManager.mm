@interface CWFAssetPowerTableElectionManager
- (BOOL)performVersionFetch:(id)fetch;
- (BOOL)powerTableReadiness:(id)readiness voter:(int64_t)voter vote:(BOOL)vote;
- (BOOL)powerTableVote:(id)vote voter:(int64_t)voter vote:(BOOL)a5;
- (CWFAssetPowerTableElectionManager)init;
@end

@implementation CWFAssetPowerTableElectionManager

- (CWFAssetPowerTableElectionManager)init
{
  v5.receiver = self;
  v5.super_class = CWFAssetPowerTableElectionManager;
  v2 = [(CWFAssetPowerTableElector *)&v5 initWithNotificationCenter:0];
  v3 = v2;
  if (v2)
  {
    [(CWFAssetPowerTableElector *)v2 setDelegate:v2];
  }

  return v3;
}

- (BOOL)performVersionFetch:(id)fetch
{
  fetchCopy = fetch;
  wifiInterface = [(CWFAssetPowerTableElector *)self wifiInterface];
  powerTableInfo = [wifiInterface powerTableInfo];

  allKeys = [powerTableInfo allKeys];
  v8 = [allKeys count];

  if (v8)
  {
    [fetchCopy addEntriesFromDictionary:powerTableInfo];
  }

  return v8 != 0;
}

- (BOOL)powerTableReadiness:(id)readiness voter:(int64_t)voter vote:(BOOL)vote
{
  if (MEMORY[0x1EEE84670])
  {
    return CENSetPowerTableEvaluationReadiness();
  }

  else
  {
    return 0;
  }
}

- (BOOL)powerTableVote:(id)vote voter:(int64_t)voter vote:(BOOL)a5
{
  if (MEMORY[0x1EEE84668])
  {
    return CENCastPowerTableVote();
  }

  else
  {
    return 0;
  }
}

@end