@interface _HDCloudSyncStorePersistableState
- (_HDCloudSyncStorePersistableState)initWithServerChangeToken:(id)token baselineEpoch:(unint64_t)epoch rebaseDeadline:(id)deadline lastSyncDate:(id)date emptyZones:(id)zones lastCheckDate:(id)checkDate ownerIdentifier:(id)identifier containerIdentifier:(id)self0 syncIdentity:(id)self1 syncProtocolVersion:(int)self2;
- (_HDCloudSyncStorePersistableState)stateWithEmptyZones:(id)zones;
- (_HDCloudSyncStorePersistableState)stateWithGapEncountered:(BOOL)encountered;
- (_HDCloudSyncStorePersistableState)stateWithPendingFullSync:(BOOL)sync;
- (_HDCloudSyncStorePersistableState)stateWithServerChangeToken:(id)token;
- (_HDCloudSyncStorePersistableState)stateWithSyncProtocolVersion:(int)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stateByRecordingLastCheckDate:(id)date;
- (id)stateByRecordingLastSyncDate:(id)date;
- (id)stateByResettingRebaselineDeadline;
@end

@implementation _HDCloudSyncStorePersistableState

- (_HDCloudSyncStorePersistableState)initWithServerChangeToken:(id)token baselineEpoch:(unint64_t)epoch rebaseDeadline:(id)deadline lastSyncDate:(id)date emptyZones:(id)zones lastCheckDate:(id)checkDate ownerIdentifier:(id)identifier containerIdentifier:(id)self0 syncIdentity:(id)self1 syncProtocolVersion:(int)self2
{
  tokenCopy = token;
  deadlineCopy = deadline;
  dateCopy = date;
  zonesCopy = zones;
  checkDateCopy = checkDate;
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  identityCopy = identity;
  v36.receiver = self;
  v36.super_class = _HDCloudSyncStorePersistableState;
  v22 = [(_HDCloudSyncStorePersistableState *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_serverChangeToken, token);
    v23->_baselineEpoch = epoch;
    objc_storeStrong(&v23->_rebaseDeadline, deadline);
    objc_storeStrong(&v23->_lastSyncDate, date);
    objc_storeStrong(&v23->_emptyZoneDateByZoneID, zones);
    objc_storeStrong(&v23->_lastCheckDate, checkDate);
    v24 = [identifierCopy copy];
    ownerIdentifier = v23->_ownerIdentifier;
    v23->_ownerIdentifier = v24;

    v26 = [containerIdentifierCopy copy];
    containerIdentifier = v23->_containerIdentifier;
    v23->_containerIdentifier = v26;

    v28 = [identityCopy copy];
    syncIdentity = v23->_syncIdentity;
    v23->_syncIdentity = v28;

    *&v23->_hasEncounteredGapInCurrentEpoch = 0;
    v23->_syncProtocolVersion = version;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LODWORD(v6) = self->_syncProtocolVersion;
  result = [v4 initWithServerChangeToken:self->_serverChangeToken baselineEpoch:self->_baselineEpoch rebaseDeadline:self->_rebaseDeadline lastSyncDate:self->_lastSyncDate emptyZones:self->_emptyZoneDateByZoneID lastCheckDate:self->_lastCheckDate ownerIdentifier:self->_ownerIdentifier containerIdentifier:self->_containerIdentifier syncIdentity:self->_syncIdentity syncProtocolVersion:v6];
  *(result + 8) = self->_hasEncounteredGapInCurrentEpoch;
  *(result + 9) = self->_pendingFullSync;
  return result;
}

- (_HDCloudSyncStorePersistableState)stateWithServerChangeToken:(id)token
{
  tokenCopy = token;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = v5[5];
  v5[5] = tokenCopy;

  return v5;
}

- (id)stateByResettingRebaselineDeadline
{
  v2 = [(_HDCloudSyncStorePersistableState *)self copy];
  v3 = v2[7];
  v2[7] = 0;

  return v2;
}

- (id)stateByRecordingLastSyncDate:(id)date
{
  dateCopy = date;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [dateCopy copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (_HDCloudSyncStorePersistableState)stateWithEmptyZones:(id)zones
{
  zonesCopy = zones;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [zonesCopy copy];

  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (id)stateByRecordingLastCheckDate:(id)date
{
  dateCopy = date;
  v5 = [(_HDCloudSyncStorePersistableState *)self copy];
  v6 = [dateCopy copy];

  v7 = v5[10];
  v5[10] = v6;

  return v5;
}

- (_HDCloudSyncStorePersistableState)stateWithGapEncountered:(BOOL)encountered
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[8] = encountered;

  return v4;
}

- (_HDCloudSyncStorePersistableState)stateWithSyncProtocolVersion:(int)version
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[3] = version;

  return v4;
}

- (_HDCloudSyncStorePersistableState)stateWithPendingFullSync:(BOOL)sync
{
  v4 = [(_HDCloudSyncStorePersistableState *)self copy];
  v4[9] = sync;

  return v4;
}

@end