@interface CPLLibraryShareScopeChange
- (id)ckRecordForLibraryShareSettingsWithZoneID:(id)a3 userID:(id)a4;
- (void)updateExitConfigFromPreviousScopeChange:(id)a3;
- (void)updateLibraryShareSettingsWithCKRecord:(id)a3;
- (void)updateWithExitConfigRecord:(id)a3;
- (void)updateWithExitStatesRecord:(id)a3;
@end

@implementation CPLLibraryShareScopeChange

- (void)updateWithExitStatesRecord:(id)a3
{
  v5 = [a3 objectForKey:@"exitingParticipantUserIds"];
  if ([v5 count])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(CPLLibraryShareScopeChange *)self setExitingUserIdentifiers:v4];
}

- (void)updateWithExitConfigRecord:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKey:@"retentionPolicy"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6 == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  [(CPLLibraryShareScopeChange *)self setExitRetentionPolicy:v7];
  v8 = [v16 objectForKey:@"exitType"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
    if (v10 < 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  [(CPLLibraryShareScopeChange *)self setExitType:v11];
  v12 = [v16 objectForKey:@"exitSource"];
  v13 = v12;
  if (v12 && (v14 = [v12 integerValue], v14 <= 4))
  {
    v15 = qword_100243E20[v14];
  }

  else
  {
    v15 = 0;
  }

  [(CPLLibraryShareScopeChange *)self setExitSource:v15];
}

- (void)updateExitConfigFromPreviousScopeChange:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
      -[CPLLibraryShareScopeChange setExitRetentionPolicy:](self, "setExitRetentionPolicy:", [v4 exitRetentionPolicy]);
      -[CPLLibraryShareScopeChange setExitType:](self, "setExitType:", [v4 exitType]);
      v5 = [v4 exitSource];

      [(CPLLibraryShareScopeChange *)self setExitSource:v5];
    }
  }
}

- (void)updateLibraryShareSettingsWithCKRecord:(id)a3
{
  v6 = a3;
  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    v4 = [v6 cpl_legacyDecryptedObjectForKey:@"userScopeDefinedRulesEnc" validateClass:objc_opt_class()];
    [(CPLLibraryShareScopeChange *)self setUserDefinedRules:v4];
  }

  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
  {
    v5 = [v6 cpl_legacyDecryptedObjectForKey:@"userViewedTrashNotificationDateEnc" validateClass:objc_opt_class()];
    [(CPLLibraryShareScopeChange *)self setUserViewedParticipantTrashNotificationDate:v5];
  }
}

- (id)ckRecordForLibraryShareSettingsWithZoneID:(id)a3 userID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    v8 = CPLLibraryShareSettingsRecordID(v6, v7);
    if (v8)
    {
      v9 = [[CKRecord alloc] initWithRecordType:@"CPLScopeUserSettings" recordID:v8];
      v10 = [(CPLLibraryShareScopeChange *)self userDefinedRules];

      if (v10)
      {
        v11 = [(CPLLibraryShareScopeChange *)self userDefinedRules];
        [v9 cpl_setLegacyEncryptedObject:v11 forKey:@"userScopeDefinedRulesEnc"];
      }

      if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
      {
        v12 = [(CPLLibraryShareScopeChange *)self userViewedParticipantTrashNotificationDate];
        [v9 cpl_setLegacyEncryptedObject:v12 forKey:@"userViewedTrashNotificationDateEnc"];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end