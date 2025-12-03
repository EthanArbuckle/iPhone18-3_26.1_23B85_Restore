@interface HKUserDomainConcept(HDSyncSupport)
+ (id)createWithCodableConcept:()HDSyncSupport profile:;
- (HDCodableUserDomainConcept)codableRepresentationForSyncWithProfile:()HDSyncSupport;
- (uint64_t)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:;
- (uint64_t)codableSubclassData;
@end

@implementation HKUserDomainConcept(HDSyncSupport)

+ (id)createWithCodableConcept:()HDSyncSupport profile:
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 isMemberOfClass:objc_opt_class()])
  {
    v14 = 0;
    goto LABEL_35;
  }

  v8 = MEMORY[0x277CCDB50];
  identifier = [v6 identifier];
  v10 = [v8 createWithCodable:identifier];

  daemon = [v7 daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  v13 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:v10];

  if (!v13)
  {
    _HKInitializeLogging();
    v25 = HKLogHealthOntology();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%@: No UDC entity class for typeIdentifier '%@', ingoring sync codable", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_34;
  }

  v14 = [objc_alloc(objc_msgSend(v13 "userDomainConceptClass"))];
  v15 = MEMORY[0x277CCAD78];
  uuid = [v6 uuid];
  v17 = [v15 hk_UUIDWithData:uuid];
  [v14 _setUUID:v17];

  [v14 _setIdentifier:v10];
  [v14 _setDeleted:{objc_msgSend(v6, "deleted")}];
  [v6 creationDate];
  [v14 _setCreationTimestamp:?];
  [v6 modificationDate];
  [v14 _setModificationTimestamp:?];
  *buf = [v6 majorVersion];
  *&buf[8] = [v6 minorVersion];
  *&buf[16] = [v6 patchVersion];
  [v14 _setOperatingSystemVersion:buf];
  build = [v6 build];
  [v14 _setBuild:build];

  linksData = [v6 linksData];

  if (linksData)
  {
    v20 = MEMORY[0x277CCAAC8];
    v21 = objc_opt_class();
    linksData2 = [v6 linksData];
    v56 = 0;
    v23 = [v20 unarchivedObjectOfClass:v21 fromData:linksData2 error:&v56];
    v24 = v56;

    if (v23)
    {
      [v14 _setLinkCollection:v23];
    }

    else
    {
      _HKInitializeLogging();
      v26 = HKLogHealthOntology();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_fault_impl(&dword_228986000, v26, OS_LOG_TYPE_FAULT, "%{public}@: Unable to unarchive link collection data: %{public}@", buf, 0x16u);
      }
    }
  }

  linkCollection = [v14 linkCollection];
  if (linkCollection)
  {
    goto LABEL_19;
  }

  links = [v6 links];

  if (links)
  {
    _HKInitializeLogging();
    v29 = HKLogHealthOntology();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      linksData3 = [v6 linksData];
      v31 = HKStringFromBool();
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "XXX received link collection data is nil %@", buf, 0xCu);
    }

    links2 = [v6 links];
    linkCollection = [links2 hk_map:&__block_literal_global_166];

    v33 = [objc_alloc(MEMORY[0x277CCDB08]) _initWithLinks:linkCollection];
    [v14 _setLinkCollection:v33];

LABEL_19:
  }

  codings = [v6 codings];

  if (codings)
  {
    codings2 = [v6 codings];
    v36 = [codings2 hk_map:&__block_literal_global_300];

    v37 = [objc_alloc(MEMORY[0x277CCD5C8]) initWithCodings:v36];
    [v14 _setCodingCollection:v37];
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  properties = [v6 properties];

  if (properties)
  {
    properties2 = [v6 properties];
    v40 = [properties2 hk_map:&__block_literal_global_306_2];

    [v25 addObjectsFromArray:v40];
  }

  localizedStringProperties = [v6 localizedStringProperties];

  if (localizedStringProperties)
  {
    localizedStringProperties2 = [v6 localizedStringProperties];
    v43 = [localizedStringProperties2 hk_map:&__block_literal_global_310];

    [v25 addObjectsFromArray:v43];
  }

  ontologyLocalizedEducationContent = [v6 ontologyLocalizedEducationContent];

  if (ontologyLocalizedEducationContent)
  {
    v45 = MEMORY[0x277CCD750];
    ontologyLocalizedEducationContent2 = [v6 ontologyLocalizedEducationContent];
    v47 = [v45 createWithCodable:ontologyLocalizedEducationContent2];

    [v25 addObject:v47];
  }

  namedQuantities = [v6 namedQuantities];

  if (namedQuantities)
  {
    namedQuantities2 = [v6 namedQuantities];
    v50 = [namedQuantities2 hk_map:&__block_literal_global_315];

    [v25 addObjectsFromArray:v50];
  }

  typeData = [v6 typeData];

  if (typeData)
  {
    typeData2 = [v6 typeData];
    [v14 applyCodableSubclassData:typeData2 mutableUserDomainConceptProperties:v25];
  }

  if ([v25 count])
  {
    v53 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v25];
    [v14 _setPropertyCollection:v53];
  }

LABEL_34:

LABEL_35:
  v54 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HDCodableUserDomainConcept)codableRepresentationForSyncWithProfile:()HDSyncSupport
{
  v60 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v4 = objc_alloc_init(HDCodableUserDomainConcept);
  uUID = [self UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [(HDCodableUserDomainConcept *)v4 setUuid:hk_dataForUUIDBytes];

  identifier = [self identifier];
  codableRepresentationForSync = [identifier codableRepresentationForSync];
  [(HDCodableUserDomainConcept *)v4 setIdentifier:codableRepresentationForSync];

  -[HDCodableUserDomainConcept setDeleted:](v4, "setDeleted:", [self isDeleted]);
  [self creationTimestamp];
  [(HDCodableUserDomainConcept *)v4 setCreationDate:?];
  [self modificationTimestamp];
  [(HDCodableUserDomainConcept *)v4 setModificationDate:?];
  [self operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setMajorVersion:v56];
  [self operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setMinorVersion:v55];
  [self operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setPatchVersion:v54];
  build = [self build];
  [(HDCodableUserDomainConcept *)v4 setBuild:build];

  linkCollection = [self linkCollection];

  if (linkCollection)
  {
    v11 = MEMORY[0x277CCAAB0];
    linkCollection2 = [self linkCollection];
    v13 = [v11 archivedDataWithRootObject:linkCollection2 requiringSecureCoding:1 error:0];
    [(HDCodableUserDomainConcept *)v4 setLinksData:v13];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  linkCollection3 = [self linkCollection];
  v15 = [linkCollection3 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(linkCollection3);
        }

        codableRepresentationForSync2 = [*(*(&v50 + 1) + 8 * i) codableRepresentationForSync];
        [(HDCodableUserDomainConcept *)v4 addLinks:codableRepresentationForSync2];
      }

      v16 = [linkCollection3 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v16);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  codingCollection = [self codingCollection];
  v21 = [codingCollection countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(codingCollection);
        }

        codableRepresentationForSync3 = [*(*(&v46 + 1) + 8 * j) codableRepresentationForSync];
        [(HDCodableUserDomainConcept *)v4 addCodings:codableRepresentationForSync3];
      }

      v22 = [codingCollection countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v22);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  propertyCollection = [self propertyCollection];
  v27 = [propertyCollection countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(propertyCollection);
        }

        v31 = *(*(&v42 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          codableRepresentationForSync4 = [v31 codableRepresentationForSync];
          [(HDCodableUserDomainConcept *)v4 addProperties:codableRepresentationForSync4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            codableRepresentationForSync4 = [v31 codableRepresentationForSync];
            [(HDCodableUserDomainConcept *)v4 addLocalizedStringProperties:codableRepresentationForSync4];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              codableRepresentationForSync4 = [v31 codableRepresentationForSync];
              [(HDCodableUserDomainConcept *)v4 setOntologyLocalizedEducationContent:codableRepresentationForSync4];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              codableRepresentationForSync4 = [v31 codableRepresentationForSync];
              [(HDCodableUserDomainConcept *)v4 addNamedQuantities:codableRepresentationForSync4];
            }
          }
        }
      }

      v28 = [propertyCollection countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v28);
  }

  syncIdentityManager = [v41 syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];

  identity = [currentSyncIdentity identity];
  codableSyncIdentity = [identity codableSyncIdentity];
  [(HDCodableUserDomainConcept *)v4 setSyncIdentity:codableSyncIdentity];

  if (([selfCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    codableSubclassData = [selfCopy codableSubclassData];
    [(HDCodableUserDomainConcept *)v4 setTypeData:codableSubclassData];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (uint64_t)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:
{
  objc_opt_class();

  return NSRequestConcreteImplementation();
}

- (uint64_t)codableSubclassData
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end