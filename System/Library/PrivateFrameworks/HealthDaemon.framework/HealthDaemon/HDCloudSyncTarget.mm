@interface HDCloudSyncTarget
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncTarget)init;
- (HDCloudSyncTarget)initWithPurpose:(int64_t)purpose container:(id)container zoneIdentifier:(id)identifier storeRecord:(id)record store:(id)store options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)targetByAddingOptions:(unint64_t)options;
- (id)targetByRemovingOptions:(unint64_t)options;
- (id)targetByUpdatingPurpose:(int64_t)purpose;
- (unint64_t)hash;
@end

@implementation HDCloudSyncTarget

- (HDCloudSyncTarget)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncTarget)initWithPurpose:(int64_t)purpose container:(id)container zoneIdentifier:(id)identifier storeRecord:(id)record store:(id)store options:(unint64_t)options
{
  containerCopy = container;
  identifierCopy = identifier;
  recordCopy = record;
  storeCopy = store;
  containerIdentifier = [containerCopy containerIdentifier];
  containerIdentifier2 = [identifierCopy containerIdentifier];
  v17 = [containerIdentifier isEqualToString:containerIdentifier2];

  if ((v17 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncTarget.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"[container.containerIdentifier isEqualToString:zoneIdentifier.containerIdentifier]"}];
  }

  v27.receiver = self;
  v27.super_class = HDCloudSyncTarget;
  v18 = [(HDCloudSyncTarget *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_purpose = purpose;
    objc_storeStrong(&v18->_container, container);
    objc_storeStrong(&v19->_zoneIdentifier, identifier);
    objc_storeStrong(&v19->_storeRecord, record);
    objc_storeStrong(&v19->_store, store);
    v19->_options = options;
  }

  return v19;
}

- (id)targetByAddingOptions:(unint64_t)options
{
  options = [[HDCloudSyncTarget alloc] initWithPurpose:self->_purpose container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options | options];

  return options;
}

- (id)targetByRemovingOptions:(unint64_t)options
{
  v3 = [[HDCloudSyncTarget alloc] initWithPurpose:self->_purpose container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options & ~options];

  return v3;
}

- (id)targetByUpdatingPurpose:(int64_t)purpose
{
  v3 = [[HDCloudSyncTarget alloc] initWithPurpose:purpose container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HDCloudSyncTargetPurposeToString(self->_purpose);
  v5 = HDCloudSyncTargetOptionsToString(self->_options);
  containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
  zoneIdentifier = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier zoneIdentifier];
  zoneName = [zoneIdentifier zoneName];
  record = [(HDCloudSyncRecord *)self->_storeRecord record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v12 = [v3 stringWithFormat:@"<%@ Target: (%@) [%@] %@ : %@>", v4, v5, containerIdentifier, zoneName, recordName];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  purpose = self->_purpose;
  container = self->_container;
  zoneIdentifier = self->_zoneIdentifier;
  storeRecord = self->_storeRecord;
  store = self->_store;
  options = self->_options;

  return [v4 initWithPurpose:purpose container:container zoneIdentifier:zoneIdentifier storeRecord:storeRecord store:store options:options];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
    container = [equalCopy container];
    containerIdentifier2 = [container containerIdentifier];
    if ([containerIdentifier isEqualToString:containerIdentifier2])
    {
      zoneIdentifier = self->_zoneIdentifier;
      zoneIdentifier = [equalCopy zoneIdentifier];
      if ([(HDCloudSyncZoneIdentifier *)zoneIdentifier isEqual:zoneIdentifier])
      {
        storeRecord = self->_storeRecord;
        storeRecord = [equalCopy storeRecord];
        v12 = [(HDCloudSyncStoreRecord *)storeRecord isEqual:storeRecord];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
  v4 = [containerIdentifier hash];
  v5 = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier hash]^ v4;
  record = [(HDCloudSyncRecord *)self->_storeRecord record];
  recordID = [record recordID];
  v8 = [recordID hash];

  return v5 ^ v8;
}

@end