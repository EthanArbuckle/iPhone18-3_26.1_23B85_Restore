@interface HDCloudSyncTarget
- (BOOL)isEqual:(id)a3;
- (HDCloudSyncTarget)init;
- (HDCloudSyncTarget)initWithPurpose:(int64_t)a3 container:(id)a4 zoneIdentifier:(id)a5 storeRecord:(id)a6 store:(id)a7 options:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)targetByAddingOptions:(unint64_t)a3;
- (id)targetByRemovingOptions:(unint64_t)a3;
- (id)targetByUpdatingPurpose:(int64_t)a3;
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

- (HDCloudSyncTarget)initWithPurpose:(int64_t)a3 container:(id)a4 zoneIdentifier:(id)a5 storeRecord:(id)a6 store:(id)a7 options:(unint64_t)a8
{
  v13 = a4;
  v14 = a5;
  v26 = a6;
  v25 = a7;
  v15 = [v13 containerIdentifier];
  v16 = [v14 containerIdentifier];
  v17 = [v15 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HDCloudSyncTarget.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"[container.containerIdentifier isEqualToString:zoneIdentifier.containerIdentifier]"}];
  }

  v27.receiver = self;
  v27.super_class = HDCloudSyncTarget;
  v18 = [(HDCloudSyncTarget *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_purpose = a3;
    objc_storeStrong(&v18->_container, a4);
    objc_storeStrong(&v19->_zoneIdentifier, a5);
    objc_storeStrong(&v19->_storeRecord, a6);
    objc_storeStrong(&v19->_store, a7);
    v19->_options = a8;
  }

  return v19;
}

- (id)targetByAddingOptions:(unint64_t)a3
{
  v3 = [[HDCloudSyncTarget alloc] initWithPurpose:self->_purpose container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options | a3];

  return v3;
}

- (id)targetByRemovingOptions:(unint64_t)a3
{
  v3 = [[HDCloudSyncTarget alloc] initWithPurpose:self->_purpose container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options & ~a3];

  return v3;
}

- (id)targetByUpdatingPurpose:(int64_t)a3
{
  v3 = [[HDCloudSyncTarget alloc] initWithPurpose:a3 container:self->_container zoneIdentifier:self->_zoneIdentifier storeRecord:self->_storeRecord store:self->_store options:self->_options];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HDCloudSyncTargetPurposeToString(self->_purpose);
  v5 = HDCloudSyncTargetOptionsToString(self->_options);
  v6 = [(CKContainer *)self->_container containerIdentifier];
  v7 = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier zoneIdentifier];
  v8 = [v7 zoneName];
  v9 = [(HDCloudSyncRecord *)self->_storeRecord record];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  v12 = [v3 stringWithFormat:@"<%@ Target: (%@) [%@] %@ : %@>", v4, v5, v6, v8, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  purpose = self->_purpose;
  container = self->_container;
  zoneIdentifier = self->_zoneIdentifier;
  storeRecord = self->_storeRecord;
  store = self->_store;
  options = self->_options;

  return [v4 initWithPurpose:purpose container:container zoneIdentifier:zoneIdentifier storeRecord:storeRecord store:store options:options];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKContainer *)self->_container containerIdentifier];
    v6 = [v4 container];
    v7 = [v6 containerIdentifier];
    if ([v5 isEqualToString:v7])
    {
      zoneIdentifier = self->_zoneIdentifier;
      v9 = [v4 zoneIdentifier];
      if ([(HDCloudSyncZoneIdentifier *)zoneIdentifier isEqual:v9])
      {
        storeRecord = self->_storeRecord;
        v11 = [v4 storeRecord];
        v12 = [(HDCloudSyncStoreRecord *)storeRecord isEqual:v11];
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
  v3 = [(CKContainer *)self->_container containerIdentifier];
  v4 = [v3 hash];
  v5 = [(HDCloudSyncZoneIdentifier *)self->_zoneIdentifier hash]^ v4;
  v6 = [(HDCloudSyncRecord *)self->_storeRecord record];
  v7 = [v6 recordID];
  v8 = [v7 hash];

  return v5 ^ v8;
}

@end