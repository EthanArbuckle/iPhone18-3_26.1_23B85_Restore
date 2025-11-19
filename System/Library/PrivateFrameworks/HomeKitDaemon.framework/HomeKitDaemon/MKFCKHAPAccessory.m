@interface MKFCKHAPAccessory
+ (id)fetchWithLocalModel:(id)a3 context:(id)a4;
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)hasServicePropertiesForInstanceID:(void *)a1;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (id)fetchLocalModelWithContext:(id)a3;
- (void)exportServiceDictionary:(void *)a3 forLocalModel:(int)a4 servicesModified:(void *)a5 withBlock:;
- (void)importServiceDictionary:(void *)a3 forLocalModel:(void *)a4 withBlock:;
- (void)lazyMutableCopy:(void *)a1 of:(void *)a2;
@end

@implementation MKFCKHAPAccessory

+ (id)fetchWithLocalModel:(id)a3 context:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MKFCKHAPAccessory;
  v4 = objc_msgSendSuper2(&v6, sel_fetchWithLocalModel_context_, a3, a4);

  return v4;
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v65.receiver = self;
  v65.super_class = MKFCKHAPAccessory;
  if (![(MKFCKAccessory *)&v65 exportFromLocalModel:v8 updatedProperties:v9 context:v10])
  {
    goto LABEL_54;
  }

  v11 = [(MKFCKHAPAccessory *)self initialServiceTypes];
  if (!v11)
  {
    v12 = [v8 initialServiceTypes];

    if (!v12)
    {
      goto LABEL_6;
    }

    v11 = [v8 initialServiceTypes];
    [(MKFCKHAPAccessory *)self setInitialServiceTypes:v11];
  }

LABEL_6:
  v13 = v8;
  if (self)
  {
    v14 = [(MKFCKHAPAccessory *)self serviceProperties];
    v78 = 0;
    v15 = [v13 services];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v16)
    {
      v59 = v13;
      v60 = self;
      v61 = v10;
      v62 = v9;
      v63 = v8;
      v17 = *v75;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v75 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v74 + 1) + 8 * i);
          v20 = [v19 instanceID];
          v21 = [v14 objectForKeyedSubscript:v20];

          if (!v21)
          {
            v81[0] = @"t";
            v22 = [v19 serviceType];
            v81[1] = @"p";
            v82[0] = v22;
            v23 = [v19 serviceProperties];
            v24 = v23;
            v25 = &unk_283E73718;
            if (v23)
            {
              v25 = v23;
            }

            v82[1] = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
            v27 = [MKFCKHAPAccessory lazyMutableCopy:v14 of:?];
            [v27 setObject:v26 forKeyedSubscript:v20];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v16);
      v16 = v78;
      if (v78)
      {
        v28 = MEMORY[0x277CBEB58];
        v29 = [v14 allKeys];
        v30 = [v28 setWithArray:v29];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v31 = obj;
        v32 = [v31 countByEnumeratingWithState:&v70 objects:v80 count:16];
        v9 = v62;
        if (v32)
        {
          v33 = v32;
          v34 = *v71;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v71 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v70 + 1) + 8 * j) instanceID];
              [v30 removeObject:v36];
            }

            v33 = [v31 countByEnumeratingWithState:&v70 objects:v80 count:16];
          }

          while (v33);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v37 = v30;
        v38 = [v37 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v67;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v67 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v66 + 1) + 8 * k);
              v43 = [MEMORY[0x277CBEB68] null];
              [v16 setObject:v43 forKeyedSubscript:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v66 objects:v79 count:16];
          }

          while (v39);
        }

        self = v60;
        v44 = [(MKFCKHAPAccessory *)v60 serviceProperties];
        v45 = HMFEqualObjects();

        if ((v45 & 1) == 0)
        {
          v46 = [v16 copy];
          [(MKFCKHAPAccessory *)v60 setServiceProperties:v46];
        }

        LODWORD(v16) = 1;
        v8 = v63;
        v10 = v61;
      }

      else
      {
        v9 = v62;
        v8 = v63;
        self = v60;
      }

      v13 = v59;
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_38_162514 withBlock:?];
  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_41_162516 withBlock:?];
  [(MKFCKHAPAccessory *)self exportServiceDictionary:v13 forLocalModel:v16 servicesModified:&__block_literal_global_44_162518 withBlock:?];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_47;
  }

  if (![(MKFCKModel *)self shouldExportUpdatedPropertyInSet:v9 name:@"adaptiveTemperatureSleepScheduleRules_"])
  {
    if (self)
    {
      goto LABEL_46;
    }

LABEL_54:
    v56 = 0;
    goto LABEL_55;
  }

  if (!self)
  {
    goto LABEL_54;
  }

  v47 = [v13 adaptiveTemperatureSleepScheduleRules];
  v48 = [(MKFCKHAPAccessory *)self adaptiveTemperatureSleepScheduleRules];
  v49 = [MKFCKGuest _dictionaryRepresentationFromWeekDayScheduleRules:v47 cloudWeekDayScheduleRulesDictionary:v48];

  v50 = [(MKFCKHAPAccessory *)self adaptiveTemperatureSleepScheduleRules];
  LOBYTE(v47) = HMFEqualObjects();

  if ((v47 & 1) == 0)
  {
    [(MKFCKHAPAccessory *)self setAdaptiveTemperatureSleepScheduleRules:v49];
  }

LABEL_46:
  if (![(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v13 localRelationship:@"localPresenceRooms_" context:v10])
  {
    goto LABEL_54;
  }

LABEL_47:
  v51 = [v13 accessoryCategory];
  if (v51)
  {
    v52 = [(MKFCKHAPAccessory *)self category];
    v53 = HMFEqualObjects();

    if ((v53 & 1) == 0)
    {
      v54 = [(MKFCKHAPAccessory *)self category];

      v55 = v16 ^ 1;
      if (!v54)
      {
        v55 = 0;
      }

      if ((v55 & 1) == 0)
      {
        [(MKFCKHAPAccessory *)self setCategory:v51];
      }
    }
  }

  v56 = 1;
LABEL_55:

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

- (void)exportServiceDictionary:(void *)a3 forLocalModel:(int)a4 servicesModified:(void *)a5 withBlock:
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v36 = a5;
  if (a1)
  {
    v35 = v9;
    v11 = [a1 valueForKey:v9];
    v12 = v11;
    v46 = 0;
    if (a4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v13 = [v11 allKeys];
      v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v43;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v42 + 1) + 8 * i);
            if (![(MKFCKHAPAccessory *)a1 hasServicePropertiesForInstanceID:v18])
            {
              v19 = [MKFCKHAPAccessory lazyMutableCopy:v12 of:?];
              [v19 removeObjectForKey:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v15);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v10 services];
    v20 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v38 + 1) + 8 * j);
          v25 = [v24 instanceID];
          if ([(MKFCKHAPAccessory *)a1 hasServicePropertiesForInstanceID:v25])
          {
            v26 = v36[2](v36, v24);
            [v12 objectForKeyedSubscript:v25];
            v28 = v27 = v12;
            v29 = HMFEqualObjects();

            v12 = v27;
            if ((v29 & 1) == 0)
            {
              v30 = [MKFCKHAPAccessory lazyMutableCopy:v27 of:?];
              [v30 setObject:v26 forKeyedSubscript:v25];
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v21);
    }

    v31 = v46;
    v9 = v35;
    if (v46)
    {
      v32 = [v46 copy];
      [a1 setValue:v32 forKey:v35];
    }

    v10 = v34;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasServicePropertiesForInstanceID:(void *)a1
{
  v3 = a2;
  v4 = [a1 serviceProperties];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = v5;
  v7 = v6;
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8 != 0;
}

- (void)lazyMutableCopy:(void *)a1 of:(void *)a2
{
  v3 = a2;
  v4 = v3;
  v5 = *a1;
  if (!*a1)
  {
    v6 = [v3 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
    }

    v9 = *a1;
    *a1 = v8;

    v5 = *a1;
  }

  v10 = v5;

  return v5;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v52.receiver = self;
  v52.super_class = MKFCKHAPAccessory;
  v50 = a5;
  v51 = v8;
  if ([(MKFCKAccessory *)&v52 importIntoLocalModel:v8 updatedProperties:a4 context:?])
  {
    v9 = [v8 pairingUsername];
    v10 = v9 == 0;

    if (v10)
    {
      v11 = [(MKFCKHAPAccessory *)self identifier];
      [v51 setPairingUsername:v11];
    }

    v12 = [(MKFCKHAPAccessory *)self initialServiceTypes];
    v13 = [v51 initialServiceTypes];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [v51 setInitialServiceTypes:v12];
    }

    v15 = v51;
    v47 = v50;
    if (self)
    {
      v49 = [(MKFCKHAPAccessory *)self serviceProperties];
      v16 = [v15 mutableSetValueForKey:@"services_"];
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v49, "count")}];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v19)
      {
        v20 = *v68;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v68 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v67 + 1) + 8 * i);
            v23 = [v22 instanceID];
            [v17 setObject:v22 forKeyedSubscript:v23];
          }

          v19 = [v18 countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v19);
      }

      v48 = v12;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __76__MKFCKHAPAccessory_importServicePropertiesIntoLocalModel_context_modified___block_invoke;
      v57[3] = &unk_27867C310;
      v24 = v17;
      v58 = v24;
      v25 = v47;
      v59 = v25;
      v26 = v15;
      v60 = v26;
      v27 = v18;
      v61 = v27;
      v62 = &v63;
      [v49 enumerateKeysAndObjectsUsingBlock:v57];
      v28 = *(v64 + 24);
      if (v28 == 1)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v29 = [v24 allValues];
        v30 = [v29 countByEnumeratingWithState:&v53 objects:v71 count:16];
        if (v30)
        {
          v31 = *v54;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v54 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v53 + 1) + 8 * j);
              [v27 removeObject:v33];
              [v25 deleteObject:v33];
            }

            v30 = [v29 countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v30);
        }

        v12 = v48;
        LOBYTE(v28) = *(v64 + 24);
      }

      _Block_object_dispose(&v63, 8);
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_162555 withBlock:?];
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_12_162556 withBlock:?];
      [(MKFCKHAPAccessory *)self importServiceDictionary:v26 forLocalModel:&__block_literal_global_18_162557 withBlock:?];
      if (v28)
      {
        v34 = [v26 accessoryCategory];
        v35 = [(MKFCKHAPAccessory *)self category];
        v36 = HMFEqualObjects();

        if ((v36 & 1) == 0)
        {
          v37 = [(MKFCKHAPAccessory *)self category];
          [v26 setAccessoryCategory:v37];
        }
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        goto LABEL_29;
      }

      v38 = v25;
      v39 = v26;
      v40 = [v39 entity];
      v41 = [v40 relationshipsByName];
      v42 = [v41 objectForKeyedSubscript:@"adaptiveTemperatureSleepScheduleRules_"];
      v43 = [MKFCKGuest _importWeekDayScheduleRulesIntoLocalModel:v39 fromCloudModel:self localRelationship:v42 cloudAttributeName:@"adaptiveTemperatureSleepScheduleRules" parentRelationshipName:@"hapAccessory" context:v38];

      if (v43 && [(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v39 localRelationship:@"localPresenceRooms_" context:v38])
      {
        goto LABEL_29;
      }
    }

    else
    {

      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_162555 withBlock:?];
      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_12_162556 withBlock:?];
      [(MKFCKHAPAccessory *)0 importServiceDictionary:v15 forLocalModel:&__block_literal_global_18_162557 withBlock:?];
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
LABEL_29:
        v44 = 1;
LABEL_33:

        goto LABEL_34;
      }
    }

    v44 = 0;
    goto LABEL_33;
  }

  v44 = 0;
LABEL_34:

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)importServiceDictionary:(void *)a3 forLocalModel:(void *)a4 withBlock:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v18 = [a1 valueForKey:a2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v7 services];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 instanceID];
          if ([(MKFCKHAPAccessory *)a1 hasServicePropertiesForInstanceID:v15])
          {
            v16 = [v18 objectForKeyedSubscript:v15];
            v8[2](v8, v14, v16);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __76__MKFCKHAPAccessory_importServicePropertiesIntoLocalModel_context_modified___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v14];
    if (v9)
    {
      v10 = v9;
      [*(a1 + 32) removeObjectForKey:v14];
    }

    else
    {
      v10 = [[_MKFService alloc] initWithContext:*(a1 + 40)];
      v11 = [_MKFService modelIDForKeyAttribute:v14 parent:*(a1 + 48)];
      [(_MKFService *)v10 setModelID:v11];

      [(_MKFService *)v10 setInstanceID:v14];
      v12 = [v8 objectForKeyedSubscript:@"t"];
      [(_MKFService *)v10 setServiceType:v12];

      v13 = [v8 objectForKeyedSubscript:@"p"];
      [(_MKFService *)v10 setServiceProperties:v13];

      [*(a1 + 56) addObject:v10];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }
}

- (id)fetchLocalModelWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKFCKHAPAccessory;
  v3 = [(MKFCKModel *)&v5 fetchLocalModelWithContext:a3];

  return v3;
}

@end