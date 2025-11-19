@interface HMDResidentSyncAdapter
@end

@implementation HMDResidentSyncAdapter

id __HMDResidentSyncAdapter_1_1_block_invoke(uint64_t a1, void *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = toManyRelationship(v2, @"users");
  v72 = v3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = objectValue(v8, 1, @"privilege");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (!v11 || (v12 = [v11 unsignedIntegerValue], v11, v12 == 2))
      {
        [v4 removeObjectAtIndex:v7];
        --v6;
        if (v72)
        {
          v13 = objectValue(v8, 0, @"modelID");
          [v72 addObject:v13];
        }
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v6);
  }

  if ([v72 count])
  {
    v56 = v4;
    v57 = v2;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v4;
    v60 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
    if (v60)
    {
      v59 = *v94;
      do
      {
        v14 = 0;
        do
        {
          if (*v94 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v14;
          v15 = *(*(&v93 + 1) + 8 * v14);
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v63 = toManyRelationship(v15, @"bulletinRegistrations");
          v67 = [v63 countByEnumeratingWithState:&v89 objects:v101 count:16];
          if (v67)
          {
            v65 = *v90;
            do
            {
              v16 = 0;
              do
              {
                if (*v90 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v69 = v16;
                v17 = *(*(&v89 + 1) + 8 * v16);
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                v88 = 0u;
                v18 = toManyRelationship(v17, @"conditions");
                v19 = [v18 countByEnumeratingWithState:&v85 objects:v100 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v86;
                  do
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v86 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v85 + 1) + 8 * i);
                      v24 = objectValue(v23, 0, @"$type");
                      v25 = [v24 isEqualToString:@"MKFPresenceBulletinCondition"];

                      if (v25)
                      {
                        v26 = toManyRelationship(v23, @"users");
                        pruneArrayOfRefs(v26, v72);
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v85 objects:v100 count:16];
                  }

                  while (v20);
                }

                v16 = v69 + 1;
              }

              while (v69 + 1 != v67);
              v67 = [v63 countByEnumeratingWithState:&v89 objects:v101 count:16];
            }

            while (v67);
          }

          v14 = v61 + 1;
        }

        while (v61 + 1 != v60);
        v60 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
      }

      while (v60);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v70 = toManyRelationship(v57, @"accessories");
    v27 = [v70 countByEnumeratingWithState:&v81 objects:v99 count:16];
    v28 = v72;
    if (v27)
    {
      v29 = v27;
      v30 = *v82;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v82 != v30)
          {
            objc_enumerationMutation(v70);
          }

          v32 = *(*(&v81 + 1) + 8 * j);
          v33 = toManyRelationship(v32, @"usersWithListeningHistoryEnabled");
          pruneArrayOfRefs(v33, v72);

          v34 = toManyRelationship(v32, @"usersWithMediaContentProfileEnabled");
          pruneArrayOfRefs(v34, v72);

          v35 = toManyRelationship(v32, @"usersWithPersonalRequestsEnabled");
          pruneArrayOfRefs(v35, v72);

          v36 = toManyRelationship(v32, @"pairedUsers");
          pruneArrayOfRefs(v36, v72);
        }

        v29 = [v70 countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v29);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v62 = toManyRelationship(v57, @"triggers");
    v66 = [v62 countByEnumeratingWithState:&v77 objects:v98 count:16];
    if (v66)
    {
      v64 = *v78;
      do
      {
        v37 = 0;
        do
        {
          if (*v78 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v71 = v37;
          v38 = *(*(&v77 + 1) + 8 * v37);
          v39 = objectValue(v38, 2, @"owner");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          if (v41)
          {
            v42 = [v41 objectForKeyedSubscript:@"modelID"];
            v43 = [v28 containsObject:v42];

            if (v43)
            {
              v44 = [v38 objectAtIndexedSubscript:2];
              [v44 setObject:0 forKeyedSubscript:@"owner"];
            }
          }

          v68 = v41;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v45 = toManyRelationship(v38, @"events");
          v46 = [v45 countByEnumeratingWithState:&v73 objects:v97 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v74;
            do
            {
              for (k = 0; k != v47; ++k)
              {
                if (*v74 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v73 + 1) + 8 * k);
                v51 = objectValue(v50, 0, @"$type");
                v52 = [v51 isEqualToString:@"Presence"];

                if (v52)
                {
                  v53 = toManyRelationship(v50, @"users");
                  pruneArrayOfRefs(v53, v72);
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v73 objects:v97 count:16];
            }

            while (v47);
          }

          v28 = v72;
          v37 = v71 + 1;
        }

        while (v71 + 1 != v66);
        v66 = [v62 countByEnumeratingWithState:&v77 objects:v98 count:16];
      }

      while (v66);
    }

    v4 = v56;
    v2 = v57;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v2;
}

@end