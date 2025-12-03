@interface HDHealthRecordParsedHumanName
+ (id)parsedNamesWithHumanNames:(id)names FHIRVersion:(id)version error:(id *)error;
+ (id)preferredNameInNames:(id)names FHIRVersion:(id)version;
- (HDHealthRecordParsedHumanName)initWithHumanNameDictionary:(id)dictionary FHIRVersion:(id)version error:(id *)error;
- (NSString)fullName;
- (id)description;
@end

@implementation HDHealthRecordParsedHumanName

- (HDHealthRecordParsedHumanName)initWithHumanNameDictionary:(id)dictionary FHIRVersion:(id)version error:(id *)error
{
  dictionaryCopy = dictionary;
  versionCopy = version;
  v39.receiver = self;
  v39.super_class = HDHealthRecordParsedHumanName;
  v10 = [(HDHealthRecordParsedHumanName *)&v39 init];
  if (!v10)
  {
    goto LABEL_12;
  }

  if ([dictionaryCopy count])
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"use"];
    hd_stringValue = [v11 hd_stringValue];
    use = v10->_use;
    v10->_use = hd_stringValue;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    hd_stringValue2 = [v14 hd_stringValue];
    text = v10->_text;
    v10->_text = hd_stringValue2;

    fHIRRelease = [versionCopy FHIRRelease];
    v18 = *MEMORY[0x277CCBDC8];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"family"];
    v20 = v19;
    if (fHIRRelease == v18)
    {
      hd_stringArrayValue = [v19 hd_stringArrayValue];
      v23 = [hd_stringArrayValue componentsJoinedByString:@" "];
      family = v10->_family;
      v10->_family = v23;
    }

    else
    {
      hd_stringValue3 = [v19 hd_stringValue];
      hd_stringArrayValue = v10->_family;
      v10->_family = hd_stringValue3;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"given"];
    hd_stringArrayValue2 = [v25 hd_stringArrayValue];
    given = v10->_given;
    v10->_given = hd_stringArrayValue2;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"prefix"];
    hd_stringArrayValue3 = [v28 hd_stringArrayValue];
    prefix = v10->_prefix;
    v10->_prefix = hd_stringArrayValue3;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"suffix"];
    hd_stringArrayValue4 = [v31 hd_stringArrayValue];
    suffix = v10->_suffix;
    v10->_suffix = hd_stringArrayValue4;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"period"];
    if (v34)
    {
      v35 = [HDHealthRecordsExtractionUtilities medicalDateIntervalWithPeriod:v34 error:error];
      period = v10->_period;
      v10->_period = v35;

      if (!v10->_period)
      {

LABEL_16:
        v37 = 0;
        goto LABEL_13;
      }
    }
  }

  if (![(NSString *)v10->_family length]&& ![(NSArray *)v10->_given count]&& ![(NSString *)v10->_text length])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Neither given nor family name nor text is present on HumanName dictionary"];
    goto LABEL_16;
  }

LABEL_12:
  v37 = v10;
LABEL_13:

  return v37;
}

- (NSString)fullName
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSArray *)self->_prefix count])
  {
    [v3 addObjectsFromArray:self->_prefix];
  }

  if ([(NSArray *)self->_given count])
  {
    [v3 addObjectsFromArray:self->_given];
  }

  if ([(NSString *)self->_family length])
  {
    [v3 addObject:self->_family];
  }

  if ([(NSArray *)self->_suffix count])
  {
    [v3 addObjectsFromArray:self->_suffix];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@" "];
    v5 = v4;
    v6 = &stru_286414E28;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    text = self->_text;
    if (!text)
    {
      text = &stru_286414E28;
    }

    v7 = text;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  fullName = [(HDHealthRecordParsedHumanName *)self fullName];
  v6 = [v3 initWithFormat:@"<%@:%p name: %@; use: %@>", v4, self, fullName, self->_use];

  return v6;
}

+ (id)parsedNamesWithHumanNames:(id)names FHIRVersion:(id)version error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  versionCopy = version;
  objc_opt_class();
  v9 = HKSafeObject();
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      v24 = v9;
      v25 = namesCopy;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          v17 = HKSafeObject();
          if (!v17)
          {
            goto LABEL_14;
          }

          v18 = v17;
          v19 = [[HDHealthRecordParsedHumanName alloc] initWithHumanNameDictionary:v17 FHIRVersion:versionCopy error:error];
          if (!v19)
          {

LABEL_14:
            v21 = 0;
            v9 = v24;
            namesCopy = v25;
            goto LABEL_15;
          }

          v20 = v19;
          [v10 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v9 = v24;
        namesCopy = v25;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = v10;
LABEL_15:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)preferredNameInNames:(id)names FHIRVersion:(id)version
{
  v45 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDHealthRecordParsedHumanName preferredNameInNames:a2 FHIRVersion:self];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __66__HDHealthRecordParsedHumanName_preferredNameInNames_FHIRVersion___block_invoke;
  v41[3] = &unk_2796E2B70;
  v8 = v7;
  v42 = v8;
  v9 = [namesCopy hk_filter:v41];
  if ([v9 count])
  {
    v31 = v8;
    v32 = namesCopy;
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:7];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v16 use];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = @"{none}";
          }

          v20 = v19;

          if ([&unk_28641A2A8 containsObject:v20])
          {
            v21 = [v10 objectForKeyedSubscript:v20];

            if (!v21)
            {
              [v10 setObject:v16 forKeyedSubscript:v20];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v13);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [&unk_28641A2A8 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      v9 = v30;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(&unk_28641A2A8);
          }

          v26 = [v10 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
          if (v26)
          {
            v27 = v26;
            goto LABEL_29;
          }
        }

        v23 = [&unk_28641A2A8 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v27 = 0;
    }

    else
    {
      v27 = 0;
      v9 = v30;
    }

LABEL_29:

    v8 = v31;
    namesCopy = v32;
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

BOOL __66__HDHealthRecordParsedHumanName_preferredNameInNames_FHIRVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 period];
    v5 = [v4 endDate];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      v8 = [v3 period];
      v9 = [v8 endDate];
      v10 = [v9 dateForUTC];
      v11 = [v10 laterDate:*(a1 + 32)];
      v12 = v7 != v11;
    }

    else
    {

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end