@interface _HDCloudSyncStorePersistableState
- (_HDCloudSyncStorePersistableState)initWithServerChangeToken:(id)a3 baselineEpoch:(unint64_t)a4 rebaseDeadline:(id)a5 lastSyncDate:(id)a6 emptyZones:(id)a7 lastCheckDate:(id)a8 ownerIdentifier:(id)a9 containerIdentifier:(id)a10 syncIdentity:(id)a11 syncProtocolVersion:(int)a12;
- (_HDCloudSyncStorePersistableState)stateWithEmptyZones:(id)a3;
- (_HDCloudSyncStorePersistableState)stateWithGapEncountered:(BOOL)a3;
- (_HDCloudSyncStorePersistableState)stateWithPendingFullSync:(BOOL)a3;
- (_HDCloudSyncStorePersistableState)stateWithServerChangeToken:(id)a3;
- (_HDCloudSyncStorePersistableState)stateWithSyncProtocolVersion:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stateByRecordingLastCheckDate:(id)a3;
- (id)stateByRecordingLastSyncDate:(id)a3;
- (id)stateByResettingRebaselineDeadline;
@end

@implementation _HDCloudSyncStorePersistableState

- (_HDCloudSyncStorePersistableState)initWithServerChangeToken:(id)a3 baselineEpoch:(unint64_t)a4 rebaseDeadline:(id)a5 lastSyncDate:(id)a6 emptyZones:(id)a7 lastCheckDate:(id)a8 ownerIdentifier:(id)a9 containerIdentifier:(id)a10 syncIdentity:(id)a11 syncProtocolVersion:(int)a12
{
  v35 = a3;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v36.receiver = self;
  v36.super_class = _HDCloudSyncStorePersistableState;
  v22 = [(_HDCloudSyncStorePersistableState *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_serverChangeToken, a3);
    v23->_baselineEpoch = a4;
    objc_storeStrong(&v23->_rebaseDeadline, a5);
    objc_storeStrong(&v23->_lastSyncDate, a6);
    objc_storeStrong(&v23->_emptyZoneDateByZoneID, a7);
    objc_storeStrong(&v23->_lastCheckDate, a8);
    v24 = [v19 copy];
    ownerIdentifier = v23->_ownerIdentifier;
    v23->_ownerIdentifier = v24;

    v26 = [v20 copy];
    containerIdentifier = v23->_containerIdentifier;
    v23->_containerIdentifier = v26;

    v28 = [v21 copy];
    syncIdentity = v23->_syncIdentity;
    v23->_syncIdentity = v28;

    *&v23->_hasEncounteredGapInCurrentEpoch = 0;
    v23->_syncProtocolVersion = a12;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LODWORD(v6) = self->_syncProtocolVersion;
  result = [v4 initWithServerChangeToken:self->_serverChangeToken baselineEpoch:self->_baselineEpoch rebaseDeadline:self->_rebaseDeadline lastSyncDate:self->_lastSyncDate emptyZones:self->_emptyZoneDateByZoneID lastCheckDate:self->_lastCheckDate ownerIdentifier:self->_ownerIdentifier containerIdentifier:self->_containerIdentifier syncIdentity:self->_syncIdentity syncProtocolVersion:v6];
  *(result + 8) = self->_hasEncounteredGapInCurrentEpoch;
  *(result + 9) = self->_pendingFullSync;
  return result;
}

- (_HDCloudSyncStorePersistableState)stateWithServerChangeToken:(id)a3
{
  v4 = a3;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = v5[5];
  v5[5] = v4;

  return v5;
}

- (id)stateByResettingRebaselineDeadline
{
  v2 = [(_HDCloudSyncStorePersistableState *)self copy];
  v3 = v2[7];
  v2[7] = 0;

  return v2;
}

- (id)stateByRecordingLastSyncDate:(id)a3
{
  v4 = a3;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [v4 copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (_HDCloudSyncStorePersistableState)stateWithEmptyZones:(id)a3
{
  v4 = a3;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [v4 copy];

  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (id)stateByRecordingLastCheckDate:(id)a3
{
  v4 = a3;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [v4 copy];

  v7 = v5[10];
  v5[10] = v6;

  return v5;
}

- (_HDCloudSyncStorePersistableState)stateWithGapEncountered:(BOOL)a3
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[8] = a3;

  return v4;
}

- (_HDCloudSyncStorePersistableState)stateWithSyncProtocolVersion:(int)a3
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[3] = a3;

  return v4;
}

- (_HDCloudSyncStorePersistableState)stateWithPendingFullSync:(BOOL)a3
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[9] = a3;

  return v4;
}

@end