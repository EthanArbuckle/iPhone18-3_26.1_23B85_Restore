@interface NPKPassLibraryFilter
- (BOOL)_entitledForObject:(id)a3;
- (BOOL)_entitledForPassTypeID:(id)a3 teamID:(id)a4 associatedPassTypeIdentifiers:(id)a5;
- (BOOL)allowsSilentAdd;
- (NPKPassLibraryFilter)initWithConnection:(id)a3;
- (id)entitlementFilteredPasses:(id)a3;
- (id)filterPassIfNeeded:(id)a3;
@end

@implementation NPKPassLibraryFilter

- (NPKPassLibraryFilter)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKPassLibraryFilter;
  v5 = [(NPKPassLibraryFilter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(NPKPassLibraryFilter *)v5 setConnection:v4];
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:v4];
    [(NPKPassLibraryFilter *)v6 setAllowlist:v7];
  }

  return v6;
}

- (id)filterPassIfNeeded:(id)a3
{
  v4 = a3;
  if ([(NPKPassLibraryFilter *)self allowAccessToPass:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)allowsSilentAdd
{
  v2 = [(NPKPassLibraryFilter *)self allowlist];
  v3 = [v2 passesAddSilently];

  return v3;
}

- (id)entitlementFilteredPasses:(id)a3
{
  v4 = a3;
  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_allowlist paymentAllAccess])
  {
    v5 = v4;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003A590;
    v8[3] = &unk_100072800;
    v8[4] = self;
    v5 = [v4 objectsPassingTest:v8];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_entitledForObject:(id)a3
{
  v4 = a3;
  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 passTypeIdentifier];
      v8 = [v6 teamID];
      v9 = [v6 associatedPassTypeIdentifiers];
      v10 = [(NPKPassLibraryFilter *)self _entitledForPassTypeID:v7 teamID:v8 associatedPassTypeIdentifiers:v9];

      if (v10)
      {
        v5 = 1;
      }

      else if ([v6 passType] == 1)
      {
        v5 = [(PKEntitlementWhitelist *)self->_allowlist entitledToPerformPassAction:2 pass:v6];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_entitledForPassTypeID:(id)a3 teamID:(id)a4 associatedPassTypeIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKEntitlementWhitelist *)self->_allowlist passTypeIDs];
  v12 = [NSSet setWithArray:v11];

  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(PKEntitlementWhitelist *)self->_allowlist passTypeIDs];
    if ([v14 containsObject:v8])
    {
      v13 = 1;
    }

    else
    {
      v15 = [(PKEntitlementWhitelist *)self->_allowlist teamIDs];
      if ([v15 containsObject:v9])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v10 intersectsSet:v12];
      }
    }
  }

  return v13;
}

@end