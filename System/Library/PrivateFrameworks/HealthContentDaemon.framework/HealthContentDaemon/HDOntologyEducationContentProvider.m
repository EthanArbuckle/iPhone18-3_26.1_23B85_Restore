@interface HDOntologyEducationContentProvider
+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 localizedEducationContentOut:(id *)a5 error:(id *)a6;
+ (id)_localizedEducationContentSectionsForConcept:(uint64_t)a1;
+ (id)_localizedSectionDataForAttribute:(void *)a3 timestamp:;
@end

@implementation HDOntologyEducationContentProvider

+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 localizedEducationContentOut:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [HDOntologyConceptManager predicateMatchingRelationshipsWithSubjectId:v10 relationshipType:988];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __143__HDOntologyEducationContentProvider_localizedEducationContentForConceptWithIdentifier_ontologyTransaction_localizedEducationContentOut_error___block_invoke;
  v22 = &unk_2796B98E8;
  v24 = &v31;
  v25 = &v27;
  v14 = v13;
  v23 = v14;
  v26 = a1;
  v15 = [HDOntologyConceptManager enumerateRelationshipsMatchingPredicate:v12 options:13 transaction:v11 error:a6 enumerationHandler:&v19];
  if (v15)
  {
    if (v32[3] == -1)
    {
      v16 = 0;
    }

    else if (*(v28 + 24) == 1)
    {
      v16 = [MEMORY[0x277CCD750] nullPropertyWithVersion:{v19, v20, v21, v22}];
    }

    else
    {
      v16 = [v14 count];
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277CCD750]);
        v16 = [v17 initWithSections:v14 version:v32[3] timestamp:0 deleted:CFAbsoluteTimeGetCurrent()];
      }
    }

    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

uint64_t __143__HDOntologyEducationContentProvider_localizedEducationContentForConceptWithIdentifier_ontologyTransaction_localizedEducationContentOut_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 version];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  if (v4 > v6)
  {
    v6 = v4;
  }

  *(v5 + 24) = v6;
  *(*(a1[6] + 8) + 24) &= [v3 isDeleted];
  if (([v3 isDeleted] & 1) == 0)
  {
    v7 = a1[4];
    v8 = a1[7];
    v9 = [v3 destination];
    v10 = [(HDOntologyEducationContentProvider *)v8 _localizedEducationContentSectionsForConcept:v9];
    [v7 addObjectsFromArray:v10];
  }

  return 1;
}

+ (id)_localizedEducationContentSectionsForConcept:(uint64_t)a1
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Current = CFAbsoluteTimeGetCurrent();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v53 = v2;
  obj = [v2 attributes];
  v55 = v5;
  v56 = v4;
  v68 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!v68)
  {
    v10 = 0xFFFFFFFF80000000;
    v61 = 0xFFFFFFFF80000000;
    goto LABEL_42;
  }

  v65 = *v79;
  v10 = 0xFFFFFFFF80000000;
  v61 = 0xFFFFFFFF80000000;
  do
  {
    v11 = 0;
    do
    {
      if (*v79 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v78 + 1) + 8 * v11);
      v13 = [v12 type];
      if (v13 <= 801)
      {
        if (v13 <= 667)
        {
          if (v13 == 666)
          {
            v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
            v15 = v67;
            v16 = v14;
            v17 = &unk_286374730;
          }

          else
          {
            if (v13 != 667)
            {
              goto LABEL_35;
            }

            v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
            v15 = v67;
            v16 = v14;
            v17 = &unk_286374748;
          }
        }

        else
        {
          switch(v13)
          {
            case 668:
              v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
              v15 = v67;
              v16 = v14;
              v17 = &unk_286374760;
              break;
            case 800:
              v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
              v15 = v67;
              v16 = v14;
              v17 = &unk_286374700;
              break;
            case 801:
              v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
              v15 = v67;
              v16 = v14;
              v17 = &unk_286374718;
              break;
            default:
              goto LABEL_35;
          }
        }

        goto LABEL_34;
      }

      if (v13 <= 803)
      {
        if (v13 == 802)
        {
          v27 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
          [v54 addObject:v27];
        }

        else
        {
          v24 = [v12 stringValue];
          [v4 hk_addNonNilObject:v24];

          v25 = [v12 version];
          v26 = v61;
          if (v61 <= v25)
          {
            v26 = v25;
          }

          v61 = v26;
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = [v12 isDeleted];
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 804:
            v28 = [v12 stringValue];
            [v5 hk_addNonNilObject:v28];

            v29 = [v12 version];
            if (v10 <= v29)
            {
              v10 = v29;
            }

            if (v7)
            {
              v7 = 1;
            }

            else
            {
              v7 = [v12 isDeleted];
            }

            break;
          case 957:
            v14 = [(HDOntologyEducationContentProvider *)Current _localizedSectionDataForAttribute:v3 timestamp:v12];
            v15 = v67;
            v16 = v14;
            v17 = &unk_2863746E8;
LABEL_34:
            [v15 setObject:v16 forKeyedSubscript:v17];

            break;
          case 959:
            v57 = objc_alloc(MEMORY[0x277CCD748]);
            v18 = [v12 stringValue];
            [v18 componentsSeparatedByString:{@", "}];
            v19 = v59 = v8;
            v20 = v3;
            v21 = v10;
            v22 = v7;
            v23 = v9;
            v9 = [v57 initWithStringValues:v19 sectionDataType:HDOntologyEducationContentSectionDataTypeForAttributeType(objc_msgSend(v12 version:"type")) timestamp:objc_msgSend(v12 deleted:{"version"), objc_msgSend(v12, "isDeleted"), Current}];

            v7 = v22;
            v10 = v21;
            v3 = v20;
            v4 = v56;

            v8 = v59;
            v5 = v55;
            break;
        }
      }

LABEL_35:
      ++v11;
    }

    while (v68 != v11);
    v30 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    v68 = v30;
  }

  while (v30);
LABEL_42:

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v31 hk_addNonNilObject:v9];
  if ([v4 count])
  {
    v32 = objc_alloc(MEMORY[0x277CCD748]);
    v33 = [v4 allObjects];
    v34 = [v32 initWithStringValues:v33 sectionDataType:4 version:v61 timestamp:v8 & 1 deleted:Current];

    [v31 addObject:v34];
  }

  v58 = v9;
  if ([v5 count])
  {
    v35 = objc_alloc(MEMORY[0x277CCD748]);
    v36 = [v5 allObjects];
    v37 = [v35 initWithStringValues:v36 sectionDataType:5 version:v10 timestamp:v7 & 1 deleted:Current];

    [v31 addObject:v37];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v60 = v54;
  v66 = [v60 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v66)
  {
    v62 = *v75;
    obja = v31;
    do
    {
      v39 = 0;
      do
      {
        if (*v75 != v62)
        {
          objc_enumerationMutation(v60);
        }

        v69 = v39;
        v40 = [v31 arrayByAddingObject:*(*(&v74 + 1) + 8 * v39)];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v41 = v67;
        v42 = [v41 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v71;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v71 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v70 + 1) + 8 * i);
              v47 = [v41 objectForKeyedSubscript:v46];
              v48 = [v40 arrayByAddingObject:v47];

              v49 = [v48 hk_mapToDictionary:&__block_literal_global_8];
              v50 = [objc_alloc(MEMORY[0x277CCD758]) initWithSectionDataTypeMapping:v49 sectionType:{objc_msgSend(v46, "integerValue")}];
              [v38 addObject:v50];
            }

            v43 = [v41 countByEnumeratingWithState:&v70 objects:v82 count:16];
          }

          while (v43);
        }

        v39 = v69 + 1;
        v31 = obja;
      }

      while (v69 + 1 != v66);
      v66 = [v60 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v66);
  }

  v51 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)_localizedSectionDataForAttribute:(void *)a3 timestamp:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  v5 = [v4 stringValue];
  v6 = [v5 mutableCopy];

  [v6 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"\\t" withString:@"\t" options:0 range:{0, objc_msgSend(v6, "length")}];
  v7 = objc_alloc(MEMORY[0x277CCD748]);
  v15[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = HDOntologyEducationContentSectionDataTypeForAttributeType([v4 type]);
  v10 = [v4 version];
  v11 = [v4 isDeleted];

  v12 = [v7 initWithStringValues:v8 sectionDataType:v9 version:v10 timestamp:v11 deleted:a1];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __83__HDOntologyEducationContentProvider__localizedEducationContentSectionsForConcept___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "sectionDataType")}];
  (a3)[2](v6, v8, v7);
}

@end