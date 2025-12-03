@interface KMMapper_HMHome
- (BOOL)_addItemWithItemId:(id)id assistantHomeKitId:(id)kitId fieldType:(int64_t)type name:(id)name error:(id *)error;
- (KMMapper_HMHome)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_HMHome

- (BOOL)_addItemWithItemId:(id)id assistantHomeKitId:(id)kitId fieldType:(int64_t)type name:(id)name error:(id *)error
{
  kitIdCopy = kitId;
  nameCopy = name;
  builder = self->_builder;
  v29 = 0;
  v15 = [(KVItemBuilder *)builder setItemType:4 itemId:id error:&v29];
  v16 = v29;
  if (!v15)
  {
    goto LABEL_6;
  }

  v17 = self->_builder;
  v28 = v16;
  v18 = [(KVItemBuilder *)v17 addFieldWithType:type value:nameCopy error:&v28];
  v19 = v28;

  if (!v18)
  {

    goto LABEL_8;
  }

  v20 = self->_builder;
  v27 = v19;
  v21 = [(KVItemBuilder *)v20 addFieldWithType:158 value:kitIdCopy error:&v27];
  v16 = v27;

  if (!v21)
  {
LABEL_6:
    v19 = v16;
LABEL_8:
    KMMapperSetBuilderError(error, v19);
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
    KMMapperSetBuilderError(error, v19);
  }

LABEL_11:
  return v24;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v140 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  uniqueIdentifier = [objectCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  assistantIdentifier = [objectCopy assistantIdentifier];
  name = [objectCopy name];
  errorCopy = error;
  v14 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString assistantHomeKitId:assistantIdentifier fieldType:150 name:name error:error];

  if (!v14)
  {
    goto LABEL_74;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v106 = objectCopy;
  zones = [objectCopy zones];
  v16 = [zones countByEnumeratingWithState:&v130 objects:v139 count:16];
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
          objc_enumerationMutation(zones);
        }

        v20 = *(*(&v130 + 1) + 8 * i);
        rooms = [v20 rooms];
        v22 = [rooms count];

        if (v22)
        {
          uniqueIdentifier2 = [v20 uniqueIdentifier];
          uUIDString2 = [uniqueIdentifier2 UUIDString];
          assistantIdentifier2 = [v20 assistantIdentifier];
          name2 = [v20 name];
          v27 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString2 assistantHomeKitId:assistantIdentifier2 fieldType:151 name:name2 error:errorCopy];

          if (!v27)
          {
LABEL_71:

LABEL_72:
            v91 = 0;
            objectCopy = v106;
            goto LABEL_75;
          }
        }
      }

      v17 = [zones countByEnumeratingWithState:&v130 objects:v139 count:16];
    }

    while (v17);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  zones = [v106 rooms];
  v28 = [zones countByEnumeratingWithState:&v126 objects:v138 count:16];
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
          objc_enumerationMutation(zones);
        }

        v32 = *(*(&v126 + 1) + 8 * j);
        uniqueIdentifier3 = [v32 uniqueIdentifier];
        uUIDString3 = [uniqueIdentifier3 UUIDString];
        assistantIdentifier3 = [v32 assistantIdentifier];
        name3 = [v32 name];
        v37 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString3 assistantHomeKitId:assistantIdentifier3 fieldType:152 name:name3 error:errorCopy];

        if (!v37)
        {
          goto LABEL_71;
        }
      }

      v29 = [zones countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v29);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  zones = [v106 serviceGroups];
  v38 = [zones countByEnumeratingWithState:&v122 objects:v137 count:16];
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
          objc_enumerationMutation(zones);
        }

        v42 = *(*(&v122 + 1) + 8 * k);
        services = [v42 services];
        v44 = [services count];

        if (v44)
        {
          uniqueIdentifier4 = [v42 uniqueIdentifier];
          uUIDString4 = [uniqueIdentifier4 UUIDString];
          assistantIdentifier4 = [v42 assistantIdentifier];
          name4 = [v42 name];
          v49 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString4 assistantHomeKitId:assistantIdentifier4 fieldType:154 name:name4 error:errorCopy];

          if (!v49)
          {
            goto LABEL_71;
          }
        }
      }

      v39 = [zones countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v39);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  objectCopy = v106;
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
      actionSetType = [v54 actionSetType];
      v56 = [actionSetType isEqualToString:v52];

      if (v56)
      {
        continue;
      }

      actionSetType2 = [v54 actionSetType];
      if (([actionSetType2 isEqualToString:v102] & 1) == 0)
      {

LABEL_38:
        uniqueIdentifier5 = [v54 uniqueIdentifier];
        uUIDString5 = [uniqueIdentifier5 UUIDString];
        assistantIdentifier5 = [v54 assistantIdentifier];
        name5 = [v54 name];
        v64 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString5 assistantHomeKitId:assistantIdentifier5 fieldType:155 name:name5 error:errorCopy];

        if (v64)
        {
          continue;
        }

LABEL_74:
        v91 = 0;
        goto LABEL_75;
      }

      actions = [v54 actions];
      v59 = [actions count];

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
  accessories = [v106 accessories];
  v101 = [accessories countByEnumeratingWithState:&v114 objects:v135 count:16];
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
  v100 = accessories;
  while (2)
  {
    v67 = 0;
    while (2)
    {
      if (*v115 != v66)
      {
        objc_enumerationMutation(accessories);
      }

      v103 = v67;
      v68 = *(*(&v114 + 1) + 8 * v67);
      name6 = [v68 name];
      category = [v68 category];
      obja = [category categoryType];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      services2 = [v68 services];
      v72 = [services2 countByEnumeratingWithState:&v110 objects:v134 count:16];
      if (v72)
      {
        v73 = v72;
        v98 = v68;
        v74 = 0;
        v75 = *v111;
        v108 = services2;
        while (2)
        {
          for (n = 0; n != v73; ++n)
          {
            if (*v111 != v75)
            {
              objc_enumerationMutation(services2);
            }

            v77 = *(*(&v110 + 1) + 8 * n);
            if ([v77 isUserInteractive])
            {
              name7 = [v77 name];
              if (name7 | name6)
              {
                v79 = name7;
                name8 = [v77 name];
                v81 = [name8 isEqual:name6];

                if ((v81 & 1) == 0)
                {
                  uniqueIdentifier6 = [v77 uniqueIdentifier];
                  uUIDString6 = [uniqueIdentifier6 UUIDString];
                  assistantIdentifier6 = [v77 assistantIdentifier];
                  name9 = [v77 name];
                  v86 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString6 assistantHomeKitId:assistantIdentifier6 fieldType:153 name:name9 error:errorCopy];

                  if (!v86)
                  {

                    accessories = v100;
                    goto LABEL_79;
                  }
                }

                v74 = 1;
                services2 = v108;
              }

              else
              {
                v74 = 1;
              }
            }
          }

          v73 = [services2 countByEnumeratingWithState:&v110 objects:v134 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }

        accessories = v100;
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
        uniqueIdentifier7 = [v68 uniqueIdentifier];
        uUIDString7 = [uniqueIdentifier7 UUIDString];
        assistantIdentifier7 = [v68 assistantIdentifier];
        v90 = [(KMMapper_HMHome *)self _addItemWithItemId:uUIDString7 assistantHomeKitId:assistantIdentifier7 fieldType:157 name:name6 error:errorCopy];

        if (!v90)
        {
LABEL_79:

          goto LABEL_72;
        }
      }

      v67 = v103 + 1;
      objectCopy = v106;
      v66 = v99;
      if (v103 + 1 != v101)
      {
        continue;
      }

      break;
    }

    v101 = [accessories countByEnumeratingWithState:&v114 objects:v135 count:16];
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