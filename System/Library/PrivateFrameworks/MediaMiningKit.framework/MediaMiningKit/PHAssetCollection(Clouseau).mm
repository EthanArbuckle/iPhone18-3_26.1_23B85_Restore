@interface PHAssetCollection(Clouseau)
- (id)_fetchFirstAssetSortedByCreationDateAscending:()Clouseau;
- (id)_legacyLocalEndDate;
- (id)_legacyLocalEndDateComponents;
- (id)_legacyLocalStartDate;
- (id)_legacyLocalStartDateComponents;
- (id)_legacyUniversalEndDate;
- (id)_legacyUniversalStartDate;
- (id)cls_localEndDate;
- (id)cls_localEndDateComponents;
- (id)cls_localStartDate;
- (id)cls_localStartDateComponents;
- (id)cls_universalEndDate;
- (id)cls_universalStartDate;
@end

@implementation PHAssetCollection(Clouseau)

- (id)_fetchFirstAssetSortedByCreationDateAscending:()Clouseau
{
  v12[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v9 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:self options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)_legacyLocalEndDate
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self _fetchFirstAssetSortedByCreationDateAscending:0];
  cls_localDate = [v3 cls_localDate];

  objc_autoreleasePoolPop(v2);

  return cls_localDate;
}

- (id)_legacyLocalStartDate
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self _fetchFirstAssetSortedByCreationDateAscending:1];
  cls_localDate = [v3 cls_localDate];

  objc_autoreleasePoolPop(v2);

  return cls_localDate;
}

- (id)_legacyUniversalEndDate
{
  endDate = objc_getAssociatedObject(self, a2);
  if (!endDate)
  {
    endDate = [self endDate];
    if (!endDate)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [self _fetchFirstAssetSortedByCreationDateAscending:0];
      endDate = [v6 cls_universalDate];

      objc_autoreleasePoolPop(v5);
    }

    objc_setAssociatedObject(self, a2, endDate, 0x301);
  }

  return endDate;
}

- (id)_legacyUniversalStartDate
{
  startDate = objc_getAssociatedObject(self, a2);
  if (!startDate)
  {
    startDate = [self startDate];
    if (!startDate)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [self _fetchFirstAssetSortedByCreationDateAscending:1];
      startDate = [v6 cls_universalDate];

      objc_autoreleasePoolPop(v5);
    }

    objc_setAssociatedObject(self, a2, startDate, 0x301);
  }

  return startDate;
}

- (id)_legacyLocalEndDateComponents
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self _fetchFirstAssetSortedByCreationDateAscending:0];
  cls_localDateComponents = [v3 cls_localDateComponents];

  objc_autoreleasePoolPop(v2);

  return cls_localDateComponents;
}

- (id)_legacyLocalStartDateComponents
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self _fetchFirstAssetSortedByCreationDateAscending:1];
  cls_localDateComponents = [v3 cls_localDateComponents];

  objc_autoreleasePoolPop(v2);

  return cls_localDateComponents;
}

- (id)cls_localEndDate
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    localEndDate = [self localEndDate];
  }

  else
  {
    localEndDate = [self _legacyLocalEndDate];
  }

  return localEndDate;
}

- (id)cls_localStartDate
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    localStartDate = [self localStartDate];
  }

  else
  {
    localStartDate = [self _legacyLocalStartDate];
  }

  return localStartDate;
}

- (id)cls_universalEndDate
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    endDate = [self endDate];
  }

  else
  {
    endDate = [self _legacyUniversalEndDate];
  }

  return endDate;
}

- (id)cls_universalStartDate
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    startDate = [self startDate];
  }

  else
  {
    startDate = [self _legacyUniversalStartDate];
  }

  return startDate;
}

- (id)cls_localEndDateComponents
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    cls_universalEndDate = [self cls_universalEndDate];
    cls_localEndDate = [self cls_localEndDate];
    _legacyLocalEndDateComponents = [CLSCalendar dateComponentsWithUTCDate:cls_universalEndDate localDate:cls_localEndDate];
  }

  else
  {
    _legacyLocalEndDateComponents = [self _legacyLocalEndDateComponents];
  }

  return _legacyLocalEndDateComponents;
}

- (id)cls_localStartDateComponents
{
  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType == 6 || assetCollectionType == 3)
  {
    cls_universalStartDate = [self cls_universalStartDate];
    cls_localStartDate = [self cls_localStartDate];
    _legacyLocalStartDateComponents = [CLSCalendar dateComponentsWithUTCDate:cls_universalStartDate localDate:cls_localStartDate];
  }

  else
  {
    _legacyLocalStartDateComponents = [self _legacyLocalStartDateComponents];
  }

  return _legacyLocalStartDateComponents;
}

@end