@interface CKRecord(HealthDaemon)
+ (id)hd_recordWithSystemData:()HealthDaemon error:;
- (BOOL)hd_setEncryptedValue:()HealthDaemon ifChangedForKey:;
- (id)hd_optionalEncryptedValueForKey:()HealthDaemon type:error:;
- (id)hd_optionalValueForKey:()HealthDaemon type:error:;
- (id)hd_requiredEncryptedValueForKey:()HealthDaemon type:error:;
- (id)hd_requiredValueForKey:()HealthDaemon type:error:;
- (id)hd_systemData;
- (uint64_t)hd_equivalentRecord:()HealthDaemon;
- (uint64_t)hd_setEncryptedValuesIfChanged:()HealthDaemon;
- (uint64_t)hd_setValue:()HealthDaemon ifChangedForKey:;
- (uint64_t)hd_setValuesIfChanged:()HealthDaemon;
@end

@implementation CKRecord(HealthDaemon)

- (uint64_t)hd_equivalentRecord:()HealthDaemon
{
  v4 = a3;
  v5 = [a1 recordID];
  v6 = [v4 recordID];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [a1 valueStore];
  v9 = [v8 values];
  v10 = [v4 valueStore];
  v11 = [v10 values];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [a1 encryptedValueStore];
    v14 = [v13 values];
    v15 = [v4 encryptedValueStore];
    v16 = [v15 values];
    v17 = [v14 isEqual:v16];
  }

  else
  {
LABEL_4:
    v17 = 0;
  }

  return v17;
}

- (uint64_t)hd_setValue:()HealthDaemon ifChangedForKey:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8 == v6)
  {
  }

  else
  {
    if (!v6)
    {

LABEL_8:
      [a1 setObject:v6 forKeyedSubscript:v7];
      v12 = 1;
      goto LABEL_9;
    }

    v10 = [a1 objectForKeyedSubscript:v7];
    v11 = [v10 isEqual:v6];

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (uint64_t)hd_setValuesIfChanged:()HealthDaemon
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CKRecord_HealthDaemon__hd_setValuesIfChanged___block_invoke;
  v7[3] = &unk_278626FB0;
  v7[4] = a1;
  v7[5] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)hd_setEncryptedValue:()HealthDaemon ifChangedForKey:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 encryptedValues];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  v11 = v9 != v6;
  if (v9 == v6)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v12 = [a1 encryptedValues];
  v13 = [v12 objectForKeyedSubscript:v7];
  v14 = [v13 isEqual:v6];

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v8 = [a1 encryptedValues];
    [v8 setObject:v6 forKeyedSubscript:v7];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (uint64_t)hd_setEncryptedValuesIfChanged:()HealthDaemon
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CKRecord_HealthDaemon__hd_setEncryptedValuesIfChanged___block_invoke;
  v7[3] = &unk_278626FB0;
  v7[4] = a1;
  v7[5] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)hd_requiredValueForKey:()HealthDaemon type:error:
{
  v7 = a3;
  v8 = [a1 objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = HKSafeObject();
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [a1 recordID];
    v12 = [v11 recordName];
    [v10 hk_assignError:a5 code:3 format:{@"record %@ does not have value for key (%@)", v12, v7}];

    v9 = 0;
  }

  return v9;
}

- (id)hd_requiredEncryptedValueForKey:()HealthDaemon type:error:
{
  v7 = a3;
  v8 = [a1 encryptedValues];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = HKSafeObject();
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [a1 recordID];
    v13 = [v12 recordName];
    [v11 hk_assignError:a5 code:3 format:{@"record %@ does not have encrypted value for key (%@)", v13, v7}];

    v10 = 0;
  }

  return v10;
}

- (id)hd_optionalValueForKey:()HealthDaemon type:error:
{
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = HKSafeObject();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hd_optionalEncryptedValueForKey:()HealthDaemon type:error:
{
  v4 = a3;
  v5 = [a1 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = HKSafeObject();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hd_recordWithSystemData:()HealthDaemon error:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _recordClasses;
  if (!_recordClasses)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;
  v8 = [v7 arrayByAddingObject:objc_opt_class()];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    v28 = a4;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v30 + 1) + 8 * v14);
        v17 = objc_alloc(MEMORY[0x277CCAAC8]);
        v29 = v15;
        v18 = [v17 initForReadingFromData:v5 error:&v29];
        v12 = v29;

        if (!v18)
        {
          v23 = MEMORY[0x277CCA9B8];
          v24 = MEMORY[0x277CCACA8];
          v22 = NSStringFromClass(v16);
          v25 = [v24 stringWithFormat:@"Failed to initialize unarchiver for class %@", v22];
          [v23 hk_assignError:v28 code:100 description:v25 underlyingError:v12];

          v20 = v9;
          goto LABEL_16;
        }

        v19 = [[v16 alloc] initWithCoder:v18];
        [v18 finishDecoding];

        if (v19)
        {
          v20 = v9;
          goto LABEL_18;
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      a4 = v28;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = [v9 hk_map:&__block_literal_global_177];
  v21 = MEMORY[0x277CCA9B8];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to unarchive data for classes %@", v20];
  [v21 hk_assignError:a4 code:100 description:v22];
LABEL_16:

  v19 = 0;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)hd_systemData
{
  v2 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v2];
  [v2 finishEncoding];
  v3 = [v2 encodedData];

  return v3;
}

@end