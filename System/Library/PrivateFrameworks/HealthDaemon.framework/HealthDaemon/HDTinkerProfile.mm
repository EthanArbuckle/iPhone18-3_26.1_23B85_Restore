@interface HDTinkerProfile
- (BOOL)setDSID:(id)d error:(id *)error;
- (BOOL)setPairedNRDeviceUUID:(id)d error:(id *)error;
- (HDTinkerProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier;
- (id)dsidWithError:(id *)error;
- (id)pairedNRDeviceUUIDWithError:(id *)error;
- (void)awakeFromDisk;
@end

@implementation HDTinkerProfile

- (HDTinkerProfile)initWithDirectoryPath:(id)path medicalIDDirectoryPath:(id)directoryPath daemon:(id)daemon profileIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HDTinkerProfile;
  v6 = [(HDProfile *)&v10 initWithDirectoryPath:path medicalIDDirectoryPath:directoryPath daemon:daemon profileIdentifier:identifier];
  if (v6)
  {
    v7 = [[HDAttachmentManager alloc] initWithProfile:v6];
    attachmentManager = v6->_attachmentManager;
    v6->_attachmentManager = v7;
  }

  return v6;
}

- (void)awakeFromDisk
{
  if (![(HDProfile *)self testModeEnabled])
  {
    database = [(HDProfile *)self database];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__HDTinkerProfile_awakeFromDisk__block_invoke;
    v5[3] = &unk_278613968;
    v5[4] = self;
    [database performWhenDataProtectedByFirstUnlockIsAvailable:v5];

    v4.receiver = self;
    v4.super_class = HDTinkerProfile;
    [(HDProfile *)&v4 awakeFromDisk];
  }
}

void __32__HDTinkerProfile_awakeFromDisk__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cloudSyncManager];
  v10 = 0;
  v3 = [v2 shareOwnerParticipantWithError:&v10];
  v4 = v10;

  if (!v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    v6 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v12 = v7;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup share owner participant upon profile awake from disk; assuming it is set for this launch.", buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v9 = *(a1 + 32);
        *buf = 138543362;
        v12 = v9;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: No share owner participant set after launch for this Tinker profile. Triggering deletion.", buf, 0xCu);
      }

      [*(a1 + 32) triggerDeletion];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)pairedNRDeviceUUIDWithError:(id *)error
{
  v4 = HDTinkerKeyValueDomainWithProfile(self);
  v5 = [v4 dataForKey:@"TinkerNRDeviceUUIDKey" error:error];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setPairedNRDeviceUUID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = HDTinkerKeyValueDomainWithProfile(self);
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dCopy requiringSecureCoding:1 error:error];

  if (v8)
  {
    v9 = [v7 setData:v8 forKey:@"TinkerNRDeviceUUIDKey" error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dsidWithError:(id *)error
{
  v4 = HDTinkerSyncedProtectedKeyValueDomainWithProfile(self);
  v5 = [v4 numberForKey:@"TinkerDSIDKey" error:error];

  return v5;
}

- (BOOL)setDSID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = HDTinkerSyncedProtectedKeyValueDomainWithProfile(self);
  LOBYTE(error) = [v7 setNumber:dCopy forKey:@"TinkerDSIDKey" error:error];

  return error;
}

@end