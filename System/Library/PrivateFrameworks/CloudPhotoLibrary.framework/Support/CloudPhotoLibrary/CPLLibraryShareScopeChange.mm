@interface CPLLibraryShareScopeChange
- (id)ckRecordForLibraryShareSettingsWithZoneID:(id)d userID:(id)iD;
- (void)updateExitConfigFromPreviousScopeChange:(id)change;
- (void)updateLibraryShareSettingsWithCKRecord:(id)record;
- (void)updateWithExitConfigRecord:(id)record;
- (void)updateWithExitStatesRecord:(id)record;
@end

@implementation CPLLibraryShareScopeChange

- (void)updateWithExitStatesRecord:(id)record
{
  v5 = [record objectForKey:@"exitingParticipantUserIds"];
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

- (void)updateWithExitConfigRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKey:@"retentionPolicy"];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = integerValue == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  [(CPLLibraryShareScopeChange *)self setExitRetentionPolicy:v7];
  v8 = [recordCopy objectForKey:@"exitType"];
  v9 = v8;
  if (v8)
  {
    integerValue2 = [v8 integerValue];
    if (integerValue2 < 3)
    {
      v11 = integerValue2 + 1;
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
  v12 = [recordCopy objectForKey:@"exitSource"];
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

- (void)updateExitConfigFromPreviousScopeChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = changeCopy;
      -[CPLLibraryShareScopeChange setExitRetentionPolicy:](self, "setExitRetentionPolicy:", [v4 exitRetentionPolicy]);
      -[CPLLibraryShareScopeChange setExitType:](self, "setExitType:", [v4 exitType]);
      exitSource = [v4 exitSource];

      [(CPLLibraryShareScopeChange *)self setExitSource:exitSource];
    }
  }
}

- (void)updateLibraryShareSettingsWithCKRecord:(id)record
{
  recordCopy = record;
  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    v4 = [recordCopy cpl_legacyDecryptedObjectForKey:@"userScopeDefinedRulesEnc" validateClass:objc_opt_class()];
    [(CPLLibraryShareScopeChange *)self setUserDefinedRules:v4];
  }

  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
  {
    v5 = [recordCopy cpl_legacyDecryptedObjectForKey:@"userViewedTrashNotificationDateEnc" validateClass:objc_opt_class()];
    [(CPLLibraryShareScopeChange *)self setUserViewedParticipantTrashNotificationDate:v5];
  }
}

- (id)ckRecordForLibraryShareSettingsWithZoneID:(id)d userID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    v8 = CPLLibraryShareSettingsRecordID(dCopy, iDCopy);
    if (v8)
    {
      v9 = [[CKRecord alloc] initWithRecordType:@"CPLScopeUserSettings" recordID:v8];
      userDefinedRules = [(CPLLibraryShareScopeChange *)self userDefinedRules];

      if (userDefinedRules)
      {
        userDefinedRules2 = [(CPLLibraryShareScopeChange *)self userDefinedRules];
        [v9 cpl_setLegacyEncryptedObject:userDefinedRules2 forKey:@"userScopeDefinedRulesEnc"];
      }

      if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsUserViewedParticipantTrashNotificationDateSyncing])
      {
        userViewedParticipantTrashNotificationDate = [(CPLLibraryShareScopeChange *)self userViewedParticipantTrashNotificationDate];
        [v9 cpl_setLegacyEncryptedObject:userViewedParticipantTrashNotificationDate forKey:@"userViewedTrashNotificationDateEnc"];
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