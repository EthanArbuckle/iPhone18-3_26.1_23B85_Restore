@interface HDAuthorizationStatusRecord
+ (id)notDerminedReadAuthorizationStatus;
+ (id)unrestrictedReadAuthorizationStatus;
- (BOOL)isEqual:(id)equal;
- (HDAuthorizationStatusRecord)initWithReadAuthorizationStatus:(int64_t)status authorizationRequest:(int64_t)request authorizationMode:(int64_t)mode restrictedBundleIdentifier:(id)identifier restrictedSourceEntities:(id)entities deletedObjectBaselineAnchor:(id)anchor objectLimitAnchor:(id)limitAnchor objectLimitModifiedDate:(id)self0;
- (HDSQLitePredicate)authorizationPredicate;
- (id)description;
- (void)disableReading;
- (void)disableSharing;
@end

@implementation HDAuthorizationStatusRecord

- (HDAuthorizationStatusRecord)initWithReadAuthorizationStatus:(int64_t)status authorizationRequest:(int64_t)request authorizationMode:(int64_t)mode restrictedBundleIdentifier:(id)identifier restrictedSourceEntities:(id)entities deletedObjectBaselineAnchor:(id)anchor objectLimitAnchor:(id)limitAnchor objectLimitModifiedDate:(id)self0
{
  identifierCopy = identifier;
  entitiesCopy = entities;
  anchorCopy = anchor;
  limitAnchorCopy = limitAnchor;
  dateCopy = date;
  if (mode == 1 && !limitAnchorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationStatusRecord.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"objectLimitAnchor != nil"}];
  }

  v35.receiver = self;
  v35.super_class = HDAuthorizationStatusRecord;
  v22 = [(HDAuthorizationStatusRecord *)&v35 init];
  if (v22)
  {
    v23 = [MEMORY[0x277CCDD20] recordWithStatus:status request:request mode:mode anchorLimitModifiedDate:dateCopy];
    authorizationRecord = v22->_authorizationRecord;
    v22->_authorizationRecord = v23;

    v25 = [identifierCopy copy];
    restrictedBundleIdentifier = v22->_restrictedBundleIdentifier;
    v22->_restrictedBundleIdentifier = v25;

    v27 = [entitiesCopy copy];
    restrictedSourceEntities = v22->_restrictedSourceEntities;
    v22->_restrictedSourceEntities = v27;

    v29 = [anchorCopy copy];
    deletedObjectBaselineAnchor = v22->_deletedObjectBaselineAnchor;
    v22->_deletedObjectBaselineAnchor = v29;

    v31 = [limitAnchorCopy copy];
    objectLimitAnchor = v22->_objectLimitAnchor;
    v22->_objectLimitAnchor = v31;
  }

  return v22;
}

+ (id)unrestrictedReadAuthorizationStatus
{
  v2 = [[self alloc] initWithReadAuthorizationStatus:101 authorizationRequest:203 authorizationMode:0 restrictedBundleIdentifier:0 restrictedSourceEntities:0 deletedObjectBaselineAnchor:&unk_283CB3C18 objectLimitAnchor:0 objectLimitModifiedDate:0];

  return v2;
}

+ (id)notDerminedReadAuthorizationStatus
{
  v2 = [self alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithReadAuthorizationStatus:100 authorizationRequest:200 authorizationMode:0 restrictedBundleIdentifier:&stru_283BF39C8 restrictedSourceEntities:v3 deletedObjectBaselineAnchor:&unk_283CB3C18 objectLimitAnchor:0 objectLimitModifiedDate:0];

  return v4;
}

- (void)disableReading
{
  recordWithReadingDisabled = [(_HKAuthorizationRecord *)self->_authorizationRecord recordWithReadingDisabled];
  authorizationRecord = self->_authorizationRecord;
  self->_authorizationRecord = recordWithReadingDisabled;

  MEMORY[0x2821F96F8](recordWithReadingDisabled, authorizationRecord);
}

- (void)disableSharing
{
  recordWithSharingDisabled = [(_HKAuthorizationRecord *)self->_authorizationRecord recordWithSharingDisabled];
  authorizationRecord = self->_authorizationRecord;
  self->_authorizationRecord = recordWithSharingDisabled;

  MEMORY[0x2821F96F8](recordWithSharingDisabled, authorizationRecord);
}

- (HDSQLitePredicate)authorizationPredicate
{
  if ([(HDAuthorizationStatusRecord *)self canRead])
  {
    if ([(HDAuthorizationStatusRecord *)self authorizationMode]== 1)
    {
      [MEMORY[0x277D10B18] predicateWithProperty:@"data_id" lessThanOrEqualToValue:self->_objectLimitAnchor];
    }

    else
    {
      [MEMORY[0x277D10B70] truePredicate];
    }
    falsePredicate = ;
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  return falsePredicate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (![(_HKAuthorizationRecord *)self->_authorizationRecord isEqual:v5->_authorizationRecord])
      {
        goto LABEL_18;
      }

      restrictedBundleIdentifier = self->_restrictedBundleIdentifier;
      v7 = v5->_restrictedBundleIdentifier;
      if (restrictedBundleIdentifier != v7 && (!v7 || ![(NSString *)restrictedBundleIdentifier isEqualToString:?]))
      {
        goto LABEL_18;
      }

      restrictedSourceEntities = self->_restrictedSourceEntities;
      v9 = v5->_restrictedSourceEntities;
      if (restrictedSourceEntities != v9 && (!v9 || ![(NSSet *)restrictedSourceEntities isEqualToSet:?]))
      {
        goto LABEL_18;
      }

      deletedObjectBaselineAnchor = self->_deletedObjectBaselineAnchor;
      v11 = v5->_deletedObjectBaselineAnchor;
      if (deletedObjectBaselineAnchor != v11 && (!v11 || ![(NSNumber *)deletedObjectBaselineAnchor isEqual:?]))
      {
        goto LABEL_18;
      }

      objectLimitAnchor = self->_objectLimitAnchor;
      v13 = v5->_objectLimitAnchor;
      if (objectLimitAnchor == v13)
      {
        v14 = 1;
        goto LABEL_19;
      }

      if (v13)
      {
        v14 = [(NSNumber *)objectLimitAnchor isEqual:?];
      }

      else
      {
LABEL_18:
        v14 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(HDAuthorizationStatusRecord *)self authorizationStatus];
  v20 = HKAuthorizationStatusToString();
  [(HDAuthorizationStatusRecord *)self authorizationMode];
  v5 = HKSelectedAuthorizationModeToString();
  deletedObjectBaselineAnchor = self->_deletedObjectBaselineAnchor;
  objectLimitAnchor = self->_objectLimitAnchor;
  if (objectLimitAnchor)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" object-limit:%@", self->_objectLimitAnchor];
  }

  else
  {
    v8 = &stru_283BF39C8;
  }

  restrictedSourceEntities = self->_restrictedSourceEntities;
  if (restrictedSourceEntities)
  {
    v10 = MEMORY[0x277CCACA8];
    restrictedBundleIdentifier = self->_restrictedBundleIdentifier;
    allObjects = [(NSSet *)restrictedSourceEntities allObjects];
    v13 = [allObjects componentsJoinedByString:{@", "}];
    v14 = [v10 stringWithFormat:@" RESTRICTED to %@ (%@)", restrictedBundleIdentifier, v13];
    v18 = deletedObjectBaselineAnchor;
    v15 = v20;
    v16 = [v3 stringWithFormat:@"<%@: %@ %@ deleted-object-baseline:%@%@%@>", v4, v20, v5, v18, v8, v14];

    if (!objectLimitAnchor)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = deletedObjectBaselineAnchor;
  v15 = v20;
  v16 = [v3 stringWithFormat:@"<%@: %@ %@ deleted-object-baseline:%@%@%@>", v4, v20, v5, v19, v8, &stru_283BF39C8];
  if (objectLimitAnchor)
  {
LABEL_6:
  }

LABEL_7:

  return v16;
}

@end