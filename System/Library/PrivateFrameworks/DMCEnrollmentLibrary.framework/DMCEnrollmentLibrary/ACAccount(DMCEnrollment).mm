@interface ACAccount(DMCEnrollment)
- (uint64_t)dmc_isUnremovableRemotelyManagedAccount;
@end

@implementation ACAccount(DMCEnrollment)

- (uint64_t)dmc_isUnremovableRemotelyManagedAccount
{
  dmc_remoteManagementAccount = [self dmc_remoteManagementAccount];
  v2 = dmc_remoteManagementAccount;
  if (!dmc_remoteManagementAccount)
  {
    goto LABEL_5;
  }

  dmc_managementProfileIdentifier = [dmc_remoteManagementAccount dmc_managementProfileIdentifier];
  v4 = [dmc_managementProfileIdentifier length];

  if (!v4)
  {
    goto LABEL_5;
  }

  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  isProfileLocked = [mEMORY[0x277D24648] isProfileLocked];

  if (isProfileLocked)
  {
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    v8 = [mEMORY[0x277D24640] isProvisionallyEnrolled] ^ 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

@end