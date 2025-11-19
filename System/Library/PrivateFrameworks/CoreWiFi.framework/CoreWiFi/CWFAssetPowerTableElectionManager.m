@interface CWFAssetPowerTableElectionManager
- (BOOL)performVersionFetch:(id)a3;
- (BOOL)powerTableReadiness:(id)a3 voter:(int64_t)a4 vote:(BOOL)a5;
- (BOOL)powerTableVote:(id)a3 voter:(int64_t)a4 vote:(BOOL)a5;
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

- (BOOL)performVersionFetch:(id)a3
{
  v4 = a3;
  v5 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v6 = [v5 powerTableInfo];

  v7 = [v6 allKeys];
  v8 = [v7 count];

  if (v8)
  {
    [v4 addEntriesFromDictionary:v6];
  }

  return v8 != 0;
}

- (BOOL)powerTableReadiness:(id)a3 voter:(int64_t)a4 vote:(BOOL)a5
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

- (BOOL)powerTableVote:(id)a3 voter:(int64_t)a4 vote:(BOOL)a5
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