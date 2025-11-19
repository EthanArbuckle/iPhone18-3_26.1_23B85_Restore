@interface _CPLCloudKitSimpleRecordUpdatePlanner
- (_CPLCloudKitSimpleRecordUpdatePlanner)initWithTask:(id)a3 scopedIdentifiers:(id)a4 destinationZoneIdentification:(id)a5 sharedZoneIdentification:(id)a6 targetMapping:(id)a7 propertyMapping:(id)a8 fingerprintContext:(id)a9;
- (id)cloudKitScopeForScopeIdentifier:(id)a3;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)zoneIDFromScopeIdentifier:(id)a3;
@end

@implementation _CPLCloudKitSimpleRecordUpdatePlanner

- (_CPLCloudKitSimpleRecordUpdatePlanner)initWithTask:(id)a3 scopedIdentifiers:(id)a4 destinationZoneIdentification:(id)a5 sharedZoneIdentification:(id)a6 targetMapping:(id)a7 propertyMapping:(id)a8 fingerprintContext:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v62 = a6;
  v61 = a7;
  v60 = a8;
  v59 = a9;
  v72.receiver = self;
  v72.super_class = _CPLCloudKitSimpleRecordUpdatePlanner;
  v19 = v17;
  v20 = [(_CPLCloudKitSimpleRecordUpdatePlanner *)&v72 init];
  v21 = v20;
  if (v20)
  {
    v55 = v18;
    v57 = v16;
    objc_storeStrong(&v20->_task, a3);
    v22 = [v19 copy];
    scopedIdentifiers = v21->_scopedIdentifiers;
    v21->_scopedIdentifiers = v22;

    objc_storeStrong(&v21->_destinationZoneIdentification, a5);
    objc_storeStrong(&v21->_sharedZoneIdentification, a6);
    objc_storeStrong(&v21->_targetMapping, a7);
    objc_storeStrong(&v21->_propertyMapping, a8);
    objc_storeStrong(&v21->_fingerprintContext, a9);
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
          v33 = [v30 scopedIdentifier];
          v34 = [v33 identifier];
          v35 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:v34];

          [v24 setObject:v29 forKeyedSubscript:v35];
          sharedZoneIdentification = v21->_sharedZoneIdentification;
          if (!sharedZoneIdentification)
          {
            [v67 addObject:v35];
            goto LABEL_19;
          }

          v37 = [v31 otherScopedIdentifier];
          v38 = [v37 identifier];
          v39 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification recordIDWithRecordName:v38];

          v40 = [v31 otherScopedIdentifier];
          [v24 setObject:v40 forKeyedSubscript:v39];

          v41 = [v31 scopedIdentifier];
          [v66 setObject:v41 forKeyedSubscript:v35];

          v42 = [v31 scopedIdentifier];
          [v66 setObject:v42 forKeyedSubscript:v39];

          v43 = [v31 targetState];
          if (v43 < 2)
          {
            goto LABEL_15;
          }

          if (v43 == 2)
          {
            [v63 setObject:v35 forKeyedSubscript:v39];
            goto LABEL_18;
          }

          if (v43 == 3)
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

    v16 = v57;
    v18 = v55;
  }

  return v21;
}

- (id)cloudKitScopeForScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification scopeIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    p_destinationZoneIdentification = &self->_destinationZoneIdentification;
LABEL_5:
    v12 = [(CPLCloudKitZoneIdentification *)*p_destinationZoneIdentification cloudKitScope];
    goto LABEL_7;
  }

  sharedZoneIdentification = self->_sharedZoneIdentification;
  p_destinationZoneIdentification = &self->_sharedZoneIdentification;
  v8 = sharedZoneIdentification;
  if (sharedZoneIdentification)
  {
    v10 = [(CPLCloudKitZoneIdentification *)v8 scopeIdentifier];
    v11 = [v4 isEqualToString:v10];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)scopeIdentifierFromZoneID:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    destinationZoneIdentification = self->_destinationZoneIdentification;
LABEL_6:
    v11 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification scopeIdentifier];
    goto LABEL_8;
  }

  sharedZoneIdentification = self->_sharedZoneIdentification;
  if (sharedZoneIdentification)
  {
    v9 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification zoneID];
    v10 = [v9 isEqual:v4];

    if (v10)
    {
      destinationZoneIdentification = self->_sharedZoneIdentification;
      goto LABEL_6;
    }
  }

  v11 = [(CPLCloudKitTransportTask *)self->_task scopeIdentifierFromZoneID:v4];
LABEL_8:
  v12 = v11;

  return v12;
}

- (id)zoneIDFromScopeIdentifier:(id)a3
{
  v3 = [(_CPLCloudKitSimpleRecordUpdatePlanner *)self cloudKitScopeForScopeIdentifier:a3];
  v4 = [v3 zoneID];

  return v4;
}

@end