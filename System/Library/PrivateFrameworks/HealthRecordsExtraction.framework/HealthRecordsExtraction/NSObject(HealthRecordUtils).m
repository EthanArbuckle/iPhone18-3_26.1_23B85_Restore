@interface NSObject(HealthRecordUtils)
- (id)hd_handleExtensionComponent:()HealthRecordUtils error:;
- (id)hd_stringArrayValue;
- (id)hd_stringValue;
- (id)hd_valueForKeyPath:()HealthRecordUtils rootResource:error:;
@end

@implementation NSObject(HealthRecordUtils)

- (id)hd_stringValue
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [a1 description];
    }

    else if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_stringValue];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)hd_stringArrayValue
{
  v6[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 copy];
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)hd_valueForKeyPath:()HealthRecordUtils rootResource:error:
{
  v118 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  v86 = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSObject(HealthRecordUtils) hd_valueForKeyPath:a2 rootResource:a1 error:?];
  }

  v83 = a5;
  v84 = v9;
  v85 = [HDHealthRecordsExtractionRule extractionRuleWithDefinition:v9 error:a5];
  v11 = v85;
  if (!v85)
  {
    v13 = 0;
    goto LABEL_47;
  }

  v12 = a1;
  v13 = [v85 keyPath];
  v114 = 0;
  v14 = [HDHRExtractionRulesKeyPathParser componentsFrom:v13 error:&v114];
  v82 = v114;
  v15 = [v14 mutableCopy];

  if (!v15)
  {
    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [NSObject(HealthRecordUtils) hd_valueForKeyPath:v85 rootResource:v82 error:v32];
    }

    v33 = v82;
    v34 = v33;
    if (v33)
    {
      if (v83)
      {
        v35 = v33;
        *v83 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_45;
  }

  if (!v12)
  {
LABEL_45:
    v13 = 0;
    goto LABEL_46;
  }

  while (1)
  {
    if (![v15 count])
    {
      v36 = [HDHealthRecordsExtractionRuleTransformer transformValue:v12 rootResource:v86 extractionRule:v85 error:v83];

      v12 = v36;
      v13 = v12;
      goto LABEL_46;
    }

    v16 = [v15 firstObject];
    v17 = [v16 name];
    [v15 removeObjectAtIndex:0];
    if ([v17 isEqualToString:@"@contained"])
    {
      v108 = 0;
      v109 = &v108;
      v110 = 0x3032000000;
      v111 = __Block_byref_object_copy__3;
      v112 = __Block_byref_object_dispose__3;
      v113 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __69__NSObject_HealthRecordUtils__hd_valueForKeyPath_rootResource_error___block_invoke;
        v105[3] = &unk_2796E2C58;
        v107 = &v108;
        v106 = v86;
        v18 = [v12 hk_map:v105];
        v19 = [v18 count];
        if (v19 != [v12 count])
        {
          v26 = v109[5];
          v27 = v26;
          if (v26)
          {
            if (v83)
            {
              v28 = v26;
              *v83 = v27;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v13 = 0;
          v22 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        v24 = (v109 + 5);
        obj = v109[5];
        v25 = [HDHealthRecordsExtractionUtilities resourceReferencedBy:v12 containedIn:v86 error:&obj];
        objc_storeStrong(v24, obj);
        v18 = [v25 JSONObject];

        if (!v18)
        {
          v12 = 0;
          if (v109[5])
          {
            v22 = 1;
            v13 = 0;
            goto LABEL_29;
          }

          v18 = 0;
        }
      }

      v22 = 6;
      v12 = v18;
LABEL_29:
      _Block_object_dispose(&v108, 8);

      goto LABEL_33;
    }

    if ([v17 hasPrefix:@"@extension"])
    {
      v103 = 0;
      v20 = [v12 hd_handleExtensionComponent:v16 error:&v103];
      v21 = v103;

      if (v20)
      {
        v22 = 6;
      }

      else
      {
        v29 = v21;
        v30 = v29;
        if (v29)
        {
          if (v83)
          {
            v31 = v29;
            *v83 = v30;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v13 = 0;
        v22 = 1;
      }

      v12 = v20;
LABEL_33:

      if (v22 != 6)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v23 = [v12 valueForKey:v17];

    v12 = v23;
LABEL_34:
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  v39 = [v15 hk_map:&__block_literal_global_4];
  v77 = [v39 componentsJoinedByString:@"."];

  v81 = [v85 definitionBySubstitutingKeyPathWith:v77];
  v40 = v12;
  if ([v17 isEqualToString:@"@all"])
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v99 objects:v117 count:16];
    v80 = v41;
    v44 = v42;
    if (v43)
    {
      v45 = *v100;
      v44 = v42;
      v78 = v42;
      while (2)
      {
        v46 = 0;
        v47 = v44;
        do
        {
          if (*v100 != v45)
          {
            objc_enumerationMutation(v78);
          }

          v48 = *(*(&v99 + 1) + 8 * v46);
          v98 = 0;
          v44 = [v48 hd_valueForKeyPath:v81 rootResource:v86 error:&v98];
          v49 = v98;

          if (v44)
          {
            [v80 addObject:v44];
          }

          else
          {
            v50 = v49;
            if (v50)
            {
              v61 = v50;
              if (v83)
              {
                v62 = v50;
                *v83 = v61;
              }

              else
              {
                _HKLogDroppedError();
              }

              goto LABEL_95;
            }
          }

          ++v46;
          v47 = v44;
        }

        while (v43 != v46);
        v42 = v78;
        v43 = [v78 countByEnumeratingWithState:&v99 objects:v117 count:16];
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    v51 = v80;
    v52 = v80;
    goto LABEL_62;
  }

  if (![v17 isEqualToString:@"@any"])
  {
    if (![v17 isEqualToString:@"@concat"])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:v83 code:3 format:{@"keypath %@ at key «%@» needs to handle array", v84, v17}];
      v13 = 0;
      v44 = v40;
      goto LABEL_107;
    }

    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v64 = v40;
    v65 = [v64 countByEnumeratingWithState:&v88 objects:v115 count:16];
    v80 = v63;
    v44 = v64;
    if (v65)
    {
      v79 = *v89;
      v44 = v64;
      v76 = v64;
      do
      {
        v66 = 0;
        v67 = v44;
        do
        {
          if (*v89 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v68 = *(*(&v88 + 1) + 8 * v66);
          v87 = 0;
          v69 = [v68 hd_valueForKeyPath:v81 rootResource:v86 error:&v87];
          v70 = v87;
          v44 = [v69 hd_stringValue];

          if (v44)
          {
            [v80 addObject:v44];
          }

          else if (v70)
          {
            v73 = v70;
            v74 = v73;
            if (v83)
            {
              v75 = v73;
              *v83 = v74;
            }

            else
            {
              _HKLogDroppedError();
            }

LABEL_95:
            v44 = 0;
            v13 = 0;
            goto LABEL_105;
          }

          ++v66;
          v67 = v44;
        }

        while (v65 != v66);
        v64 = v76;
        v65 = [v76 countByEnumeratingWithState:&v88 objects:v115 count:16];
      }

      while (v65);
    }

    v51 = v80;
    if (![v80 count])
    {
      v13 = 0;
      goto LABEL_106;
    }

    v52 = [v80 componentsJoinedByString:@"\n\n"];
LABEL_62:
    v13 = v52;
    goto LABEL_106;
  }

  v97 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  v51 = v40;
  v53 = [v51 countByEnumeratingWithState:&v94 objects:v116 count:16];
  if (!v53)
  {
    v13 = 0;
    v44 = v51;
    goto LABEL_106;
  }

  v54 = *v95;
  v13 = v51;
  v80 = v51;
  while (2)
  {
    v55 = 0;
    while (2)
    {
      v56 = v53;
      if (*v95 != v54)
      {
        objc_enumerationMutation(v80);
      }

      v57 = *(*(&v94 + 1) + 8 * v55);
      if ([v77 length])
      {
        v93 = 0;
        v58 = &v93;
        [v57 hd_valueForKeyPath:v81 rootResource:v86 error:&v93];
      }

      else
      {
        v92 = 0;
        v58 = &v92;
        [HDHealthRecordsExtractionRuleTransformer transformValue:v57 rootResource:v86 extractionRule:v85 error:&v92];
      }
      v44 = ;
      v59 = *v58;

      if (v44)
      {
        v71 = v44;
LABEL_104:

        v13 = v44;
        goto LABEL_105;
      }

      v60 = v59;
      if (v60)
      {
        v59 = v60;
        if (v83)
        {
          v72 = v60;
          *v83 = v59;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_104;
      }

      v13 = 0;
      ++v55;
      v53 = v56;
      if (v56 != v55)
      {
        continue;
      }

      break;
    }

    v53 = [v80 countByEnumeratingWithState:&v94 objects:v116 count:16];
    v13 = 0;
    if (v53)
    {
      continue;
    }

    break;
  }

  v44 = 0;
LABEL_105:
  v51 = v80;
LABEL_106:

LABEL_107:
  v12 = v44;
LABEL_46:

  v11 = v85;
LABEL_47:

  v37 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)hd_handleExtensionComponent:()HealthRecordUtils error:
{
  v6 = a3;
  v7 = [v6 parenthesisContent];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 parenthesisContent];
      v9 = [HDFHIRExtensionProcessor extensionsForURL:v8 inJSONDictionary:a1 error:a4];

      if (v9)
      {
        v10 = [v9 hk_map:&__block_literal_global_350];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Extensions can only be found on dictionary instances, not on %@", objc_opt_class()}];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v6 name];
    [v11 hk_assignError:a4 code:3 format:{@"A valid extraction rules component has content between parenthesis, this one doesn't: %@", v12}];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end