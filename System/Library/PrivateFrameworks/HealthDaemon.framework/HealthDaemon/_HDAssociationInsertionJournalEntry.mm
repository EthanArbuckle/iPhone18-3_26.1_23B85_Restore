@interface _HDAssociationInsertionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDAssociationInsertionJournalEntry)initWithCoder:(id)coder;
- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)d childIDs:(id)ds provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date destinationSubObjectReference:(id)self0;
- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)d childUUIDsData:(id)data provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior deleted:(BOOL)deleted creationDate:(id)self0 destinationSubObjectReference:(id)self1 enforceSameSource:(BOOL)self2;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDAssociationInsertionJournalEntry

- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)d childUUIDsData:(id)data provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior deleted:(BOOL)deleted creationDate:(id)self0 destinationSubObjectReference:(id)self1 enforceSameSource:(BOOL)self2
{
  dCopy = d;
  dataCopy = data;
  dateCopy = date;
  referenceCopy = reference;
  v21 = [(_HDAssociationInsertionJournalEntry *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_parentUUID, d);
    v23 = [dataCopy copy];
    childUUIDsData = v22->_childUUIDsData;
    v22->_childUUIDsData = v23;

    v22->_provenance = provenance;
    v22->_syncIdentity = identity;
    v22->_enforceSameSource = source;
    v22->_type = type;
    v22->_behavior = behavior;
    objc_storeStrong(&v22->_destinationSubObjectReference, reference);
    objc_storeStrong(&v22->_creationDate, date);
    v22->_deleted = deleted;
    v22->_insertionType = 0;
  }

  return v22;
}

- (_HDAssociationInsertionJournalEntry)initWithParentUUID:(id)d childIDs:(id)ds provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date destinationSubObjectReference:(id)self0
{
  dCopy = d;
  dsCopy = ds;
  dateCopy = date;
  referenceCopy = reference;
  v19 = [(_HDAssociationInsertionJournalEntry *)self init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_parentUUID, d);
    v21 = [dsCopy copy];
    childIDs = v20->_childIDs;
    v20->_childIDs = v21;

    v20->_provenance = provenance;
    v20->_syncIdentity = identity;
    v20->_type = type;
    v20->_behavior = behavior;
    objc_storeStrong(&v20->_destinationSubObjectReference, reference);
    objc_storeStrong(&v20->_creationDate, date);
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
    hk_countOfUUIDs = [(NSData *)childUUIDsData hk_countOfUUIDs];
  }

  else
  {
    hk_countOfUUIDs = [(NSArray *)self->_childIDs count];
  }

  v5 = hk_countOfUUIDs;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  uUIDString = [(NSUUID *)self->_parentUUID UUIDString];
  v10 = [v6 stringWithFormat:@"%@ - %@, Child IDs count: (%lu objects), insertType: %lu", v8, uUIDString, v5, self->_insertionType, 0];

  return v10;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v53 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = entriesCopy;
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
      syncIdentityManager = [profileCopy syncIdentityManager];
      legacySyncIdentity = [syncIdentityManager legacySyncIdentity];
      entity = [legacySyncIdentity entity];
      persistentID = [entity persistentID];

      if ([v7 syncIdentity] != -1)
      {
        persistentID = [v7 syncIdentity];
      }

      insertionType = [v7 insertionType];
      if (insertionType)
      {
        if (insertionType == 1)
        {
          parentUUID = [v7 parentUUID];
          childIDs = [v7 childIDs];
          provenance = [v7 provenance];
          type = [v7 type];
          behavior = [v7 behavior];
          creationDate = [v7 creationDate];
          destinationSubObjectReference = [v7 destinationSubObjectReference];
          v43 = 0;
          LOBYTE(behavior) = [HDAssociationEntity _bulkInsertEntriesWithParentUUID:parentUUID childIDs:childIDs provenance:provenance syncIdentity:persistentID type:type behavior:behavior creationDate:creationDate destinationSubObjectReference:destinationSubObjectReference profile:profileCopy error:&v43];
          v20 = v43;

          v21 = 0;
          if (behavior)
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
        parentUUID2 = [v7 parentUUID];
        childUUIDsData = [v7 childUUIDsData];
        provenance2 = [v7 provenance];
        type2 = [v7 type];
        behavior2 = [v7 behavior];
        deleted = [v7 deleted];
        creationDate2 = [v7 creationDate];
        destinationSubObjectReference2 = [v7 destinationSubObjectReference];
        enforceSameSource = [v7 enforceSameSource];
        v44 = 0;
        v45 = 0;
        BYTE1(v36) = 1;
        LOBYTE(v36) = enforceSameSource;
        LOBYTE(v35) = deleted;
        LOBYTE(type2) = [HDAssociationEntity _insertEntriesWithParentUUID:parentUUID2 childUUIDsData:childUUIDsData provenance:provenance2 syncIdentity:persistentID type:type2 behavior:behavior2 deleted:v35 creationDate:creationDate2 destinationSubObjectReference:destinationSubObjectReference2 enforceSameSource:v36 permitPendingAssociations:profileCopy profile:&v45 lastInsertedEntityID:&v44 error:?];
        v21 = v45;
        v20 = v44;

        if (type2)
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
      daemon = [profileCopy daemon];
      autoBugCaptureReporter = [daemon autoBugCaptureReporter];
      v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "provenance")}];
      [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v30 provenance:v33 error:v20];

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

- (_HDAssociationInsertionJournalEntry)initWithCoder:(id)coder
{
  v46 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"corUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objUUIDsData"];
  if ([coderCopy containsValueForKey:@"provenance"])
  {
    v40 = [coderCopy decodeInt64ForKey:@"provenance"];
  }

  else
  {
    v40 = 0;
  }

  if ([coderCopy containsValueForKey:@"syncIdentity"])
  {
    v39 = [coderCopy decodeInt64ForKey:@"syncIdentity"];
  }

  else
  {
    v39 = -1;
  }

  if ([coderCopy containsValueForKey:@"insertionType"])
  {
    v7 = [coderCopy decodeInt64ForKey:@"insertionType"] == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [coderCopy decodeBoolForKey:@"sameSource"];
  v9 = [coderCopy decodeInt64ForKey:@"type"];
  v10 = [coderCopy decodeInt64ForKey:@"behavior"];
  v38 = [coderCopy decodeBoolForKey:@"deleted"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationSubObject"];
  if (v12)
  {
    if (v7)
    {
LABEL_12:
      v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"bulkChildRowIDs"];
      v14 = [(_HDAssociationInsertionJournalEntry *)self initWithParentUUID:v5 childIDs:v13 provenance:v40 syncIdentity:v39 type:v9 behavior:v10 creationDate:v11 destinationSubObjectReference:v12];

      goto LABEL_27;
    }
  }

  else
  {
    v36 = v5;
    v15 = v11;
    selfCopy = self;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationSubObjectUUID"];
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
    self = selfCopy;
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
    selfCopy2 = self;
    v37 = v5;
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v33 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:? forKey:?];
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

    self = selfCopy2;
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

- (void)encodeWithCoder:(id)coder
{
  parentUUID = self->_parentUUID;
  coderCopy = coder;
  [coderCopy encodeObject:parentUUID forKey:@"corUUID"];
  [coderCopy encodeObject:self->_childUUIDsData forKey:@"objUUIDsData"];
  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
  [coderCopy encodeInt64:self->_syncIdentity forKey:@"syncIdentity"];
  [coderCopy encodeBool:self->_enforceSameSource forKey:@"sameSource"];
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeInt64:self->_behavior forKey:@"behavior"];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_destinationSubObjectReference forKey:@"destinationSubObject"];
  [coderCopy encodeObject:self->_childIDs forKey:@"bulkChildRowIDs"];
  [coderCopy encodeInteger:self->_insertionType forKey:@"insertionType"];
}

@end