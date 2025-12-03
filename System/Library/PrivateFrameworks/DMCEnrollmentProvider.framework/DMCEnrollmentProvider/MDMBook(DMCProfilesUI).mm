@interface MDMBook(DMCProfilesUI)
- (BOOL)_isEnterpriseBook;
- (BOOL)_isExcludedFromBackup;
- (BOOL)_isExcludedFromCloudSync;
- (BOOL)_isUnableToExportToUnmanaged;
- (id)managedBookConfigurationInfo;
- (uint64_t)_hasManagedRestrictions;
@end

@implementation MDMBook(DMCProfilesUI)

- (id)managedBookConfigurationInfo
{
  if ([self _hasManagedRestrictions])
  {
    v2 = objc_opt_new();
    if ([self _isUninstalledOnMDMRemoval])
    {
      v3 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_WILL_BE_REMOVED");
      [v2 addObject:v3];
    }

    if ([self _isExcludedFromBackup])
    {
      v4 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_CANNOT_BACKUP");
      [v2 addObject:v4];
    }

    if ([self _isUnableToExportToUnmanaged])
    {
      v5 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_CANNOT_EXPORT_DATA_TO_UNMANAGED");
      [v2 addObject:v5];
    }

    if ([self _isExcludedFromCloudSync])
    {
      v6 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_CANNOT_CLOUD_SYNC");
      [v2 addObject:v6];
    }

    v7 = [v2 componentsJoinedByString:@"\n\n"];
  }

  else
  {
    v7 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOK_HAS_NO_RESTRICTIONS");
  }

  return v7;
}

- (uint64_t)_hasManagedRestrictions
{
  if ([self _isUninstalledOnMDMRemoval] & 1) != 0 || (objc_msgSend(self, "_isExcludedFromBackup") & 1) != 0 || (objc_msgSend(self, "_isExcludedFromCloudSync"))
  {
    return 1;
  }

  return [self _isUnableToExportToUnmanaged];
}

- (BOOL)_isEnterpriseBook
{
  iTunesStoreID = [self iTunesStoreID];
  v2 = iTunesStoreID == 0;

  return v2;
}

- (BOOL)_isExcludedFromBackup
{
  if (![self _isEnterpriseBook])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E78]] == 2;

  return v2;
}

- (BOOL)_isExcludedFromCloudSync
{
  if (![self _isEnterpriseBook])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E80]] == 2;

  return v2;
}

- (BOOL)_isUnableToExportToUnmanaged
{
  if (![self _isEnterpriseBook])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25FC8]] == 2;

  return v2;
}

@end