@interface ACAccount(DMCEnrollment)
- (uint64_t)dmc_isUnremovableRemotelyManagedAccount;
@end

@implementation ACAccount(DMCEnrollment)

- (uint64_t)dmc_isUnremovableRemotelyManagedAccount
{
  v1 = [a1 dmc_remoteManagementAccount];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v3 = [v1 dmc_managementProfileIdentifier];
  v4 = [v3 length];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277D24648] sharedConfiguration];
  v6 = [v5 isProfileLocked];

  if (v6)
  {
    v7 = [MEMORY[0x277D24640] sharedConfiguration];
    v8 = [v7 isProvisionallyEnrolled] ^ 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

@end