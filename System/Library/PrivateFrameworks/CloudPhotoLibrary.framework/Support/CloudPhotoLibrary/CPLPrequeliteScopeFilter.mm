@interface CPLPrequeliteScopeFilter
- (CPLPrequeliteScopeFilter)initWithExcludedScopeIdentifiers:(id)a3 localIndexesInjection:(id)a4 localIndexes:(id)a5 cloudIndexesInjection:(id)a6 cloudIndexes:(id)a7;
- (CPLPrequeliteScopeFilter)initWithIncludedScopeIdentifiers:(id)a3 localIndexesInjection:(id)a4 localIndexes:(id)a5 cloudIndexesInjection:(id)a6 cloudIndexes:(id)a7;
- (id)description;
@end

@implementation CPLPrequeliteScopeFilter

- (CPLPrequeliteScopeFilter)initWithIncludedScopeIdentifiers:(id)a3 localIndexesInjection:(id)a4 localIndexes:(id)a5 cloudIndexesInjection:(id)a6 cloudIndexes:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CPLPrequeliteScopeFilter;
  v17 = [(CPLPrequeliteScopeFilter *)&v20 initWithIncludedScopeIdentifiers:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localIndexesInjection, a4);
    objc_storeStrong(&v18->_localIndexes, a5);
    objc_storeStrong(&v18->_cloudIndexesInjection, a6);
    objc_storeStrong(&v18->_cloudIndexes, a7);
  }

  return v18;
}

- (CPLPrequeliteScopeFilter)initWithExcludedScopeIdentifiers:(id)a3 localIndexesInjection:(id)a4 localIndexes:(id)a5 cloudIndexesInjection:(id)a6 cloudIndexes:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CPLPrequeliteScopeFilter;
  v17 = [(CPLPrequeliteScopeFilter *)&v20 initWithExcludedScopeIdentifiers:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localIndexesInjection, a4);
    objc_storeStrong(&v18->_localIndexes, a5);
    objc_storeStrong(&v18->_cloudIndexesInjection, a6);
    objc_storeStrong(&v18->_cloudIndexes, a7);
  }

  return v18;
}

- (id)description
{
  v3 = [(CPLPrequeliteScopeFilter *)self includedScopeIdentifiers];
  if (v3)
  {
    v4 = v3;
    if (![v3 count])
    {
      v10 = @"[incl: none]";
      goto LABEL_11;
    }

    v5 = @"[incl: %@ %@]";
  }

  else
  {
    v6 = [(CPLPrequeliteScopeFilter *)self excludedScopeIdentifiers];
    if (!v6)
    {
      v10 = @"[none]";
      goto LABEL_12;
    }

    v4 = v6;
    if (![v6 count])
    {
      v10 = @"[excl: none]";
      goto LABEL_11;
    }

    v5 = @"[excl: %@ %@]";
  }

  v7 = [NSString alloc];
  v8 = [v4 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v7 initWithFormat:v5, v9, self->_localIndexesInjection];

LABEL_11:
LABEL_12:

  return v10;
}

@end