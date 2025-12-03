@interface NPKPassLibraryFilter
- (BOOL)_entitledForObject:(id)object;
- (BOOL)_entitledForPassTypeID:(id)d teamID:(id)iD associatedPassTypeIdentifiers:(id)identifiers;
- (BOOL)allowsSilentAdd;
- (NPKPassLibraryFilter)initWithConnection:(id)connection;
- (id)entitlementFilteredPasses:(id)passes;
- (id)filterPassIfNeeded:(id)needed;
@end

@implementation NPKPassLibraryFilter

- (NPKPassLibraryFilter)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = NPKPassLibraryFilter;
  v5 = [(NPKPassLibraryFilter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(NPKPassLibraryFilter *)v5 setConnection:connectionCopy];
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    [(NPKPassLibraryFilter *)v6 setAllowlist:v7];
  }

  return v6;
}

- (id)filterPassIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(NPKPassLibraryFilter *)self allowAccessToPass:neededCopy])
  {
    v5 = neededCopy;
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
  allowlist = [(NPKPassLibraryFilter *)self allowlist];
  passesAddSilently = [allowlist passesAddSilently];

  return passesAddSilently;
}

- (id)entitlementFilteredPasses:(id)passes
{
  passesCopy = passes;
  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_allowlist paymentAllAccess])
  {
    v5 = passesCopy;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003A590;
    v8[3] = &unk_100072800;
    v8[4] = self;
    v5 = [passesCopy objectsPassingTest:v8];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_entitledForObject:(id)object
{
  objectCopy = object;
  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objectCopy;
      passTypeIdentifier = [v6 passTypeIdentifier];
      teamID = [v6 teamID];
      associatedPassTypeIdentifiers = [v6 associatedPassTypeIdentifiers];
      v10 = [(NPKPassLibraryFilter *)self _entitledForPassTypeID:passTypeIdentifier teamID:teamID associatedPassTypeIdentifiers:associatedPassTypeIdentifiers];

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

- (BOOL)_entitledForPassTypeID:(id)d teamID:(id)iD associatedPassTypeIdentifiers:(id)identifiers
{
  dCopy = d;
  iDCopy = iD;
  identifiersCopy = identifiers;
  passTypeIDs = [(PKEntitlementWhitelist *)self->_allowlist passTypeIDs];
  v12 = [NSSet setWithArray:passTypeIDs];

  if (([(PKEntitlementWhitelist *)self->_allowlist passesAllAccess]& 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    passTypeIDs2 = [(PKEntitlementWhitelist *)self->_allowlist passTypeIDs];
    if ([passTypeIDs2 containsObject:dCopy])
    {
      v13 = 1;
    }

    else
    {
      teamIDs = [(PKEntitlementWhitelist *)self->_allowlist teamIDs];
      if ([teamIDs containsObject:iDCopy])
      {
        v13 = 1;
      }

      else
      {
        v13 = [identifiersCopy intersectsSet:v12];
      }
    }
  }

  return v13;
}

@end