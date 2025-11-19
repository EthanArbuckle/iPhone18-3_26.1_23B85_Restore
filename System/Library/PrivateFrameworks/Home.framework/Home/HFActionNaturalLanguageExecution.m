@interface HFActionNaturalLanguageExecution
+ (id)executionWithActions:(id)a3 options:(id)a4;
- (HFAccessoryRepresentable)singularInvolvedObject;
- (HFActionNaturalLanguageExecution)initWithOptions:(id)a3;
- (id)stringKeysForMatterActions:(id)a3;
- (unint64_t)accessoryCount;
- (void)updateInvolvedObjects;
@end

@implementation HFActionNaturalLanguageExecution

- (id)stringKeysForMatterActions:(id)a3
{
  sub_20D9D7510(0, &qword_27C843EE8, 0x277CD17F8);
  sub_20D9EC18C(&qword_27C843EF0, &qword_27C843EE8, 0x277CD17F8);
  v4 = sub_20DD651E4();
  v5 = self;
  HFActionNaturalLanguageExecution.stringKeys(for:)(v4);

  sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
  sub_20D9EC18C(&qword_27C843EF8, &qword_27C843958, off_277DEFC90);
  v6 = sub_20DD651C4();

  return v6;
}

- (HFActionNaturalLanguageExecution)initWithOptions:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFActionNaturalLanguageExecution;
  v6 = [(HFActionNaturalLanguageExecution *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v7->_named = 0;
    v8 = [MEMORY[0x277CBEB58] set];
    indescribableActionTypes = v7->_indescribableActionTypes;
    v7->_indescribableActionTypes = v8;
  }

  return v7;
}

- (HFAccessoryRepresentable)singularInvolvedObject
{
  if ([(HFActionNaturalLanguageExecution *)self accessoryCount]== 1)
  {
    v3 = [(HFActionNaturalLanguageExecution *)self allInvolvedObjects];
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessoryCount
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HFActionNaturalLanguageExecution *)self options];
  v4 = [v3 accessoryCountType];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(HFActionNaturalLanguageExecution *)self allInvolvedObjects];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v19 + 1) + 8 * i) hf_containedServices];
          v12 = [v11 na_filter:&__block_literal_global_335];

          if ([v12 count])
          {
            v13 = [v12 count];
          }

          else
          {
            v13 = 1;
          }

          v8 += v13;
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v18 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    v14 = [(HFActionNaturalLanguageExecution *)self allInvolvedObjects];
    v15 = [v14 count];

    v16 = *MEMORY[0x277D85DE8];
    return v15;
  }
}

+ (id)executionWithActions:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HFActionNaturalLanguageExecution_executionWithActions_options___block_invoke;
  v18[3] = &unk_277DF6308;
  v19 = v6;
  v8 = v6;
  v9 = [v7 na_filter:v18];

  v10 = [[HFActionNaturalLanguageExecution alloc] initWithOptions:v8];
  [(HFActionNaturalLanguageExecution *)v10 setActions:v9];
  v11 = [v9 na_map:&__block_literal_global_338];
  [(HFActionNaturalLanguageExecution *)v10 setInvolvedServices:v11];

  [(HFActionNaturalLanguageExecution *)v10 updateInvolvedObjects];
  v12 = [(HFActionNaturalLanguageExecution *)v10 allInvolvedObjects];
  v13 = [a1 _accessoryRepresentingIDsInSet:v12];

  v14 = [v8 objectsInContext];
  v15 = [a1 _accessoryRepresentingIDsInSet:v14];

  v16 = [v13 na_setByRemovingObjectsFromSet:v15];
  -[HFActionNaturalLanguageExecution setNamed:](v10, "setNamed:", [v16 count] != 0);

  return v10;
}

uint64_t __65__HFActionNaturalLanguageExecution_executionWithActions_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    objc_opt_class();
    v7 = v4;
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      if ([*(a1 + 32) ignoreOptionalCharacteristics])
      {
        v11 = [v10 characteristic];
        v12 = [v11 service];
        v13 = [v12 serviceType];

        v14 = [MEMORY[0x277CD1D90] hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:v13];
        v15 = [v10 characteristic];
        v16 = [v15 characteristicType];
        v8 = [v14 containsObject:v16];

        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 1;
    goto LABEL_14;
  }

  v7 = [v6 mediaProfiles];
  v8 = [v7 count] != 0;
LABEL_14:

  return v8;
}

id __65__HFActionNaturalLanguageExecution_executionWithActions_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_affectedCharacteristic];
  v3 = [v2 service];

  return v3;
}

id __67__HFActionNaturalLanguageExecution__accessoryRepresentingIDsInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_homeKitObject];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)updateInvolvedObjects
{
  v3 = [(HFActionNaturalLanguageExecution *)self actions];
  v4 = [v3 na_flatMap:&__block_literal_global_343_0];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HFActionNaturalLanguageExecution_updateInvolvedObjects__block_invoke_4;
  v11[3] = &unk_277DFD528;
  v11[4] = self;
  v13 = &v14;
  v6 = v5;
  v12 = v6;
  v7 = [v4 na_map:v11];

  if ((v15[3] & 1) == 0)
  {
    v8 = [(NSSet *)v7 setByAddingObjectsFromSet:v6];

    v7 = v8;
  }

  allInvolvedObjects = self->_allInvolvedObjects;
  self->_allInvolvedObjects = v7;
  v10 = v7;

  _Block_object_dispose(&v14, 8);
}

id __57__HFActionNaturalLanguageExecution_updateInvolvedObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_affectedCharacteristic];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [v2 hf_affectedCharacteristic];
    v6 = [v5 service];
    v7 = [v4 setWithObject:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CBEB98];
    v5 = [v2 commands];
    v6 = [v5 na_map:&__block_literal_global_346];
    v7 = [v8 setWithArray:v6];
    goto LABEL_5;
  }

  v5 = [v2 hf_affectedAccessoryProfiles];
  v9 = [v5 na_map:&__block_literal_global_349];
LABEL_6:

  return v9;
}

id __57__HFActionNaturalLanguageExecution_updateInvolvedObjects__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28252A588])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = [v2 accessory];
  }

  v6 = v5;

  return v6;
}

id __57__HFActionNaturalLanguageExecution_updateInvolvedObjects__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) options];
  v5 = [v4 objectsInContext];
  v6 = [v5 containsObject:v3];

  if (v6)
  {
    v7 = v3;
    goto LABEL_25;
  }

  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
LABEL_11:
    v14 = [HFAccessoryLikeObject accessoryLikeObjectsForAccessoryRepresentable:v7];
    if ([v14 count] == 1)
    {
      v15 = [v14 anyObject];
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v7;
    }

    v17 = v16;
    v18 = [*(a1 + 32) options];
    if ([v18 useMediaContainersNotInContext])
    {
    }

    else
    {
      v19 = [v15 conformsToProtocol:&unk_282584A38];

      if (v19)
      {
        v20 = [*(a1 + 32) options];
        v21 = [v20 objectsInContext];
        v22 = [v21 containsObject:v17];

        if (!v22)
        {
          [*(a1 + 40) na_safeAddObject:v17];
          v7 = 0;
          goto LABEL_23;
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    v7 = v17;
LABEL_23:

    goto LABEL_24;
  }

  v10 = [*(a1 + 32) involvedServices];
  if ([v10 count] != 1)
  {

    goto LABEL_11;
  }

  v11 = [v9 accessory];
  v12 = [v11 hf_showAsAccessoryTile];

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v9;
LABEL_24:

LABEL_25:

  return v7;
}

@end