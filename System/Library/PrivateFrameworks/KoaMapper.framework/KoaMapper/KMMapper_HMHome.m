@interface KMMapper_HMHome
- (BOOL)_addItemWithItemId:(id)a3 assistantHomeKitId:(id)a4 fieldType:(int64_t)a5 name:(id)a6 error:(id *)a7;
- (KMMapper_HMHome)init;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMMapper_HMHome

- (BOOL)_addItemWithItemId:(id)a3 assistantHomeKitId:(id)a4 fieldType:(int64_t)a5 name:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a6;
  builder = self->_builder;
  v29 = 0;
  v15 = [(KVItemBuilder *)builder setItemType:4 itemId:a3 error:&v29];
  v16 = v29;
  if (!v15)
  {
    goto LABEL_6;
  }

  v17 = self->_builder;
  v28 = v16;
  v18 = [(KVItemBuilder *)v17 addFieldWithType:a5 value:v13 error:&v28];
  v19 = v28;

  if (!v18)
  {

    goto LABEL_8;
  }

  v20 = self->_builder;
  v27 = v19;
  v21 = [(KVItemBuilder *)v20 addFieldWithType:158 value:v12 error:&v27];
  v16 = v27;

  if (!v21)
  {
LABEL_6:
    v19 = v16;
LABEL_8:
    KMMapperSetBuilderError(a7, v19);
    v24 = 0;
    goto LABEL_11;
  }

  v22 = self->_builder;
  v26 = v16;
  v23 = [(KVItemBuilder *)v22 buildItemWithError:&v26];
  v19 = v26;

  v24 = v23 != 0;
  if (v23)
  {
    [(NSMutableArray *)self->_items addObject:v23];
  }

  else
  {
    KMMapperSetBuilderError(a7, v19);
  }

LABEL_11:
  return v24;
}

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v140 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  v10 = [v7 uniqueIdentifier];
  v11 = [v10 UUIDString];
  v12 = [v7 assistantIdentifier];
  v13 = [v7 name];
  v109 = a5;
  v14 = [(KMMapper_HMHome *)self _addItemWithItemId:v11 assistantHomeKitId:v12 fieldType:150 name:v13 error:a5];

  if (!v14)
  {
    goto LABEL_74;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v106 = v7;
  v15 = [v7 zones];
  v16 = [v15 countByEnumeratingWithState:&v130 objects:v139 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v131;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v131 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v130 + 1) + 8 * i);
        v21 = [v20 rooms];
        v22 = [v21 count];

        if (v22)
        {
          v23 = [v20 uniqueIdentifier];
          v24 = [v23 UUIDString];
          v25 = [v20 assistantIdentifier];
          v26 = [v20 name];
          v27 = [(KMMapper_HMHome *)self _addItemWithItemId:v24 assistantHomeKitId:v25 fieldType:151 name:v26 error:v109];

          if (!v27)
          {
LABEL_71:

LABEL_72:
            v91 = 0;
            v7 = v106;
            goto LABEL_75;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v130 objects:v139 count:16];
    }

    while (v17);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v15 = [v106 rooms];
  v28 = [v15 countByEnumeratingWithState:&v126 objects:v138 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v127;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v127 != v30)
        {
          objc_enumerationMutation(v15);
        }

        v32 = *(*(&v126 + 1) + 8 * j);
        v33 = [v32 uniqueIdentifier];
        v34 = [v33 UUIDString];
        v35 = [v32 assistantIdentifier];
        v36 = [v32 name];
        v37 = [(KMMapper_HMHome *)self _addItemWithItemId:v34 assistantHomeKitId:v35 fieldType:152 name:v36 error:v109];

        if (!v37)
        {
          goto LABEL_71;
        }
      }

      v29 = [v15 countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v29);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v15 = [v106 serviceGroups];
  v38 = [v15 countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v123;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v123 != v40)
        {
          objc_enumerationMutation(v15);
        }

        v42 = *(*(&v122 + 1) + 8 * k);
        v43 = [v42 services];
        v44 = [v43 count];

        if (v44)
        {
          v45 = [v42 uniqueIdentifier];
          v46 = [v45 UUIDString];
          v47 = [v42 assistantIdentifier];
          v48 = [v42 name];
          v49 = [(KMMapper_HMHome *)self _addItemWithItemId:v46 assistantHomeKitId:v47 fieldType:154 name:v48 error:v109];

          if (!v49)
          {
            goto LABEL_71;
          }
        }
      }

      v39 = [v15 countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v39);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v7 = v106;
  obj = [v106 actionSets];
  v50 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
  if (!v50)
  {
    goto LABEL_41;
  }

  v51 = v50;
  v107 = *v119;
  v52 = *MEMORY[0x277CCF1A0];
  v102 = *MEMORY[0x277CCF1A8];
  do
  {
    for (m = 0; m != v51; ++m)
    {
      if (*v119 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v54 = *(*(&v118 + 1) + 8 * m);
      v55 = [v54 actionSetType];
      v56 = [v55 isEqualToString:v52];

      if (v56)
      {
        continue;
      }

      v57 = [v54 actionSetType];
      if (([v57 isEqualToString:v102] & 1) == 0)
      {

LABEL_38:
        v60 = [v54 uniqueIdentifier];
        v61 = [v60 UUIDString];
        v62 = [v54 assistantIdentifier];
        v63 = [v54 name];
        v64 = [(KMMapper_HMHome *)self _addItemWithItemId:v61 assistantHomeKitId:v62 fieldType:155 name:v63 error:v109];

        if (v64)
        {
          continue;
        }

LABEL_74:
        v91 = 0;
        goto LABEL_75;
      }

      v58 = [v54 actions];
      v59 = [v58 count];

      if (v59)
      {
        goto LABEL_38;
      }
    }

    v51 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
  }

  while (v51);
LABEL_41:

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v65 = [v106 accessories];
  v101 = [v65 countByEnumeratingWithState:&v114 objects:v135 count:16];
  if (!v101)
  {
    goto LABEL_70;
  }

  v66 = *v115;
  v97 = *MEMORY[0x277CCE8B0];
  v96 = *MEMORY[0x277CCE870];
  v95 = *MEMORY[0x277CCE860];
  v94 = *MEMORY[0x277CCE900];
  v99 = *v115;
  v100 = v65;
  while (2)
  {
    v67 = 0;
    while (2)
    {
      if (*v115 != v66)
      {
        objc_enumerationMutation(v65);
      }

      v103 = v67;
      v68 = *(*(&v114 + 1) + 8 * v67);
      v69 = [v68 name];
      v70 = [v68 category];
      obja = [v70 categoryType];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v71 = [v68 services];
      v72 = [v71 countByEnumeratingWithState:&v110 objects:v134 count:16];
      if (v72)
      {
        v73 = v72;
        v98 = v68;
        v74 = 0;
        v75 = *v111;
        v108 = v71;
        while (2)
        {
          for (n = 0; n != v73; ++n)
          {
            if (*v111 != v75)
            {
              objc_enumerationMutation(v71);
            }

            v77 = *(*(&v110 + 1) + 8 * n);
            if ([v77 isUserInteractive])
            {
              v78 = [v77 name];
              if (v78 | v69)
              {
                v79 = v78;
                v80 = [v77 name];
                v81 = [v80 isEqual:v69];

                if ((v81 & 1) == 0)
                {
                  v82 = [v77 uniqueIdentifier];
                  v83 = [v82 UUIDString];
                  v84 = [v77 assistantIdentifier];
                  v85 = [v77 name];
                  v86 = [(KMMapper_HMHome *)self _addItemWithItemId:v83 assistantHomeKitId:v84 fieldType:153 name:v85 error:v109];

                  if (!v86)
                  {

                    v65 = v100;
                    goto LABEL_79;
                  }
                }

                v74 = 1;
                v71 = v108;
              }

              else
              {
                v74 = 1;
              }
            }
          }

          v73 = [v71 countByEnumeratingWithState:&v110 objects:v134 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }

        v65 = v100;
        v68 = v98;
        if (v74)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (([v68 supportsNativeMatter] & 1) != 0 || (objc_msgSend(obja, "isEqual:", v97) & 1) != 0 || (objc_msgSend(obja, "isEqual:", v96) & 1) != 0 || (objc_msgSend(obja, "isEqual:", v95) & 1) != 0 || objc_msgSend(obja, "isEqual:", v94))
      {
LABEL_67:
        v87 = [v68 uniqueIdentifier];
        v88 = [v87 UUIDString];
        v89 = [v68 assistantIdentifier];
        v90 = [(KMMapper_HMHome *)self _addItemWithItemId:v88 assistantHomeKitId:v89 fieldType:157 name:v69 error:v109];

        if (!v90)
        {
LABEL_79:

          goto LABEL_72;
        }
      }

      v67 = v103 + 1;
      v7 = v106;
      v66 = v99;
      if (v103 + 1 != v101)
      {
        continue;
      }

      break;
    }

    v101 = [v65 countByEnumeratingWithState:&v114 objects:v135 count:16];
    if (v101)
    {
      continue;
    }

    break;
  }

LABEL_70:

  v91 = self->_items;
LABEL_75:

  v92 = *MEMORY[0x277D85DE8];

  return v91;
}

- (KMMapper_HMHome)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_HMHome;
  v2 = [(KMMapper_HMHome *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end