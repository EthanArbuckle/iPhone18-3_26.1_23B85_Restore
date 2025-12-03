@interface CPLPrequeliteScopeFilter
- (CPLPrequeliteScopeFilter)initWithExcludedScopeIdentifiers:(id)identifiers localIndexesInjection:(id)injection localIndexes:(id)indexes cloudIndexesInjection:(id)indexesInjection cloudIndexes:(id)cloudIndexes;
- (CPLPrequeliteScopeFilter)initWithIncludedScopeIdentifiers:(id)identifiers localIndexesInjection:(id)injection localIndexes:(id)indexes cloudIndexesInjection:(id)indexesInjection cloudIndexes:(id)cloudIndexes;
- (id)description;
@end

@implementation CPLPrequeliteScopeFilter

- (CPLPrequeliteScopeFilter)initWithIncludedScopeIdentifiers:(id)identifiers localIndexesInjection:(id)injection localIndexes:(id)indexes cloudIndexesInjection:(id)indexesInjection cloudIndexes:(id)cloudIndexes
{
  injectionCopy = injection;
  indexesCopy = indexes;
  indexesInjectionCopy = indexesInjection;
  cloudIndexesCopy = cloudIndexes;
  v20.receiver = self;
  v20.super_class = CPLPrequeliteScopeFilter;
  v17 = [(CPLPrequeliteScopeFilter *)&v20 initWithIncludedScopeIdentifiers:identifiers];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localIndexesInjection, injection);
    objc_storeStrong(&v18->_localIndexes, indexes);
    objc_storeStrong(&v18->_cloudIndexesInjection, indexesInjection);
    objc_storeStrong(&v18->_cloudIndexes, cloudIndexes);
  }

  return v18;
}

- (CPLPrequeliteScopeFilter)initWithExcludedScopeIdentifiers:(id)identifiers localIndexesInjection:(id)injection localIndexes:(id)indexes cloudIndexesInjection:(id)indexesInjection cloudIndexes:(id)cloudIndexes
{
  injectionCopy = injection;
  indexesCopy = indexes;
  indexesInjectionCopy = indexesInjection;
  cloudIndexesCopy = cloudIndexes;
  v20.receiver = self;
  v20.super_class = CPLPrequeliteScopeFilter;
  v17 = [(CPLPrequeliteScopeFilter *)&v20 initWithExcludedScopeIdentifiers:identifiers];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localIndexesInjection, injection);
    objc_storeStrong(&v18->_localIndexes, indexes);
    objc_storeStrong(&v18->_cloudIndexesInjection, indexesInjection);
    objc_storeStrong(&v18->_cloudIndexes, cloudIndexes);
  }

  return v18;
}

- (id)description
{
  includedScopeIdentifiers = [(CPLPrequeliteScopeFilter *)self includedScopeIdentifiers];
  if (includedScopeIdentifiers)
  {
    v4 = includedScopeIdentifiers;
    if (![includedScopeIdentifiers count])
    {
      v10 = @"[incl: none]";
      goto LABEL_11;
    }

    v5 = @"[incl: %@ %@]";
  }

  else
  {
    excludedScopeIdentifiers = [(CPLPrequeliteScopeFilter *)self excludedScopeIdentifiers];
    if (!excludedScopeIdentifiers)
    {
      v10 = @"[none]";
      goto LABEL_12;
    }

    v4 = excludedScopeIdentifiers;
    if (![excludedScopeIdentifiers count])
    {
      v10 = @"[excl: none]";
      goto LABEL_11;
    }

    v5 = @"[excl: %@ %@]";
  }

  v7 = [NSString alloc];
  allObjects = [v4 allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v7 initWithFormat:v5, v9, self->_localIndexesInjection];

LABEL_11:
LABEL_12:

  return v10;
}

@end