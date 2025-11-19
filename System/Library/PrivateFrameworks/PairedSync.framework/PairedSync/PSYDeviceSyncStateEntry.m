@interface PSYDeviceSyncStateEntry
- (BOOL)hasCompletedInitialOrMigrationSync;
- (BOOL)hasCompletedInitialSync;
- (BOOL)hasCompletedSync;
- (BOOL)isEqual:(id)a3;
- (PSYDeviceSyncStateEntry)initWithCoder:(id)a3;
- (PSYDeviceSyncStateEntry)initWithPairingID:(id)a3 syncState:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSYDeviceSyncStateEntry

- (PSYDeviceSyncStateEntry)initWithPairingID:(id)a3 syncState:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PSYDeviceSyncStateEntry;
  v8 = [(PSYDeviceSyncStateEntry *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairingID, a3);
    v9->_initialSyncState = a4;
    v10 = +[PSYRegistrySingleton registry];
    v11 = [v10 deviceForPairingID:v7];

    if (!v11)
    {

      v12 = 0;
      goto LABEL_6;
    }

    v9->_syncSwitchIndex = [v10 lastSyncSwitchIndex];
    v9->_migrationIndex = [v10 migrationCountForPairingID:v7];
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (BOOL)hasCompletedInitialSync
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = psy_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = psy_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25DF25000, v5, OS_LOG_TYPE_DEFAULT, "NRPDR has completed initial sync %@", &v9, 0xCu);
    }
  }

  result = self->_initialSyncState == 3;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasCompletedInitialOrMigrationSync
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[PSYRegistrySingleton registry];
  v4 = [v3 deviceForPairingID:self->_pairingID];
  v5 = [v4 valueForProperty:*MEMORY[0x277D37BD0]];
  v6 = [v5 integerValue];

  v7 = self->_initialSyncState == 3 && self->_migrationIndex == v6;
  v8 = psy_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = psy_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
      migrationIndex = self->_migrationIndex;
      v13 = @"NO";
      v16 = 138413058;
      v17 = v11;
      if (v7)
      {
        v13 = @"YES";
      }

      v18 = 1024;
      v19 = migrationIndex;
      v20 = 1024;
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_25DF25000, v10, OS_LOG_TYPE_DEFAULT, "NRPDR initial sync state %@;           migration index: %d;           nr migration index: %d           hasCompletedInitialOrMigrationSync %@;", &v16, 0x22u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)hasCompletedSync
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[PSYRegistrySingleton registry];
  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSUUID *)self->_pairingID UUIDString];
      v8 = [v3 switchIndex];
      syncSwitchIndex = self->_syncSwitchIndex;
      v14 = 138412802;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = syncSwitchIndex;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "NRPDR %@ syncSwitchIndex: %ld prefs switchIndex: %ld", &v14, 0x20u);
    }
  }

  if ([(PSYDeviceSyncStateEntry *)self hasCompletedInitialOrMigrationSync])
  {
    v10 = self->_syncSwitchIndex;
    v11 = [v3 switchIndex] == v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  pairingID = self->_pairingID;
  v5 = a3;
  [v5 encodeObject:pairingID forKey:@"pairingID"];
  [v5 encodeInteger:self->_initialSyncState forKey:@"syncState"];
  [v5 encodeInt32:self->_syncSwitchIndex forKey:@"syncSwitchIndex"];
  [v5 encodeInt32:self->_migrationIndex forKey:@"migrationIndex"];
}

- (PSYDeviceSyncStateEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSYDeviceSyncStateEntry;
  v5 = [(PSYDeviceSyncStateEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    pairingID = v5->_pairingID;
    v5->_pairingID = v6;

    v5->_initialSyncState = [v4 decodeIntegerForKey:@"syncState"];
    v5->_syncSwitchIndex = [v4 decodeInt32ForKey:@"syncSwitchIndex"];
    v5->_migrationIndex = [v4 decodeInt32ForKey:@"migrationIndex"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_pairingID UUIDString];
  v7 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
  syncSwitchIndex = self->_syncSwitchIndex;
  migrationIndex = self->_migrationIndex;
  v10 = [(PSYDeviceSyncStateEntry *)self hasCompletedSync];
  v11 = @"Not Completed";
  if (v10)
  {
    v11 = @"Completed";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p pairingID=%@ initialSyncState=%@ syncSwitchIndex=%lu migrationIndex=%lu syncState=%@>", v5, self, v6, v7, syncSwitchIndex, migrationIndex, v11];;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = v4;
    v6 = [(NSUUID *)self->_pairingID isEqual:v5->_pairingID]&& self->_initialSyncState == v5->_initialSyncState && self->_syncSwitchIndex == v5->_syncSwitchIndex && self->_migrationIndex == v5->_migrationIndex;
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_pairingID hash];
  v4 = self->_initialSyncState - v3 + 32 * v3;
  v5 = self->_syncSwitchIndex - v4 + 32 * v4;
  return self->_migrationIndex - v5 + 32 * v5 + 923521;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 16), self->_pairingID);
  *(v4 + 24) = self->_initialSyncState;
  *(v4 + 8) = self->_syncSwitchIndex;
  *(v4 + 12) = self->_migrationIndex;
  return v4;
}

@end