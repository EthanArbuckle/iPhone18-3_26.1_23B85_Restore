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
  v9 = [v6 identifier];
  v10 = [v8 createWithCodable:v9];

  v11 = [v7 daemon];
  v12 = [v11 userDomainConceptEntityRegistry];
  v13 = [v12 userDomainConceptEntityClassForTypeIdentifier:v10];

  if (!v13)
  {
    _HKInitializeLogging();
    v25 = HKLogHealthOntology();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%@: No UDC entity class for typeIdentifier '%@', ingoring sync codable", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_34;
  }

  v14 = [objc_alloc(objc_msgSend(v13 "userDomainConceptClass"))];
  v15 = MEMORY[0x277CCAD78];
  v16 = [v6 uuid];
  v17 = [v15 hk_UUIDWithData:v16];
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
  v18 = [v6 build];
  [v14 _setBuild:v18];

  v19 = [v6 linksData];

  if (v19)
  {
    v20 = MEMORY[0x277CCAAC8];
    v21 = objc_opt_class();
    v22 = [v6 linksData];
    v56 = 0;
    v23 = [v20 unarchivedObjectOfClass:v21 fromData:v22 error:&v56];
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
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_fault_impl(&dword_228986000, v26, OS_LOG_TYPE_FAULT, "%{public}@: Unable to unarchive link collection data: %{public}@", buf, 0x16u);
      }
    }
  }

  v27 = [v14 linkCollection];
  if (v27)
  {
    goto LABEL_19;
  }

  v28 = [v6 links];

  if (v28)
  {
    _HKInitializeLogging();
    v29 = HKLogHealthOntology();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 linksData];
      v31 = HKStringFromBool();
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "XXX received link collection data is nil %@", buf, 0xCu);
    }

    v32 = [v6 links];
    v27 = [v32 hk_map:&__block_literal_global_166];

    v33 = [objc_alloc(MEMORY[0x277CCDB08]) _initWithLinks:v27];
    [v14 _setLinkCollection:v33];

LABEL_19:
  }

  v34 = [v6 codings];

  if (v34)
  {
    v35 = [v6 codings];
    v36 = [v35 hk_map:&__block_literal_global_300];

    v37 = [objc_alloc(MEMORY[0x277CCD5C8]) initWithCodings:v36];
    [v14 _setCodingCollection:v37];
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = [v6 properties];

  if (v38)
  {
    v39 = [v6 properties];
    v40 = [v39 hk_map:&__block_literal_global_306_2];

    [v25 addObjectsFromArray:v40];
  }

  v41 = [v6 localizedStringProperties];

  if (v41)
  {
    v42 = [v6 localizedStringProperties];
    v43 = [v42 hk_map:&__block_literal_global_310];

    [v25 addObjectsFromArray:v43];
  }

  v44 = [v6 ontologyLocalizedEducationContent];

  if (v44)
  {
    v45 = MEMORY[0x277CCD750];
    v46 = [v6 ontologyLocalizedEducationContent];
    v47 = [v45 createWithCodable:v46];

    [v25 addObject:v47];
  }

  v48 = [v6 namedQuantities];

  if (v48)
  {
    v49 = [v6 namedQuantities];
    v50 = [v49 hk_map:&__block_literal_global_315];

    [v25 addObjectsFromArray:v50];
  }

  v51 = [v6 typeData];

  if (v51)
  {
    v52 = [v6 typeData];
    [v14 applyCodableSubclassData:v52 mutableUserDomainConceptProperties:v25];
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
  v5 = [a1 UUID];
  v6 = [v5 hk_dataForUUIDBytes];
  [(HDCodableUserDomainConcept *)v4 setUuid:v6];

  v7 = [a1 identifier];
  v8 = [v7 codableRepresentationForSync];
  [(HDCodableUserDomainConcept *)v4 setIdentifier:v8];

  -[HDCodableUserDomainConcept setDeleted:](v4, "setDeleted:", [a1 isDeleted]);
  [a1 creationTimestamp];
  [(HDCodableUserDomainConcept *)v4 setCreationDate:?];
  [a1 modificationTimestamp];
  [(HDCodableUserDomainConcept *)v4 setModificationDate:?];
  [a1 operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setMajorVersion:v56];
  [a1 operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setMinorVersion:v55];
  [a1 operatingSystemVersion];
  [(HDCodableUserDomainConcept *)v4 setPatchVersion:v54];
  v9 = [a1 build];
  [(HDCodableUserDomainConcept *)v4 setBuild:v9];

  v10 = [a1 linkCollection];

  if (v10)
  {
    v11 = MEMORY[0x277CCAAB0];
    v12 = [a1 linkCollection];
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    [(HDCodableUserDomainConcept *)v4 setLinksData:v13];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = [a1 linkCollection];
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v50 + 1) + 8 * i) codableRepresentationForSync];
        [(HDCodableUserDomainConcept *)v4 addLinks:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v16);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = [a1 codingCollection];
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v46 + 1) + 8 * j) codableRepresentationForSync];
        [(HDCodableUserDomainConcept *)v4 addCodings:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v22);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = a1;
  v26 = [a1 propertyCollection];
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v57 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [v31 codableRepresentationForSync];
          [(HDCodableUserDomainConcept *)v4 addProperties:v32];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v31 codableRepresentationForSync];
            [(HDCodableUserDomainConcept *)v4 addLocalizedStringProperties:v32];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v31 codableRepresentationForSync];
              [(HDCodableUserDomainConcept *)v4 setOntologyLocalizedEducationContent:v32];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v32 = [v31 codableRepresentationForSync];
              [(HDCodableUserDomainConcept *)v4 addNamedQuantities:v32];
            }
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v28);
  }

  v33 = [v41 syncIdentityManager];
  v34 = [v33 currentSyncIdentity];

  v35 = [v34 identity];
  v36 = [v35 codableSyncIdentity];
  [(HDCodableUserDomainConcept *)v4 setSyncIdentity:v36];

  if (([v40 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    v37 = [v40 codableSubclassData];
    [(HDCodableUserDomainConcept *)v4 setTypeData:v37];
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