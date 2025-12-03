@interface _CPLCloudKitSimpleRecordUpdatePlanner
- (_CPLCloudKitSimpleRecordUpdatePlanner)initWithTask:(id)task scopedIdentifiers:(id)identifiers destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification targetMapping:(id)mapping propertyMapping:(id)propertyMapping fingerprintContext:(id)context;
- (id)cloudKitScopeForScopeIdentifier:(id)identifier;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)zoneIDFromScopeIdentifier:(id)identifier;
@end

@implementation _CPLCloudKitSimpleRecordUpdatePlanner

- (_CPLCloudKitSimpleRecordUpdatePlanner)initWithTask:(id)task scopedIdentifiers:(id)identifiers destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification targetMapping:(id)mapping propertyMapping:(id)propertyMapping fingerprintContext:(id)context
{
  taskCopy = task;
  identifiersCopy = identifiers;
  identificationCopy = identification;
  zoneIdentificationCopy = zoneIdentification;
  mappingCopy = mapping;
  propertyMappingCopy = propertyMapping;
  contextCopy = context;
  v72.receiver = self;
  v72.super_class = _CPLCloudKitSimpleRecordUpdatePlanner;
  v19 = identifiersCopy;
  v20 = [(_CPLCloudKitSimpleRecordUpdatePlanner *)&v72 init];
  v21 = v20;
  if (v20)
  {
    v55 = identificationCopy;
    v57 = taskCopy;
    objc_storeStrong(&v20->_task, task);
    v22 = [v19 copy];
    scopedIdentifiers = v21->_scopedIdentifiers;
    v21->_scopedIdentifiers = v22;

    objc_storeStrong(&v21->_destinationZoneIdentification, identification);
    objc_storeStrong(&v21->_sharedZoneIdentification, zoneIdentification);
    objc_storeStrong(&v21->_targetMapping, mapping);
    objc_storeStrong(&v21->_propertyMapping, propertyMapping);
    objc_storeStrong(&v21->_fingerprintContext, context);
    v24 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
    v67 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
    if (v21->_sharedZoneIdentification)
    {
      v66 = [[NSMutableDictionary alloc] initWithCapacity:{2 * objc_msgSend(v19, "count")}];
      v65 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
      v63 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v63 = 0;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v56 = v19;
    obj = v19;
    v25 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v69;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v69 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v68 + 1) + 8 * i);
          v30 = [(CPLRecordTargetMapping *)v21->_targetMapping targetForRecordWithScopedIdentifier:v29];
          if (!v30)
          {
            sub_1001A910C(a2, v21, v29);
          }

          v31 = v30;
          destinationZoneIdentification = v21->_destinationZoneIdentification;
          scopedIdentifier = [v30 scopedIdentifier];
          identifier = [scopedIdentifier identifier];
          v35 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:identifier];

          [v24 setObject:v29 forKeyedSubscript:v35];
          sharedZoneIdentification = v21->_sharedZoneIdentification;
          if (!sharedZoneIdentification)
          {
            [v67 addObject:v35];
            goto LABEL_19;
          }

          otherScopedIdentifier = [v31 otherScopedIdentifier];
          identifier2 = [otherScopedIdentifier identifier];
          v39 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification recordIDWithRecordName:identifier2];

          otherScopedIdentifier2 = [v31 otherScopedIdentifier];
          [v24 setObject:otherScopedIdentifier2 forKeyedSubscript:v39];

          scopedIdentifier2 = [v31 scopedIdentifier];
          [v66 setObject:scopedIdentifier2 forKeyedSubscript:v35];

          scopedIdentifier3 = [v31 scopedIdentifier];
          [v66 setObject:scopedIdentifier3 forKeyedSubscript:v39];

          targetState = [v31 targetState];
          if (targetState < 2)
          {
            goto LABEL_15;
          }

          if (targetState == 2)
          {
            [v63 setObject:v35 forKeyedSubscript:v39];
            goto LABEL_18;
          }

          if (targetState == 3)
          {
LABEL_15:
            [v67 addObject:v35];
          }

LABEL_18:
          [v65 addObject:v39];

LABEL_19:
        }

        v26 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v26);
    }

    v44 = [v24 copy];
    ckRecordIDToScopedIdentifier = v21->_ckRecordIDToScopedIdentifier;
    v21->_ckRecordIDToScopedIdentifier = v44;

    if (v66)
    {
      v46 = [v66 copy];
    }

    else
    {
      v46 = v21->_ckRecordIDToScopedIdentifier;
    }

    v19 = v56;
    ckRecordIDToRejectedScopedIdentifier = v21->_ckRecordIDToRejectedScopedIdentifier;
    v21->_ckRecordIDToRejectedScopedIdentifier = v46;

    v48 = [v67 copy];
    privateRecordIDs = v21->_privateRecordIDs;
    v21->_privateRecordIDs = v48;

    v50 = [v63 copy];
    sharedRecordIDsToMissingPrivateRecordIDs = v21->_sharedRecordIDsToMissingPrivateRecordIDs;
    v21->_sharedRecordIDsToMissingPrivateRecordIDs = v50;

    v52 = [v65 copy];
    sharedRecordIDs = v21->_sharedRecordIDs;
    v21->_sharedRecordIDs = v52;

    taskCopy = v57;
    identificationCopy = v55;
  }

  return v21;
}

- (id)cloudKitScopeForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeIdentifier = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification scopeIdentifier];
  v6 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v6)
  {
    p_destinationZoneIdentification = &self->_destinationZoneIdentification;
LABEL_5:
    cloudKitScope = [(CPLCloudKitZoneIdentification *)*p_destinationZoneIdentification cloudKitScope];
    goto LABEL_7;
  }

  sharedZoneIdentification = self->_sharedZoneIdentification;
  p_destinationZoneIdentification = &self->_sharedZoneIdentification;
  v8 = sharedZoneIdentification;
  if (sharedZoneIdentification)
  {
    scopeIdentifier2 = [(CPLCloudKitZoneIdentification *)v8 scopeIdentifier];
    v11 = [identifierCopy isEqualToString:scopeIdentifier2];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  cloudKitScope = 0;
LABEL_7:

  return cloudKitScope;
}

- (id)scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
  zoneID = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
  v6 = [zoneID isEqual:dCopy];

  if (v6)
  {
    destinationZoneIdentification = self->_destinationZoneIdentification;
LABEL_6:
    scopeIdentifier = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification scopeIdentifier];
    goto LABEL_8;
  }

  sharedZoneIdentification = self->_sharedZoneIdentification;
  if (sharedZoneIdentification)
  {
    zoneID2 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification zoneID];
    v10 = [zoneID2 isEqual:dCopy];

    if (v10)
    {
      destinationZoneIdentification = self->_sharedZoneIdentification;
      goto LABEL_6;
    }
  }

  scopeIdentifier = [(CPLCloudKitTransportTask *)self->_task scopeIdentifierFromZoneID:dCopy];
LABEL_8:
  v12 = scopeIdentifier;

  return v12;
}

- (id)zoneIDFromScopeIdentifier:(id)identifier
{
  v3 = [(_CPLCloudKitSimpleRecordUpdatePlanner *)self cloudKitScopeForScopeIdentifier:identifier];
  zoneID = [v3 zoneID];

  return zoneID;
}

@end