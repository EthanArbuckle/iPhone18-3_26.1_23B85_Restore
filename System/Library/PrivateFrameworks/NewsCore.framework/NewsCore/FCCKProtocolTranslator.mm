@interface FCCKProtocolTranslator
+ (id)sharedInstance;
- (id)fieldValueFromObject:(uint64_t)a1;
- (id)fieldValueOfType:(void *)a3 withObject:;
- (id)objectRepresentationFromFieldValue:(void *)a1;
- (id)pQueryFromQuery:(void *)a3 error:;
- (id)pRecordIdentifierFromRecordID:(uint64_t)a1;
- (id)pReferenceFromReference:(uint64_t)a1 error:(void *)a2;
- (id)recordFromPRecord:(uint64_t)a1;
- (id)referenceFromPReference:(void *)a1 error:(void *)a2;
- (uint64_t)fieldValueTypeFromObject:(uint64_t)a1;
@end

@implementation FCCKProtocolTranslator

+ (id)sharedInstance
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FCCKProtocolTranslator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1EDB278F0 != -1)
  {
    dispatch_once(&qword_1EDB278F0, block);
  }

  v1 = _MergedGlobals_202;

  return v1;
}

uint64_t __40__FCCKProtocolTranslator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _MergedGlobals_202 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (uint64_t)fieldValueTypeFromObject:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 3;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_11:
      v4 = 1;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      if (![v5 count])
      {

        v4 = 9;
        goto LABEL_24;
      }

      v6 = [v5 objectAtIndexedSubscript:0];
      CKValidateRecordArrayValue(v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v4 = 13;
LABEL_18:

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 11;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 10;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (CFNumberIsFloatType(v6))
        {
          v4 = 18;
        }

        else
        {
          v4 = 17;
        }

        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 15;
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v13 initWithFormat:@"Can't encode array %@ of unknown child class: %@", v5, v15];
        *buf = 136315906;
        v18 = "[FCCKProtocolTranslator(RecordFields) fieldValueTypeFromObject:]";
        v19 = 2080;
        v20 = "FCCKRecordFieldConversion.m";
        v21 = 1024;
        v22 = 92;
        v23 = 2114;
        v24 = v16;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v4 = 5;
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 initWithFormat:@"Can't encode object %@ of class %@", v3, v11];
      *buf = 136315906;
      v18 = "[FCCKProtocolTranslator(RecordFields) fieldValueTypeFromObject:]";
      v19 = 2080;
      v20 = "FCCKRecordFieldConversion.m";
      v21 = 1024;
      v22 = 104;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (CFNumberIsFloatType(v3))
  {
    v4 = 8;
  }

  else
  {
    v4 = 7;
  }

LABEL_24:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)fieldValueFromObject:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = [(FCCKProtocolTranslator *)a1 fieldValueTypeFromObject:v4];
    v2 = [(FCCKProtocolTranslator *)a1 fieldValueOfType:v5 withObject:v4];
  }

  return v2;
}

- (id)fieldValueOfType:(void *)a3 withObject:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a1)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v6 = objc_opt_new();
  [v6 setType:a2];
  if (a2 > 4)
  {
    if (a2 <= 0x12)
    {
      if (((1 << a2) & 0x6AE00) != 0)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = v5;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          v11 = MEMORY[0x1E69E9C10];
          do
          {
            v12 = 0;
            do
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v26 + 1) + 8 * v12);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Nesting arrays not supported"];
                *buf = 136315906;
                v31 = "[FCCKProtocolTranslator(RecordFields) fieldValueOfType:withObject:]";
                v32 = 2080;
                v33 = "FCCKRecordFieldConversion.m";
                v34 = 1024;
                v35 = 169;
                v36 = 2114;
                v37 = v15;
                _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }

              v14 = [(FCCKProtocolTranslator *)a1 fieldValueFromObject:v13];
              [v6 addListValue:v14];

              ++v12;
            }

            while (v9 != v12);
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v9);
        }

        v5 = v25;
        goto LABEL_16;
      }

      if (a2 == 7)
      {
        [v6 setSignedValue:{objc_msgSend(v5, "longLongValue")}];
        goto LABEL_16;
      }

      if (a2 == 8)
      {
        [v5 doubleValue];
        [v6 setDoubleValue:?];
        goto LABEL_16;
      }
    }

    if (a2 != 5)
    {
      goto LABEL_16;
    }

    v18 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v5 recordID];
      v20 = [(FCCKProtocolTranslator *)a1 pRecordIdentifierFromRecordID:v19];
      [v18 setRecordIdentifier:v20];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [(FCCKProtocolTranslator *)a1 pRecordIdentifierFromRecordID:v5];
        [v18 setRecordIdentifier:v19];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_37:
          [v6 setReferenceValue:v18];

          goto LABEL_16;
        }

        [FCCKProtocolTranslator pReferenceFromReference:a1 error:v5];
        v18 = v19 = v18;
      }
    }

    goto LABEL_37;
  }

  switch(a2)
  {
    case 1:
      [v6 setBytesValue:v5];
      break;
    case 2:
      v21 = objc_alloc_init(MEMORY[0x1E69B6D38]);
      [v6 setDateValue:v21];

      [v5 timeIntervalSinceReferenceDate];
      v23 = v22;
      v24 = [v6 dateValue];
      [v24 setTime:v23];

      break;
    case 3:
      [v6 setStringValue:v5];
      break;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)pRecordIdentifierFromRecordID:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = objc_opt_new();
    v4 = [v2 recordName];
    v5 = [(NSString *)v4 _NTPBCKIdentifierWithType:?];
    [v3 setValue:v5];

    v6 = [v2 zoneID];

    v7 = v6;
    v8 = objc_opt_new();
    v9 = [v7 zoneName];
    v10 = [(NSString *)v9 _NTPBCKIdentifierWithType:?];
    [v8 setValue:v10];

    v11 = [v7 ownerName];

    if (([v11 isEqualToString:*MEMORY[0x1E695B728]] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown owner"];
      v17 = 136315906;
      v18 = "[FCCKProtocolTranslator pUserIdentifierFromUserRecordName:]";
      v19 = 2080;
      v20 = "FCCKProtocolTranslator.m";
      v21 = 1024;
      v22 = 54;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
    }

    v12 = [(NSString *)@"_defaultOwner" _NTPBCKIdentifierWithType:?];
    [v8 setOwnerIdentifier:v12];

    v13 = [v8 ownerIdentifier];

    if (v13)
    {
      v13 = v8;
    }

    [v3 setZoneIdentifier:v13];
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)referenceFromPReference:(void *)a1 error:(void *)a2
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 recordIdentifier];
  v5 = MEMORY[0x1E695BA80];
  v6 = v4;
  v7 = [v5 defaultRecordZone];
  v8 = [v7 zoneID];
  v9 = [v8 copy];

  v10 = objc_alloc(MEMORY[0x1E695BA70]);
  v11 = [v6 value];

  v12 = [v11 name];
  v13 = [v10 initWithRecordName:v12 zoneID:v9];

  if (v13)
  {
    if ([v3 hasType])
    {
      v14 = [v3 type];
      if (v14 == 1)
      {
        v15 = 1;
        goto LABEL_15;
      }

      if (v14 != 2)
      {
        if (v14 == 3)
        {
          v15 = *MEMORY[0x1E695B808];
          goto LABEL_15;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected reference type"];
          *buf = 136315906;
          v23 = "[FCCKProtocolTranslator referenceFromPReference:error:]";
          v24 = 2080;
          v25 = "FCCKProtocolTranslator.m";
          v26 = 1024;
          v27 = 101;
          v28 = 2114;
          v29 = v21;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    v15 = 0;
LABEL_15:
    v16 = [objc_alloc(MEMORY[0x1E695BAB0]) initWithRecordID:v13 action:v15];
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid record identifier from server %@: %@", v3, 0];
    *buf = 136315906;
    v23 = "[FCCKProtocolTranslator referenceFromPReference:error:]";
    v24 = 2080;
    v25 = "FCCKProtocolTranslator.m";
    v26 = 1024;
    v27 = 107;
    v28 = 2114;
    v29 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v16 = 0;
  if (a2)
  {
LABEL_16:
    v17 = 0;
    *a2 = 0;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)pReferenceFromReference:(uint64_t)a1 error:(void *)a2
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = [v3 recordID];
    v6 = [(FCCKProtocolTranslator *)a1 pRecordIdentifierFromRecordID:v5];
    [v4 setRecordIdentifier:v6];

    if ([v3 referenceAction] == 1)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 referenceAction];
      if (v8 == *MEMORY[0x1E695B808])
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    [v4 setType:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)recordFromPRecord:(uint64_t)a1
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v47 = 0;
  if (a1 && v3)
  {
    v5 = [MEMORY[0x1E695BA80] defaultRecordZone];
    v6 = [v5 zoneID];
    v7 = [v6 copy];

    v8 = objc_alloc(MEMORY[0x1E695BA70]);
    v9 = [v4 recordIdentifier];
    v10 = [v9 value];
    v11 = [v10 name];
    v45 = v7;
    v12 = [v8 initWithRecordName:v11 zoneID:v7];

    v13 = objc_alloc(MEMORY[0x1E695BA60]);
    v14 = [v4 type];
    v15 = [v14 name];
    v44 = v12;
    v16 = [v13 _initSkippingValidationWithRecordType:v15 recordID:v12];

    v17 = [v4 etag];
    v47 = v16;
    [v16 setEtag:v17];

    if ([v4 hasTimeStatistics])
    {
      v18 = [v4 timeStatistics];
      if ([v18 hasCreation])
      {
        v19 = MEMORY[0x1E695DF00];
        v20 = [v4 timeStatistics];
        v21 = [v20 creation];
        [v21 time];
        v22 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
        [v16 setCreationDate:v22];
      }

      else
      {
        [v16 setCreationDate:0];
      }

      v23 = [v4 timeStatistics];
      if ([v23 hasModification])
      {
        v24 = MEMORY[0x1E695DF00];
        v25 = [v4 timeStatistics];
        v26 = [v25 modification];
        [v26 time];
        v27 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
        [v16 setModificationDate:v27];
      }

      else
      {
        [v16 setModificationDate:0];
      }
    }

    [v16 setTrackChanges:0];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = v4;
    v28 = [v4 fields];
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v48 + 1) + 8 * i);
          v34 = [v33 identifier];
          v35 = [v34 name];
          v36 = [v35 hasPrefix:@"_"];

          if ((v36 & 1) == 0)
          {
            v37 = [v47 valueStore];
            v38 = [v33 value];
            v39 = [FCCKProtocolTranslator objectRepresentationFromFieldValue:v38];
            v40 = [v33 identifier];
            v41 = [v40 name];
            [v37 setObjectNoValidate:v39 forKey:v41];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v30);
    }

    [v47 setTrackChanges:1];
    [v47 setKnownToServer:1];

    v4 = v46;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)objectRepresentationFromFieldValue:(void *)a1
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 listValues];
  if (v2 || [v1 type] == 16)
  {

    goto LABEL_4;
  }

  if ([v1 type] == 9)
  {
LABEL_4:
    v3 = [v1 listValues];
    v4 = [v3 count];

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v1 listValues];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [FCCKProtocolTranslator objectRepresentationFromFieldValue:?];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v8);
    }

LABEL_13:

    goto LABEL_14;
  }

  v14 = [v1 type];
  v5 = 0;
  if (v14 > 4)
  {
    switch(v14)
    {
      case 5:
        v17 = [v1 referenceValue];
        v22 = 0;
        v5 = [FCCKProtocolTranslator referenceFromPReference:v17 error:&v22];
        v6 = v22;

        if ((v6 || !v5) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid field value (record identifier) from server: %@", v6];
          *buf = 136315906;
          v28 = "[FCCKProtocolTranslator objectRepresentationFromFieldValue:]";
          v29 = 2080;
          v30 = "FCCKProtocolTranslator.m";
          v31 = 1024;
          v32 = 253;
          v33 = 2114;
          v34 = v18;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        goto LABEL_13;
      case 7:
        v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "signedValue")}];
        break;
      case 8:
        v16 = MEMORY[0x1E696AD98];
        [v1 doubleValue];
        v15 = [v16 numberWithDouble:?];
        break;
      default:
        goto LABEL_14;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        v15 = [v1 bytesValue];
        break;
      case 2:
        if (qword_1EDB27900 != -1)
        {
          dispatch_once(&qword_1EDB27900, &__block_literal_global_158);
        }

        v19 = [v1 dateValue];
        [v19 time];
        v21 = v20;

        if (v21 >= *&qword_1EDB278F8)
        {
          [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v21];
        }

        else
        {
          [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v21];
        }
        v15 = ;
        break;
      case 3:
        v15 = [v1 stringValue];
        break;
      default:
        goto LABEL_14;
    }
  }

  v5 = v15;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)pQueryFromQuery:(void *)a3 error:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = [v5 predicate];
    v34 = 0;
    v8 = [v7 fcck_queryFiltersWithTranslator:a1 error:&v34];
    v9 = v34;

    if (v8)
    {
      v10 = FCCKVerifyFilters(v8);

      if (!v10)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = v8;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v14)
        {
          v15 = *v31;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v13);
              }

              [v6 addFilters:*(*(&v30 + 1) + 8 * i)];
            }

            v14 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
          }

          while (v14);
        }

        v17 = objc_alloc_init(MEMORY[0x1E69B6DA8]);
        v18 = [v5 recordType];
        [v17 setName:v18];

        [v6 addTypes:v17];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v19 = [v5 sortDescriptors];
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v20)
        {
          v21 = *v27;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = [*(*(&v26 + 1) + 8 * j) fcck_querySort];
              [v6 addSorts:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v20);
        }

        v12 = v6;
        goto LABEL_23;
      }

      v9 = v10;
    }

    if (a3)
    {
      v11 = v9;
      *a3 = v9;
    }

    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v12 = 0;
LABEL_24:

  v24 = *MEMORY[0x1E69E9840];

  return v12;
}

void __61__FCCKProtocolTranslator_objectRepresentationFromFieldValue___block_invoke()
{
  v1 = [MEMORY[0x1E695DF00] date];
  [v1 timeIntervalSinceReferenceDate];
  *&qword_1EDB278F8 = v0 + 315569520.0;
}

@end