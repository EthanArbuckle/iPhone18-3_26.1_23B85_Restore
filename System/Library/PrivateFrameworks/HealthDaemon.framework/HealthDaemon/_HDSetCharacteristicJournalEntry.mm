@interface _HDSetCharacteristicJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDSetCharacteristicJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDSetCharacteristicJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v30 = *v34;
    v10 = *MEMORY[0x277CCBB18];
    *&v7 = 138543874;
    v28 = v7;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = v9;
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 value];
        v15 = [v13 dataType];
        v16 = [v15 identifier];
        if (![v16 isEqualToString:v10])
        {
          goto LABEL_9;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v16 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
          v18 = [v16 hk_dateOfBirthDateComponentsWithDate:v14];

          v14 = v18;
LABEL_9:
        }

        v19 = [v31 userCharacteristicsManager];
        v32 = v12;
        v20 = [v19 setUserCharacteristic:v14 forType:v15 error:&v32];
        v9 = v32;

        if ((v20 & 1) == 0)
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = objc_opt_class();
            v24 = v23;
            v25 = [v13 dataType];
            v26 = [v25 code];
            *buf = v28;
            v38 = v23;
            v39 = 2048;
            v40 = v26;
            v41 = 2114;
            v42 = v9;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set characteristic for type %ld, %{public}@", buf, 0x20u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (!v8)
      {

        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (_HDSetCharacteristicJournalEntry)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"value"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"dataType"];
  v13.receiver = self;
  v13.super_class = _HDSetCharacteristicJournalEntry;
  v11 = [(HDJournalEntry *)&v13 initWithCoder:v5];

  if (v11)
  {
    objc_storeStrong(&v11->_value, v9);
    objc_storeStrong(&v11->_dataType, v10);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = v3;
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: encoding is not supported", &v7, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end