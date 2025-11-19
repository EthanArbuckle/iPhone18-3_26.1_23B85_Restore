@interface _HDAssociationInsertionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDAssociationInsertionJournalEntry)initWithCoder:(id)a3;
- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)a3 childIDs:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 creationDate:(id)a9 destinationSubObjectReference:(id)a10;
- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)a3 childUUIDsData:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 deleted:(BOOL)a9 creationDate:(id)a10 destinationSubObjectReference:(id)a11 enforceSameSource:(BOOL)a12;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDAssociationInsertionJournalEntry

- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)a3 childUUIDsData:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 deleted:(BOOL)a9 creationDate:(id)a10 destinationSubObjectReference:(id)a11 enforceSameSource:(BOOL)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a10;
  v20 = a11;
  v21 = [(_HDAssociationInsertionJournalEntry *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_parentUUID, a3);
    v23 = [v18 copy];
    childUUIDsData = v22->_childUUIDsData;
    v22->_childUUIDsData = v23;

    v22->_provenance = a5;
    v22->_syncIdentity = a6;
    v22->_enforceSameSource = a12;
    v22->_type = a7;
    v22->_behavior = a8;
    objc_storeStrong(&v22->_destinationSubObjectReference, a11);
    objc_storeStrong(&v22->_creationDate, a10);
    v22->_deleted = a9;
    v22->_insertionType = 0;
  }

  return v22;
}

- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)a3 childIDs:(id)a4 provenance:(int64_t)a5 syncIdentity:(int64_t)a6 type:(unint64_t)a7 behavior:(unint64_t)a8 creationDate:(id)a9 destinationSubObjectReference:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = a10;
  v19 = [(_HDAssociationInsertionJournalEntry *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_parentUUID, a3);
    v21 = [v16 copy];
    childIDs = v20->_childIDs;
    v20->_childIDs = v21;

    v20->_provenance = a5;
    v20->_syncIdentity = a6;
    v20->_type = a7;
    v20->_behavior = a8;
    objc_storeStrong(&v20->_destinationSubObjectReference, a10);
    objc_storeStrong(&v20->_creationDate, a9);
    v20->_deleted = 0;
    v20->_enforceSameSource = 0;
    v20->_insertionType = 1;
  }

  return v20;
}

- (id)description
{
  childUUIDsData = self->_childUUIDsData;
  if (childUUIDsData)
  {
    v4 = [(NSData *)childUUIDsData hk_countOfUUIDs];
  }

  else
  {
    v4 = [(NSArray *)self->_childIDs count];
  }

  v5 = v4;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(NSUUID *)self->_parentUUID UUIDString];
  v10 = [v6 stringWithFormat:@"%@ - %@, Child IDs count: (%lu objects), insertType: %lu", v8, v9, v5, self->_insertionType, 0];

  return v10;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v42 = a4;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v41 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (!v41)
  {
    goto LABEL_23;
  }

  v40 = *v47;
  while (2)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v47 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v46 + 1) + 8 * i);
      v8 = [v42 syncIdentityManager];
      v9 = [v8 legacySyncIdentity];
      v10 = [v9 entity];
      v11 = [v10 persistentID];

      if ([v7 syncIdentity] != -1)
      {
        v11 = [v7 syncIdentity];
      }

      v12 = [v7 insertionType];
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = [v7 parentUUID];
          v14 = [v7 childIDs];
          v15 = [v7 provenance];
          v16 = [v7 type];
          v17 = [v7 behavior];
          v18 = [v7 creationDate];
          v19 = [v7 destinationSubObjectReference];
          v43 = 0;
          LOBYTE(v17) = [HDAssociationEntity _bulkInsertEntriesWithParentUUID:v13 childIDs:v14 provenance:v15 syncIdentity:v11 type:v16 behavior:v17 creationDate:v18 destinationSubObjectReference:v19 profile:v42 error:&v43];
          v20 = v43;

          v21 = 0;
          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }
      }

      else
      {
        v39 = [v7 parentUUID];
        v22 = [v7 childUUIDsData];
        v38 = [v7 provenance];
        v23 = [v7 type];
        v24 = [v7 behavior];
        v25 = [v7 deleted];
        v26 = [v7 creationDate];
        v27 = [v7 destinationSubObjectReference];
        v28 = [v7 enforceSameSource];
        v44 = 0;
        v45 = 0;
        BYTE1(v36) = 1;
        LOBYTE(v36) = v28;
        LOBYTE(v35) = v25;
        LOBYTE(v23) = [HDAssociationEntity _insertEntriesWithParentUUID:v39 childUUIDsData:v22 provenance:v38 syncIdentity:v11 type:v23 behavior:v24 deleted:v35 creationDate:v26 destinationSubObjectReference:v27 enforceSameSource:v36 permitPendingAssociations:v42 profile:&v45 lastInsertedEntityID:&v44 error:?];
        v21 = v45;
        v20 = v44;

        if (v23)
        {
          goto LABEL_19;
        }
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v20;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Error applying %{public}@", buf, 0xCu);
      }

      if ([v20 hk_isTransactionInterruptedError])
      {

        goto LABEL_23;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_opt_class()];
      v31 = [v42 daemon];
      v32 = [v31 autoBugCaptureReporter];
      v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "provenance")}];
      [v32 reportJournalFailureWithErrorDescription:v30 provenance:v33 error:v20];

LABEL_19:
    }

    v41 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v34 = *MEMORY[0x277D85DE8];
}

- (_HDAssociationInsertionJournalEntry)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"corUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objUUIDsData"];
  if ([v4 containsValueForKey:@"provenance"])
  {
    v40 = [v4 decodeInt64ForKey:@"provenance"];
  }

  else
  {
    v40 = 0;
  }

  if ([v4 containsValueForKey:@"syncIdentity"])
  {
    v39 = [v4 decodeInt64ForKey:@"syncIdentity"];
  }

  else
  {
    v39 = -1;
  }

  if ([v4 containsValueForKey:@"insertionType"])
  {
    v7 = [v4 decodeInt64ForKey:@"insertionType"] == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 decodeBoolForKey:@"sameSource"];
  v9 = [v4 decodeInt64ForKey:@"type"];
  v10 = [v4 decodeInt64ForKey:@"behavior"];
  v38 = [v4 decodeBoolForKey:@"deleted"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationSubObject"];
  if (v12)
  {
    if (v7)
    {
LABEL_12:
      v13 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"bulkChildRowIDs"];
      v14 = [(_HDAssociationInsertionJournalEntry *)self initWithParentUUID:v5 childIDs:v13 provenance:v40 syncIdentity:v39 type:v9 behavior:v10 creationDate:v11 destinationSubObjectReference:v12];

      goto LABEL_27;
    }
  }

  else
  {
    v36 = v5;
    v15 = v11;
    v16 = self;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationSubObjectUUID"];
    if (v20)
    {
      v12 = 0;
    }

    else
    {
      v12 = HDReferenceForUnknownAssociatableObjectWithUUID(0);
    }

    v8 = v19;
    v9 = v18;
    v10 = v17;
    self = v16;
    v11 = v15;
    v5 = v36;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  if (!v6)
  {
    v34 = v8;
    v35 = self;
    v37 = v5;
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v33 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:? forKey:?];
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v6 hk_appendBytesWithUUID:*(*(&v41 + 1) + 8 * i)];
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v26);
    }

    self = v35;
    v5 = v37;
    v8 = v34;
  }

  LOBYTE(v32) = v8;
  LOBYTE(v31) = v38;
  v14 = [(_HDAssociationInsertionJournalEntry *)self initWithParentUUID:v5 childUUIDsData:v6 provenance:v40 syncIdentity:v39 type:v9 behavior:v10 deleted:v31 creationDate:v11 destinationSubObjectReference:v12 enforceSameSource:v32];
LABEL_27:

  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  parentUUID = self->_parentUUID;
  v5 = a3;
  [v5 encodeObject:parentUUID forKey:@"corUUID"];
  [v5 encodeObject:self->_childUUIDsData forKey:@"objUUIDsData"];
  [v5 encodeInt64:self->_provenance forKey:@"provenance"];
  [v5 encodeInt64:self->_syncIdentity forKey:@"syncIdentity"];
  [v5 encodeBool:self->_enforceSameSource forKey:@"sameSource"];
  [v5 encodeInt64:self->_type forKey:@"type"];
  [v5 encodeInt64:self->_behavior forKey:@"behavior"];
  [v5 encodeBool:self->_deleted forKey:@"deleted"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_destinationSubObjectReference forKey:@"destinationSubObject"];
  [v5 encodeObject:self->_childIDs forKey:@"bulkChildRowIDs"];
  [v5 encodeInteger:self->_insertionType forKey:@"insertionType"];
}

@end