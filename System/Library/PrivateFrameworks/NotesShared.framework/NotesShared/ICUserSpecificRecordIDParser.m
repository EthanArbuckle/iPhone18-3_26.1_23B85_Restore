@interface ICUserSpecificRecordIDParser
+ (BOOL)isUserSpecificRecordID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (ICUserSpecificRecordIDParser)initWithRecordName:(id)a3;
- (ICUserSpecificRecordIDParser)initWithSharedRecordType:(id)a3 sharedRecordID:(id)a4 userRecordName:(id)a5 ownerName:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICUserSpecificRecordIDParser

- (ICUserSpecificRecordIDParser)initWithSharedRecordType:(id)a3 sharedRecordID:(id)a4 userRecordName:(id)a5 ownerName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CBEB18];
  v13 = a6;
  v14 = a5;
  v15 = [v12 arrayWithCapacity:2];
  v38 = v10;
  v16 = [objc_opt_class() userSpecificRecordTypeForSharedRecordType:v10];
  [v15 setObject:v16 atIndexedSubscript:0];

  [v15 setObject:v14 atIndexedSubscript:1];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v18 = [v11 zoneID];
  [v18 databaseScope];
  v19 = CKDatabaseScopeString();
  [v17 setObject:v19 atIndexedSubscript:0];

  v20 = [v11 zoneID];
  v21 = [v20 zoneName];
  [v17 setObject:v21 atIndexedSubscript:1];

  [v17 setObject:v13 atIndexedSubscript:2];
  v22 = [v11 recordName];
  [v17 setObject:v22 atIndexedSubscript:3];

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v24 = [v15 componentsJoinedByString:@"::"];
  [v23 setObject:v24 atIndexedSubscript:0];

  v25 = [v17 componentsJoinedByString:@"::"];
  [v23 setObject:v25 atIndexedSubscript:1];

  v26 = [v23 componentsJoinedByString:@"/"];
  if ([v26 length] < 0x100)
  {
    v36 = a4;
    v29 = objc_alloc(MEMORY[0x277CBC5F8]);
    v30 = [v11 zoneID];
    v31 = [v30 zoneName];
    v27 = [v29 initWithZoneName:v31 ownerName:*MEMORY[0x277CBBF28]];

    v32 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v26 zoneID:v27];
    v39.receiver = self;
    v39.super_class = ICUserSpecificRecordIDParser;
    self = [(ICUserSpecificRecordIDParser *)&v39 init];
    if (!self || ([v15 objectAtIndexedSubscript:0], v33 = objc_claimAutoreleasedReturnValue(), recordType = self->_recordType, self->_recordType = v33, recordType, objc_storeStrong(&self->_recordID, v32), objc_storeStrong(&self->_sharedRecordType, a3), objc_storeStrong(&self->_sharedRecordID, v36), v28 = 0, -[ICUserSpecificRecordIDParser validate](self, "validate")))
    {
      v28 = self;
    }
  }

  else
  {
    v27 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser initWithSharedRecordType:sharedRecordID:userRecordName:ownerName:];
    }

    v28 = 0;
  }

  return v28;
}

- (ICUserSpecificRecordIDParser)initWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"/"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 componentsSeparatedByString:@"::"];
    if ([v7 count] == 2)
    {
      v8 = [v5 objectAtIndexedSubscript:1];
      v9 = [v8 componentsSeparatedByString:@"::"];
      if ([v9 count] == 4)
      {
        v48 = v8;
        v10 = [v7 objectAtIndexedSubscript:0];
        v11 = [v10 ic_nilWhenEmpty];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"(null)";
        }

        obj = v13;
        v14 = v13;

        v15 = [v7 objectAtIndexedSubscript:1];
        v16 = [v15 ic_nilWhenEmpty];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"(null)";
        }

        v54 = v18;

        v19 = [v9 objectAtIndexedSubscript:1];
        v20 = [v19 ic_nilWhenEmpty];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = @"(null)";
        }

        v53 = v22;

        v52 = v14;
        v23 = [objc_opt_class() sharedRecordTypeForUserSpecificRecordType:v14];
        v24 = [v23 ic_nilWhenEmpty];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = @"(null)";
        }

        v45 = v26;
        v50 = v26;

        v27 = [v9 objectAtIndexedSubscript:2];
        v28 = [v27 ic_nilWhenEmpty];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = @"(null)";
        }

        v31 = v30;

        v51 = v9;
        v32 = [v9 objectAtIndexedSubscript:3];
        v33 = [v32 ic_nilWhenEmpty];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = @"(null)";
        }

        v36 = v35;

        v47 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v53 ownerName:v54];
        v37 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v4 zoneID:v47];
        v38 = v37;
        v49 = v31;
        v39 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v53 ownerName:v31];
        v40 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v36 zoneID:v39];
        v55.receiver = self;
        v55.super_class = ICUserSpecificRecordIDParser;
        v41 = [(ICUserSpecificRecordIDParser *)&v55 init];
        self = v41;
        if (v41 && (objc_storeStrong(&v41->_recordType, obj), objc_storeStrong(&self->_recordID, v37), objc_storeStrong(&self->_sharedRecordType, v45), objc_storeStrong(&self->_sharedRecordID, v40), ![(ICUserSpecificRecordIDParser *)self validate]))
        {
          v42 = 0;
        }

        else
        {
          v42 = self;
        }

        v9 = v51;
        v43 = v52;
        v8 = v48;
      }

      else
      {
        v43 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [ICUserSpecificRecordIDParser initWithRecordName:];
        }

        v42 = 0;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ICUserSpecificRecordIDParser initWithRecordName:];
      }

      v42 = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser initWithRecordName:];
    }

    v42 = 0;
  }

  return v42;
}

- (BOOL)validate
{
  v3 = [(ICUserSpecificRecordIDParser *)self recordType];
  if (![v3 length])
  {

LABEL_15:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      return 0;
    }

LABEL_16:
    [ICUserSpecificRecordIDParser validate];
    goto LABEL_17;
  }

  v4 = [(ICUserSpecificRecordIDParser *)self recordType];
  v5 = [v4 isEqual:@"(null)"];

  if (v5)
  {
    goto LABEL_15;
  }

  v6 = [(ICUserSpecificRecordIDParser *)self recordType];
  v7 = [v6 hasSuffix:@"_UserSpecific"];

  if ((v7 & 1) == 0)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v8 = [(ICUserSpecificRecordIDParser *)self recordID];
  v9 = [v8 zoneID];
  v10 = [v9 databaseScope];

  if (!v10)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v11 = [(ICUserSpecificRecordIDParser *)self recordID];
  v12 = [v11 zoneID];
  v13 = [v12 zoneName];
  if (![v13 length])
  {

LABEL_23:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v14 = [(ICUserSpecificRecordIDParser *)self recordID];
  v15 = [v14 zoneID];
  v16 = [v15 zoneName];
  v17 = [v16 isEqual:@"(null)"];

  if (v17)
  {
    goto LABEL_23;
  }

  v18 = [(ICUserSpecificRecordIDParser *)self recordID];
  v19 = [v18 zoneID];
  v20 = [v19 ownerName];
  if (![v20 length])
  {

LABEL_26:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v21 = [(ICUserSpecificRecordIDParser *)self recordID];
  v22 = [v21 zoneID];
  v23 = [v22 ownerName];
  v24 = [v23 isEqual:@"(null)"];

  if (v24)
  {
    goto LABEL_26;
  }

  v25 = [(ICUserSpecificRecordIDParser *)self recordID];
  v26 = [v25 recordName];
  if (![v26 length])
  {

LABEL_29:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v27 = [(ICUserSpecificRecordIDParser *)self recordID];
  v28 = [v27 recordName];
  v29 = [v28 isEqual:@"(null)"];

  if (v29)
  {
    goto LABEL_29;
  }

  v30 = [(ICUserSpecificRecordIDParser *)self recordID];
  v31 = [v30 recordName];
  v32 = [v31 containsString:*MEMORY[0x277CBBF28]];

  if (v32)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v35 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  if (![v35 length])
  {

LABEL_42:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v36 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  v37 = [v36 isEqual:@"(null)"];

  if (v37)
  {
    goto LABEL_42;
  }

  v38 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v39 = [v38 zoneID];
  v40 = [v39 databaseScope];

  if (!v40)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v41 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v42 = [v41 zoneID];
  v43 = [v42 zoneName];
  if (![v43 length])
  {

LABEL_47:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v44 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v45 = [v44 zoneID];
  v46 = [v45 zoneName];
  v47 = [v46 isEqual:@"(null)"];

  if (v47)
  {
    goto LABEL_47;
  }

  v48 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v49 = [v48 zoneID];
  v50 = [v49 ownerName];
  if (![v50 length])
  {

LABEL_50:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v51 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v52 = [v51 zoneID];
  v53 = [v52 ownerName];
  v54 = [v53 isEqual:@"(null)"];

  if (v54)
  {
    goto LABEL_50;
  }

  v55 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v56 = [v55 recordName];
  if (![v56 length])
  {

LABEL_53:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  v57 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v58 = [v57 recordName];
  v59 = [v58 isEqual:@"(null)"];

  if (v59)
  {
    goto LABEL_53;
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICUserSpecificRecordIDParser *)self recordType];
  v7 = [(ICUserSpecificRecordIDParser *)self recordID];
  v8 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  v9 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v10 = [v3 stringWithFormat:@"<%@: %p, recordType: %@, recordID: %@, sharedRecordType: %@, sharedRecordID: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICUserSpecificRecordIDParser *)self recordType];
    v7 = [v5 recordType];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v16 = [v10 isEqual:v12];

      if (!v16)
      {
        v15 = 0;
LABEL_59:

        return v15;
      }
    }

    v38 = v7;
    v10 = [(ICUserSpecificRecordIDParser *)self recordID];
    v13 = [v5 recordID];
    if (v8 == v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v10;
    }

    v18 = v17;
    if (v8 == v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v20 = v19;
    if (v18 | v20)
    {
      v21 = v20;
      if (v18)
      {
        v22 = v20 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v15 = 0;
LABEL_56:

LABEL_57:
        v7 = v38;
        goto LABEL_58;
      }

      v23 = [v18 isEqual:v20];

      if (!v23)
      {
        v15 = 0;
        goto LABEL_57;
      }
    }

    v36 = v6;
    v18 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
    v37 = v5;
    v21 = [v5 sharedRecordType];
    if (v8 == v18)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18;
    }

    v25 = v24;
    if (v8 == v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21;
    }

    v27 = v26;
    if (v25 | v27)
    {
      v28 = v27;
      v15 = 0;
      if (!v25 || !v27)
      {
LABEL_54:

LABEL_55:
        v6 = v36;
        v5 = v37;
        goto LABEL_56;
      }

      v29 = [v25 isEqual:v27];

      if (!v29)
      {
        v15 = 0;
        goto LABEL_55;
      }
    }

    v25 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
    v28 = [v37 sharedRecordID];
    if (v8 == v25)
    {
      v30 = 0;
    }

    else
    {
      v30 = v25;
    }

    v31 = v30;
    if (v8 == v28)
    {
      v32 = 0;
    }

    else
    {
      v32 = v28;
    }

    v33 = v32;
    v34 = v33;
    if (v31 | v33)
    {
      v15 = 0;
      if (v31 && v33)
      {
        v15 = [v31 isEqual:v33];
      }
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_54;
  }

  return 1;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICUserSpecificRecordIDParser *)self recordType];
    v5 = [v4 hash];
    v6 = [(ICUserSpecificRecordIDParser *)self recordID];
    v7 = [v6 hash];
    v8 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
    [v8 hash];
    v9 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
    [v9 hash];
    self->_hash = ICHashWithHashKeys(v5, v10, v11, v12, v13, v14, v15, v16, v7);

    return self->_hash;
  }

  return result;
}

+ (BOOL)isUserSpecificRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 componentsSeparatedByString:@"::"];
    if ([v6 count] == 2)
    {
      v7 = [v4 objectAtIndexedSubscript:1];
      v8 = [v7 componentsSeparatedByString:@"::"];
      v9 = [v8 count] == 4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end